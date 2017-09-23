# -*- encoding: utf-8 -*-
# stub: icomoon-rails 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "icomoon-rails".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tse-Ching Ho".freeze]
  s.date = "2012-11-29"
  s.description = "IcoMoon is an icon set rendered by css font-face way. This gem integrates IcoMoon with Rails asset pipeline for easy of use.".freeze
  s.email = ["tsechingho@gmail.com".freeze]
  s.homepage = "https://github.com/tsechingho/icomoon-rails".freeze
  s.rubygems_version = "2.6.13".freeze
  s.summary = "Integrate font-faced icons of IcoMoon with Rails asset pipeline".freeze

  s.installed_by_version = "2.6.13" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1.1"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 3.1.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<thor>.freeze, ["~> 0.14"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1.1"])
      s.add_dependency(%q<sass-rails>.freeze, [">= 3.1.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<thor>.freeze, ["~> 0.14"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1.1"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 3.1.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<thor>.freeze, ["~> 0.14"])
  end
end
