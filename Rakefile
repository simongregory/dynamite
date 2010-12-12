# encoding: utf-8

#require 'bundler'
#Bundler.require

require 'cucumber/rake/task'
require 'metric_fu'
require 'rake/clean'
require 'rake/rdoctask'
require 'spec'
require 'spec/rake/spectask'

Spec::Rake::SpecTask.new("spec") do |t|
  t.warning = false
  t.rcov = false
  t.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new("rcov") do |t|
  t.warning = true
  t.rcov = true
end

Rake::RDocTask.new do |rdoc|
  rdoc.title = "Dynamite Blast Cap"
  rdoc.rdoc_dir = 'rdoc'
  rdoc.main = "Dynamite"
  rdoc.rdoc_files.include("README.md", "LICENSE", "lib/**/*.rb")
end

Cucumber::Rake::Task.new(:features) do |t|
  t.fork = true
  t.cucumber_opts = ['--format', (ENV['CUCUMBER_FORMAT'] || 'progress')]
end

MetricFu::Configuration.run do |config|
  config.rcov[:test_files] = ['spec/**/*_spec.rb']
  config.flay ={:dirs_to_flay => ['lib'],
                :minimum_score => 10,
                :filetypes => ['rb'] }
end

CLEAN.add('rdoc')
CLEAN.add('tmp')
