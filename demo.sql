Create table students (
std_ID Int Primary Key auto_increment, Std_Name Varchar(100) Not Null, 
D_O_B Date not null, Age INT not null, course varchar(100), Joining_Date date );

delimiter //
create procedure insert_data(in s_name varchar(100), in s_dob date, in s_course varchar(100) )
begin
insert into students (Std_Name, D_O_B, Age, course, joining_date)
Values (s_name, s_dob, year(curdate()) - year(D_O_B), s_course, curdate());
end;
//
delimiter ;

call insert_data("Sachin", "2000-12-12","SQL");
Select * from students;


DELIMITER //
CREATE PROCEDURE CheckAge(age INT)
BEGIN
    IF age < 18 THEN
        SELECT 'Minor';
    ELSE
        SELECT 'Adult';
    END IF;
END;
//
DELIMITER ;

Call CheckAge(13);

DELIMITER //
CREATE PROCEDURE GetDiscount(amount INT)
BEGIN
    SELECT
        CASE
            WHEN amount >= 1000 THEN '10% Discount'
            WHEN amount >= 500 THEN '5% Discount'
            ELSE 'No Discount'
        END AS Discount;
END;
//
DELIMITER ;

call GetDiscount(23);

DELIMITER //
CREATE PROCEDURE CountDown(start INT)
BEGIN
    WHILE start > 0 DO
        SELECT start;
        SET start = start - 1;
    END WHILE;
END;
//
DELIMITER ;

call CountDown(3);



Delimiter ??
Create function square(num Int)
Returns INT
Deterministic
Begin
	Declare square_num INT;
	Set square_num = num * num;
	Return square_num;
End; ??
Delimiter ;

Select square(123);

Select square(9);

-- The functions which is defined by the user is called user defined functions 
-- MySQL User defined functions may or may not have parameters (Parameters are optional),
-- but it always returns a single value that is mendatory.

-- Delimiter //
-- Create function function_name (
-- parameter_1 DataType, parameter_2 DataType, parameter_3 Datatype, ......
-- )
-- Returns Return_DataType
-- Deterministic 
-- Begin
-- 			Function_Body
--          Return Return_value
-- End; //
-- Delimiter ;

-- A Deterministic function in mysql will always returns the same result for the same input
-- parameters whereas Non-deterministic functions can return different result for the
-- same input parameters.

Select Database();

USe Soccer;

Select * from match_master;

Select * from match_details;

Select * from goal_details;

Select Goal_Time, square(goal_time) from Goal_details;




Delimiter //
Create function age_calculator(DOB Date)
Returns INT
Deterministic
Begin
	Declare today_date Date;
    Declare age int;
    Select curdate() into today_date;
    Set age = year(today_date) - year(DOB);
    Return age;
End; //
Delimiter ;

Select age_calculator("1999-07-20");

Select * from Player_master;

Select right(dt_of_bir, 4) from player_master;

Delimiter //
Create function even_odd(num int) 
returns varchar(10)
deterministic
Begin
	declare result varchar(4);
	if (num mod 2 = 0) then 
		set result = "Even";
	else
		set result = "Odd";
	end if;
	return result;
End; //
Delimiter ;

Select even_odd(15);

Delimiter //
create function upper_str(st varchar(100))
Returns varchar(100)
Deterministic
Begin
	return upper(st);
end;  //
Delimiter ;

Select upper_str("something");


















