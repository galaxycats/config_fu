# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{config_fu}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirk Breuer"]
  s.date = %q{2009-03-24}
  s.description = %q{}
  s.email = ["dirk@railsbros.de"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = ["History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "config_fu.gemspec", "lib/config_fu.rb", "test/test_config_fu.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{A very simple gem that allows environment specific configuration within a Rails application.}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{config_fu}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{A very simple gem that allows environment specific configuration within a Rails application.}
  s.test_files = ["test/test_config_fu.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<newgem>, [">= 1.3.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
