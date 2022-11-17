use sql_tim;

drop table sql_tim.sales;
drop table sql_tim.customers;
drop table sql_tim.companies;

create table sales (
    purchase_number int not null auto_increment,
    date_of_purchase date not null,
    customer_id int,
    item_code varchar(10) not null,
    primary key ( purchase_number )
);

create table customers (
	customer_id int,
    first_name varchar(255) not null, 
    last_name varchar(255) null, 
    email_address varchar(255) null, 
    number_of_complaints int,
    primary key ( customer_id )
);


create table items(
    item_code varchar(255),
    item varchar(255),
    unit_price numeric(10,2),
    company_id varchar(255),
    primary key (item_code)
);

create table companies(
    company_id varchar(255),
    company_name varchar(255),
    headquarters_phone_number int,
    primary key ( company_id )
);
