require('sinatra')
require('sinatra/reloader')
require('./lib/movie')
require('./lib/actor')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "movie_database"})

get("/")do
# @patrons = Patron.all()
  erb(:index)
end
