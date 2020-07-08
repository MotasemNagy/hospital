CREATE TABLE patient
(
 patient_id int ,
 patient_name varchar(255),
 
 
 age int ,
 phone int 
 PRIMARY KEY (patient_id)


);
CREATE TABLE doctors 
(
 doctor_id int,
 doctor_name varchar(255),
 specialization varchar(255) 
 PRIMARY KEY (doctor_id)


);
CREATE TABLE operation_room 
(
 room_no int ,
 patient_id int,
 doctor_id int,
 location varchar(255)
 PRIMARY KEY (room_no)

);
insert into patient values (30 ,'mohamed' , 25, 01234567890)

insert into patient values (31 ,'elsaid' , 21, 01255456985)

insert into patient values (32 ,'ahmed' , 60, 01264456985)

insert into patient values (33 ,'ibrahim' , 40, 01245456985)

insert into patient values (34 ,'abd el-rahman' , 16, 01045456985)

insert into patient values (35 ,'aly' , 55, 01145456985)

insert into doctors values (1 ,'ahmed' ,  'surgeon')

insert into doctors values (2 ,'nada' ,  'plastic surgeon')

insert into doctors values (3 ,'hussein' ,  'pathologist')

insert into doctors values (4 ,'saber' ,  'colon and retcal surgeon')

insert into doctors values (5 ,'omar' ,  'Emergency medicine specialist')

insert into doctors values (6 ,'amr' ,  'cardiologist')

insert into operation_room values (22 ,30,1, 'cairo')

insert into operation_room values (21 ,31,2, 'Alexandria')

insert into operation_room values (20 ,32,3, 'Cairo')

insert into operation_room values (19 ,33,4, 'Cairo')

insert into operation_room values (18 ,34,5, 'Cairo')

insert into operation_room values (17 ,35,6, 'suez')

--what is the using of ASCII?
SELECT ASCII(patient_name) AS NumCodeOfFirstChar
FROM patient;

--what is the using of CONCAT?
SELECT CONCAT(room_no, patient_id, location) AS Address
FROM operation_room;

--what is the using of LEFT?
SELECT LEFT(patient_name, 30) AS ExtractString
FROM patient;

--what is the using of LOWER?
SELECT LOWER(doctor_name) AS LowercaseCustomerName
FROM doctors;

--what is the using of REVERSE?
SELECT REVERSE(patient_name)
FROM patient;

--what is the using of RIGHT?
SELECT RIGHT(patient_name, 5) AS ExtractString
FROM patient;

--what is the using of SPACE?
SELECT SPACE(10);

--what is the using of UPPER?
SELECT UPPER(patient_name) AS UppercaseCustomerName
FROM patient;

--what is the using of CHAR_LENGTH?
SELECT CHAR_LENGTH("SQL Tutorial") AS LengthOfString;

--what is the using of CHARACTER_LENGTH?
SELECT CHARACTER_LENGTH("SQL Tutorial") AS LengthOfString;

--what is the using of CONCAT_WS?
SELECT CONCAT_WS(" ", Address, PostalCode, City) AS Address

--what is the using of FIELD?
SELECT FIELD(5, 0, 1, 2, 3, 4, 5);

--what is the using of SELECT?
SELECT FIND_IN_SET("q", null);

--WHAT IS THE USING OF FORMAT?
SELECT FORMAT(250500.5634, 0);

--what is the using of INSERT?
SELECT INSERT("W3Schools.com", 11, 3, "no");

--what is the using of	TRIM?
SELECT TRIM('    SQL Tutorial    ') AS TrimmedString;

--what is the using of RTRIM?
SELECT RTRIM("SQL Tutorial     ") AS RightTrimmedString;

--what is the using of RPAD?
SELECT RPAD("SQL Tutorial", 20, "ABC");

select doctor_name , location from doctors , operation_room
where operation_room.doctor_id = doctors.doctor_id;

select patient_name , location from  patient , operation_room
where operation_room.patient_id = patient.patient_id;

select age , room_no from patient , operation_room
where operation_room.patient_id = patient.patient_id;

select specialization , location from doctors , operation_room
where operation_room.doctor_id = doctors.doctor_id;

select phone , location from patient , operation_room
where operation_room.doctor_id = patient.patient_id;


select patient_name from patient where patient_id in (select patient_id from operation_room where room_no<5);
select age from patient where patient_id in (select patient_id from operation_room where doctor_id>16);
select doctor_name from doctors where doctor_id in (select doctor_id from operation_room where patient_id<20);

UPDATE doctors
SET doctor_id='1'
WHERE doctor_name='ahmed';

UPDATE doctors
SET doctor_id='2'
WHERE doctor_name='nada';

UPDATE doctors
SET doctor_id='3'
WHERE doctor_name='hussein';

UPDATE doctors
SET doctor_id='4'
WHERE doctor_name='sabr';

UPDATE doctors
SET doctor_id='5'
WHERE doctor_name='omar';

UPDATE doctors
SET doctor_id='6'
WHERE doctor_name='amr';

DELETE FROM operation_room WHERE patient_id='30';

DELETE FROM operation_room WHERE patient_id='31';

DELETE FROM operation_room WHERE patient_id='32';

DELETE FROM operation_room WHERE patient_id='33';

DELETE FROM operation_room WHERE patient_id='34';

DELETE FROM operation_room WHERE patient_id='35';

select count (doctor_id)
from doctors;

select doctor_name , count(doctor_id)
from doctors
group by (doctor_name);