--liquibase formatted sql

--changeset Sunil:290
create table TestSunil( 
id int primary key,
namee varchar(255)
);

--rollback drop table TestSunil;