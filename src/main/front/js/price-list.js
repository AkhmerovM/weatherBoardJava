import $ from 'jquery';

const config = ['jeans', 'outerwear', 'coat', 'spec', 'fur', 'fur-coat', 'toys', 'car', 'blanket', 'plaid', 'rug', 'linen' ];

$(document).ready(function () {
    const urlParams = window.location.href.split('/');
    const lastWord = urlParams[urlParams.length - 1];
    const isFound = config.find((elem) => lastWord === elem);
    if (lastWord && isFound) {
        const $elem = $(`a[data-target="${lastWord}"]`);
        if ($elem.length) {
            setActive($elem);
        }
    }
    const $priceList = $('.price-list');
    $priceList
        .on('click', '.price-list__category', (e) => {
            const $target = $(e.currentTarget);
            if (!$target.hasClass('active')) {
                $priceList.addClass('disabled');
                const $list = $target.find('.price-list__list');
                removeClass('.price-list__category', 'active');
                addClass('.price-list__list', 'hidden', $list.attr('data-name'));
                $list.slideToggle( "slow", function() {
                    $target.addClass('active');
                    $list.removeClass('hidden');
                    $priceList.removeClass('disabled');
                });
            }
        });

});
function removeClass(selector, className) {
    const categories = $(selector);
    categories.each((index, elem) => {
        $(elem).removeClass(className)
    });
}
function addClass(selector, className, attr) {
    const list = $(selector);
    list.each((index, elem) => {
        if (attr !== $(elem).attr('data-name') && !$(elem).hasClass(className)) {
            $(elem).toggle( "slow", function() {
                $(elem).addClass(className)
            });
        }
    });
}

function setActive($elem) {
    const $category = $elem.parents('.price-list__category');
    const $list = $elem.parents('.price-list__list');
    if ($category.length && $list.length) {
        $category.addClass('active');
        $list.removeClass('hidden');
        $elem.addClass('active');
    }
}
