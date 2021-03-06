$(document).ready(function(){
    $('.stopscroll').click(function(){
      stop_scroll(this);
      uncheck_other(this);
    });

    // Stops scrolling while menu is active, restores when unchecked
    function stop_scroll(that) {
        if($(that).is(':checked')){
            if($('html, body').css('overflow').toLowerCase() != 'hidden'){
                $('html, body').css({
                    'overflow': 'hidden'
                }) 
            }
        }
        else{
            $('html, body').css({
                'overflow': 'auto'
            })
        }
    }

    // Unchecks the other menu, which effectively hides it
    function uncheck_other(that){
        var id = $(that).attr('id');

        if(id == 'right-trigger'){
            $('#left-trigger').attr('checked', false);

            active_menu(that, id, 'left-trigger');
        }
        else{
            $('#right-trigger').attr('checked', false);

            active_menu(that, id, 'right-trigger');
        }
    }

    // Changes style of active menu, removes style from the other menu
    function active_menu(that, id, other){
        if($(that).is(':checked')){
            $('label[for="' + id + '"]').css('background', '#333');
            $('label[for="' + other + '"]').css('background', '');
        }
        else{
            $('label[for="' + id + '"]').css('background', '');
        }
    }
});
