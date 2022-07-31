CREATE TABLE CUSTOMER(
  Customer_id int,
  custname varchar(50),
  city text,
  grade int,
  salesman int
);

-- insert
INSERT INTO CUSTOMER VALUES (3002, 'roshan', 'pune' , 100 , 5001);
INSERT INTO CUSTOMER VALUES (3007, 'sameer', 'pune' , 200 , 5001);
INSERT INTO CUSTOMER VALUES (3005, 'josh', 'mumbai' , 300 , 5002);
INSERT INTO CUSTOMER VALUES (3008,	'ajeem',	'nagpur',300 , 5002);
INSERT INTO CUSTOMER VALUES (3004, 'ravi',	'jaipur' ,	300 ,	5006);
INSERT INTO CUSTOMER VALUES (3009,	'pooja',	'kolkata',	100 , 5003);
INSERT INTO CUSTOMER VALUES (3003,	'atul',	'banglore',	200 ,	5007);
INSERT INTO CUSTOMER VALUES (3001,	'tom',	'delhi',	400 ,	5005);
-- fetch 
SELECT custname, grade
FROM CUSTOMER; 
 
 CREATE TABLE SALESMANS(
  salesman int,
  name text,
  city text,
  commission int,
);

-- insert
INSERT INTO SALESMANS VALUES (5001,	'ashish',	'mumbai',	0.15);
INSERT INTO SALESMANS VALUES (5002,	'amol',	'amritsar',	0.13);
INSERT INTO SALESMANS VALUES (5005,	'ritesh',	'delhi',	0.11);
INSERT INTO SALESMANS VALUES (5006,	'rajesh' ,	'pune',	0.14);
INSERT INTO SALESMANS VALUES (5003,	'omkar',	'jaipur',	0.12);
INSERT INTO SALESMANS VALUES (5007,	'abhi',	'nagpur',	0.13);

SELECT MAX(commission) 
FROM SALESMANS;

SELECT *
FROM orders
WHERE salesman_id IN
    (SELECT salesman_id 
     FROM salesman 
     WHERE city ='Nagpur');
     
     
SELECT ord_date, SUM(purch_amt), 
SUM(purch_amt)*.15 
FROM orders 
GROUP BY ord_date 
ORDER BY ord_date;

SELECT *
FROM orders
WHERE purch_amt >
    (SELECT  AVG(purch_amt) 
     FROM orders
     
select * from(
select purch_ amnt, order id, dense_rank() 
over(order by purchase amnt)r from Orders) 
where r=&5;
