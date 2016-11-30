 CREATE TABLE profile_investor(

	id 				BIGSERIAL 			PRIMARY KEY,
	profile_id		BIGINT				NOT NULL 			UNIQUE,
	pan				CHAR(255)			NOT NULL,
	nominee_first_name	CHAR(255), 
	nominee_last_name	CHAR(255),
	nominee_title		CHAR(255),
	nominee_relation	CHAR(255),
	nominee_dob			DATE

);