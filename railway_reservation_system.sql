CREATE DATABASE RAILWAY_RESERVATION;
USE RAILWAY_RESERVATION;

CREATE TABLE PAYMENT(
AMOUNT VARCHAR(200),
TICKET_GENERATION VARCHAR(250));

CREATE TABLE TRAIN(
TRAINCODE VARCHAR(250),
TRAINNAME VARCHAR(250),
FREQUENCY VARCHAR(250));

CREATE TABLE PASSENGER(
PAX_ID INT,
NAME VARCHAR(250),
AGE INT,
LOGIN VARCHAR(200),
SEARCH_TRAIN VARCHAR(200),
MODIFY_FORM VARCHAR(200),
PAYCHARGES VARCHAR(200),
BOOKTICKET VARCHAR(200),
CANCLE_TICKET VARCHAR(200));

CREATE TABLE TICKET(
PNRNO INT,
STATUS VARCHAR(200),
PAYMENT_TYPE VARCHAR(200),
TRAINCODE VARCHAR(200),
DATEOFDJOURNEY DATETIME,
NEWTICKET VARCHAR(200),
DELETETICKET VARCHAR(200)
);

CREATE TABLE RAILWAY_RESERVATION_SYSTEM(
SYSTEM_ID varchar(100),
RESPONSE VARCHAR(200));

CREATE TABLE ADMIN(
ID VARCHAR(200),
NAME VARCHAR(200),
FORMDETAILS VARCHAR(200),
CANCELLATION_FORM VARCHAR(200),
REFUNDAMT VARCHAR(200));

INSERT INTO ADMIN(ID,NAME,FORMDETAILS,CANCELLATION_FORM,REFUNDAMT)
VALUES("AD001","Abhijit Mane","YES","NA","NO REFUND");

INSERT INTO RAILWAY_RESERVATION_SYSTEM(SYSTEM_ID,RESPONSE)
VALUES("SYS01","PASSED");


INSERT INTO PASSENGER(PAX_ID,NAME,AGE,LOGIN,SEARCH_TRAIN,MODIFY_FORM,PAYCHARGES,BOOKTICKET,CANCLE_TICKET)
VALUES(01309,"JUSTIN KAMBLE",32,"JC01@GMAIL.COM","MUM-PUNE","NA","YES","YES","NA");

INSERT INTO TRAIN(TRAINCODE,TRAINNAME,FREQUENCY)
VALUES(0071,"MPE","5D/W");

INSERT INTO TICKET(PNRNO,STATUS,PAYMENT_TYPE,TRAINCODE,DATEOFDJOURNEY,NEWTICKET,DELETETICKET)
VALUES(91309,"SUCCESS","UPI","BR0071","2003-03-12 12:23:33","NA","NA");

INSERT INTO PAYMENT(AMOUNT,TICKET_GENERATION)
VALUES(1500,"YES");

SELECT * FROM ADMIN;
SELECT * FROM  RAILWAY_RESERVATION_SYSTEM;
SELECT * FROM PASSENGER;
SELECT * FROM TRAIN;
SELECT * FROM TICKET;
SELECT * FROM PAYMENT;
