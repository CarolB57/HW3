class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table 'movies' do |t|
      t.string 'title'
      t.string 'rating'
      t.text 'description'
      t.datetime 'release_date'
      # Adiciona campos para que o Rails controle quando os filmes são adicionados ou modificados:
      t.timestamps
    end
  end
end
