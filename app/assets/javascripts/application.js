// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require jquery
//= require bootstrap-sprockets
//= require cocoon
//= require_tree .



$(document).ready(function(){
    resizableGrid();

    $(window).resize(function () {
        resizableGrid();
    });
});

// resizable drid 2x3
function resizableGrid(){
    if($(window).width() > 991) {
        $(".col-md-4").each(function (index, value) {
            var blockSelector = $(value);
            var imageSelector = blockSelector.children();

            if (blockSelector.width() >= blockSelector.height()) {
                if (imageSelector.width() <= blockSelector.width()) {
                    verticalAlign(imageSelector, blockSelector);
                }

                if (imageSelector.height() <= blockSelector.height()){
                    horizontalAlign(imageSelector, blockSelector);
                }
            } else {
                if (imageSelector.width() <= blockSelector.width()) {
                    verticalAlign(imageSelector, blockSelector);
                }

                if (imageSelector.height() <= blockSelector.height()){
                    horizontalAlign(imageSelector, blockSelector);
                }
            }
        });
    } else {
        $(".col-md-4").each(function (index, value) {
            var blockSelector = $(value);
            var imageSelector = blockSelector.children();

            imageSelector.css('max-height', 'inherit');
            imageSelector.css('max-width', '100%');
            imageSelector.css('position', 'inherit');
            imageSelector.css('left', '0px');
            imageSelector.css('top', '0px');
        });
    }

}

function verticalAlign(imageSelector, blockSelector) {
    imageSelector.css('max-height', 'inherit');
    imageSelector.css('max-width', '100%');
    imageSelector.css('position', 'absolute');
    imageSelector.css('left', 0);
    imageSelector.css('top', -((imageSelector.width() - blockSelector.width()) / 2));
}

function horizontalAlign(imageSelector, blockSelector) {
    imageSelector.css('max-width', 'inherit');
    imageSelector.css('max-height', '100%');
    imageSelector.css('position', 'absolute');
    imageSelector.css('top', 0);
    imageSelector.css('left', -((imageSelector.width() - blockSelector.width()) / 2));
}
