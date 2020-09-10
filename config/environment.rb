require 'bundler'
Bundler.require
require_all 'bin'
require 'poke-api-v2'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
require_all 'lib'

ActiveRecord::Base.logger = nil

# ActiveRecord::Base.establish_connection(
#     :adapter => "sqlite3",
#     :database => "db/students.sqlite"
#   )

