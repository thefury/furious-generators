require "rubygems"
require "cucumber/rake/task"
require "spec/rake/spectask"

Cucumber::Rake::Task.new

Spec::Rake::SpecTask.new do |t|
  t.spec_files = FileList['test/**/*_spec.rb']
end

task :default => [:spec, :cucumber]

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "furious-generators"
    gemspec.summary = "Custom generators for Rails applications"
    gemspec.description = "Custom generators for Rails applications"
    gemspec.email = "trevor@trevoroke.com"
    gemspec.homepage = "http://github.com/thefury/furious-generators"
    gemspec.authors = ["Trevor Oke"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
