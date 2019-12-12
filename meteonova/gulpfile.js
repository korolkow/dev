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

gulp.task('d', gulp.parallel('addCss', async function () {
    var task = data.map(function(page) {
        return gulp.src(page.tpl+'.*')
            .pipe(inject(gulp.src(page.css), {
                    transform: function (filepath) {
                        return '<link rel="stylesheet" type="text/css" href="/css' +
                            filepath.replace(/(.+\/css)/, '') + '?' + dt + '">'
                    }
                })
            )
            //.pipe(convertEncoding({to: '1251'}))
            .pipe(gulp.dest('build/dev'))
            .pipe(gulpSSH.dest('/home/nova/dev/meteonova'))
    })
}))

