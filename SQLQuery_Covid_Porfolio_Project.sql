--select *
--from Covid_Portfolio_Project..covid_death
--order by 3,4

--select *
--from Covid_Portfolio_Project..covid_vacc
--order by 3,4 


-- Select Data that we are going to be using

--select location, date, total_cases, new_cases, total_deaths, population
--from Covid_Portfolio_Project..covid_death
--order by 1,2


-- Looking at total_cases vs total_death

select location, date, total_cases, total_deaths, death_percentage, population
from Covid_Portfolio_Project..covid_death
order by 1,2


-- Looking at Total Cases vs Population

select location, date,  population, total_cases, round(((total_cases/population)*100),2) as Infectionrate
from Covid_Portfolio_Project..covid_death
where location like '%world%'
order by 1,2


-- Looking at Countries with highest Infectionrate compared to Population

select location, population, MAX(total_cases) as HighestInfection, max(round(((total_cases/population)*100),2)) as Infectionrate
from Covid_Portfolio_Project..covid_death
group by location, population
order by Infectionrate desc

-- Looking at Countries with highest death count

select location, population, MAX(total_deaths) as HighestDeath, max(round(((total_deaths/population)*100),2)) as Deathrate
from Covid_Portfolio_Project..covid_death
group by location, population
order by HighestDeath desc


