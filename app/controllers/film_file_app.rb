class FilmFile < Sinatra::Base

  get '/films' do
    @films = Film.all
    erb :films_index
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end

  get '/directors/:id' do
    require 'pry';binding.pry
    @director = Director.find(params[:id])
    erb :director_films_index
  end


end
