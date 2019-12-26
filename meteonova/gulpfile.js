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

var dynamic_files = [
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

var static_files = [
    {
        task: 'main',
        tpls: ['../templates/main/index.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/frc.css',
            '../css/agro.css',
            '../css/dropdownlist.css',
            '../css/mgfind.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/utils.js',
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/citysearch.js'
        ],
        extname: '.html',
        path: '/'
    },
    {
        task: 'list',
        tpls: ['../templates/list/_list.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/frc.css',
            '../css/agro.css',
            '../css/dropdownlist.css',
            '../css/mgfind.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/dropdownlist.js',
        ],
        extname: '.php',
        path: '/'
    },
    {
        task: 'search',
        tpls: ['../templates/search/_search.tpl', '../templates/search/allsearch.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/frc.css',
            '../css/agro.css',
            '../css/dropdownlist.css',
            '../css/mgfind.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/dropdownlist.js',
        ],
        extname: '.php',
        path: '/'
    },
    {
        task: 'map',
        tpls: ['../templates/map/map.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/vdrop.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/jquery.vdrop.min.js',
            '../js/ol3_1.js',
            '../js/openlayers.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'infogra',
        tpls: ['../templates/infogra/infogra.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/dropdownlist.css',
            '../css/ol3.css',
            '../css/map.css',
            '../css/infogra.css'
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/amcharts/amcharts.js',
             '../js/amcharts/radar.js',
             '../js/amcharts/themes/light.js',
             '../js/ol3_1.js',
             '../js/openlayers.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'informers',
        tpls: ['../templates/informers/index.tpl', '../templates/informers/html.tpl', '../templates/informers/htmlsp.tpl', '../templates/informers/png.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/bootstrap-select.min.css',
            '../css/typeaheadjs.css',
            '../css/bootstrap-colorpicker.min.css',
            '../css/inf.css'
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/jquery-ui.min.js',
            '../js/bootstrap/bootstrap-colorpicker.min.js',
            '../js/typeahead.jquery.min.js',
            '../js/bootstrap/bootstrap-select.js',
            '../js/bootstrap/bootstrap.js',

            //domain=='dev'?'../js/constructor.js':dest_paths[domain]+'/informer/html/js/constructor.js', добавить в коде обязательно
            '../js/engine.js'
        ],
        extname: '.php',
        path: '/informer'
    },
    {
        task: 'mgfind',
        tpls: ['../templates/mgfind/mgfind.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/frc.css',
            '../css/agro.css',
            '../css/dropdownlist.css',
            '../css/mgfind.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/mgfind.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'icq',
        tpls: ['../templates/icq/icq.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/frc.css',
            '../css/agro.css',
            '../css/dropdownlist.css',
            '../css/mgfind.css',
            '../css/ol3.css',
            '../css/map.css'
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/dancer.min.js',
             '../js/novaspeak.js'
        ],
        extname: '.htm',
        path: '/fan'
    },
    {
        task: 'telegram',
        tpls: ['../templates/telegram/telegram.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/telegram.css',
            '../css/stars.css',
            '../css/simplePagination.css',
            '../css/owl.carousel.css',
            '../css/owl.theme.default.css'
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/jquery.barrating.min.js',
             '../js/jquery.simplePagination.js',
             '../js/owl.carousel.min.js'
        ],
        extname: '.htm',
        path: '/fan'
    },
    {
        task: 'facebook',
        tpls: ['../templates/facebook/facebook.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/telegram.css',
            '../css/stars.css',
            '../css/simplePagination.css',
            '../css/owl.carousel.css',
            '../css/owl.theme.default.css'
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/jquery.barrating.min.js',
             '../js/jquery.simplePagination.js',
             '../js/owl.carousel.min.js'
        ],
        extname: '.htm',
        path: '/fan'
    },
    {
        task: 'fan',
        tpls: ['../templates/fan/fan.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
            '../css/telegram.css',
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/dancer.min.js',
             '../js/novaspeak.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'guestbook',
        tpls: ['../templates/guestbook/guestbook.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
        ],
        js: [
             '../js/guestbook.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'faq',
        tpls: ['../templates/faq/faq.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/utils.js',
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/citysearch.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'about',
        tpls: ['../templates/about/about.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/utils.js',
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/citysearch.js'
        ],
        extname: '.htm',
        path: '/'
    },
    {
        task: 'privacepolicy',
        tpls: ['../templates/privacy/agreement.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
        ],
        js: [
            '../js/jquery-1.11.1.min.js',
            '../js/utils.js',
            '../js/dropdownlist.js',
            '../js/dancer.min.js',
            '../js/novaspeak.js',
            '../js/citysearch.js'
        ],
        extname: '.htm',
        path: '/'
    }
    /*{
        task: 'avia_search',
        tpls: ['../templates/avia/index.tpl'],
        css: [
            '../css/reset-fonts-grids_990.css',
            '../css/block.css',
            '../css/general.css',
            '../css/mosg_990.css',
        ],
        js: [
             '../js/jquery-1.11.1.min.js',
             '../js/mgfind.js'
        ],
        extname: '.htm',
        path: '/avia-search'
    }*/
];



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
    var css = dynamic_files.map(function(page) {
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
    var js = dynamic_files.map(function(page) {
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
    var html = dynamic_files.map(function(page) {
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

function dev() {
    var html = dynamic_files.map(function(page) {
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

function statics() {
    var data = {
        tpl_path: 'templates_'+domain,
        domain: domain,
        _domain: domain === 'ua'?'_'+domain:'',
        sub_domain: (sub_domain === 'dev'?sub_domain:''),
        defindex: domain === 'ua'?33345:27612,
        country_name: domain === 'ua'?'Украины':'России',
        country_id: domain === 'ua'?198:156,
        lat: domain === 'ua'?50.4:55.8,
        lng: domain === 'ua'?30.5:37.6,
        defcity: domain === 'ua'?'Киев':'Москва',
        defcity_en: domain === 'ua'?'Kiev':'Moscow',
        defcity_r: domain === 'ua'?'Киева':'Москвы'
    };

    if (sub_domain == 'dev') domain = 'dev';

    var html = static_files.map(function(data) {

    })
    return src('./')
}

var domain = 'ru',
    sub_domain = 'dev';

var dev = gulp.series(gulp.series(addCss, addJs, statics), dev)
var prod = gulp.series(gulp.series(cssMinify, jsMinify), prod)

module.exports = {
    dev: dev,
    prod: prod
}