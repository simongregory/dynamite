# encoding: utf-8

PROJECT_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))

$: << File.join(PROJECT_ROOT, 'lib')

require 'dynamite'

vars = [ENV['ENVIRONMENT'], ENV['CI']]

# if vars.include? nil
#     raise "Please ensure following environment variables are set ENVIRONMENT[int|test|stage|live], CI[true|false]"
# end

def base_path
  "http://www.#{ENV['ENVIRONMENT']}.bbc.co.uk"
end

Before do
  @dynamite = Dynamite.new
end

After do
  @dynamite = nil
end
