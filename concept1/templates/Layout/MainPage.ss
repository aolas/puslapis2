    <div class="message">Pranesimas</div>
    <div class="aukstis">
            <div class="center">
                    
                <div id="rm_container" class="rm_container">
                    <ul>
                        <li data-images="rm_container_1" data-rotation="-15"></li>
						<li data-images="rm_container_2" data-rotation="-5"></li>
						<li data-images="rm_container_3" data-rotation="5"></li>
						<li data-images="rm_container_4" data-rotation="15"></li>
                    </ul>
                    <div id="rm_mask_left" class="rm_mask_left"></div>
                    <div id="rm_mask_right" class="rm_mask_right"></div>
                    <div id="rm_corner_left" class="rm_corner_left"></div>
                    <div id="rm_corner_right" class="rm_corner_right"></div>
                    <h2>$Content</h2>
                    
                    <div id="img_container" style="display:none;">
                        <% control getGalleryImages %>   
                            <img src="$Image.SetHeight(550).URL"/>
                        <% end_control %> 
					</div>
                    
				<div class="rm_nav">
					<a id="rm_next" href="#" class="rm_next"></a>
					<a id="rm_prev" href="#" class="rm_prev"></a>
				</div>
				<div class="rm_controls">
					<a id="rm_play" href="#" class="rm_play">Play</a>
					<a id="rm_pause" href="#" class="rm_pause">Pause</a>
				</div>
                </div>
            </div>
    </div>
        <% require javascript(themes/concept1/js/lib/jquery-1.8.3.min.js) %>
        <% require javascript(themes/concept1/js/lib/jquery.mousewheel.min.js) %>
        <% require javascript(themes/concept1/js/lib/jquery.transform-0.9.3.min_.js) %>
        <% require javascript(themes/concept1/js/mscript.js) %>