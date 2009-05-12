%w[rubygems rake rake/clean fileutils newgem rubigen].each { |f| require f }
require File.dirname(__FILE__) + '/lib/config_fu'

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.new('config_fu', ConfigFu::VERSION) do |p|
  p.developer('Dirk Breuer', 'dirk@railsbros.de')
  p.changes              = p.paragraphs_of("History.txt", 0..1).join("\n\n")
  p.post_install_message = "Run 'config_fu_init' in your Rails app directory to get your config file generated."
  p.rubyforge_name       = p.name
  p.extra_deps = [
    ['rubigen']
  ]
  p.extra_dev_deps = [
    ['newgem', ">= #{::Newgem::VERSION}"],
    ['mocha']
  ]

  p.summary = "A very simple gem that allows environment specific configuration within a Rails application."
  
  p.clean_globs |= %w[**/.DS_Store tmp *.log]
end

require 'newgem/tasks' # load /tasks/*.rake
Dir['tasks/**/*.rake'].each { |t| load t }

task :default => :test

desc "Run unit tests"
Rake::TestTask.new(:test) do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
  t.warning = false
end
