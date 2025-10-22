Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end
When /I check the following ratings: (.*)/ do |rating_list|
  # A variável 'rating_list' recebe a string "PG, R" do arquivo .feature
  ratings_to_check = rating_list.split(', ') # Separa em uma lista

  # Realiza um loop por cada item da lista
  ratings_to_check.each do |rating|
    # Para cada rating, marca-se o checkbox correspondente
    check("ratings_#{rating}")
  end
end
Then /I should see all of the movies/ do
  # O número de filmes no banco de dados
  expected_count = Movie.count

  # Conta os divs com a classe 'row' dentro do div principal que tem o id 'movies'
  # Subtrair 1 para ignorar a linha do cabeçalho
  rows = page.all('#movies > .row')
  actual_count = rows.size - 1

  # A verificação final
  expect(actual_count).to eq(expected_count)
end
Then /I should see "(.*)" before "(.*)"/ do |movie1, movie2|
  # Encontra todos os elementos que contêm os títulos dos filmes, na ordem em que aparecem na página.
  # Procura por divs com a classe 'col-8' dentro do div com id 'movies'.
  movie_titles = page.all('#movies .row .col-8').map(&:text)

  # Verifica a posição (índice) de cada filme na lista de títulos que foi extraido
  index1 = movie_titles.index(movie1)
  index2 = movie_titles.index(movie2)

  # Se um dos filmes não foi encontrado na lista, o teste falha
  raise "#{movie1} not found on page" unless index1
  raise "#{movie2} not found on page" unless index2

  # O teste passa se o índice do primeiro filme for menor que o do segundo
  expect(index1).to be < index2
end
