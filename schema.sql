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