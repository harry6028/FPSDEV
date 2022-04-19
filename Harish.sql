--liquibase formatted sql

--changeset Haru:1
create table HaruTable( 
id int primary key,
namee varchar(255)
);

--rollback drop table Haru;