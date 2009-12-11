# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{furious-generators}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Trevor Oke"]
  s.date = %q{2009-12-11}
  s.description = %q{Custom generators for Rails applications}
  s.email = %q{trevor@trevoroke.com}
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".gitignore",
     "CHANGES",
     "README.md",
     "Rakefile",
     "VERSION",
     "features/auth_generator.feature",
     "features/blueprint_generator.feature",
     "features/jquery_generator.feature",
     "features/layout_generator.feature",
     "furious-generators.gemspec",
     "lib/furious_generators.rb",
     "pkg/furious-generators-0.0.1.gem",
     "rails_generators/furious_blueprint/USAGE",
     "rails_generators/furious_blueprint/furious_blueprint_generator.rb",
     "rails_generators/furious_blueprint/templates/ie.css",
     "rails_generators/furious_blueprint/templates/print.css",
     "rails_generators/furious_blueprint/templates/screen.css",
     "rails_generators/furious_jquery/USAGE",
     "rails_generators/furious_jquery/furious_jquery_generator.rb",
     "rails_generators/furious_jquery/templates/jquery-1.3.2.js",
     "rails_generators/furious_jquery/templates/jquery-ui-1.7.2.custom.min.js",
     "rails_generators/furious_layout/USAGE",
     "rails_generators/furious_layout/furious_layout_generator.rb",
     "rails_generators/furious_layout/templates/helper.rb",
     "rails_generators/furious_layout/templates/javascript.rb",
     "rails_generators/furious_layout/templates/layout-erb.rb",
     "rails_generators/furious_layout/templates/layout-haml.rb",
     "rails_generators/furious_layout/templates/stylesheet.rb"
  ]
  s.homepage = %q{http://github.com/thefury/furious-generators}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Custom generators for Rails applications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

