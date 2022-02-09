/*DROP TABLE tracing_tbl;
DROP TABLE table_status_tbl;
DROP TABLE booking_details_tbl;
DROP TABLE staff_tbl;
DROP TABLE customer_details_tbl;
DROP TABLE manager_tbl;
DROP TABLE shack_branch_tbl;*/


CREATE TABLE shack_branch_tbl (
        res_ID VARCHAR(10) NOT NULL,
        res_Address VARCHAR(100),
        res_phone_no VARCHAR(15),   /* Would make sense to make it varchar as some numbers start with 0 */
    
        PRIMARY KEY (res_ID)
);

CREATE TABLE manager_tbl (
        res_ID VARCHAR(10) NOT NULL,
        manager_ID VARCHAR(10) NOT NULL,   
        manager_name VARCHAR(50) NOT NULL,
        manager_address VARCHAR(100),
        manager_email VARCHAR(50),      
        manager_phone_number VARCHAR(15),
        DOB DATE,
        DOE DATE,
    
        CONSTRAINT manager_ID_PK PRIMARY KEY (manager_ID),
        CONSTRAINT res_ID_FK2 FOREIGN KEY (res_ID) REFERENCES shack_branch_tbl(res_ID),
        CONSTRAINT manager_email_uniq UNIQUE (manager_email), 
        CONSTRAINT manager_email_chk CHECK(manager_email like '%@burgershack.com')
);

CREATE TABLE staff_tbl (
        res_ID VARCHAR(10) NOT NULL,
        staff_ID VARCHAR(10) NOT NULL,
        staff_name VARCHAR(50) NOT NULL,
        staff_address VARCHAR(100),  
        staff_email VARCHAR(50),      
        staff_phone_number VARCHAR(15),
        DOB DATE,
        DOE DATE,

        CONSTRAINT staff_ID_PK PRIMARY KEY (staff_ID),
        CONSTRAINT res_ID_FK FOREIGN KEY (res_ID) REFERENCES shack_branch_tbl(res_ID),
        CONSTRAINT staff_email_uniq UNIQUE (staff_email), 
        CONSTRAINT staff_email_chk CHECK(staff_email like '%@burgershack.com')
);

CREATE TABLE customer_details_tbl (
        cust_ID VARCHAR(20) NOT NULL,
        cust_name VARCHAR(50) NOT NULL,
        cust_address VARCHAR(100),
        cust_email VARCHAR(50),
        cust_age INT, 

        CONSTRAINT cust_ID_PK PRIMARY KEY (cust_ID),
        CONSTRAINT cust_email_uniq UNIQUE (cust_email), 
        CONSTRAINT cust_email_chk CHECK(cust_email like '%@%')
);
    
CREATE TABLE booking_details_tbl (
        book_ID VARCHAR(10) NOT NULL,
        res_ID VARCHAR(10) NOT NULL,
        cust_ID VARCHAR(20) NOT NULL,
        staff_ID VARCHAR(10) NOT NULL,
        onsite VARCHAR(1),              /* Oracle does not support boolean datatypes */
        manager_ID VARCHAR(10),         /* This can be empty if customer booked online */
        details_num_of_people INT,
        details_type_of_table INT,      /* 2, 4, 6 and 8 seater */
        details_table_num INT,      
        details_location VARCHAR(10),   /* window or interior */
        booked_time DATE, 

        CONSTRAINT book_ID_pk PRIMARY KEY (book_ID),
        CONSTRAINT res_ID_FK3 FOREIGN KEY (res_ID) REFERENCES shack_branch_tbl(res_ID),
        CONSTRAINT cust_ID_FK FOREIGN KEY (cust_ID) REFERENCES customer_details_tbl(cust_ID),
        CONSTRAINT staff_ID_FK FOREIGN KEY (staff_ID) REFERENCES staff_tbl(staff_ID),
        CONSTRAINT manager_ID_FK FOREIGN KEY (manager_ID) REFERENCES manager_tbl(manager_ID)
);

CREATE TABLE table_status_tbl (
        book_ID VARCHAR(10) NOT NULL,
        cust_ID VARCHAR(10) NOT NULL,
        stat_booked DATE,
        stat_checkout DATE, 
        stat_extra INT,     /* IF CHECKOUT IS 2 HOURS MORE THAN BOOKED TIME, APPEND THIS VALUE BY MINUTES */
        stat_penalty INT,   /* THIS WILL ONLY HAVE VALUE IF STAT_EXTRA HAS VALUE (every minute a penalty is added) */

        CONSTRAINT book_ID_FK FOREIGN KEY (book_ID) REFERENCES booking_details_tbl(book_ID),
        CONSTRAINT cust_ID_FK3 FOREIGN KEY (cust_ID) REFERENCES customer_details_tbl(cust_ID)
    );
    
CREATE TABLE tracing_tbl (
        book_ID VARCHAR(10) NOT NULL,           /* Not much would be added to this table */
        cust_ID VARCHAR(10) NOT NULL,
        trace_email VARCHAR(50) NOT NULL,      /* as this is linked to the corresponding */
        trace_name VARCHAR(50),                 /* book_ID */
        phone_number VARCHAR(15),

        CONSTRAINT book_ID_FK2 FOREIGN KEY (book_ID) REFERENCES booking_details_tbl(book_ID),
        CONSTRAINT cust_ID_FK2 FOREIGN KEY (cust_ID) REFERENCES customer_details_tbl(cust_ID),
        CONSTRAINT trace_email_uniq UNIQUE (trace_email), 
        CONSTRAINT trace_email_chk CHECK(trace_email like '%@%')
);


