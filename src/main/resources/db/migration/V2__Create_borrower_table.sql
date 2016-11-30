CREATE TABLE profile_borrower(

	id 				BIGSERIAL 			PRIMARY KEY,
	profile_id		BIGINT				NOT NULL 			UNIQUE,
	bank_ecs_activated	BOOLEAN			NOT NULL			DEFAULT FALSE,
	current_employer	CHAR(255),
	office_email_address	CHAR(255),
	member_rating	CHAR(255),
	employment_status CHAR(255) 		NOT NULL, 
	aadhar_id		CHAR(255)			NOT NULL,
	home_ownership	CHAR(255),
	annual_income	INTEGER,
	current_employment_date		DATE,
	total_employment_length		INTEGER,
	office_std_code	INTEGER,
	office_contact 	INTEGER,
	rent_amount		INTEGER,
	other_income 	INTEGER,
	other_income_nature 	CHAR(255),
	other_income_nature_desc	CHAR(255)

);