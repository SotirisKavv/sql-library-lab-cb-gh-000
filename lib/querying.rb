def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year from books
    inner join series
    on books.series_id = series.id
    order by books.year
    limit 3;"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters
  order by length(motto) desc
  limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(species) as frq from characters
  group by species
  order by frq desc
  limit 1;"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name from series
  inner join authors on series.author_id = authors.id
  join subgenres on series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "select series.title from character_books
  inner join characters on character_books.character_id = characters.id
  join books on character_books.book_id = books.id
  join series on books.series_id = series.id
  where characters.species = 'human';"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
