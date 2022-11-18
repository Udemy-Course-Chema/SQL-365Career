use sql_tim;

drop table customers;

create table customers (
	customer_id int,
    first_name varchar(255) not null, 
    last_name varchar(255) null, 
    email_address varchar(255) null, 
    number_of_complaints int,
    primary key ( customer_id )
    -- unique key ( email_address )
);


-- Agregar llave única
alter table customers
add unique key ( email_address );

-- borrar llave única
alter table customers
drop index email_address;

-- exercise
drop table customers;
create table customers(
	customer_id int auto_increment,
    first_name varchar(255),
    last_name varchar(255),
    email_address varchar(255),
    number_of_complaints int,
    primary key(customer_id)
);

alter table customers
add column gender enum('M','F') after last_name;

INSERT INTO customers (first_name, last_name, gender, email_address, number_of_complaints)
VALUES ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0); 




