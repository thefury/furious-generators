class FuriousBlueprintGenerator < Rails::Generator::Base
  def manifest
    record do |m|
      m.directory 'public/stylesheets'

      m.file 'ie.css', 'public/stylesheets/ie.css'
      m.file 'screen.css', 'public/stylesheets/screen.css'
      m.file 'screen.css', 'public/stylesheets/print.css'
    end
  end

  protected

  def banner
    "Usage: #{$0} #{spec.name}"
  end
end
