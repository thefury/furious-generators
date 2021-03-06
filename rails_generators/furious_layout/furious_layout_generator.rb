class FuriousLayoutGenerator < Rails::Generator::Base
  default_options :haml => false

  def initialize(runtime_args, runtime_options = {})
    super
    @name = @args.first || "site"
  end

  def manifest
    record do |m|
      m.directory 'public/stylesheets'
      m.directory 'public/javascripts'
      m.directory 'app/helpers'
      m.directory 'app/views/layouts'

      if options[:haml]
        m.template 'layout-haml.rb', "app/views/layouts/#{file_name}.html.haml"
      else
        m.template 'layout-erb.rb', "app/views/layouts/#{file_name}.html.erb"
      end

      m.file 'helper.rb', 'app/helpers/layout_helper.rb'
      m.file 'stylesheet.rb', "public/stylesheets/#{file_name}.css"
      m.file 'javascript.rb', "public/javascripts/#{file_name}.js"
    end

  end

  protected

  def banner
    "Usage: #{$0} furious_layout [layout_name] [options]"
  end

  def file_name
    @name.underscore
  end

  def add_options!(opt)
    opt.separator ''
    opt.separator 'Options:'
    opt.on("--haml",
           "Generate haml layouts instead of erb") { |v| options[:haml] = v }
  end
end
