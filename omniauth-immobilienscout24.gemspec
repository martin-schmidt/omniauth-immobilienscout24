# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "omniauth-immobilienscout24"
  s.version = "0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Martin Schmidt"]
  s.description = "ImmobilienScout24 strategy for OmniAuth."
  s.email = "omniauth-immobilienscout24@codin9.de"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    "Gemfile",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "lib/omniauth-immobilienscout24.rb",
    "lib/omniauth-immobilienscout24/version.rb",
    "lib/omniauth/strategies/immobilienscout24.rb",
  ]
  s.homepage = "http://github.com/martin-schmidt/omniauth-immobilienscout24"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.11"
  s.summary = "ImmobilienScout24 strategy for OmniAuth."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, [">= 0"])
      s.add_runtime_dependency(%q<omniauth-oauth>, ["~> 1.0.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
    else
      s.add_dependency(%q<multi_json>, [">= 0"])
      s.add_dependency(%q<omniauth-oauth>, ["~> 1.0.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    end
  else
    s.add_dependency(%q<multi_json>, [">= 0"])
    s.add_dependency(%q<omniauth-oauth>, ["~> 1.0.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
  end
end

