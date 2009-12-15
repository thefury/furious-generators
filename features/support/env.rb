$:.unshift(File.dirname(__FILE__) + "/../../rails_generators")
require "rubygems"
require "rails_generator"
require 'rails_generator/scripts/generate'
require "fileutils"

package_root = File.join(File.dirname(__FILE__), "/../../")
generators_root = File.join(package_root, "rails_generators")
tmp_rails_app_name = "tmp_rails_app"
tmp_rails_app_root = File.join(package_root, tmp_rails_app_name)

Rails::Generator::Base.append_sources(Rails::Generator::PathSource.new(:plugin, "#{generators_root}"))

module GeneratorHelpers
  def generate_rails_app
    FileUtils.mkdir(@app_root)
  end

  def remove_javascripts
    FileUtils.rm_rf(File.join(@app_root, "public", "javascripts"))
  end

  def remove_stylesheets
    FileUtils.rm_rf(File.join(@app_root, "public", "stylesheets"))
  end

  def remove_layouts
    FileUtils.rm_rf(File.join(@app_root, "app", "views", "layouts"))
  end

  def generate(*args)
    local_options = !args.empty? && args.last.is_a?(Hash) ? args.pop : {}
    local_options.merge!({:destination => @app_root, :quiet => true})

    Rails::Generator::Scripts::Generate.new.run(args, local_options)
  end

  def generate_jquery(*args)
    generate(:furious_jquery, *args)
  end

  def generate_blueprint(*args)
    generate(:furious_blueprint, *args)
  end

  def generate_layout(*args)
    generate(:furious_layout, *args)
  end

  def javascript_exists?(script_name)
    File.exists?(File.join(@app_root, "public", "javascripts", script_name)).should be_true
  end

  def stylesheet_exists?(style_name)
    File.exists?(File.join(@app_root, "public", "stylesheets", style_name)).should be_true
  end

   def layout_exists?(layout_name)
    File.exists?(File.join(@app_root, "app", "views", "layouts", layout_name)).should be_true
  end

  def helper_exists?(helper_name)
    File.exists?(File.join(@app_root, "app", "helpers", helper_name)).should be_true
  end
end

Before do
  @app_root = tmp_rails_app_root
end

After do
  FileUtils.rm_rf(tmp_rails_app_root)
end

World(GeneratorHelpers)
