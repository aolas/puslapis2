    <% include Navigation %>
    <div class="message">Pranesimas</div>
    <div class="aukstis">
            <div class="content">

            <% control getGalleryImages %>          
                    <img class="lazy imageholder" src="themes/concept1/img/loading.gif" data-original="$Image.SetHeight(550).URL">
			<% end_control %>
            
			
            </div>
    </div>
        <div class = "thumbwrap" >
            <div class="thumbwrap_arrow_left"></div>
            <div class="thumbwrap_arrow_right"></div>
            <div class="thumbcontainer">
            
            <% control getGalleryImages %>  
                <img class="lazy" src="themes/concept1/img/loadinfosmall.gif" data-original="$Image.SetHeight(100).URL" data-img550="$Image.SetHeight(550).URL">
            <% end_control %>
            </div>
        </div>
        <% require javascript(themes/concept1/js/lib/jquery-1.8.3.min.js) %>
        <% require javascript(themes/concept1/js/lib/jquery.lazyload.min.js) %>
        <% require javascript(themes/concept1/js/lib/jquery.mousewheel.min.js) %>
        <% require javascript(themes/concept1/js/gscript.js) %>