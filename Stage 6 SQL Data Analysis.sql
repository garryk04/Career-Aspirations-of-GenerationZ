-- 1. What is the gender distribution of respondents from India?
select gender, count(*) as count from genz where country="India" group by Gender;

-- --------------------------------------------------------------------------------------------------------------

-- 2. What percentage of respondents from India are interested in education abroad and sponsorship?
select `Study Abroad`, truncate((count(*)*100)/(select count(*) from genz where country="India"),2)as percentage
from genz where country="India" group by `Study Abroad`;

-- --------------------------------------------------------------------------------------------------------------

-- 3. What are the 6 top influences on career aspirations for respondents in India?
select `Influence Factors`, count(*) as count from genz where country="India" group by `Influence Factors` 
order by count desc limit 6;

-- --------------------------------------------------------------------------------------------------------------

-- 4. How do career aspiration influences vary by gender in India?
select `Aspirational job`, gender, count(*) as count from genz where country="India" group by `Aspirational job`, Gender;

-- --------------------------------------------------------------------------------------------------------------

-- 5. What percentage of respondents are willing to work for a company for at least 3 years?
select `Employer for 3 years`, truncate((count(*)*100)/(select count(*) from genz where country="India"),2)as percentage
from genz where country="India" group by `Employer for 3 years`;

-- --------------------------------------------------------------------------------------------------------------

-- 6. How many respondents prefer to work for socially impactful companies?
select `Work with misaligned company`, count(*) as count from genz where country="India" group by `Work with misaligned company`;

-- --------------------------------------------------------------------------------------------------------------

-- 7. How does the preference for socially impactful companies vary by gender?
select `Work with misaligned company`, gender, count(*) as count from genz where country="India" group by `Work with misaligned company`, gender;

-- --------------------------------------------------------------------------------------------------------------

-- 8. What is the distribution of minimum expected salary in the first three years among respondents?
select `Expected Monthly Salary for First 3 Years`, count(*) as count from genz where country="India" group by `Expected Monthly Salary for First 3 Years`;

-- --------------------------------------------------------------------------------------------------------------

-- 9. What is the expected minimum monthly salary in hand?
select `Fresher Monthly Salary`, count(*) as count from genz where country="India" group by `Fresher Monthly Salary`;

-- --------------------------------------------------------------------------------------------------------------

-- 10. What percentage of respondents prefer remote working?
select `Working Environment`, truncate((count(*)*100)/(select count(*) from genz where country="India"),2)as percentage
from genz where country="India" group by `Working Environment`;

-- --------------------------------------------------------------------------------------------------------------

-- 11. What is the preferred number of daily work hours?
select `Working Hours EveryDay`, count(*) as count from genz where country="India" group by `Working Hours EveryDay`;

-- --------------------------------------------------------------------------------------------------------------

-- 12. What are the common work frustrations among respondents?
select `Frustration at work`, count(*) as count from genz where country="India" group by `Frustration at work` order by count desc;

-- --------------------------------------------------------------------------------------------------------------

-- 13. How does the need for work-life balance interventions vary by gender?
select `Work at Unhealthy Workspace`, gender, count(*) as count from genz where country="India" 
group by `Work at Unhealthy Workspace`, gender;

-- --------------------------------------------------------------------------------------------------------------

-- 14. How many respondents are willing to work under an abusive manager?
select `Likelihood Work With Manager`, count(*) as count from genz where country="India" group by `Likelihood Work With Manager`;

-- --------------------------------------------------------------------------------------------------------------

-- 15. What is the distribution of minimum expected salary after five years?
select `Expected Monthly Salary After 5 years`, count(*) as count from genz where country="India" group by `Expected Monthly Salary After 5 years`;


-- --------------------------------------------------------------------------------------------------------------

-- 16. What are the remote working preferences by gender?
select `Working Environment`, gender, count(*) as count from genz where country="India" group by `Working Environment`, Gender;

-- --------------------------------------------------------------------------------------------------------------

-- 17. What are the top work frustrations for each gender?
(select `Frustration at work`, gender, count(*) as count from genz where country="India" and gender="M"
group by `Frustration at work` order by count desc limit 1)
union
(select `Frustration at work`, gender, count(*) as count from genz where country="India" and gender="F"
group by `Frustration at work` order by count desc limit 1)
union
(select `Frustration at work`, gender, count(*) as count from genz where country="India" and gender="Other"
group by `Frustration at work` order by count desc limit 1);

-- --------------------------------------------------------------------------------------------------------------

-- 18. What factors boost work happiness and productivity for respondents?
select `Happier and productive at work`, count(*) as count from genz where country="India" group by `Happier and productive at work`;

-- --------------------------------------------------------------------------------------------------------------

-- 19. What percentage of respondents need sponsorship for education abroad?
select `Study Abroad`, truncate((count(*)*100)/(select count(*) from genz where country="India"),2)as percentage
from genz where country="India" group by `Study Abroad`;

-- --------------------------------------------------------------------------------------------------------------
