class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    id = params[:id] # recupera o ID do filme da rota da URI
    @movie = Movie.find(id) # busca o filme pelo ID único
  end

end