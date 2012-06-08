# -*- encoding: utf-8 -*-
lib = File.expand_path File.join(File.dirname(__FILE__), 'lib')
$:.unshift lib unless $:.include?(lib)

require 'bundler'
require 'dynamite/version'

Gem::Specification.new do |s|
  s.name                       = ION::NAME
  s.version                    = ION::VERSION::STRING
  s.authors                    = ['Simon Gregory']
  s.email                      = "simon.gregory@bbc.co.uk"
  s.homepage                   = "http://www.bbc.co.uk/ion"
  s.summary                    = 'Dynamite provides a public view of persistent BBC programme metadata optimised for multiple concurrent varied clients.'
  s.description                = 'The dynamite gem aims to provides a consitent interface from which to spider and test the dynamite service.'
  s.required_rubygems_version  = ">= 1.3.7"
  s.executables                = ['dynamite']
  s.files                      = Dir['**/*']
  s.files.reject!              { |fn| fn.match /\.(DS_Store|svn|git|tmproj|gem)|tmp/ }
  s.add_dependency             'nokogiri'
  s.add_development_dependency 'rake', "~> 0.9.2.2"
  s.add_development_dependency 'rspec', "~> 2.10.0"
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rdoc'
  s.require_paths << 'lib'
end
