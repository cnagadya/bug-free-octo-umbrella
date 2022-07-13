ActiveRecord::Tasks::DatabaseTasks.register_task("trilogy", "ActiveRecord::Tasks::MySQLDatabaseTasks")
module ActiveRecord
  module Tasks
    class MySQLDatabaseTasks
      # Override the backport of structure_dump and add the
      # --skip-comments and --single-transaction arguments to the mysqldump
      def structure_dump(filename, extra_flags)
        args = prepare_command_options
        args.concat(["--result-file", "#{filename}"])
        args.concat(["--no-data"])
        args.concat(["--skip-comments"])
        args.concat(["--single-transaction"])
        args.concat(["--set-gtid-purged=OFF"])
        args.concat(["--routines"])
        args.concat(["#{configuration['database']}"])
        args.unshift(*extra_flags) if extra_flags
        run_cmd("mysqldump", args, "dumping")
      end
    end
  end
end