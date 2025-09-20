class MoviesController < ApplicationController
  def index
    #@movies = Movie.all
  @coluna_ordenada = params[:sort]
  @movies = Movie.order(@coluna_ordenada)
  end

  def show
    id = params[:id] # recupera o ID do filme da rota da URI
    @movie = Movie.find(id) # busca o filme pelo ID único
  end
end
