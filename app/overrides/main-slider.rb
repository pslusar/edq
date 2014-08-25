Deface::Override.new(:virtual_path => "spree/shared/_products",
             :name => "main-slider",
             :insert_before => 'erb[silent]:contains("if products.any?")',
             :text => 
             "
             <div class='slider-wrapper theme-default' style='margin-top:-130px; padding-bottom:40px;'>
                <div id='slider' class='ramblingSlider adaptingSlider'>
                  <%= small_image(products.first, :itemprop => 'image') %>
                  <img src='images/image1.jpg' alt='image1'/>
                  <a href='<%= products.first.name %>'><img src='images/image2.jpg' alt='image2'/></a>
                  <img src='images/image3.jpg' alt='image3'/>
                  <img src='images/image4.jpg' alt='image4'/>
                </div>
             </div>
             <script type='text/javascript'>
              $(window).load(function() {
                      $('#slider').ramblingSlider({
                          adaptImages: true,
                          useLargerImage: false,
                          alignBottom: true
                      });
                  });
              </script>"
             )