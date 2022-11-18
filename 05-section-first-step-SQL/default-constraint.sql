drop table customers;


alter table customers
change column number_of_complaints number_of_complaints int default 0;

alter table customers
alter column number_of_complaints drop default; 

-- exercise
create table companies(
	company_id varchar(255),
    company_name varchar(255) default 'X',
    headquarters_phone_number varchar(255), 
    primary key (company_id),
    unique key ( headquarters_phone_number )
);
