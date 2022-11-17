use sql_tim;
create table sales (
    purchase_number int not null primary key auto_increment,
    date_of_purchase date not null,
    customer_id int,
    item_code varchar(10) not null
);

create table customers (
	customer_id int not null primary key auto_increment,
    first_name varchar(255) not null, 
    last_name varchar(255) null, 
    email_address varchar(255) null, 
    number_of_complaints int
);

select * from customers;
select * from sql_tim.customers;


# drop table sql_tim.customers;
