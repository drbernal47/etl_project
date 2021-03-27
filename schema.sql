/* This code creates table schemas in your database */
create table college_type(
	school_name text Primary Key,
	school_type text
);

create table salaries(
	school_name text Primary Key,
	region text,
	starting_median_salary numeric,
	mid_career_median_salary numeric
);


/* Once your data has been extracted, transformed, and loaded, you can verify using these queries */
select * from college_type;

select * from salaries;

/* You should be able to join data on the 'school_name' column, for example: */
select ct.school_name, ct.school_type, s.region, s.starting_median_salary
from college_type as ct
join salaries as s
on ct.school_name = s.school_name;