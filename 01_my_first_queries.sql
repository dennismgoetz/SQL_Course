# SQL Tutorial Deutsch | Komplettkurs für Anfänger
# YouTube Kanal: Fabian Rappert | Data Science Institute
# https://www.youtube.com/watch?v=6XH5hAEqE4k

#################################################################################
# NEW QUERY
#################################################################################
SELECT
*                              # Selects all columns of a specific table
FROM employees;                # Defines the table of which the data is selected


#################################################################################
# NEW QUERIES
#################################################################################
SELECT
#emp_no                 	       # Selects the column with employee numbers
#birth_date             	       # Selects the column with birth dates
#gender, last_name                 # Selects the columns "gender" and "last_name"
#birth_date, first_name, emp_no    # Selects three columns
emp_no, hire_date
FROM employees;                     # Defines the table of which the data is selected


#################################################################################
# NEW QUERY (Task: Select "emp_no" and "title" from table "titles")
#################################################################################
SELECT

emp_no as "Personalnummer",    # Selects a column with their respective german translation
title as "Titel" 

FROM titles;


#################################################################################
# NEW QUERY
#################################################################################
SELECT DISTINCT                 # Selects only unique values of a column

title as "Titel"

FROM titles;


#################################################################################
# NEW QUERY (Task: Get the number of distinct first names of all employees)
#################################################################################
SELECT DISTINCT         # Remove "DISTINCT" to get the total number of emloyees 300024
 
first_name as "Vorname" # Number of unique first names is 1275 (visible in the output message)

FROM employees


