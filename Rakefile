# encoding: utf-8

require 'rubygems'
require 'cucumber/rake/task'
require 'rake/clean'
require 'rspec'
require 'rspec/core/rake_task'
require 'rdoc/task'

desc 'Default: run specs.'
task :default => :spec

desc "Run all examples"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
end

namespace :spec do
  desc "Run all examples using rcov"
  RSpec::Core::RakeTask.new :rcov do |t|
    t.rcov = true
    t.rcov_opts =  %[-Ilib -Ispec --exclude "gems/*,features"]
    t.rcov_opts << %[--text-report --sort coverage --no-html --aggregate coverage.data]
  end
end

RDoc::Task.new do |rdoc|
  rdoc.title = "Dynamite Spider"
  rdoc.rdoc_dir = 'rdoc'
  rdoc.main = "Dynamite"
  rdoc.rdoc_files.include("README.md", "LICENSE", "lib/**/*.rb")
end

desc "Build and install the gem"
task :gem do
  sh "gem build dynamite.gemspec"
  sh "gem install dynamite-#{ION::VERSION::STRING}.gem"
  sh "rm dynamite-#{ION::VERSION::STRING}.gem"
end

CLEAN.add('*.gem')
CLEAN.add('rdoc')
CLEAN.add('tmp')
