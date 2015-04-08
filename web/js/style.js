//Navigation bar toggling
    $('#name').click(function () {
        if($(window).width() < 600) {
            $('#navigation').toggle('slow');
        }
    });
        
    $(window).resize(function(){
        if($(window).width() > 600) {
            $('#navigation').removeAttr('style');
        }
    });