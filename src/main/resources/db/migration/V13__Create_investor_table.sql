CREATE TABLE investor(
	id 				BIGSERIAL 			PRIMARY KEY,		
	email 			CHAR(255) 			NOT NULL			UNIQUE,
	mobile_contact		BIGINT			NOT NULL			UNIQUE,
	pan				CHAR(255)			NOT NULL			UNIQUE,
	title			CHAR(255)   		NOT NULL,
	first_name 		CHAR(255) 			NOT NULL,
	last_name		CHAR(255) 			NOT NULL,
	password		CHAR(255) 			NOT NULL,
	contact_info_id		BIGINT			NOT NULL 			UNIQUE,
	bank_details_id		BIGINT			NOT NULL 			UNIQUE,
	is_staff			BOOLEAN			NOT NULL			DEFAULT FALSE,
	is_active			BOOLEAN			NOT	NULL			DEFAULT FALSE,
	created_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now(),
	updated_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now()
);