# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

ActiveRecord::Tasks::DatabaseTasks.register_task(/trilogy/, ActiveRecord::Tasks::MySQLDatabaseTasks)

Rails.application.load_tasks
