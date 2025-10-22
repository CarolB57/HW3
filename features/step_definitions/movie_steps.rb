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
  # O número de filmes no banco de dados continua o mesmo.
  expected_count = Movie.count

  # CORREÇÃO: Agora contamos os divs com a classe 'row' dentro
  # do div principal que tem o id 'movies'.
  # Subtraímos 1 para ignorar a linha do cabeçalho ("Movie Title", "Rating", etc.).
  rows = page.all('#movies > .row')
  actual_count = rows.size - 1

  # A verificação final continua a mesma.
  expect(actual_count).to eq(expected_count)
end