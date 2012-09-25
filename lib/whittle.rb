require 'kv'
require 'sequel'

DB = Sequel.connect ENV['DATABASE_URL'] || 'postgres://localhost/whittle'

require 'sequel/extensions/pg_hstore'

unless DB.table_exists?(:events)
  DB.run("create extension hstore")
  DB.create_table(:events) do
    primary_key :id
    column :time, :timestamp
    column :data, :hstore
  end
end

require 'whittle/version'
require 'whittle/cli'

