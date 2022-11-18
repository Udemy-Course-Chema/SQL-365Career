drop table companies;

create table companies(
	company_id int auto_increment, 
    company_name varchar(255) not null,
    headquarters_phone_number varchar(255),
    primary key ( company_id )
);

alter table companies 
modify company_name varchar(255) null;

-- Las dos son lo mismo.
-- La diferencia es que con el Change puedes renombrar y con el MODIFY no. 
#alter table companies
#change column company_name company_name varchar(255) not null;
alter table companies
modify company_name varchar(255) not null;

insert into companies( company_name, headquarters_phone_number )
values ('IBM','+52 (555) 55-5555');

select * from companies;

-- exercise

alter table companies
modify headquarters_phone_number varchar(255) null;

alter table companies
change column headquarters_phone_number headquarters_phone_number varchar(255) not null;

