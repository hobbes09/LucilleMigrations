CREATE TABLE testtable(

	id 				BIGSERIAL 			PRIMARY KEY,
	name			CHAR(255)			NOT NULL,
	roll			INTEGER,
	created_at			TIMESTAMP WITH TIME ZONE			NOT NULL	DEFAULT now()

);