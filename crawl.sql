create database crawl;
use crawl ;

create table NewsPages(
id INT AUTO_INCREMENT PRIMARY KEY,
NameNews  NVARCHAR(50) not null, 
Link NVARCHAR(100) not null
);

create table Crawler (
id INT AUTO_INCREMENT PRIMARY KEY,
NameItem  NVARCHAR(50) not null, 
Link NVARCHAR(100) not null,
idNewsPage int

);

ALTER TABLE Crawler
ADD CONSTRAINT FK_Crawler_NewsPages
FOREIGN KEY (idNewsPage) REFERENCES NewsPages(id);


