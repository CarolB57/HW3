Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end
When /I check the following ratings: (.*)/ do |rating_list|
  # A variável 'rating_list' recebe a string "PG, R" do arquivo .feature
  # Separa em uma lista (array): ["PG", "R"]
  ratings_to_check = rating_list.split(', ')

  # Realiza um loop por cada item da lista
  ratings_to_check.each do |rating|
    # Para cada rating, marca-se o checkbox correspondente.
    check("ratings_#{rating}")
  end
end