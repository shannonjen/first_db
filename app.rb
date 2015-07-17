# require the necessary libs
require 'sinatra'
require 'sinatra/activerecord'

# set the db name (will be created if the
# db does not already exist)
set :database, "sqlite3:first_database.sqlite3"

require './models'

get '/' do	
	User.create(email: "jen@nycda.com", fname: "jen", lname: "shannon")
	@users = User.all
	erb :index
end

get '/user' do
	@user = User.last
	erb :user
end

