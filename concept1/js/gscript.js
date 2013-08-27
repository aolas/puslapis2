$(document).ready(function() {
    //first load conteiner width
    var width = 0,
        tWidth = 0,
        $imageholder = $('.imageholder'),
        $content = $(".content"),
        $thumbnails = $(".thumbwrap div img"),
        $thumbcontainer = $(".thumbcontainer"),
        $thumbwrap = $(".thumbwrap"),
        margin = 96,
        tmargin = 0,
        nr = 0;
        
        
    $imageholder.each(function(){
        width=$(this).width()+width+margin;
    });
    $content.width(width);
    
    // koreguojamas plotis uzkrovus nuotrauka
    $("img.lazy.imageholder").lazyload().load(function() {
        width=0;
        $imageholder.each(function(){
            width=$(this).width()+width+margin;
        });
        $content.width(width);
    });
    //thumbs
    $thumbnails.each(function(){
        tWidth=$(this).width()+tWidth + tmargin;
    });
    $thumbcontainer.width(tWidth);
    $thumbnails.lazyload().load(function() {
        tWidth=0;
        $thumbnails.each(function(){
            tWidth=$(this).width()+tWidth + tmargin;
        });
        $thumbcontainer.width(tWidth);
    });
    //thumbnails wraper arrangment
    $thumbwrap.css("left","20px");
    $thumbwrap.width($(window).width()-40);
    //mousewheel Main imgs
    $(".content").mousewheel(function(event, delta) {
        $("html, body").scrollLeft(window.pageXOffset-100*delta);
        event.preventDefault();
   });
   $(document).on("contextmenu", ".imageholder", function(e){
        $message = $('.message');
        $message.stop().css('top',e.pageY).css('left',e.pageX);
        $message.stop().fadeIn('fast').delay(3000).fadeOut('slow');
        return false;
    });

    //thumbs id
    $thumbnails.each(function(){
        $(this).data("ind",nr);
        nr+=1;
    });
    $thumbnails.click(function(){
    var ind = $(this).data("ind"),
        plotis = 0;
        for (var i = 0; i < ind; i+=1){
            plotis = plotis + $($imageholder[i]).width() + 96;
            }
            $("html, body").scrollLeft(plotis);
        });
            
    //thumbs movment
    var thumbMove = function(direction){
        var size = -$thumbwrap.scrollLeft(),
            wwidth = window.innerWidth; 
        size = size- Math.floor(wwidth/2)*direction;
        $thumbwrap.animate({scrollLeft:-size},{complete:function(){$thumbwrap.scroll();}});
        
        };
    //thumbs arrows 
    
    $(".thumbwrap_arrow_left").click(function(){
        thumbMove(-1);      
        });
    $(".thumbwrap_arrow_right").click(function(){
        thumbMove(1);
        });    
});

$(window).resize(function() {
    
  $(".thumbwrap").width($(window).width()-40);
});