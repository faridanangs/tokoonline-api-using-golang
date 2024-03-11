-- Table Users

create table users
(
	id text not null primary key,
	first_name varchar(10) not null,
	last_name varchar(20) not null,
	username varchar(20) not null,
	email varchar(50) not null,
	password text not null,
	image_url varchar(140) not null,
	image_id varchar(20) not null,
	created_at bigint not null,
	updated_at bigint not null,
	constraint users_email_unique unique(email),
	constraint users_username_uniqe unique(username)
)

alter table users
	alter column updated_at drop not null

select * from users
------------ end table users ------------------------------------------------------



-- Table Products

create table products
(
	id text not null primary key,
	product_name varchar(250) not null,
	slug varchar(250) not null,
	description text not null,
	price float8 not null,
	quantity int not null,
	discount float4,
	created_at bigint not null,
	updated_at bigint,
	user_id text not null references users(id)
)

select * from products


create table sizes
(
	id serial not null primary key,
	size varchar(50),
	created_at bigint not null,
	updated_at bigint,
	product_id text not null references products(id)
)

------------ end table products ------------------------------------------------------
