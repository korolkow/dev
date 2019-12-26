'use strict'

var {src, dest, series, parallel} = require('gulp'),
    gulp = require('gulp'),
    rename = require('gulp-rename'),
    inject = require('gulp-inject'),
    cssbeautify = require('gulp-cssbeautify'),
    cssconcat = require('gulp-concat-css'),
    cssnano = require('gulp-cssnano'),
    beautify = require('gulp-jsbeautifier'),
    uglify = require('gulp-uglifyjs'),
    concat = require('gulp-concat'),
    merge2 = require('merge2'),
    prettify = require('gulp-html-prettify'),
    //convertEncoding = require('gulp-convert-encoding'),
    gulpSSH = require('gulp-ssh'),
    replace = require('gulp-string-replace');

var gulpSSH = new gulpSSH({
    ignoreErrors: false,
    sshConfig: {
        host: 'm.meteonova.ru',
        port: 22,
        username: 'nova',
        privateKeyFile: '/Users/alekseyvasilev/.ssh/id_rsa_mn'
    }
})

var css = [
    '../css/reset-fonts-grids_990.css',
    '../css/block.css',
    '../css/general.css',
    '../css/mosg_990.css',
    '../css/frc.css',
    '../css/agro.css',
    '../css/dropdownlist.css',
    '../css/ol3.css',
    '../css/map.css'
]

var js = [
    '../js/jquery-1.11.1.min.js',
    '../js/utils.js',
    '../js/dropdownlist.js',
    '../js/animate.js',
    '../js/dancer.min.js',
    '../js/novaspeak.js',
    '../js/svgchart.js',
    '../js/slider.js',
    '../js/chart.min.js'
]

var commonScripts = {
    css: [
        '../css/reset-fonts-grids_990.css',
        '../css/block.css',
        '../css/general.css',
        '../css/mosg_990.css',
    ],
    js: [
        '../js/jquery-1.11.1.min.js',
        '../js/utils.js',
    ]
};

var data = [
    {
        tpl: 'ru_novatown2_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/svgchart.js',
        ]
    },
    {
        tpl: 'ru_profi_ru',
        css: [
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/dropdownlist.js'
        ]
    },
    {
        tpl: 'ru_today_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/dropdownlist.js',
            '../js/svgchart.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js'
        ]
    },
    {
        tpl: 'ru_entry_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js'
        ]
    },
    {
        tpl: 'ru_hourly_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/slider.js',
            '../js/svgchart.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/dropdownlist.js',
        ]
    },
    {
        tpl: 'ru_tomorrow_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
            '../js/svgchart.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
        ]
    },
    {
        tpl: 'ru_simple3_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js'
        ]
    },
    {
        tpl: 'ru_10days_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
        ]
    },
    {
        tpl: 'ru_month_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
            '../js/svgchart.js',
        ]
    },
    {
        tpl: 'ru_allergy_ru',
        css: [
            '../css/dropdownlist.css',
        ],
        js: [
            '../js/dropdownlist.js'
        ]
    },
    {
        tpl: 'ru_med_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js'
        ]
    },
    {
        tpl: 'ru_agro_ru',
        css: [
            '../css/frc.css',
            '../css/agro.css',
            '../css/dropdownlist.css',
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
        ]
    },
    {
        tpl: 'ru_auto_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
        ]
    },
    {
        tpl: 'ru_avia_ru',
        css: [
            '../css/frc.css'
        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
        ]
    },
    {
        tpl: 'ru_uvindex_ru',
        css: [
            '../css/dropdownlist.css'
        ],
        js: [
            '../js/dropdownlist.js',
            '../js/chart.min.js'
        ]
    },
    {
        tpl: 'ru_geomagn_ru',
        css: [
            '../css/dropdownlist.css'
        ],
        js: [
            '../js/dropdownlist.js',
            '../js/chart.min.js'
        ]
    },
    {
        tpl: 'ru_novageo_ru',
        css: [
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'

        ],
        js: [
            '../js/slider.js',
            '../js/dropdownlist.js',
            '../js/novaspeak.js',
            '../js/svgchart.js',
        ]
    }
]

function addZero (i) {
    if (i < 10) {
        i = '0' + i
    }
    return i
}

var dt = new Date()
dt = dt.getFullYear() + '' + addZero(dt.getMonth() + 1) + '' + addZero(dt.getDate()) + '' + addZero(dt.getHours()) +
    '' + addZero(dt.getMinutes())

function cssMinify() {
    var css = data.map(function(page) {
        var injectCss = commonScripts.css.concat(page.css);
        return src(injectCss)
            .pipe(rename({ dirname: '' }))
            .pipe(cssbeautify())
            .pipe(cssconcat('meteonova.' + page.tpl + '.min.css'))
            .pipe(cssnano())
    })
    var stream = merge2();
    stream.add(css);
    return stream.pipe(dest('build/prod/css/')).pipe(gulpSSH.dest('/home/nova/current/css/'))
}

function jsMinify() {
    var js = data.map(function(page) {
        var injectJs = commonScripts.js.concat(page.js);
        return src(injectJs)
            .pipe(rename({ dirname: '' }))
            //.pipe(beautify())
            .pipe(concat('meteonova.' + page.tpl + '.min.js'))
            //.pipe(uglify())
    })
    var stream = merge2();
    stream.add(js);
    return stream.pipe(dest('build/prod/js/')).pipe(gulpSSH.dest('/home/nova/current/js/'))
}

function prod() {
    var html = data.map(function(page) {
        return src(page.tpl+'.*')
            .pipe(inject(src('build/prod/css/meteonova.' + page.tpl + '.min.css'), {
                transform: function (filepath) {
                    return '<link rel="stylesheet" type="text/css" href="<#CSSBASE>' +
                        filepath.replace(/(.+\/css)/, '') + '?' + dt + '">'
                }
            }))
            .pipe(inject(src('build/prod/js/meteonova.' + page.tpl + '.min.js'), {
                transform: function (filepath) {
                    return '<script type="text/javascript" src="<#JSBASE>' +
                        filepath.replace(/(.+\/js)/, '') + '?' + dt + '" charset = "utf-8"></script>'
                }
            }))
            .pipe(replace('style="width:222px;"', ''))
            .pipe(replace('style="width:222px"', ''))
            .pipe(replace(/<div.(class="block_bt.*").*><\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"\/images\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"<#IMGBASE>\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
    })
    var stream = merge2();
    stream.add(html);
    return stream.pipe(dest('build/prod/templates/')).pipe(dest('./'))
}

function addCss() {
    return src(css)
        .pipe(rename({dirname: ''}))
        .pipe(cssbeautify())
        .pipe(gulpSSH.dest('/home/nova/dev/meteonova/css'))
}

function addJs() {
    return src(js)
        .pipe(rename({dirname: ''}))
        .pipe(gulpSSH.dest('/home/nova/dev/meteonova/js'))
}

function dev(cb) {
    var html = data.map(function(page) {
        var injectCss = commonScripts.css.concat(page.css);
        var injectJs = commonScripts.js.concat(page.js);
        return src(page.tpl+'.*')
            .pipe(inject(src(injectCss), {
                transform: function (filepath) {
                    return '<link rel="stylesheet" type="text/css" href="<#CSSBASE>' +
                        filepath.replace(/(.+\/css)/, '') + '?' + dt + '">'
                }
            }))
            .pipe(inject(src(injectJs), {
                transform: function (filepath) {
                    return '<script type="text/javascript" src="<#JSBASE>' +
                        filepath.replace(/(.+\/js)/, '') + '?' + dt + '" charset = "utf-8"></script>'
                }
            }))
            .pipe(replace('style="width:222px;"', ''))
            .pipe(replace('style="width:222px"', ''))
            .pipe(replace(/<div.(class="block_bt.*").*><\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"\/images\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
            .pipe(replace(/<div class="round_(left|right)">\s*<img\s+src=\"<#IMGBASE>\/.*.png\"\s*.*(class="corner")\s*\/*>\s*<\/div>/gm, ''))
            //.pipe(rename(function (path) {
                //path.basename ='ru_mn2_dsk_' + path.basename.replace(/^(ru_)/g,'');
            //}))
    })
    var stream = merge2();
    stream.add(html);
    return stream.pipe(dest('build/dev/templates/')).pipe(gulpSSH.dest('/home/nova/dev/meteonova/'))
}

var dev = gulp.series(gulp.series(addCss, addJs), dev)
var prod = gulp.series(gulp.series(cssMinify, jsMinify), prod)

module.exports = {
    dev: dev,
    prod: prod
}