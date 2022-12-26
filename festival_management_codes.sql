CREATE DATABASE Festival;
USE Festival;

CREATE TABLE Customer (
  C_ID INT NOT NULL PRIMARY KEY,
  C_Name VARCHAR(50) NOT NULL,
  C_Surname VARCHAR(50) NOT NULL,
  C_DOB VARCHAR(50) NOT NULL,
  C_Phone VARCHAR(15) NOT NULL,
  C_Email VARCHAR(50) NOT NULL,
  C_Address VARCHAR(50) NOT NULL,
  C_Country VARCHAR(50) NOT NULL
);
INSERT INTO Customer (
    C_ID,
    C_Name,
    C_Surname,
    C_DOB,
    C_Phone,
    C_Email,
    C_Address,
    C_Country
  )
VALUES (
    1,
    'Annie',
    'Johnson',
    '08/11/2000',
    '07426214667',
    'AnnieJohnson5@outlook.com',
    '111 Common Lane',
    'England'
  ),
  (
    2,
    'Annie',
    'Hunter',
    '24/02/2003',
    '07921900305',
    'AnnieHunter94@yahoo.com',
    '140 Holly Drive',
    'Wales'
  ),
  (
    3,
    'George',
    'Jones',
    '13/10/1997',
    '07313946203',
    'GeorgeJones6@gmail.com',
    '29 Valley Drive',
    'Scotland'
  ),
  (
    4,
    'Jack',
    'Evans',
    '14/02/2001',
    '07779658509',
    'JackEvans86@hotmail.com',
    '53 Maple Park',
    'England'
  ),
  (
    5,
    'Tom',
    'Ellen',
    '12/01/1995',
    '07749920883',
    'TomEllen61@yahoo.com',
    '110 Holly Park',
    'Wales'
  ),
  (
    6,
    'Matt',
    'Brown',
    '08/02/1997',
    '07413484115',
    'MattBrown49@yahoo.com',
    '48 Valley Avenue',
    'Scotland'
  ),
  (
    7,
    'George',
    'Hunter',
    '22/07/1996',
    '07558529835',
    'GeorgeHunter26@gmail.com',
    '74 Mill Drive',
    'England'
  ),
  (
    8,
    'Olivia',
    'Mathews',
    '18/08/1995',
    '07590239093',
    'OliviaMathews62@gmail.com',
    '124 Lime Avenue',
    'Wales'
  ),
  (
    9,
    'Olivia',
    'Johnson',
    '18/02/1999',
    '07751502876',
    'OliviaJohnson66@gmail.com',
    '136 Mill Avenue',
    'Scotland'
  ),
  (
    10,
    'Ellie',
    'Wood',
    '26/01/1996',
    '07102781490',
    'EllieWood51@aol.com',
    '134 Valley Lane',
    'England'
  ),
  (
    11,
    'John',
    'Jones',
    '01/09/2003',
    '07484541033',
    'JohnJones10@hotmail.com',
    '36 Regent Avenue',
    'Wales'
  ),
  (
    12,
    'Izzy',
    'Smith',
    '27/03/2002',
    '07912777771',
    'IzzySmith56@yahoo.com',
    '30 Elm Lane',
    'Scotland'
  ),
  (
    13,
    'Matt',
    'Hunter',
    '08/04/2002',
    '07800203090',
    'MattHunter18@aol.com',
    '130 Mill Avenue',
    'England'
  ),
  (
    14,
    'George',
    'Smith',
    '17/10/1997',
    '07413789611',
    'GeorgeSmith8@yahoo.com',
    '57 Victoria Street',
    'Wales'
  ),
  (
    15,
    'Izzy',
    'Gordon',
    '14/11/1998',
    '07814187915',
    'IzzyGordon26@gmail.com',
    '99 Brick Park',
    'Scotland'
  ),
  (
    16,
    'Annie',
    'Green',
    '11/02/1995',
    '07841514486',
    'AnnieGreen25@yahoo.com',
    '109 Holly Road',
    'England'
  ),
  (
    17,
    'Matt',
    'Ellen',
    '24/04/1996',
    '07200958418',
    'MattEllen3@hotmail.com',
    '51 Valley Lane',
    'Wales'
  ),
  (
    18,
    'Sophie',
    'ONeil',
    '30/04/2002',
    '07863601694',
    'SophieONeil51@hotmail.com',
    '57 Mill Street',
    'Scotland'
  ),
  (
    19,
    'Harry',
    'Johnson',
    '05/06/2000',
    '07916616203',
    'HarryJohnson58@yahoo.com',
    '23 Holly Park',
    'England'
  ),
  (
    20,
    'Izzy',
    'Hunter',
    '18/04/2004',
    '07642698199',
    'IzzyHunter68@outlook.com',
    '127 Victoria Road',
    'Wales'
  );
  
CREATE TABLE Booking (
  B_ID VARCHAR(10) NOT NULL PRIMARY KEY,
  B_Customer_ID INT NOT NULL,
  B_Ticket_ID VARCHAR(50) NOT NULL,
  B_Price INT NOT NULL
);
INSERT INTO Booking (B_ID, B_Customer_ID, B_Ticket_ID, B_Price)
VALUES ('B001', 1, 'T01', 50),
  ('B002', 2, 'T02', 200),
  ('B003', 3, 'T03', 0),
  ('B004', 4, 'T04', 100),
  ('B005', 5, 'T05', 100),
  ('B006', 6, 'T06', 0),
  ('B007', 7, 'T07', 50),
  ('B008', 8, 'T08', 100),
  ('B009', 9, 'T09', 0),
  ('B010', 10, 'T10', 100),
  ('B011', 11, 'T11', 100),
  ('B012', 12, 'T12', 0),
  ('B013', 13, 'T13', 50),
  ('B014', 14, 'T14', 100),
  ('B015', 15, 'T15', 0),
  ('B016', 16, 'T16', 100),
  ('B017', 17, 'T17', 100),
  ('B018', 18, 'T18', 0),
  ('B019', 19, 'T19', 100),
  ('B020', 20, 'T20', 100);
ALTER TABLE booking
ADD CONSTRAINT fk_customer_id FOREIGN KEY (B_Customer_ID) REFERENCES Customer (C_ID);

CREATE TABLE Ticket (
  T_ID VARCHAR(10) NOT NULL PRIMARY KEY,
  T_Customer_ID INT NOT NULL,
  T_day VARCHAR(50) NOT NULL,
  T_access VARCHAR(50) NOT NULL
);
INSERT INTO Ticket (T_ID, T_Customer_ID, T_day, T_access)
VALUES ('T01', 1, 'Saturday', 'Standard'),
  ('T02', 2, 'Weekend', 'VIP'),
  ('T03', 3, 'Saturday', 'AAA'),
  ('T04', 4, 'Weekend', 'Standard'),
  ('T05', 5, 'Sunday', 'VIP'),
  ('T06', 6, 'Saturday', 'AAA'),
  ('T07', 7, 'Sunday', 'Standard'),
  ('T08', 8, 'Sunday', 'VIP'),
  ('T09', 9, 'Sunday', 'AAA'),
  ('T10', 10, 'Weekend', 'Standard'),
  ('T11', 11, 'Saturday', 'VIP'),
  ('T12', 12, 'Saturday', 'AAA'),
  ('T13', 13, 'Saturday', 'Standard'),
  ('T14', 14, 'Saturday', 'VIP'),
  ('T15', 15, 'Weekend', 'AAA'),
  ('T16', 16, 'Weekend', 'Standard'),
  ('T17', 17, 'Sunday', 'VIP'),
  ('T18', 18, 'Sunday', 'AAA'),
  ('T19', 19, 'Weekend', 'Standard'),
  ('T20', 20, 'Sunday', 'VIP');
ALTER TABLE booking
ADD CONSTRAINT fk_ticket_id FOREIGN KEY (B_Ticket_ID) REFERENCES Ticket (T_ID);
ALTER TABLE ticket
ADD CONSTRAINT fk_t_customer_id FOREIGN KEY (T_Customer_ID) REFERENCES Customer (C_ID);

CREATE TABLE Staff (
  Staff_ID INT PRIMARY KEY,
  Staff_Name VARCHAR(50) NOT NULL,
  Staff_Surname VARCHAR(50) NOT NULL,
  Staff_Contact_number VARCHAR(50) NOT NULL,
  Staff_Stage_ID INT NOT NULL
);
INSERT INTO Staff (
    Staff_ID,
    Staff_Name,
    Staff_Surname,
    Staff_Contact_number,
    Staff_Stage_ID
  )
VALUES (
    1,
    'Nathan',
    'Allen',
    '07700900001',
    2
  ),
  (2, 'Robb', 'Boyd', '07700900002', 1),
  (
    3,
    'Andy',
    'Brown',
    '07700900003',
    4
  ),
  (
    4,
    'James',
    'Clark',
    '07700900004',
    3
  ),
  (
    5,
    'Natalie',
    'Cole',
    '07700900005',
    3
  ),
  (
    6,
    'Bill',
    'Allen',
    '07700900006',
    2
  ),
  (7, 'Red', 'Fox', '07700900007', 1),
  (
    8,
    'Brandon',
    'Martinez',
    '07700900008',
    1
  ),
  (
    9,
    'Margaret',
    'Garcia',
    '07700900009',
    4
  ),
  (
    10,
    'Bill',
    'Thomas',
    '07700900010',
    2
  ),
  (
    11,
    'Nancy',
    'Jhonson',
    '07700900011',
    3
  ),
  (
    12,
    'Sarah',
    'Moore',
    '07700900012',
    3
  ),
  (
    13,
    'Robb',
    'Jhonson',
    '07700900013',
    2
  ),
  (
    14,
    'Jasmine',
    'Walker',
    '07700900014',
    4
  ),
  (
    15,
    'Christie',
    'Young',
    '07700900015',
    4
  ),
  (
    16,
    'Estelle',
    'White',
    '07700900016',
    1
  ),
  (
    17,
    'Dan',
    'Smith',
    '07700900017',
    2
  ),
  (
    18,
    'Anthony',
    'Thomas',
    '07700900018',
    3
  ),
  (
    19,
    'Alexandra',
    'Hall',
    '07700900019',
    4
  ),
  (
    20,
    'Tyler',
    'Harris',
    '07700900020',
    1
  );

CREATE TABLE Stage (
  Stage_id INT NOT NULL PRIMARY KEY,
  Stage_name VARCHAR(10) NOT NULL,
  Stage_staff_id INT NOT NULL
);
INSERT INTO Stage (Stage_id, Stage_name, Stage_staff_id)
VALUES (1, 'SURFACE', 1),
  (2, 'SCATTER', 2),
  (3, 'EXPAND', 3),
  (4, 'REVERSE', 4);
ALTER TABLE Staff
ADD CONSTRAINT fk_Staff_Stage_ID FOREIGN KEY (Staff_Stage_ID) REFERENCES Stage(Stage_ID);
ALTER TABLE Stage
ADD CONSTRAINT fk_Stage_Staff_ID FOREIGN KEY (Stage_Staff_ID) REFERENCES Staff(Staff_ID);

CREATE TABLE Artist (
  Artist_id INT NOT NULL PRIMARY KEY,
  Artist_name VARCHAR(20) NOT NULL,
  Artist_set_id INT NOT NULL,
  Artist_stage_id INT NOT NULL
);
INSERT INTO Artist (
    Artist_id,
    Artist_name,
    Artist_set_id,
    Artist_stage_id
  )
VALUES (1, 'Loucastrol', 1, 1),
  (2, 'Gravaimeeks', 2, 2),
  (3, 'Improfing', 3, 3),
  (4, 'Frantly', 4, 4),
  (5, 'Hirew', 5, 1),
  (6, 'Afformance', 6, 2),
  (7, 'Inducilly', 7, 3),
  (8, 'Lutnewear', 8, 4);
  
CREATE TABLE Set_timings (
  Set_id INT NOT NULL PRIMARY KEY,
  Set_staff_id INT NOT NULL REFERENCES Staff (staff_id),
  Set_stage_id INT NOT NULL REFERENCES stage (stage_id),
  Set_artist_id INT NOT NULL REFERENCES artist (artist_id),
  Set_date DATE NOT NULL,
  Set_start_time TIME NOT NULL,
  Set_end_time TIME NOT NULL,
  Set_active BOOLEAN
);
INSERT INTO Set_timings (
    Set_id,
    Set_staff_id,
    Set_Stage_id,
    Set_artist_id,
    Set_date,
    Set_start_time,
    Set_end_time,
    Set_active
  )
VALUES (
    1,
    20,
    1,
    1,
    '2022-06-29',
    '12:00:00',
    '14:00:00',
    0
  ),
  (
    2,
    19,
    2,
    2,
    '2022-06-29',
    '14:00:00',
    '16:00:00',
    0
  ),
  (
    3,
    18,
    3,
    3,
    '2022-06-29',
    '16:00:00',
    '18:00:00',
    0
  ),
  (
    4,
    17,
    4,
    4,
    '2022-06-29',
    '18:00:00',
    '22:00:00',
    0
  ),
  (
    5,
    16,
    1,
    5,
    '2022-06-30',
    '12:00:00',
    '14:00:00',
    0
  ),
  (
    6,
    15,
    2,
    6,
    '2022-06-30',
    '14:00:00',
    '16:00:00',
    0
  ),
  (
    7,
    14,
    3,
    7,
    '2022-06-30',
    '16:00:00',
    '18:00:00',
    0
  ),
  (
    8,
    13,
    4,
    8,
    '2022-06-30',
    '18:00:00',
    '20:00:00',0
  );
  
CREATE TABLE Vendor (
  Vendor_ID INT PRIMARY KEY,
  Vendor_Name VARCHAR(50) NOT NULL,
  Vendor_Staff_ID INT NOT NULL,
  Vendor_Stage_ID INT NOT NULL,
  CONSTRAINT fk_Staff_ID FOREIGN KEY (Vendor_Staff_ID) REFERENCES Staff (Staff_ID),
  CONSTRAINT fk_Stage_ID FOREIGN KEY (Vendor_Stage_ID) REFERENCES Stage (Stage_ID)
);
INSERT INTO Vendor (
    Vendor_ID,
    Vendor_Name,
    Vendor_Staff_ID,
    Vendor_Stage_ID
  )
VALUES (1, 'Google', 12, 2),
  (2, 'Apple', 5, 3),
  (3, 'Spotify', 16, 1),
  (4, 'Apple', 6, 4);
  
ALTER TABLE Set_timings
ADD CONSTRAINT fk_Set_Staff_ID FOREIGN KEY (Set_Staff_ID) REFERENCES Staff(Staff_ID);

ALTER TABLE Set_timings
ADD CONSTRAINT fk_Set_Stage_ID FOREIGN KEY (Set_Stage_ID) REFERENCES Stage(Stage_ID);

ALTER TABLE Set_timings
ADD CONSTRAINT fk_Set_Artist_ID FOREIGN KEY (Set_Artist_ID) REFERENCES Artist(Artist_ID);

ALTER TABLE Artist
ADD CONSTRAINT fk_Artist_Set_ID FOREIGN KEY (Artist_Set_ID) REFERENCES Set_timings(Set_ID);

ALTER TABLE Artist
ADD CONSTRAINT fk_Artist_Stage_ID FOREIGN KEY (Artist_Stage_ID) REFERENCES Stage(Stage_ID);

-- Next section joins the booking reference to the ticket type and customer information
SELECT C_NAME AS Customer_Name,
  C_SURNAME AS Customer_Surname,
  T_access AS Ticket_Type,
  B_Price AS Amount_Paid
FROM Booking Bo
  JOIN Ticket Tic ON Bo.B_Customer_ID = Tic.T_Customer_ID
  JOIN Customer C ON C_ID = Tic.T_Customer_ID;
  
-- Then there is a stored function to check whether customers have access to stage 4
DELIMITER / / 
CREATE FUNCTION Stage4_access (T_access VARCHAR(50)) RETURNS VARCHAR(50) DETERMINISTIC BEGIN
DECLARE Stage4_access VARCHAR(50);
IF T_access = "AAA" THEN
SET Stage4_access = "GRANTED";
ELSEIF T_access = "VIP" THEN
SET Stage4_access = "GRANTED";
ELSEIF T_access = "Standard" THEN
SET Stage4_access = "DENIED";
END IF;
RETURN (Stage4_access);
END / / 
-- Applying a query which uses this stored function
SELECT c.C_Name,
  STAGE4_ACCESS(T_access)
FROM ticket t
  JOIN customer c ON t.t_customer_ID = c.C_Id
ORDER BY c.C_Surname; 

-- Find all staff that are near Spotify's location
SELECT staff_name, staff_surname
FROM staff
WHERE staff_stage_id 
IN (SELECT vendor_stage_id
FROM vendor
WHERE vendor_name = 'Spotify');

-- store procedure 1 this procedure adds staff 
  DELIMITER / / 
  CREATE PROCEDURE AddStaff(
    IN Staff_ID INT,
    IN Staff_Name varchar(50),
    IN Staff_Surname VARCHAR(50),
    IN Staff_Contact_Number varchar(50),
    IN Staff_Stage_ID int
  ) BEGIN
INSERT INTO Staff(
    Staff_Id,
    Staff_Name,
    Staff_Surname,
    Staff_Contact_Number,
    Staff_Stage_ID
  )
VALUES (
    Staff_Id,
    Staff_Name,
    Staff_Surname,
    Staff_Contact_Number,
    Staff_Stage_ID
  );
END / / 
CALL AddStaff (21, 'Graham', 'Hooper', '07700900021', 3);

-- store procedure 2 It is the procedure that makes ticket booking and customer addition at the same time in order to make booking for customers that are not added in the database.
DELIMITER / / 
CREATE PROCEDURE Addbookingfornewcustomer(
  IN B_ID Varchar(50),
  IN B_Customer_ID INT,
  IN B_Ticket_ID Varchar(50),
  IN B_PRICE float,
  IN C_id INT,
  IN C_Name varchar(50),
  IN C_Surname varchar(50),
  IN C_DOB varchar(50),
  IN C_Phone varchar(50),
  IN C_Email varchar(50),
  IN C_Address varchar(50),
  IN C_Country varchar(50),
  IN T_ID Varchar(50),
  In T_Customer_Id int,
  In T_day varchar(50),
  IN T_access Varchar(50)
) BEGIN
INSERT INTO Customer(
    C_Id,
    C_Name,
    C_Surname,
    C_DOB,
    C_Phone,
    C_Email,
    C_Address,
    C_Country
  )
VALUES (
    C_Id,
    C_Name,
    C_Surname,
    C_DOB,
    C_Phone,
    C_Email,
    C_Address,
    C_Country
  );
INSERT INTO Ticket(T_Id, T_Customer_ID, T_day, T_access)
VALUES (T_Id, T_Customer_ID, T_day, T_access);
INSERT INTO Booking(B_Id, B_Customer_Id, B_Ticket_ID, B_Price)
VALUES (
    B_Id,
    B_Customer_Id,
    B_Ticket_ID,
    B_Price
  );
END / /
CALL Addbookingfornewcustomer (
  'B021',
  21,
  'T21',
  200,
  21,
  'Taylor',
  'Downey',
  '01/02/1990',
  '07367529456',
  'taylordowney@gmail.com',
  '28 London Street',
  'England',
  'T21',
  21,
  'Sunday',
  'Standart'
);

-- Trigger When we want to delete a customer from the database, the booking of that person will be deleted with this trigger.
DELIMITER / / 
CREATE TRIGGER customer_before_Delete Before DELETE on customer FOR EACH ROW BEGIN
SET FOREIGN_KEY_CHECKS=0;
Delete from booking
where B_Customer_ID = old.c_ID;
SET FOREIGN_KEY_CHECKS=1;
END / /
SHOW TRIGGERS;
DELETE FROM customer 
WHERE c_id = 21;

-- CREATE A VIEW THAT SHOWS THE ARTIST NAME, SET DATE, SET START TIME, STAFF MANAGING, CONTACT NUMBER FOR STAFF MEMEBER AND STAGE NAME
  CREATE VIEW vw_lineup AS
SELECT a.artist_name,
  se.set_date,
  se.set_start_time,
  s.staff_name,
  s.staff_contact_number,
  st.stage_name
FROM Artist AS a
  INNER JOIN Set_timings AS se ON se.set_artist_id = a.artist_id
  INNER JOIN Staff AS s ON s.staff_id = se.set_staff_id
  INNER JOIN Stage AS st ON s.staff_stage_id = st.stage_id;
  
-- ANALYSE VIEW TABLE TO QUERY ALL PERFORMANCES TAKING PLACE ON THE FIRST DAY ON 'SURFACE' STAGE
SELECT *
FROM vw_lineup
WHERE set_date = '2022-06-30'
  AND stage_name = 'SURFACE';
-- QUERY LISTING THE NUMBER OF CUSTOMERS IN EACH COUNTRY, ONLY TO INCLUDE COUNTRIES WITH MORE THAN 6 CUSTOMERS 
SET sql_mode =(
    SELECT REPLACE(
        @@sql_mode,
        'ONLY_FULL_GROUP_BY',
        ''
      )
  );
SELECT COUNT(c.c_ID) AS 'Number of Customers',
  c_country AS 'Country'
FROM Customer c
GROUP BY c_country
HAVING COUNT(c.c_id) > 6;

-- CREATE EVENT SCHEDULER TO SHOW WHICH ARTIST IS ACTIVE AT CURRENT DATE AND TIME
SET GLOBAL event_scheduler = ON;
USE festival;
SET sql_safe_updates=0;
DELIMITER / / 
CREATE EVENT Find_Active_Event ON SCHEDULE EVERY 2 second STARTS NOW() DO BEGIN
UPDATE set_timings
SET Set_Active = 1
WHERE Set_Date = Curdate()
  and Set_start_time <= curtime()
  and Set_end_time >= curtime();
END / / 
-- SHOW EVENT SCHEDULER AND ACTIVE EVENTS
SHOW EVENTS;
SELECT *
FROM Set_timings;