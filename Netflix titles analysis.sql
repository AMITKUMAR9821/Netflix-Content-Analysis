use netflix_dbo

select * from netflix_titles

---- Percentage of movies vs tv shows
select type,(count(*)*100/(select count(*) from netflix_titles)) as percentage
from netflix_titles
group by type;



---Most common genre combination

select top 5 listed_in,count(*) as num_titles
from netflix_titles
group by listed_in
order by num_titles desc;

---Top 5 director with the most titles

select top 5 director,count(*)as num_titles
from netflix_titles
where director is not null
group by director
order by num_titles desc;



---Titles that were added in last 365 days


SELECT * 
FROM netflix_titles 
WHERE DATEDIFF(DAY, CAST(date_added AS DATE), GETDATE()) <= -1368; --- I did -1368 minus because this dataset is 3 years old


--- Top 5 titles released before 2020

SELECT TOP 5 title, rating
FROM netflix_titles
WHERE release_year < 2020
ORDER BY rating DESC;



---Most recent title by type in 2021


with rankedtitles as (
	select title,type,date_added,
		ROW_NUMBER() over (partition by type order by date_added desc) as rn
	from netflix_titles
)
select top 5 title,type,date_added
from rankedtitles


---Top 5 Genre with the most titles in each countries

WITH genrecounts AS (
    SELECT 
        country, 
        listed_in, 
        COUNT(*) AS num_titles,
        ROW_NUMBER() OVER (PARTITION BY country ORDER BY COUNT(*) DESC) AS rn
    FROM 
        netflix_titles
    GROUP by country, listed_in
)
SELECT top 5 country, listed_in, num_titles FROM genrecounts
order by num_titles desc;


---Yearly growth of titles

with yearlycounts as (
	select YEAR(date_added) as year,count(*) as num_titles
	from netflix_titles
	group by YEAR(date_added)
)
select year,num_titles,
	lag(num_titles) over (order by year) as previous_year_count,
	num_titles-lag(num_titles) over(order by year) as growth
from yearlycounts
order by year;


---Most popular director per genre


WITH DirectorCounts AS (
    SELECT listed_in, director, COUNT(*) AS num_titles,
           ROW_NUMBER() OVER (PARTITION BY listed_in ORDER BY COUNT(*) DESC) AS rn
    FROM netflix_titles
    WHERE listed_in IS NOT NULL AND director IS NOT NULL -- Exclude nulls
    GROUP BY listed_in, director
)
SELECT top 5 listed_in, director, num_titles
FROM DirectorCounts
order by num_titles;







