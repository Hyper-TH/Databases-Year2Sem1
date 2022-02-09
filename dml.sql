/*================================*/
/*          INSERTS               */  
/*================================*/
/* BURGER SHACK BRANCH TABLE */
INSERT INTO shack_branch_tbl (res_ID, res_Address, res_phone_no)
        VALUES  ('BS01', 'Ardee Louth', 856625567);  
INSERT INTO shack_branch_tbl (res_ID, res_Address, res_phone_no)
    VALUES ('BS02', 'Blackrock Dublin', 876654456);
    
INSERT INTO shack_branch_tbl (res_ID, res_Address, res_phone_no)
    VALUES ('BS03', 'Finglas Dublin', 876738782);
    
INSERT INTO shack_branch_tbl (res_ID, res_Address, res_phone_no)
    VALUES ('BS04', 'Dun Laoghaire Dublin', 99983747);      
    
INSERT INTO shack_branch_tbl (res_ID, res_Address, res_phone_no)             
    VALUES ('BS05', 'Phibsborough Dublin', 123345);                
                
/* STAFF TABLE */
INSERT INTO staff_tbl (res_ID, staff_ID, staff_name, staff_address, staff_email, staff_phone_number, DOB, DOE)
    VALUES  ('BS01', 'ST01', 'staff1', 'Tallaght', 'staff1@burgershack.com', 0822611951,  TO_DATE('1957 Sep 19', 'YYYY MON DD'), TO_DATE('2009 July 18', 'YYYY MON DD'));
        
INSERT INTO staff_tbl (res_ID, staff_ID, staff_name, staff_address, staff_email, staff_phone_number, DOB, DOE)        
    VALUES ('BS03', 'ST02', 'staff2', 'Foxrock', 'staff2@burgershack.com', 0869928297, TO_DATE('1966 Nov 13', 'YYYY MON DD'), TO_DATE('2009 Sep 24', 'YYYY MON DD'));
        
INSERT INTO staff_tbl (res_ID, staff_ID, staff_name, staff_address, staff_email, staff_phone_number, DOB, DOE)      
    VALUES ('BS02', 'ST03', 'staff3', 'Castleknock', 'staff3@burgershack.com', 0862858288, TO_DATE('1972 Jan 25', 'YYYY MON DD'), TO_DATE('2010 Dec 19', 'YYYY MON DD'));
                
INSERT INTO staff_tbl (res_ID, staff_ID, staff_name, staff_address, staff_email, staff_phone_number, DOB, DOE) 
    VALUES ('BS05', 'ST04', 'staff4', 'Santry', 'staff4@burgershack.com', 0835315173, TO_DATE('1988 Jun 30', 'YYYY MON DD'), TO_DATE('2015 Jul 07', 'YYYY MON DD'));
                
INSERT INTO staff_tbl (res_ID, staff_ID, staff_name, staff_address, staff_email, staff_phone_number, DOB, DOE)
    VALUES ('BS04', 'ST05', 'staff5', 'Balbriggan', 'staff5@burgershack.com', 0822002268, TO_DATE('1995 Dec 26', 'YYYY MON DD'), TO_DATE('2017 Nov 18', 'YYYY MON DD'));



/* MANAGER TABLE */
INSERT INTO manager_tbl (res_ID, manager_ID, manager_name, manager_address, manager_email, manager_phone_number, DOB, DOE)
    VALUES ('BS03', 'MN01', 'Twila Habab1', 'Blacrock', 'hyper@burgershack.com', 0879843103,   TO_DATE('1972 Aug 30', 'YYYY MON DD'), TO_DATE('2001 Oct 6', 'YYYY MON DD')); 
    
INSERT INTO manager_tbl (res_ID, manager_ID, manager_name, manager_address, manager_email, manager_phone_number, DOB, DOE)
    VALUES ('BS01', 'MN02', 'Jaycel Estrellado2', 'Ardee', 'msahrie@burgershack.com', 0822416635, TO_DATE('1976 May 22', 'YYYY MON DD'), TO_DATE('2001 Jan 17', 'YYYY MON DD'));
    
INSERT INTO manager_tbl (res_ID, manager_ID, manager_name, manager_address, manager_email, manager_phone_number, DOB, DOE)
    VALUES ('BS05', 'MN03', 'John Ranola3', 'Sandymount', 'johnmnmn@burgershack.com', 0899986458, TO_DATE('1985 Feb 07', 'YYYY MON DD'), TO_DATE('2001 Apr 30', 'YYYY MON DD'));
          
INSERT INTO manager_tbl (res_ID, manager_ID, manager_name, manager_address, manager_email, manager_phone_number, DOB, DOE)
    VALUES ('BS02', 'MN04', 'David Davita4', 'Finglas', 'goat@burgershack.com', 0863843547, TO_DATE('1999 Feb 07', 'YYYY MON DD'), TO_DATE('2001 Jul 31', 'YYYY MON DD'));
            
INSERT INTO manager_tbl (res_ID, manager_ID, manager_name, manager_address, manager_email, manager_phone_number, DOB, DOE)
    VALUES ('BS04', 'MN05', 'Bongani Moyo5', 'Finglas', 'silverSurfer@burgershack.com', 0831737521, TO_DATE('2000 Nov 09', 'YYYY MON DD'), TO_DATE('2001 Jan 27', 'YYYY MON DD'));
               
INSERT INTO manager_tbl (res_ID, manager_ID, manager_name, manager_address, manager_email, manager_phone_number, DOB, DOE)
     VALUES ('BS04', 'MN06', 'Nelson Ude6', 'Phibsborough', 'nelson2002baby@burgershack.com', 0862566086, TO_DATE('1984 Sep 27', 'YYYY MON DD'), TO_DATE('2002 Apr 22', 'YYYY MON DD'));
     
    
     
/* CUSTOMER DETAILS TABLE */
INSERT INTO customer_details_tbl (cust_ID, cust_name, cust_address, cust_email, cust_age)
    VALUES ('CT01', 'booker1', 'Newcastle', 'soBasicallyKind@gmail.com', 20); 

INSERT INTO customer_details_tbl (cust_ID, cust_name, cust_address, cust_email, cust_age)
    VALUES ('CT02', 'booker2', 'Coolock', 'ofABigDeal@yahoo.com', 16);
         
INSERT INTO customer_details_tbl (cust_ID, cust_name, cust_address, cust_email, cust_age)
    VALUES ('CT03', 'booker3', 'Rathdown', 'iLikeFrogs@gmail.com', 20);
        
INSERT INTO customer_details_tbl (cust_ID, cust_name, cust_address, cust_email, cust_age)
    VALUES ('CT04', 'booker4', 'Ballisk', 'uwu@gmail.com', 30);
         
INSERT INTO customer_details_tbl (cust_ID, cust_name, cust_address, cust_email, cust_age)
    VALUES ('CT05', 'booker5', 'Lusk', 'memeEmails@gmail.com', 42);
    

/* Booking Details Table */
INSERT INTO booking_details_tbl (book_ID, res_ID, cust_ID, staff_ID, onsite, manager_ID, details_num_of_people, details_type_of_table, details_table_num, details_location)
    VALUES ('BI01', 'BS01', 'CT01', 'ST01', '0', '', 2, 2, 1, 'window');
        
INSERT INTO booking_details_tbl (book_ID, res_ID, cust_ID, staff_ID, onsite, manager_ID, details_num_of_people, details_type_of_table, details_table_num, details_location)
    VALUES ('BI02', 'BS03', 'CT02', 'ST02', '1', '', 5, 6, 2, 'interior');
                
INSERT INTO booking_details_tbl (book_ID, res_ID, cust_ID, staff_ID, onsite, manager_ID, details_num_of_people, details_type_of_table, details_table_num, details_location)
    VALUES ('BI03', 'BS03', 'CT02', 'ST02', '0', 'MN01', 8, 8, 3, 'interior');
                
INSERT INTO booking_details_tbl (book_ID, res_ID, cust_ID, staff_ID, onsite, manager_ID, details_num_of_people, details_type_of_table, details_table_num, details_location)
    VALUES ('BI04', 'BS01', 'CT02', 'ST01', '1', '', 1, 2, 4, 'window');
                
INSERT INTO booking_details_tbl (book_ID, res_ID, cust_ID, staff_ID, onsite, manager_ID, details_num_of_people, details_type_of_table, details_table_num, details_location)
    VALUES ('BI05', 'BS01', 'CT02', 'ST01', '0', 'MN02', 5, 6, 5, 'interior');



/* TABLE STATUS TABLE */
INSERT INTO table_status_tbl (book_ID, cust_ID, stat_booked, stat_checkout)
    VALUES ('BI01', 'CT01', TO_DATE('2021/12/10 8:00:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2021/12/10 11:00:00', 'YYYY/MM/DD HH24:MI:SS'));
    
INSERT INTO table_status_tbl (book_ID,  cust_ID, stat_booked, stat_checkout)
    VALUES ('BI02', 'CT02', TO_DATE('2021/12/11 8:30:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2021/12/11 10:30:00', 'YYYY/MM/DD HH24:MI:SS'));
               
INSERT INTO table_status_tbl (book_ID,  cust_ID, stat_booked, stat_checkout)
    VALUES ('BI03', 'CT03', TO_DATE('2021/12/12 9:40:30', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2021/12/12 12:20:40', 'YYYY/MM/DD HH24:MI:SS'));
               
INSERT INTO table_status_tbl (book_ID,  cust_ID, stat_booked, stat_checkout)
    VALUES ('BI04', 'CT04', TO_DATE('2021/12/09 16:58:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2021/12/09 18:30:00', 'YYYY/MM/DD HH24:MI:SS'));
               
INSERT INTO table_status_tbl (book_ID,  cust_ID, stat_booked, stat_checkout)
    VALUES ('BI05', 'CT05', TO_DATE('2021/12/10 13:00:00', 'YYYY/MM/DD HH24:MI:SS'), TO_DATE('2021/12/10 20:00:00', 'YYYY/MM/DD HH24:MI:SS'));
    
/* TRACING TABLE */
INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI01', 'CT01', 'anne@gmail.com', 'Anne Marie', 0876815644);

INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI01', 'CT01', 'vanessamariblue@gmail.com', 'Vanessa Blue', 0860506798);
    
INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI01', 'CT01', 'MellySmelly@gmail.com', 'Melissa Hug', 0858906754);
    
INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI02', 'CT02', 'Mena@gmail.com', 'Mena Surname', 0858488268);
    
INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI03', 'CT03', 'Justine@gmail.com', 'Justine Chadstine', 0889784512);
    
INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI04', 'CT04', 'Airish@gmail.com', 'Airish Irish', 0822869119);
    
INSERT INTO tracing_tbl (book_ID, cust_ID, trace_email, trace_name, phone_number)
    VALUES ('BI05', 'CT05', 'memes@gmail.com', 'RanOut OfNames', 0873787513);  
               
/*================================*/
/*          QUERIES               */  
/*================================*/

SELECT * FROM booking_details_tbl;

/* UPDATE*/
/*Update the table type to 4 where the id corresponds to BI01. 
Selecting book_ID from book table where id = BI01 and change column details_type_of_table to 4*/
UPDATE booking_details_tbl SET details_type_of_table = 4
WHERE book_ID = (SELECT book_ID FROM booking_details_tbl WHERE book_ID = 'BI01');

/*CASE*/
/*Check if the customer age is over 18, is 18 or under 18 and display customer name with results. Select columns customer name and age from customer table and display results (over, equal or under 18)*/
SELECT cust_name AS Name, cust_age AS Age,
CASE WHEN cust_age > 18 THEN 'Customer age is over 18'
    WHEN cust_age = 18 THEN 'Customer is precisely 18'
    WHEN cust_age < 18 THEN 'Customer is under 18'
END AS IsOverEighteen
FROM customer_details_tbl;

/* INNER JOIN*/
/*Count the number of staff working at different branches. 
Select shack branch and staff table where res_ID is equal in both tables and group it by the restaurant address*/
SELECT shack_branch_tbl.res_address AS Restaurant_Address, COUNT(staff_ID) AS Number_Of_Staff FROM staff_tbl INNER JOIN shack_branch_tbl ON staff_tbl.res_ID = shack_branch_tbl.res_ID GROUP BY shack_branch_tbl.res_address; 

/*LEFT JOIN */
/*Display the list of staff and manager who works for branch Phisborough where their restaurant id
corresponds with the restaurant branch*/
SELECT shack_branch_tbl.res_address AS Restaurant_Address, s.staff_name AS StaffName, s.staff_email, s.DOE AS Employment_Date, m.manager_name,
m.manager_email, m.DOE AS Employment_Date
FROM staff_tbl s
LEFT JOIN shack_branch_tbl ON shack_branch_tbl.res_ID = s.res_ID
LEFT JOIN manager_tbl m ON shack_branch_tbl.res_ID = m.res_ID
WHERE shack_branch_tbl.res_ID = 'BS05'
ORDER BY shack_branch_tbl.res_address;

/*RIGHT JOIN*/
/*Displaying the list of the main booker and their email, depending on when they have booked. Sorted by their ascending date.*/
SELECT c.cust_name AS Name, c.cust_email AS Customer_Email, t.stat_booked AS Date_Booked
FROM table_status_tbl t
RIGHT JOIN customer_details_tbl c ON t.cust_ID = c.cust_ID
ORDER BY t.stat_booked ASC;

/*UNION*/   
/*Display all close contact associated with the main booker if someone tested positive for COVID-19.
Selecting the main booker by their ID and displaying all their close contact from the tracing_tbl*/
SELECT cust_name AS Name, cust_email AS Email FROM customer_details_tbl
WHERE customer_details_tbl.cust_ID = 'CT01'
UNION
SELECT trace_name AS Close_Contact, trace_email FROM tracing_tbl 
WHERE tracing_tbl.cust_ID = 'CT01';

/*=========== Penalty + Time Calculation ======================*/

/*Query to update the calculated extra time by minutes and the penalty to be paid for by the customer if they exceed 
the covid-19 policy of 2 hour stay*/
UPDATE table_status_tbl SET stat_extra = (((stat_checkout - stat_booked) * 24 * 60) - 120), stat_penalty = ((((stat_checkout - stat_booked) * 24 * 60)- 120) * 5);

/*Display the results where if the customer stayed for equal or more than 2 hours*/
SELECT c.cust_name AS Name, s.stat_extra AS Extra_Time, s.stat_penalty AS Euro FROM table_status_tbl s
INNER JOIN customer_details_tbl c ON s.cust_ID = c.cust_ID
WHERE stat_penalty >= 0;

/*=========VIEWS===========*/
/*Total Customer amount*/
CREATE VIEW cust_ID AS SELECT COUNT(cust_ID) AS CustNum FROM customer_details_tbl;

/*Average age*/
CREATE VIEW cust_age AS SELECT AVG(cust_age) AS Average FROM customer_details_tbl;


/*========Display whoever is on duty========*/

SELECT staff_id AS on_duty FROM staff_tbl 
INTERSECT 
SELECT staff_id FROM booking_details_tbl


