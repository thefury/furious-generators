!!! XML
!!! Strict
%html{ "xml:lang" => "en", :lang => "en", :xmlns => "http://www.w3.org/1999/xhtml" }
  %head
    %title
      Web Application
    = javascript_include_tag ['jquery', 'jquery-ui', 'application', '<%= file_name %>']
    = stylesheet_link_tag ['screen', 'site', '<%= file_name %>']
  %body
    #document
      #header
      #content
        #content_wrapper
          - unless flash.empty?
            #notification.section
              - flash.each do |name, message| -%>
                = content_tag :div, message, :id => "flash_\#{name}", :class => 'flash' %>
          #content_main
            = yield %>
          #content_sidebar
      #footer
