#################################################################################
# NEW QUERY (Task: Get all employess which turn 60 today)
#################################################################################
SELECT

first_name as "Vorname",
birth_date as "Geburtsdatum"

FROM employees

WHERE birth_date = "1963-03-24"; # No entries on today's date "1965-04-15" (use date from tutorial)


#################################################################################
# NEW QUERY
#################################################################################
SELECT

first_name as "Vorname",
emp_no as "Personalnummer"

FROM employees

WHERE first_name = "Hein"; # In SQL use only a single "=" instead of double "==" as in python e.g.


#################################################################################
# NEW QUERY (Task: Get all information about employess with "Bale" as last name)
#################################################################################
SELECT
*
FROM employees

WHERE last_name = "Bale"


