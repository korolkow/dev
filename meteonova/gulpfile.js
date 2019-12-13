'use strict'

var gulp = require('gulp'),
    rename = require('gulp-rename'),
    inject = require('gulp-inject'),
    convertEncoding = require('gulp-convert-encoding'),
    gulpSSH = require('gulp-ssh')

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

var data = [
    {
        tpl: 'ru_novatown2_ru',
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/frc.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/utils.js',
            '../js/dropdownlist.js',
            '../js/animate.js',
            '../js/scroll2.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/svgchart.js',
            '../js/scroll2.js',
            '../js/slider.js'
        ]
    },
    {
        tpl: 'ru_profi_ru',
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/utils.js',
            '../js/dropdownlist.js'
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

gulp.task('addCss', function () {
    return gulp.src(css)
        .pipe(rename({dirname: ''}))
        .pipe(gulp.dest('css/'))
        .pipe(gulpSSH.dest('/home/nova/dev/meteonova/css'))
})

gulp.task('build_dev', gulp.series('addCss', async function () {
    return data.map(function(page) {
        return gulp.src(page.tpl+'.*')
            .pipe(inject(gulp.src(page.css), {
                transform: function (filepath) {
                    return '<link rel="stylesheet" type="text/css" href="/css' +
                        filepath.replace(/(.+\/css)/, '') + '?' + dt + '">'
                }
                }))
            .pipe(inject(gulp.src(page.js), {
                transform: function (filepath) {
                    return '<script type="text/javascript" src="/js' +
                        filepath.replace(/(.+\/js)/, '') + '?' + dt + '" charset = "utf-8"></script>'
                }
            }))
            .pipe(gulp.dest('build/dev'));
    })
}))

gulp.task('d', gulp.series('build_dev', async function () {
    gulp.src('build/dev/*.htm         ').pipe(gulpSSH.dest('/home/nova/dev/meteonova'))
}))

//gulp.task('prod', gulp.series('build_prod', async function () {
    //gulp.src('build/prod/*.html').pipe(gulp.dest('/'))
//})))

