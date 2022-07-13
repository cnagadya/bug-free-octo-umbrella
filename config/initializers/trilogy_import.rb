require "activerecord-import/adapters/mysql_adapter"
class ActiveRecord::ConnectionAdapters::TrilogyAdapter
  include ActiveRecord::Import::MysqlAdapter
end