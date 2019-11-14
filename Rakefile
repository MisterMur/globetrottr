# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks
desc "Open an irb session with api"
task :api do
  sh "irb  -I  extra api.rb"
end
