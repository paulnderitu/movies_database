require("sinatra")
  require("sinatra/reloader")
  also_reload("lib/**/*.rb")
  require("./lib/actor")
  require("./lib/movie")
  require("pg")

  DB = PG.connect({:dbname => "movie_database"})

  get("/") do
    @actors = Actor.all()
    @movies = Movie.all()
    erb(:index)
  end

  get("/actors") do
    @actors = Actor.all()
    erb(:actors)
  end

  get("/movies") do
    @movies = Movie.all()
    erb(:movies)
  end
