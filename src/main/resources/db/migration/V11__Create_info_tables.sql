CREATE TABLE contact_info(
	id 				BIGSERIAL 			PRIMARY KEY,
	street_address	TEXT				NOT NULL,
	city			CHAR(255)			NOT NULL,
	state 			CHAR(255)   		NOT NULL,
	zip_code		INTEGER				NOT NULL,
	email 			CHAR(255) 			NOT NULL,
	office_email_address	CHAR(255),
	mobile_contact		BIGINT			NOT NULL,
	alternate_mobile_contact	BIGINT,
	landline_std_code	INTEGER,
	landline_contact	BIGINT,
	created_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now(),
	updated_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now()
);


CREATE TABLE bank_details(
	id 				BIGSERIAL 			PRIMARY KEY,
	bank_state		CHAR(255)   		NOT NULL,
	bank_branch		CHAR(255),
	bank_ifsc		CHAR(255),
	bank_name		CHAR(255),
	bank_city		CHAR(255),
	bank_account_number		CHAR(255),
	bank_account_type	CHAR(255),
	bank_ecs_activated	BOOLEAN			NOT NULL			DEFAULT FALSE,
	created_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now(),
	updated_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now()
);