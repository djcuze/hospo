// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

// Collapsible Recipe Detail
document.addEventListener("turbolinks:load", function () {
    var recipe = $('.recipe > li');

    recipe.click(function () {
        $(this).addClass('extended');
    })
});