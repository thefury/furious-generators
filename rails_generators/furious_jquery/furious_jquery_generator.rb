class FuriousJqueryGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'public/javascripts'

      m.file 'jquery-ui-1.7.2.custom.min.js', 'public/javascripts/jquery-ui.min.js'
      m.file 'jquery-1.3.2.js', 'public/javascripts/jquery.js'
    end
  end

  protected
  def banner
    "Usage: #{$0} #{spec.name}"
  end
end
