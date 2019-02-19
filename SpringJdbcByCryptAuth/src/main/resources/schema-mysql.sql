DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Authorities;
DROP TABLE IF EXISTS Users;

CREATE TABLE Employee (
  empId VARCHAR(10) NOT NULL,
  empName VARCHAR(100) NOT NULL
);

create table Users (
    username varchar(50) not null primary key,
    password varchar(120) not null,
    enabled boolean not null
);

create table Authorities (
    username varchar(50) not null,
    authority varchar(50) not null,
    foreign key (username) references users (username)
);

