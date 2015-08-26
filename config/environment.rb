require 'net/http'
require 'uri'
require 'bundler/setup'
Bundler.require(:default)

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/sinatra_messages.sqlite3'
)

require_relative '../models/concerns/interface'
require_relative '../models/message'
require_relative '../app'
