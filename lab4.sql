--4.1
/* No because it is a 1 to Many relationship */
/* The answer is no because it is referred to by other tables. Since it is a foreign key in other tables, it will effect the other tables.*/


--4.2
/* No because we don't have an fips that is '80'


--4.3
/* No, they are not perfect, but they are really close because we only had to make one change to the code*/


--4.6
SELECT 
    n.name, 
    i.income, 
    i.year
FROM 
    income i
JOIN 
    name n 
ON 
    i.fips = n.fips
WHERE 
    i.year = (SELECT MAX(year) FROM income)  -- Get the most recent year
ORDER BY 
    i.income DESC
LIMIT 1;  -- Get the state with the highest income

/* The sql code that I posted in pgAdmin gave me back Washington DC wich was the correct answer.
