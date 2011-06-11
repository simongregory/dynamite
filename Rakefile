# encoding: utf-8

require 'rubygems'
require 'cucumber/rake/task'
require 'metric_fu'
require 'rake/clean'
require 'rake/rdoctask'
require 'rspec'
require 'rspec/core/rake_task'

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

desc "Build and install the gem"
task :gem do
  sh "gem build dynamite.gemspec"
  sh "gem install dynamite-#{ION::VERSION::STRING}.gem"
  sh "rm dynamite-#{ION::VERSION::STRING}.gem"
end

CLEAN.add('*.gem')
CLEAN.add('rdoc')
CLEAN.add('tmp')
