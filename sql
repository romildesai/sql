1. SELECT DISTINCT CITY
FROM STATION
WHERE (LOWER(CITY) LIKE 'a%'
    OR LOWER(CITY) LIKE 'e%'
    OR LOWER(CITY) LIKE 'i%'
    OR LOWER(CITY) LIKE 'o%'
    OR LOWER(CITY) LIKE 'u%')
AND (LOWER(CITY) LIKE '%a'
    OR LOWER(CITY) LIKE '%e'
    OR LOWER(CITY) LIKE '%i'
    OR LOWER(CITY) LIKE '%o'
    OR LOWER(CITY) LIKE '%u');
-------------------------------------------------
2.SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT LIKE 'a%'
  AND LOWER(CITY) NOT LIKE 'e%'
  AND LOWER(CITY) NOT LIKE 'i%'
  AND LOWER(CITY) NOT LIKE 'o%'
  AND LOWER(CITY) NOT LIKE 'u%'
   OR
      LOWER(CITY) NOT LIKE '%a'
  AND LOWER(CITY) NOT LIKE '%e'
  AND LOWER(CITY) NOT LIKE '%i'
  AND LOWER(CITY) NOT LIKE '%o'
  AND LOWER(CITY) NOT LIKE '%u';
-----------------------------------------------------------------------------
3.SELECT DISTINCT CITY
FROM STATION
WHERE LOWER(CITY) NOT LIKE 'a%'
  AND LOWER(CITY) NOT LIKE 'e%'
  AND LOWER(CITY) NOT LIKE 'i%'
  AND LOWER(CITY) NOT LIKE 'o%'
  AND LOWER(CITY) NOT LIKE 'u%'
  AND LOWER(CITY) NOT LIKE '%a'
  AND LOWER(CITY) NOT LIKE '%e'
  AND LOWER(CITY) NOT LIKE '%i'
  AND LOWER(CITY) NOT LIKE '%o'
  AND LOWER(CITY) NOT LIKE '%u';
-----------------------------------------------------------------------------
4.SELECT DISTINCT PATIENT_ID,PATIENT_NAME,CONDITIONS
FROM PATIENTS
WHERE CONDITIONS LIKE  'DIAB1%'
    OR CONDITIONS LIKE '% DIAB1%';
-----------------------------------------------------------------------------
5.
-----------------------------------------------------------------------------
6.
-----------------------------------------------------------------------------
7.
-----------------------------------------------------------------------------
8.SELECT email 
FROM person 
GROUP BY email
HAVING COUNT(email) > 1;
-----------------------------------------------------------------------------
9. # Write your MySQL query statement below
SELECT actor_id,director_id
FROM ActorDirector
GROUP BY actor_id,director_id
having count(*) >= 3
-----------------------------------------------------------------------------
10.
-----------------------------------------------------------------------------
11.# # Write your MySQL query statement below
SELECT user_id, COUNT(*) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id
-----------------------------------------------------------------------------

12.select  COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;
-----------------------------------------------------------------------------
13.
-----------------------------------------------------------------------------
14.# Write your MySQL query statement below
SELECT ID , movie, description, rating
FROM Cinema
where description !='boring'
group by id
having id % 2 =1
order by id desc;
-----------------------------------------------------------------------------
15.# Write your MySQL query statement below
select MAX(customer_number) AS customer_number
from orders
-----------------------------------------------------------------------------

16./*
Enter your query here.
*/
SELECT city ,length(city) as city_length
from station
order by length(city) desc ,city 
limit 1;

SELECT city ,length(city) as city_length
from station
order by length(city),city 
limit 1;
SELECT city ,length(city) as city_length
from station
-----------------------------------------------------------------------------
17.SELECT Name
FROM STUDENTS
WHERE Marks > 75
ORDER BY RIGHT(Name, 3), ID;
-----------------------------------------------------------------------------
18.# Write your MySQL query statement below
select name 
from Customer
where referee_id != 2
or referee_id IS null;
-----------------------------------------------------------------------------
19.SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
-----------------------------------------------------------------------------
20.# Write your MySQL query statement below
SELECT activity_date AS day,
       COUNT(DISTINCT user_id) AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY activity_date;
-----------------------------------------------------------------------------






