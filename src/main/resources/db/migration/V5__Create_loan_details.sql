CREATE TABLE loan_details(

	id 				BIGSERIAL 			PRIMARY KEY,
	loan_id 		BIGINT				NOT NULL,
	profile_id		BIGINT				NOT NULL,
	loan_role		CHAR(255) 			NOT NULL,
	installment		INTEGER,
	rate			DECIMAL,
	created_at		TIMESTAMP WITH TIME ZONE 	NOT NULL	DEFAULT now(),
	updated_at 		TIMESTAMP WITH TIME ZONE	NOT NULL	DEFAULT now()	
);