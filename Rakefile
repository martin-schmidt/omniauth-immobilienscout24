# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
require './lib/omniauth-immobilienscout24/version.rb'
Jeweler::Tasks.new do |gem|
  gem.name        = "omniauth-immobilienscout24"
  gem.homepage    = "http://github.com/martin-schmidt/omniauth-immobilienscout24"
  gem.license     = "MIT"
  gem.summary     = %Q{ImmobilienScout24 strategy for OmniAuth.}
  gem.description = %Q{ImmobilienScout24 strategy for OmniAuth.}
  gem.email       = "omniauth-immobilienscout24@codin9.de"
  gem.authors     = ["Martin Schmidt"]
  gem.version     = Omniauth::Immobilienscout24::VERSION
  gem.files.exclude 'Gemfile.lock', 'omniauth-immobilienscout24.gemspec'
end
Jeweler::RubygemsDotOrgTasks.new
