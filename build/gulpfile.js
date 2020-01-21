'use strict'

const {src, dest, series, parallel} = require('gulp'),
    gulp = require('gulp'),
    config = require('./config'),
    template = require('gulp-template'),
    fileinclude = require('gulp-file-include'),
    rename = require('gulp-rename'),
    inject = require('gulp-inject'),
    replace = require('gulp-string-replace'),
    gulpif = require('gulp-if'),
    cssnano = require('gulp-cssnano'),
    cssconcat = require('gulp-concat-css'),
    concat = require('gulp-concat'),
    uglify = require('gulp-uglifyjs'),
    imagemin = require('gulp-imagemin'),
    merge2 = require('merge2'),
    path = require("path");

var gulpSSH = require('gulp-ssh');

var status = "dev";


gulpSSH = new gulpSSH({
    ignoreErrors: false,
    sshConfig: {
        host: 'm.meteonova.ru',
        port: 22,
        username: 'nova',
        privateKeyFile: '/Users/alekseyvasilev/.ssh/id_rsa_mn'
    }
})

const isProd = function() {
    if (status === 'prod')  return true;
    else return false;
}

function copyDefCssSctipts() {
    return src(config.commonDefScripts.css)
        .pipe(gulpif(isProd, cssconcat('meteonova.min.css')))
        .pipe(gulpif(isProd, cssnano()))
        .pipe(gulpSSH.dest(savepath + '/css/v2'))
}

function copyCssSctipts() {
    return src(config.commonScripts.css)
        .pipe(rename(function (path) {
            if (path.basename ==='mgfind' || path.basename ==='dropdownlist')
                path.dirname = '../css/v2'
        }))
        .pipe(gulpSSH.dest(savepath + '/css/'))
}

function copyJsSctipts() {
    const defJs =  src(config.commonDefScripts.js)
        .pipe(gulpif(isProd, concat('meteonova.min.js')))
        .pipe(gulpif(isProd, uglify()));
    var stream = merge2();
    stream.add(defJs);
    if (isProd() === false) {
        const js = src(config.commonScripts.js);
        stream.add(js);
    }
    return stream.pipe(gulpSSH.dest(savepath + '/js/'))
}

function cssProdBuilder() {
    var stream = merge2();
    const cssForStaticsPages = doCss(config.static_files);
    stream.add(cssForStaticsPages);
    const cssForDinamicsPags = doCss(config.dynamic_files);
    stream.add(cssForDinamicsPags);
    return stream.pipe(gulpSSH.dest(savepath+'/css/'))
}

function doCss(data) {
    var css = data.map(function(item) {
        return typeof item.css !== 'undefined' ? {src: src(item.css), name: item.name} : 'undefined';
    })
    css = css.filter(function(item) {
        return item !== 'undefined'
    })
    return css.map(function(item) {
        return item.src
            .pipe(rename({dirname: ''}))
            .pipe(cssconcat('meteonova.'+ item.name +'.min.css'))
            .pipe(cssnano())
    })
}

function jsProdBuilder() {
    var stream = merge2();
    const jsForStaticsPages = doJs(config.static_files);
    stream.add(jsForStaticsPages);
    const jsForDinamicsPags = doJs(config.dynamic_files);
    stream.add(jsForDinamicsPags);
    return stream.pipe(gulpSSH.dest(savepath+'/js/'))
}

function doJs(data) {
    var js = data.map(function(item) {
        return typeof item.js !== 'undefined' ? {src: src(item.js), name: item.name} : 'undefined';
    })
    js = js.filter(function(item) {
        return item !== 'undefined'
    })
    return js.map(function(item) {
        return item.src
            .pipe(gulpif(isProd, concat('meteonova.'+ item.name + '.min.js')))
            .pipe(gulpif(isProd, uglify()))
    })
}

function buildStaticPages() {
    const data = config.dev_static;
    var html = config.static_files.map(function(item) {
        var css = config.commonDefScripts.css;
        if (typeof item.css !== "undefined") css = css.concat(item.css);
        var js = config.commonDefScripts.js;
        if (typeof item.js !== "undefined") js = js.concat(item.js);
        if (item.task === 'informers') {
            if (isProd()) {
                js = js.concat([ '../informer/html/js/constructor.js' ])
            }
            else {
                js = js.concat([ '../js/constructor.js' ])
            }
        }
        return src(item.tpls)
            .pipe(template(data))
            .pipe(fileinclude())
            .pipe(rename(function (path) {
                path.extname = (path.basename === 'allsearch'?'.html':item.extname);
            }))
            .pipe(inject(isProd() ?
                        (src(css)
                                .pipe(rename({dirname: ''}))
                                .pipe(cssconcat('meteonova.'+ item.name +'.min.css'))
                        ):
                        src(css), {
                        transform: function(filepath) {
                            var str = '';
                            if (isProd()) {
                                str += '<link rel="stylesheet" type="text/css" href="/css/v2/meteonova.min.css">';
                                str += '<link rel="stylesheet" type="text/css" href="/css' +
                                    filepath.replace(/(.+\/css\/v2)/, '') + '">';
                            }
                            else {
                                str += '<link rel="stylesheet" type="text/css" href="/css' + filepath.replace(/(.+\/css)/, '') + '">';
                            }
                            return str;
                        }
                    }
                )
            )
            .pipe(inject(isProd() ?
                (src(js)
                        .pipe(concat('meteonova.'+ item.name +'.min.js'))
                ):
                src(js), {
                        transform: function(filepath) {
                            var str = '';
                            if (isProd()) str += '<script type="text/javascript" src="/js/meteonova.min.js" charset = "utf-8"></script>'
                            str+= '<script type="text/javascript" src="/js'+filepath.replace(/(.+\/js)/, '')+'" charset = "utf-8"></script>'
                            return str;
                        }
                    }
                )
            )
            .pipe(replace('<html>', '<html lang="ru">'))
            .pipe(replace('windows-1251', 'utf-8'))
            .pipe(replace('style="width:222px;"', ''))
            .pipe(replace('style="width:222px"', ''))
            .pipe(replace('img width="70"', 'img width="90"'))
            .pipe(replace(/<div.(class="block_bt.*").*>.*<\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"\/images\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"<#IMGBASE>\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
            .pipe(dest('static' + item.path))
    })

    var stream = merge2();
    stream.add(html);
    return stream;
}

function buildDinamicPages() {
    var html = config.dynamic_files.map(function(page) {
        var css = config.commonDefScripts.css;
        if (typeof page.css !== "undefined") css = css.concat(page.css);
        var js = config.commonDefScripts.js;
        if (typeof page.js !== "undefined") js = js.concat(page.js);
        return src(page.tpl+'.*')
            .pipe(inject(isProd() ?
                (src(css)
                        .pipe(rename({dirname: ''}))
                        .pipe(cssconcat('meteonova.'+ page.name +'.min.css'))
                ):
                src(css), {
                transform: function (filepath) {
                    var str = '';
                    if (isProd()) {
                        str += '<link rel="stylesheet" type="text/css" href="<#CSSBASE>/v2/meteonova.min.css">';
                        str += '<link rel="stylesheet" type="text/css" href="<#CSSBASE>' +
                            filepath.replace(/(.+\/css\/v2)/, '') + '">';
                    }
                    else {
                        str += '<link rel="stylesheet" type="text/css" href="<#CSSBASE>' + filepath.replace(/(.+\/css)/, '') + '">';
                    }
                    return str;

                }
            }))
            .pipe(inject(isProd() ?
                (src(js)
                        .pipe(concat('meteonova.'+ page.name +'.min.js'))
                ):
                src(js), {
                transform: function (filepath) {
                    var str = '';
                    if (isProd()) str += '<script type="text/javascript" src="<#JSBASE>/meteonova.min.js" charset = "utf-8"></script>'
                    str+= '<script type="text/javascript" src="<#JSBASE>'+filepath.replace(/(.+\/js)/, '')+'" charset = "utf-8"></script>'
                    return str;
                }
            }))
            .pipe(replace('style="width:222px;"', ''))
            .pipe(replace('style="width:222px"', ''))
            .pipe(replace('img width="70"', 'img width="90"'))
            .pipe(replace(/<div.(class="block_bt.*").*><\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"\/images\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"<#IMGBASE>\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
    })
    var stream = merge2();
    stream.add(html);
    return stream.pipe(gulpSSH.dest(savepath + '/meteonova/'))
}

function copyfiles() {
    return src([
        '../mgfind.php',
        '../feedback.php',
    ])
        .pipe(gulpSSH.dest(savepath+'/'))
}

function copyImg() {
    return src(['../images/*', '../images/**/*'])
        //.pipe(imagemin({
            //progressive: false
        //}))
        .pipe(gulpSSH.dest(savepath+'/images'))
}

function deployStaticPages() {
    return src(['static/*', 'static/**']).pipe(gulpSSH.dest(savepath+'/'))
}

var savepath = '/home/nova/dev/temp'

function setDevDeployPath(cb) {
    status = "dev";
    savepath = config.destination.dev;
    cb();
}

function setProdDeployPath(cb) {
    status = "prod";
    savepath = config.destination.prod;
    cb();
}

var dev = gulp.series(copyfiles,  setDevDeployPath, copyDefCssSctipts, copyCssSctipts, copyJsSctipts, buildStaticPages, deployStaticPages, buildDinamicPages)
var prod = gulp.series(copyfiles,  setProdDeployPath, copyDefCssSctipts, copyJsSctipts, cssProdBuilder, jsProdBuilder, buildStaticPages, deployStaticPages, buildDinamicPages)

module.exports = {
    dev: dev,
    prod: prod
}
