use sql_tim;

-- 3 ways to add a column/foreign key

-- First Way
drop table sql_tim.sales;

-- Second Way
alter table sql_tim.sales
add foreign key (customer_id) references customers( customer_id ) ON DELETE CASCADE;

alter table sql_tim.sales
drop foreign key sales_ibfk_1;

-- Third way
-- In the interface


create table sales (
    purchase_number int not null auto_increment,
    date_of_purchase date not null,
    customer_id int,
    item_code varchar(10) not null,
    primary key ( purchase_number ),
    foreign key ( customer_id ) references customers( customer_id ) ON DELETE CASCADE
);



-- exercise
drop table sql_tim.sales;
drop table sql_tim.customers;
drop table sql_tim.items;
drop table sql_tim.companies;