-- Assignment

-- 1. show how many medal counts for entire data

use weekdays1;
select* from athlete;
select count(medal) from athlete 
where Medal not like '%NoMedal%';

-- 2. show count of unique sports are present in olympics

select COUNT(distinct(sport)) from athlete;

-- 3. show how many different medals won by team India in data

select count(medal), Team, Medal from athlete where team = 'India' AND Medal not like '%NoMedal%' group by Medal;

-- 4. Show event wise medals won by india show from highest to lowest medals won in order

select count(medal), event, Team from athlete where team = 'India' AND Medal not like '%NoMedal%' group by event order by count(medal) DESC ;

-- 5. Show event and yearwise medals won by india in order of year

select count(medal), event, year from athlete where team = 'India' group by event ,year order by year desc;


-- 6. Show the country with maximum medals won gold, silver, bronze

select COUNT(medal), Team, Medal from athlete where Medal not like '%NoMedal%' group by  medal, team order by count(medal) DESC limit 3;

-- 7. Show the top 10 countries with respect to gold medals

select count(medal), Team, Medal from athlete where Medal like '%Gold%' group by medal, team order by count(medal) desc limit 10;

-- 8.Show in which year did United States won most medals
select count(medal),team, year, medal from athlete where team = 'United States' and Medal not like '%NoMedal%' group by medal, team, year order by count(medal) desc limit 1;

-- 9.In which sports United States has most medals

select count(medal),team, year, medal, sport from athlete where team = 'United States' and Medal not like '%NoMedal%' group by medal, team, year, sport order by count(medal) desc limit 1;

-- 10. Find top 3 players who have won most medals along with their sports and country.
select count(medal),Name, team, year, medal, sport from athlete where Medal not like '%NoMedal%' group by name,medal, team, year, sport order by count(medal) desc limit 3;

-- 11.Find player with most gold medals in cycling along with his country.
select count(medal),Name, team, medal, sport from athlete where Medal like '%Gold%' AND Sport like '%Cycling%' group by name,medal, team, sport order by count(medal) desc;

-- 12.Find player with most medals (Gold + Silver + Bronze) in Basketball also show his country.
select count(medal),Name, team, medal, sport from athlete where Medal like '%Gold%' AND Medal like '%Silver%' AND Medal like '%Bronze%' group by name,medal, team, sport order by count(medal) desc;

-- 13.Find out the count of different medals of the top basketball player.
select count(medal),Name, team, medal, sport from athlete where Medal not like '%NoMedal%' AND sport like '%basketball%' group by name,medal, team, sport order by count(medal) desc;

-- 14.Find out medals won by male, female each year . Export this data and plot graph in excel.
select count(medal), sex, year from athlete where medal not like '%NoMedal%' group by sex, year order by year desc;


