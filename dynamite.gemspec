# -*- encoding: utf-8 -*-
lib = File.expand_path File.dirname(__FILE__), 'lib'
$:.unshift lib unless $:.include?(lib)

require 'bundler'
require 'dynamite'
require 'rake'

Gem::Specification.new do |s|
  s.name                      = ION::NAME
  s.version                   = ION::VERSION::STRING
  s.authors                   = ['Simon Gregory']
  s.homepage                  = 'http://www.bbc.co.uk/ion'
  s.summary                   = 'Dynamite provides a public view of persistent BBC programme metadata optimised for multiple concurrent varied clients.'
  s.description               = 'The dynamite gem aims to provides a consitent interface from which to spider and test the dynamite service.'
  s.executables               = ['dynamite']
  s.required_rubygems_version = ">= 1.3.7"
  s.files                     = FileList["**/*"].exclude /.DS_Store|.svn|.git|.tmproj|tmp|.gem/
  s.add_bundler_dependencies
  s.require_paths              << 'lib'
end
