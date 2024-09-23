--4.1
/* No because it is a 1 to Many relationship */
/* The answer is no because it is referred to by other tables. Since it is a foreign key in other tables, it will effect the other tables.*/


--4.2
/* No because we don't have an fips that is '80' */


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

/* The sql code that I posted in pgAdmin gave me back Washington DC wich was the correct answer. */

--4.7
/* Prompt: calculate the population growth rate in VA in the past 5 years in one sql code */ 
/* We modified the prompt a few times to ensure that we got something that would give us a good answer, although it wasn't modified heavily. All we asked was for it to save the value as a ratio. */

--4.8
/* AI does not always give us a reliable answer. Not only in this lab but overall, it can create things that are not true or make up statistics if you ask it to. There always needs to be
some caution when prompting with AI. While it is a great resource at some times, people must recognize that it is not perfect. Although, understanding its flaws can make it a powerful tool.
