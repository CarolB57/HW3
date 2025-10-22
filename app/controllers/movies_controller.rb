class MoviesController < ApplicationController
  def index
    # Pega o parâmetro de ordenação
    @coluna_ordenada = params[:sort]

    # Checa-se se params[:ratings] existe. Se existir, permite e converte para um hash normal. Se não, usa um hash vazio
    @ratings_selecionados = params[:ratings] ? params[:ratings].permit!.to_h : {}

    # Variável para a View saber todos os ratings que existem
    @all_ratings = Movie.all_ratings

    # Define a lista de ratings a serem mostrados
    if @ratings_selecionados.empty?
      @ratings_para_mostrar = Movie.all_ratings
    else
      @ratings_para_mostrar = @ratings_selecionados.keys
    end

    # Busca os filmes no banco, aplicando filtro e ordenação
    @movies = Movie.where(rating: @ratings_para_mostrar).order(@coluna_ordenada)
  end

  def show
    id = params[:id] # recupera o ID do filme da rota da URI
    @movie = Movie.find(id) # busca o filme pelo ID único
  end
end