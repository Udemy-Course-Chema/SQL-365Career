-- DROP TABLE companies;

CREATE TABLE companies(
	company_id INT AUTO_INCREMENT, 
    company_name VARCHAR(255) NOT NULL,
    headquarters_phone_number VARCHAR(255),
    PRIMARY KEY ( company_id )
);

ALTER TABLE companies 
MODIFY company_name VARCHAR(255) NULL;

/**
Este es el otro comentario
*/
-- Las dos son lo mismo.
-- La diferencia es que con el Change puedes renombrar y con el MODIFY no. 
#alter table companies
#change column company_name company_name varchar(255) not null;
ALTER TABLE companies
MODIFY company_name VARCHAR(255) NOT NULL;

INSERT INTO companies( company_name, headquarters_phone_number )
VALUES ('IBM','+52 (555) 55-5555');

SELECT 
    *
FROM
    companies;

-- exercise

ALTER TABLE companies
MODIFY headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;

