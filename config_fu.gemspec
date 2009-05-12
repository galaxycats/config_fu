# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{config_fu}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dirk Breuer"]
  s.date = %q{2009-05-12}
  s.default_executable = %q{config_fu_init}
  s.description = %q{}
  s.email = ["dirk@railsbros.de"]
  s.executables = ["config_fu_init"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.rdoc"]
  s.files = [".git/COMMIT_EDITMSG", ".git/FETCH_HEAD", ".git/HEAD", ".git/ORIG_HEAD", ".git/config", ".git/description", ".git/hooks/applypatch-msg.sample", ".git/hooks/commit-msg.sample", ".git/hooks/post-commit.sample", ".git/hooks/post-receive.sample", ".git/hooks/post-update.sample", ".git/hooks/pre-applypatch.sample", ".git/hooks/pre-commit.sample", ".git/hooks/pre-rebase.sample", ".git/hooks/prepare-commit-msg.sample", ".git/hooks/update.sample", ".git/index", ".git/info/exclude", ".git/logs/HEAD", ".git/logs/refs/heads/master", ".git/logs/refs/remotes/origin/master", ".git/objects/06/4a89148a36834150aab60d615665e126031266", ".git/objects/06/ea175719959af6c6132bc379627c29a1eb36fd", ".git/objects/0d/8accf4b0aa08926036d898213e4e3a87ad7da5", ".git/objects/0e/c938a8a4d0c1fc79a56c767df59fbd9602fbf0", ".git/objects/23/ea71d22528aa9b68d8d0c0dda451a12c9bac62", ".git/objects/3c/2f133fcd9d2c8fb3e6a21370fb3f5add7e05df", ".git/objects/44/ac5c958c94d84bc8c48e5c3f3e5091bf3b879a", ".git/objects/47/bfd7d3f38eee9543832420349bc62fed4a4cb0", ".git/objects/53/287ce171d217d7797369f842a846521ea74161", ".git/objects/63/156b232faf93db14c03a006d078388a68fe8c3", ".git/objects/65/bc3a0f6df7b5bf1045c422032976e0e5403fc6", ".git/objects/73/6d53d0cf9c779a16badfeeb75a0a107b5c8364", ".git/objects/79/307056712834f8f8490c34c82e3540a251154e", ".git/objects/7f/b645fa9a9036653817b9d041e3c8062e8a82eb", ".git/objects/8b/c064231a206ad351f92c3985e92e83082cd31c", ".git/objects/a5/ae63c1635c6598462ecbbdcd05156f1a581d1b", ".git/objects/aa/05ccd29c1f92f9f75e1bfe2f8039a872bc955a", ".git/objects/ba/f3b09096f1a3442a3821a856df92870a0b5f66", ".git/objects/c2/0ff3e4d088c493b02493740d5959e1643b92b0", ".git/objects/d6/3c024b54d7f0de232f13d24e23b23fe16a08fa", ".git/objects/d9/a998ede87a91a893072b56222681706b31f0af", ".git/objects/dc/74d2e32c005eac3af5e6f1433af8b8dc39b038", ".git/objects/e7/8b7313454601fbb14f2627ff00459de3dbfd39", ".git/objects/e9/5e28557ac18b5631cfe761ecc4a488f5aecc60", ".git/objects/f6/ec6e397d91e90aa763a177c7264e8b731eddcb", ".git/objects/fa/db32184e664488f002ac38da977d3f7efd4a46", ".git/objects/fe/6da8c32d032492595e056e8d1fcb20a7562024", ".git/refs/heads/master", ".git/refs/remotes/origin/master", ".gitignore", "History.txt", "Manifest.txt", "README.rdoc", "Rakefile", "app_generators/config_fu_generator.rb", "bin/config_fu_init", "config_fu.gemspec", "lib/config_fu.rb", "script/console", "script/destroy", "script/generate", "test/test_config_fu.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{A very simple gem that allows environment specific configuration within a Rails application.}
  s.post_install_message = %q{Run 'config_fu_init' in your Rails app directory to get your config file generated.}
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
      s.add_runtime_dependency(%q<rubigen>, [">= 0"])
      s.add_development_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 1.8.0"])
    else
      s.add_dependency(%q<rubigen>, [">= 0"])
      s.add_dependency(%q<newgem>, [">= 1.3.0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 1.8.0"])
    end
  else
    s.add_dependency(%q<rubigen>, [">= 0"])
    s.add_dependency(%q<newgem>, [">= 1.3.0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 1.8.0"])
  end
end
