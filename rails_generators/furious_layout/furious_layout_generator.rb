# load inthe library

class FuriousLayoutGenerator < Rails::Generator::NamedBase
  # default options
  #  - haml or erb
  #  - application name

  # attr_readers
  # initialize

  def manifest
    record do |m|
      m.directory 'public/stylesheets'
      m.directory 'app/helpers'
      m.directory 'app/views/layouts'

      m.template 'layout-erb.rb', "app/views/layouts/#{file_name}.html.erb"
      # m.template 'layout-haml.rb', 'app/views/layouts/#{file_name}.html.haml'

      m.file 'helper.rb', 'app/helpers/layout_helper.rb'
      m.file 'stylesheet.rb', "public/stylesheets/#{file_name}.css"
      m.file 'javascript.rb', "public/javascripts/#{file_name}.js"
    end

  end

  protected
  def banner
    "Usage: #{$0}: #{spec.name}"
  end

  def file_name
    @name.underscore
  end

end
