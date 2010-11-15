# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require 'rubygems'
require File.expand_path('../config/application', __FILE__)
require 'rake'

Hello::Application.load_tasks


task :create_archive do
  Rake::Task['torquebox:archive'].invoke

  # Add bundler config to archive
  `jar uf hello.rails .bundle/config`

end
