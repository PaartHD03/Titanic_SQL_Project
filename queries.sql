SELECT * FROM TITANIC;
SELECT PCLASS, COUNT(*) FROM TITANIC
GROUP BY PCLASS;
SELECT SEX, COUNT(*) FROM TITANIC
GROUP BY SEX;
SELECT NAME FROM TITANIC
WHERE SURVIVED = 'Survived';
SELECT AVG(AGE) AS AVGAGE
FROM TITANIC;
SELECT NAME, AGE FROM TITANIC
WHERE AGE < '18';
SELECT EMBARKED, COUNT(*) FROM TITANIC
GROUP BY EMBARKED;
SELECT MAX(FARE) FROM TITANIC;
SELECT PCLASS, AVG(AGE) FROM TITANIC
GROUP BY PCLASS;
SELECT NAME,AGE FROM TITANIC
WHERE SURVIVED = 'Survived' and PCLASS = '1';
SELECT COUNT(*) FROM TITANIC
WHERE FARE > '50';
SELECT NAME FROM TITANIC
WHERE SURVIVED = 'Died' and PCLASS = '3';
SELECT COUNT(*) AS missing_age_count
FROM titanic
WHERE Age IS NULL;
SELECT Name, Age
FROM titanic
WHERE Embarked = 'S' AND Survived = 'Survived';
SELECT COUNT(*) AS total_passengers
FROM titanic;
SELECT Pclass, AVG(Fare) AS average_fare
FROM titanic
GROUP BY Pclass;
SELECT Name, Age
FROM titanic
WHERE Age IS NOT NULL AND Fare > 100;
SELECT (SUM(CASE WHEN Survived = 'Survived' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS survival_percentage
FROM titanic;
SELECT Name
FROM titanic
WHERE Pclass = 2 AND Fare < 20;
SELECT Name, Age
FROM titanic
WHERE Survived = 'Died' AND Pclass = 1;
SELECT Pclass, Sex, COUNT(*) AS passenger_count
FROM titanic
GROUP BY Pclass, Sex;
SELECT Name
FROM titanic
WHERE Survived = 'Survived' AND Pclass = 3 AND Age < 20;
SELECT Name
FROM titanic
WHERE Name LIKE '%Mr.%';
SELECT Sex, AVG(Age) AS average_age
FROM titanic
GROUP BY Sex;
SELECT Name
FROM titanic
WHERE Fare = (SELECT MAX(Fare) FROM titanic);
SELECT Embarked, Pclass, COUNT(*) AS passenger_count
FROM titanic
GROUP BY Embarked, Pclass;
SELECT Name, Age
FROM titanic
WHERE Survived = 'Survived' AND Fare > 200;
SELECT Survived, AVG(Age) AS average_age
FROM titanic
GROUP BY Survived;
SELECT Name
FROM titanic
WHERE Pclass = 1 AND Age > 50;
SELECT Name
FROM titanic
WHERE Name LIKE '%sson';