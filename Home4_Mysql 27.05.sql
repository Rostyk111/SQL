use library;
create table category(
name_category varchar(50) UNIQUE NOT NULL PRIMARY KEY
);

create table author(
author_name varchar(20) not null,
author_surname varchar(30) not null,
email VARCHAR(50) UNIQUE NOT NULL PRIMARY KEY,
address VARCHAR(50),
birthday DATE NOT NULL
);

ALTER TABLE library.book
  DROP COLUMN publish_date,
  DROP COLUMN pages,
  DROP COLUMN name_author,
  DROP COLUMN author_surname,
  DROP COLUMN age,
  DROP COLUMN bithday,
  DROP COLUMN awards;
  
  INSERT INTO library.author(author_name, author_surname, email, address, birthday) values
 ('Стівен', 'Кінг', 'steave@gmail.com', 'Англія', '12.02.1996'),
 ('Артур', 'Конан Доль', 'art@gmail.com', 'Англія', '14.07.1985'),
 ('Тарас', 'Шевченко', 'shev@ukr.net', 'Україна', '03.05.1871'),
 ('Ліна', 'Костенко', 'kost@ukr.net', 'Україна', '21.08.1964'),
 ('Марк', 'Твін', 'twin@yahooo.com', 'Америка', '18.10.1896'),
 ('Олівер', 'Твіст', 'tvist@gmail.com', 'Франція', '05.04.1986'),
 ('Марк', 'Цукерберг', 'faceb@gmail.com', 'Америка', '07.09.1992'),
 ('Лев', 'Толстой', 'lev@mail.ru', 'Росія', '25.02.1847'),
 ('Мігель', 'Конандоль', 'miguel@yahoo.com', 'Італія', '13.05.1867');
  
  INSERT INTO library.category(name_category) VALUES
  ('Роман'),
  ('Поема'),
  ('Пригодницький'),
  ('Автобіографія'),
  ('Вірш'); 
  
  
ALTER TABLE library.book  ADD FOREIGN KEY  (category) REFERENCES  library.category(name_category);
ALTER TABLE library.book  ADD FOREIGN KEY  (author_email) REFERENCES  library.author(email);
  
  