CREATE TABLE loans(

	id 				BIGSERIAL 			PRIMARY KEY,
	status 			CHAR(255)   		NOT NULL,
	description		TEXT,
	original_grade	CHAR(255),
	original_sub_grade	CHAR(255),
	current_grade	CHAR(255),
	current_subgrade	CHAR(255),
	purpose			CHAR(255),
	loan_type		CHAR(255),
	expiry_date		TIMESTAMP WITH TIME ZONE,
	status_updated_at		TIMESTAMP WITH TIME ZONE,
	whole_loan_end_date		TIMESTAMP WITH TIME ZONE,
	whole_loan_start_date	TIMESTAMP WITH TIME ZONE,
	rejection_reason	TEXT,
	reapply_months		INTEGER,
	amount_approved		INTEGER,
	amount_requested	INTEGER			NOT NULL,  
	term_months			INTEGER,
	issued_on 		TIMESTAMP WITH TIME ZONE,
	asset_status	CHAR(255),
	asset_status_date	TIMESTAMP WITH TIME ZONE, 			
	created_at		TIMESTAMP WITH TIME ZONE	NOT NULL	DEFAULT now(),
	updated_at 		TIMESTAMP WITH TIME ZONE	NOT NULL	DEFAULT now()
);


/*

There are three pieces of information provided for a loan:

1) The loan details that entails all information stored in 
loans and loan_details table.

2) The information about the history of a particular loan, 
which means which fields of the loans and loan_details table
has been changed and when it has been changed (with old and 
new value). This will come from loan_audits table.

3) The last piece of information will come from cashflows 
table where we can montitor who has paid an amount of money
towards a particular loan. 

*/