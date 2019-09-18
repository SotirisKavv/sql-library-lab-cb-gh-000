create table series (
  title text,
  author_id integer,
  subgenre_id integer,
  id INTEGER primary key
);

create table subgenres (
  name text,
  id INTEGER primary key
);

create table authors (
  name text,
  id INTEGER primary key
);

create table books (
  title text,
  year integer,
  series_id integer,
  id INTEGER primary key
);

create table characters (
  name text,
  species text,
  motto text,
  author_id integer,
  id INTEGER primary key
);

create table character_books (
  id INTEGER primary key,
  book_id integer,
  character_id integer
);
