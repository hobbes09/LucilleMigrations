CREATE TABLE loan_audits (

	id 				BIGSERIAL 			PRIMARY KEY,
	loan_id 		BIGINT				NOT NULL,
	old_values		jsonb,
	new_values		jsonb,
	created_at		TIMESTAMP WITH TIME ZONE 	NOT NULL	DEFAULT now()
);