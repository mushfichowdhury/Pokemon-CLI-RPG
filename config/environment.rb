require 'bundler'
require 'poke-api-v2'
require 'tty-prompt'
Bundler.require
require_all 'app'
require_all 'bin'
require_all 'lib'


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
ActiveRecord::Base.logger = nil

# ActiveRecord::Base.establish_connection(
#     :adapter => "sqlite3",
#     :database => "db/students.sqlite"
#   )

