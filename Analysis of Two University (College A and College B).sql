-- 1.Create new schema as alumni
create database alumni;

-- 2.Import all .csv files into MySQL
/*
step 1 -> right click on tables of alumni and click on table data import wizard
step 2 -> choose the path of the 6 CSV file and click on next,next and finished
*/

-- 3.Run SQL command to see the structure of six tables
use alumni;
desc college_a_hs;
desc college_a_sj;
desc college_a_se;
desc college_b_hs;
desc college_b_sj;
desc college_b_se;

-- 4.Display first 1000 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) with Python.
/*
import mysql
import mysql.connector
testdb=mysql.connector.connect(host='Localhost',user='root',password='9773068164',database='alumni')
cur_a_hs=testdb.cursor()
cur_a_hs.execute('select * from college_a_hs limit 1000')
cur_a_hs.fetchall()

cur_a_sj=testdb.cursor()
cur_a_sj.execute('select * from college_a_sj limit 1000')
cur_a_sj.fetchall()

cur_a_se=testdb.cursor()
cur_a_se.execute('select * from college_a_se limit 1000')
cur_a_se.fetchall()

cur_b_hs=testdb.cursor()
cur_b_hs.execute('select * from college_b_hs limit 1000')
cur_b_hs.fetchall()

cur_b_sj=testdb.cursor()
cur_b_sj.execute('select * from college_b_sj limit 1000')
cur_b_sj.fetchall()

cur_b_se=testdb.cursor()
cur_b_se.execute('select * from college_b_se limit 1000')
cur_b_se.fetchall()

*/

-- 5.Import first 1500 rows of tables (College_A_HS, College_A_SE, College_A_SJ, College_B_HS, College_B_SE, College_B_SJ) into MS Excel.
select * from college_a_hs;
/*
College_a_HS
step 1 -> open excel
step 2 -> go to data tab and click on MYSQL for Excel
step 3 -> click on local instance and log in 
step 4 -> click on alumni schema and select college_a_hs and click on import MySql data 
step 5 -> go on advance option and give limit to 1500 and click accept and than click on import table

College_a_SE
step 1 -> open excel
step 2 -> go to data tab and click on MYSQL for Excel
step 3 -> click on local instance and log in 
step 4 -> click on alumni schema and select college_a_se and click on import MySql data 
step 5 -> go on advance option and give limit to 1500 and click accept and than click on import table 

College_a_SJ
step 1 -> open excel
step 2 -> go to data tab and click on MYSQL for Excel
step 3 -> click on local instance and log in 
step 4 -> click on alumni schema and select college_a_sj and click on import MySql data 
step 5 -> go on advance option and give limit to 1500 and click accept and than click on import table 

College_b_HS
step 1 -> open excel
step 2 -> go to data tab and click on MYSQL for Excel
step 3 -> click on local instance and log in 
step 4 -> click on alumni schema and select college_b_HS and click on import MySql data 
step 5 -> go on advance option and give limit to 1500 and click accept and than click on import table 

College_b_SE
step 1 -> open excel
step 2 -> go to data tab and click on MYSQL for Excel
step 3 -> click on local instance and log in 
step 4 -> click on alumni schema and select college_b_se and click on import MySql data 
step 5 -> go on advance option and give limit to 1500 and click accept and than click on import table 

College_b_SJ
step 1 -> open excel
step 2 -> go to data tab and click on MYSQL for Excel
step 3 -> click on local instance and log in 
step 4 -> click on alumni schema and select college_b_sj and click on import MySql data 
step 5 -> go on advance option and give limit to 1500 and click accept and than click on import table 

see screeshot
*/

-- 6.Perform data cleaning on table College_A_HS and store cleaned data in view College_A_HS_V, Remove null values. 
CREATE VIEW College_A_HS_V AS
    SELECT 
        *
    FROM
        college_a_hs
    WHERE
        rollno IS NOT NULL
            AND Lastupdate IS NOT NULL
            AND Name IS NOT NULL
            AND fathername IS NOT NULL
            AND mothername IS NOT NULL
            AND branch IS NOT NULL
            AND batch IS NOT NULL
            AND degree IS NOT NULL
            AND presentstatus IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND institute IS NOT NULL
            AND location IS NOT NULL;
            
select * from college_a_hs_v;

-- 7.Perform data cleaning on table College_A_SE and store cleaned data in view College_A_SE_V, Remove null values
CREATE VIEW College_A_SE_V AS
    SELECT 
        *
    FROM
        college_a_SE
    WHERE
        rollno IS NOT NULL
            AND Lastupdate IS NOT NULL
            AND Name IS NOT NULL
            AND fathername IS NOT NULL
            AND mothername IS NOT NULL
            AND branch IS NOT NULL
            AND batch IS NOT NULL
            AND degree IS NOT NULL
            AND presentstatus IS NOT NULL
            AND organization IS NOT NULL
            AND location IS NOT NULL;
		
select * from college_a_se_v;

-- 8.Perform data cleaning on table College_A_SJ and store cleaned data in view College_A_SJ_V, Remove null values.
CREATE VIEW College_A_SJ_V AS
    SELECT 
        *
    FROM
        college_a_SJ
    WHERE
        rollno IS NOT NULL
            AND Lastupdate IS NOT NULL
            AND Name IS NOT NULL
            AND fathername IS NOT NULL
            AND mothername IS NOT NULL
            AND branch IS NOT NULL
            AND batch IS NOT NULL
            AND degree IS NOT NULL
            AND presentstatus IS NOT NULL
            AND organization IS NOT NULL
            AND location IS NOT NULL;
		
select * from college_a_sj_v;

-- 9.Perform data cleaning on table College_B_HS and store cleaned data in view College_B_HS_V, Remove null values.
CREATE VIEW College_B_HS_V AS
    SELECT 
        *
    FROM
        college_B_hs
    WHERE
        rollno IS NOT NULL
            AND Lastupdate IS NOT NULL
            AND Name IS NOT NULL
            AND fathername IS NOT NULL
            AND mothername IS NOT NULL
            AND branch IS NOT NULL
            AND batch IS NOT NULL
            AND degree IS NOT NULL
            AND presentstatus IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND institute IS NOT NULL
            AND location IS NOT NULL;
            
select * from college_b_hs_v;

-- 10.erform data cleaning on table College_B_SE and store cleaned data in view College_B_SE_V, Remove null values.
CREATE VIEW College_B_SE_V AS
    SELECT 
        *
    FROM
        college_B_se
    WHERE
        rollno IS NOT NULL
            AND Lastupdate IS NOT NULL
            AND Name IS NOT NULL
            AND fathername IS NOT NULL
            AND mothername IS NOT NULL
            AND branch IS NOT NULL
            AND batch IS NOT NULL
            AND degree IS NOT NULL
            AND presentstatus IS NOT NULL
            AND organization IS NOT NULL
            AND location IS NOT NULL;
            
select * from college_b_se_v;

-- 11.Perform data cleaning on table College_B_SJ and store cleaned data in view College_B_SJ_V.
CREATE VIEW College_B_SJ_V AS
    SELECT 
        *
    FROM
        college_B_sj
    WHERE
        rollno IS NOT NULL
            AND Lastupdate IS NOT NULL
            AND Name IS NOT NULL
            AND fathername IS NOT NULL
            AND mothername IS NOT NULL
            AND branch IS NOT NULL
            AND batch IS NOT NULL
            AND degree IS NOT NULL
            AND presentstatus IS NOT NULL
            AND organization IS NOT NULL
            AND designation is not null
            AND location IS NOT NULL;
            
select * from college_b_sj_v;


-- 12.Make procedure to use string function/s for converting record of Name, FatherName, MotherName into lower case for views 
-- (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) 

-- COLLEGE_A_HS_V
delimiter $
create procedure proc1()
begin 
select upper(name),upper(fathername),upper(mothername) from college_a_hs_v;
end $
delimiter ;
call proc1;

-- COLLEGE_A_SE_V
delimiter $
create procedure proc2()
begin 
select upper(name),upper(fathername),upper(mothername) from college_a_se_v;
end $
delimiter ;
call proc2;

-- COLLEGE_A_SJ_V
delimiter $
create procedure proc3()
begin 
select upper(name),upper(fathername),upper(mothername) from college_a_sj_v;
end $
delimiter ;
call proc3;

-- COLLEGE_B_HS_V
delimiter $
create procedure proc4()
begin 
select upper(name),upper(fathername),upper(mothername) from college_a_hs_v;
end $
delimiter ;
call proc4;

-- COLLEGE_B_SE_V
delimiter $
create procedure proc5()
begin 
select upper(name),upper(fathername),upper(mothername) from college_b_se_v;
end $
delimiter ;
call proc5;

-- COLLEGE_B_SJ_V
delimiter $
create procedure proc6()
begin 
select upper(name),upper(fathername),upper(mothername) from college_b_sj_v;
end $
delimiter ;
call proc6;

-- 13.Import the created views (College_A_HS_V, College_A_SE_V, College_A_SJ_V, College_B_HS_V, College_B_SE_V, College_B_SJ_V) into MS Excel and make pivot chart for location of Alumni. 
/*
---College_A_HS_V
step 1 -> open excel and go to data tab and click on mysql for excel
step 2 -> click on local instance and login and select alumni schema
step 3 -> click on college_a_hs_v view and import that view
step 4 -> select the location field and click on pivot table in insert table
step 5 -> drag location column in rows and values also
step 6 -> than select select the pivot table and click on pichart option in insert tab 
step 7 -> sucessfully inserted pichart... see screenshot
*/

/*
---College_A_SE_V
step 1 -> open excel and go to data tab and click on mysql for excel
step 2 -> click on local instance and login and select alumni schema
step 3 -> click on college_a_se_v view and import that view
step 4 -> select the location field and click on pivot table in insert table
step 5 -> drag location column in rows and values also
step 6 -> than select select the pivot table and click on pichart option in insert tab 
step 7 -> sucessfully inserted pichart... see screenshot
*/

/*
---College_A_SJ_V
step 1 -> open excel and go to data tab and click on mysql for excel
step 2 -> click on local instance and login and select alumni schema
step 3 -> click on college_a_sj_v view and import that view
step 4 -> select the location field and click on pivot table in insert table
step 5 -> drag location column in rows and values also
step 6 -> than select select the pivot table and click on pichart option in insert tab 
step 7 -> sucessfully inserted pichart... see screenshot
*/

/*
---College_B_HS_V
step 1 -> open excel and go to data tab and click on mysql for excel
step 2 -> click on local instance and login and select alumni schema
step 3 -> click on college_b_hs_v view and import that view
step 4 -> select the location field and click on pivot table in insert table
step 5 -> drag location column in rows and values also
step 6 -> than select select the pivot table and click on pichart option in insert tab 
step 7 -> sucessfully inserted pichart... see screenshot
*/

/*
---College_B_SJ_V
step 1 -> open excel and go to data tab and click on mysql for excel
step 2 -> click on local instance and login and select alumni schema
step 3 -> click on college_b_sj_v view and import that view
step 4 -> select the location field and click on pivot table in insert table
step 5 -> drag location column in rows and values also
step 6 -> than select select the pivot table and click on pichart option in insert tab 
step 7 -> sucessfully inserted pichart... see screenshot
*/

/*
---College_B	_SE_V
step 1 -> open excel and go to data tab and click on mysql for excel
step 2 -> click on local instance and login and select alumni schema
step 3 -> click on college_a_se_v view and import that view
step 4 -> select the location field and click on pivot table in insert table
step 5 -> drag location column in rows and values also
step 6 -> than select select the pivot table and click on pichart option in insert tab 
step 7 -> sucessfully inserted pichart... see screenshot
*/

-- 14. Write a query to create procedure get_name using the cursor to fetch names of all students from college A.
delimiter $$
create procedure get_name()
begin
declare temp text;
declare college_a_name_of_student text default "";
declare finished int default 0;
declare namedetail cursor for select name from college_a;
declare continue handler for not found set finished = 1;
open namedetail;
L_var : loop
	fetch namedetail into temp;
    if finished = 1 then leave L_var;
    end if;
	set college_a_name_of_student=concat(temp,';',college_a_name_of_student);
end loop;
select college_a_name_of_student;
close namedetail;
end $$
delimiter ;
call get_name();
select * from college_a;

-- 15. Write a query to create procedure get_name using the cursor to fetch names of all students from college B.
delimiter $$
create procedure get_name_()
begin
declare temp text;
declare college_b_name_of_student text default "";
declare finished int default 0;
declare namedetail cursor for select name from college_b;
declare continue handler for not found set finished = 1;
open namedetail;
L_var : loop
	fetch namedetail into temp;
    if finished = 1 then leave L_var;
    end if;
	set college_b_name_of_student=concat(temp,';',college_b_name_of_student);
end loop;
select college_b_name_of_student;
close namedetail;
end $$
delimiter ;
call get_name_();

-- 16.Calculate the percentage of career choice of College A and College B Alumni (w.r.t Higher Studies, Self Employed and Service/Job) 
-- College A---

SELECT 
    'Percent in Higher studies' AS 'Career choice in percentage',
    (COUNT(college_a_hs.rollno) / 5884) * 100 'College A'
FROM
    college_a_hs 
UNION SELECT 
    'Percent in Self Employees',
    (COUNT(college_a_se.rollno) / 5884) * 100
FROM
    college_a_se 
UNION SELECT 
    'Percent in Service/Job',
    (COUNT(college_a_sj.rollno) / 5884) * 100
FROM
    college_a_sj;
-- college B---

select'Percent in Higher studies' as 'Career choice in percentage', 
    (COUNT(college_b_hs.rollno) / 2259) * 100 'College B'
FROM
    college_b_hs 
UNION SELECT 
    'Percent in Self Employees',
    (COUNT(college_b_se.rollno) / 2259) * 100
FROM
    college_b_se 
UNION SELECT 
    'Percent in Service/Job',
    (COUNT(college_b_sj.rollno) / 2259) * 100
FROM
    college_b_sj;
    
    select count(rollno) from college_a_se;