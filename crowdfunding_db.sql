-- drop tables 

drop table if exists contacts;
drop table if exists category;
drop table if exists campaign;
drop table if exists subcategory;

CREATE TABLE contacts (
	contact_id int NOT NULL,
	first_name VARCHAR (150) NOT NULL,
	last_name VARCHAR (150) NOT NULL, 
	email VARCHAR (255) NOT NULL,
		PRIMARY KEY (contact_id)
);
		
CREATE TABLE category (
	category_id VARCHAR (150) NOT NULL,
	category VARCHAR (150) NOT NULL,
		PRIMARY KEY (category_id)
	);
	
CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR (255) NOT NULL, 
	description VARCHAR (255) NOT NULL, 
	goal FLOAT NOT NULL, 
	pledged FLOAT NOT NULL, 
	outcome VARCHAR (255) NOT NULL, 
	backers_counts INT NOT NULL, 
	country VARCHAR (255) NOT NULL, 
	currency VARCHAR (255) NOT NULL, 
	launched_date DATE NOT NULL, 
	end_date DATE NOT NULL,
	category_subcategory VARCHAR (255) NOT NULL, 
	category VARCHAR (255) NOT NULL, 
	subcategory VARCHAR (255) NOT NULL, 
	category_id VARCHAR (255) NOT NULL, 
	subcategory_id VARCHAR (255) NOT NULL, 
		PRIMARY KEY (cf_id),
		FOREIGN KEY (subcategory_id)
		FOREIGN KEY (category_id)
		FOREIGN KEY (contact_id)
	); 

CREATE TABLE subcategory (
	subcategory_id VARCHAR (150) NOT NULL, 
	subcategory VARCHAR (150) NOT NULL, 
		PRIMARY KEY (subcategory_id));
	
	
SELECT * FROM contacts 
SELECT * FROM category
SELECT * FROM campaign
SELECT * FROM subcategory
