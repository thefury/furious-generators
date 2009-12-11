<?xml version="1.0" encoding="utf-8"?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <title>Web Application</title>
    <%%= javascript_include_tag ['jquery', 'jquery-ui', 'application', '<%= file_name %>'] %>
    <%%= stylesheet_link_tag ['screen', '<%= file_name %>'] %>
  </head>
  <body>
    <div id="document">
      <div id="header">
      </div>
      <div id="content">
        <div id="content_wrapper">
          <%%- unless flash.empty? -%>
          <div id="notification" class="section">
            <%%- flash.each do |name, message| -%>
            <%%= content_tag :div, message, :id => "flash_#{name}", :class => 'flash' %>
            <%%- end -%>
          </div>
          <%%- end -%>

          <div id="content_main">
            <%%= yield %>
          </div>
        </div>
        <div id="content_sidebar">
        </div>
      </div>
      <div id="footer">
      </div>
    </div>
  </body>
</html>