select series.title from character_books
inner join characters on character_books.character_id = characters.id
join books on character_books.book_id = books.id
join series on books.series_id = series.id
group by characters.species;
