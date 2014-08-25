Deface::Override.new(:virtual_path => "spree/shared/_main_nav_bar",
             :name => "menu-items",
             :insert_after => "erb[loud]:contains('spree.root_path')",
             :text => 
             "</li><li><%= link_to 'Test', 'http://localhost' %></li>"
             )