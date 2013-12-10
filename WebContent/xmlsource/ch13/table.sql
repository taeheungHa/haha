create database booksourcedb
go

use booksourcedb
go

create table  book (
    bid		varchar(50)	primary key,
    kind		varchar(50)	not null,
    title		varchar(50)	not null,
    publisher	varchar(50)	not null,
    price		int		not null
)

create table author (
    aid		varchar(50)	primary key,
    name		varchar(50)	not null
)

create table bookauthor (
    bid		varchar(50)	references book(bid),
    aid		varchar(50)	references author(aid)
)
go

insert into book values('b1', '��ǻ��',  'XML ����', '������', 20000)
insert into book values('b2', '�ڿ�����', '�Ƹ��ٿ� �ڿ�', '�ڿ����ǻ�', 15000)
insert into book values('b3', '��ǻ��', 'XML ������', '������', 30000)
insert into book values('b4', '�Ҽ�', '������ ����', '������ȭ��', 17000)
insert into book values('b5', '�ڿ�����', '������ �ź�', '�ڿ����ǻ�', 50000)

insert into author values('a1', '�ſ��')
insert into author values('a2', '���ڿ�')
insert into author values('a3', '�Źα�')
insert into author values('a4', '�ڼҼ�')
insert into author values('a5', '���Ͼ�')

insert into bookauthor values('b1', 'a1')
insert into bookauthor values('b2', 'a2')
insert into bookauthor values('b3', 'a1')
insert into bookauthor values('b3', 'a3')
insert into bookauthor values('b4', 'a4')
insert into bookauthor values('b5', 'a2')
insert into bookauthor values('b5', 'a5')















