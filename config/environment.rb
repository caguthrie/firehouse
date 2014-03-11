require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/firehouses.db"
)

require_relative '../lib/firehouse'
require_relative '../lib/firehouse_reader'