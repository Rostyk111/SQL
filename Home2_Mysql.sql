create schema library;
select database();
use library;

create table book(
id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
name_book varchar(120) not null,
details text,
publish_date date not null default'2018-01-01',
category varchar(30) not null,
isbn int(20) not null primary key  auto_increment,
pages int not null auto_increment,
name_author varchar(45) not null,
surname_author varchar(45) not null,
email_author varchar(30) not null primary key,
age int not null,
bithday date not null,
awards varchar(120)
);


SELECT * FROM library.book;
insert into book (name_book, details, publish_date, category, name_author, surname_author, email_author, age, bithday, awards)
values
("Anna Karenina", "Anna Karenina tells of the doomed love affair between the sensuous and rebellious Anna and the dashing officer, Count Vronsky.", "1984", "romane", "Leo", 'Tolstoy', "54", "18-08-1932",""),
("Madame Bovary","","1976","romane","Gustave ","Flaubert","","65","18-12-1880",""),
("War and Peace","Epic in scale, War and Peace delineates in graphic detail events leading up to Napoleon's invasion of Russia, and the impact of the Napoleonic era on Tsarist society, as seen through the eyes of five Russian aristocratic families.","1968","romane"," Leo","Tolstoy","","54","18-08-1932",""),
("The Adventures of Huckleberry Finn","Revered by all of the town's children and dreaded by all of its mothers, Huckleberry Finn is indisputably the most appealing child-hero in American literature. ","1981","adventure"," Mark","Twain","mark@gmail.com","47","30-2-1835","3 medals"),
("The Adventures of Tom Sawyer","The Adventures of Tom Sawyer by Mark Twain is an 1876 novel about a young boy growing up along the Mississippi River.","1899","adventure","Mark","Twain","mark@gmail.com","47","30-2-1835","3 medals"),
("Hamlet","The play, set in Denmark, recounts how Prince Hamlet exacts revenge on his uncle Claudius, who has murdered Hamlet's father, the King, and then taken the throne and married Gertrude, Hamlet's mother.","1601","romane","William","Shakespeare","will@gmail.com","27","26-04-1564","oskar"),
("Don Quixote"," Quixano eventually appears to other people to have lost his mind from little sleep and food and because of so much reading.","1900","adventure","Miguel","Cervantes","mig@ukr.net","23","29-09-1547","gremmy"),
("One Hundred Years of Solitude","he novel tells the story of the rise and fall of the mythical town of Macondo through the history of the Buend?a family","2004","novel"," Gabriel","Marquez","lov@yahoo.com","29","06-040-1989",""),
("The Odyssey","The Odyssey is one of two major ancient Greek epic poems attributed to Homer. It is, in part, a sequel to the Iliad, the other work traditionally ascribed to Homer.","1456","poem","Homer","o","","89","12-31-1299",""),
("Emma ","Before she began the novel, Austen wrote, I am going to take a heroine whom no-one but myself will much like.","2014","novel","Jane","Austen","jj@fmail.com","36","15-06-1992","2 medals");

SELECT * FROM book;
SELECT * FROM library.book where id in(3, 5,10);
SELECT * FROM library.book where pages>150;
SELECT * FROM library.book where age>30;
SELECT * FROM library.book where awards IS NULL;
SELECT * FROM library.book where email_author='jj@fmail.com';
SELECT * FROM library.book where isbn='9786177730636';
SELECT * FROM library.book where category='novel';
SELECT * FROM library.book where pages<200 AND age>25;
SELECT * FROM library.book where category IN('romane', 'adventure');
SELECT * FROM library.book ORDER BY name_book;
SELECT * FROM library.book ORDER BY email_author;
SELECT DISTINCT category FROM library.book;
SELECT DISTINCT name_author FROM library.book;
SELECT * FROM library.book where publish_date>'2014';
SELECT * FROM library.book where publish_date<'2000';