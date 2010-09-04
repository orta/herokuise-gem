# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{herokise}
  s.version = "0.5"

  s.default_executable
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["orta therox"]
  s.date = %q{2010-09-03}
  s.description = %q{automate getting a site on heroku and git}
  s.email = %q{orta.therox@gmail.com}
  s.files = ["Rakefile", "herokise.rb", "Manifest", "herokise.gemspec"]
  s.homepage = %q{http://github.com/orta/herokuise}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Herokise"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{herokise}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{automate getting a site on heroku and git}
  s.executables = "herokise"

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<github>, [">= 0"])
      s.add_development_dependency(%q<heroku>, [">= 0"])
    else
      s.add_dependency(%q<github>, [">= 0"])
      s.add_dependency(%q<heroku>, [">= 0"])
    end
  else
    s.add_dependency(%q<github>, [">= 0"])
    s.add_dependency(%q<heroku>, [">= 0"])
  end
end
