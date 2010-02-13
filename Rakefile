%w[rubygems rake rake/clean fileutils newgem hoe].each { |f| require f }
require File.dirname(__FILE__) + '/lib/config_fu'

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec('config_fu') do
  developer('Dirk Breuer', 'dirk@railsbros.de')
  post_install_message = "Place your config_fu.rb into the config dir."
  rubyforge_name       = "config_fu"
  extra_dev_deps = [
    ['newgem', ">= #{::Newgem::VERSION}"],
    ['mocha']
  ]
  
  clean_globs |= %w[**/.DS_Store tmp *.log]
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
