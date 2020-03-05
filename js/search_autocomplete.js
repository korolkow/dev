$(function () {
    "use strict";
    jQuery.fn.searchAutocomplete = function (opt) {
        var el = this,
            cityId = opt.id,
            favoritesList =  opt.defaultList.filter(function(item) {
               return item.favorite === true
            }),
            viewedList = opt.defaultList.filter(function(item) {
                return item.favorite !== true
            })

        var getFavoritesItems = function() {
            return function findMatches(q, cb) {
                if (q === '')
                    cb(favoritesList || []);
                else
                    cb([]);
            };
        };

        var getViewedItems = function() {
            return function findMatches(q, cb) {
                if (q === '')
                    cb(viewedList || []);
                else
                    cb([]);
            };
        };

        var getCountriesItems = function() {
            return function findMatches(q, cb) {
                var countriesList = [];
                var used = {};
                if (q === '') {
                    countriesList = opt.defaultList.map(function (item) {return item.country});
                    countriesList = countriesList.filter(function (obj) {
                        return obj.id in used ? 0 : (used[ obj.id ] = 1);
                    })
                }
                cb(countriesList || []);
            };
        };

        return function () {
            el.typeahead(
                {
                    hint: true,
                    minLength: 0,
                    highlight: true
                },
                {
                    name: 'favorites',
                    display: 'value',
                    limit: favoritesList.length,
                    source: getFavoritesItems(),
                    templates: {
                        header: function(data) {
                            return '<div><h3>Мои пункты</h3></div>';
                        },
                        suggestion: function(data) {
                            return '<div><span class="star yellow"></span><strong>' + data.id + '</strong>, ' + data.name + '</div>';
                        }
                    }
                },
                {
                    name: 'viewed',
                    source: getViewedItems(),
                    limit: viewedList.length,
                    display: 'value',
                    templates: {
                        header: function(data) {
                            return '<div><h3>Недавно просмотренные</h3></div>';
                        },
                        suggestion: function(data) {
                            return '<div><span class="star"></span><strong>' + data.id + '</strong>, ' + data.name + '</div>';
                        }
                    }
                },
                {
                    name: 'cities',
                    source: function (query, qqq, process) {
                        return $.ajax({
                            url: query === ''?('/listcache/lc_' + cityId + '.json'):('/sinpl?fchar=' + encodeURIComponent(query) + '&searchby=cities&mcntcities=8'),
                            type: 'GET',
                            dataType: 'json',
                            success: function (data) {
                                var newData = []
                                $.each(data.items, function () {
                                    var suggestion = {
                                        name: this.name,
                                        id: this.id
                                    }
                                    newData.push(suggestion)
                                })
                                return process(newData)
                            },
                            error: function () {
                            }
                        })
                    },
                    limit: 8, //'Infinity',
                    display: 'value',
                    templates: {
                        header: function(data) {
                            return data.query === ''?'<div><h3>Ближайшие пункты</h3></div>':'<div><h3>Найденные пункты</h3></div>'
                        },
                        suggestion: function(data) {
                            return '<div><span class="star"></span><strong>' + data.id + '</strong>, ' + data.name + '</div>';
                        },
                        notFound: '<div class="empty">По вашему запросу ничего не найдено</div><div class="all-result"><a href="#">Нет нужного пункта? Воспользуйтесь Мегапоиском</a></div>',
                    }
                },
                {
                    name: 'airports',
                    source: function (query, qqq, process) {
                        if (query !== '')
                            return $.ajax({
                                url: '/sinpl?fchar=' + encodeURIComponent(query) + '&searchby=airports&mcntcities=5',
                                type: 'GET',
                                dataType: 'json',
                                success: function (data) {
                                    var newData = []
                                    $.each(data.items, function () {
                                        var suggestion = {
                                            name: this.name,
                                            id: this.id
                                        }
                                        newData.push(suggestion)
                                    })
                                    return process(newData)
                                },
                                error: function () {
                                }
                            })
                    },
                    limit: 5,
                    display: 'value',
                    templates: {
                        header: '<div><h3>Найденные аэропорты</h3></div>',
                        suggestion: function(data) {
                            return '<div><span class="star"></span><strong>' + data.id + '</strong>, ' + data.name + '</div>';
                        },
                        footer: function(data) {
                            return '<div class="all-result"><a href="#">Все результаты</a></div>';
                        }
                    }
                },
                {
                    name: 'countries',
                    source: getCountriesItems(),
                    limit: 3,
                    display: 'value',
                    templates: {
                        header: function(data) {
                            return '<div><h3>Страны</h3></div>';
                        },
                        suggestion: function(data) {
                            return '<div><strong>' + data.id + '</strong>, ' + data.name + '</div>';
                        }
                    }
                }
            ).bind('typeahead:select', function (ev, suggestion) {
                location.href = '/pogoda/' + suggestion.id
            }).bind('typeahead:active', function () {
                $(this).prop('placeholder', '')
            })
        }()
    }
});