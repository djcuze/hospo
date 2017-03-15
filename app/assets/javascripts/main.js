document.addEventListener("turbolinks:load", function() {
    $('.ui.sidebar')
        .sidebar({
            context: $('body')
        })
        .sidebar('attach events', '.context.example .menu .item')
    ;

    $('.left.sidebar').first()
        .sidebar('attach events', '.toggle.button')
    ;
    $('.toggle.button')
        .removeClass('disabled')
    ;
});