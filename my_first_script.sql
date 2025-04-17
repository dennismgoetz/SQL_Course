# SQL Tutorial Deutsch | Komplettkurs für Anfänger
# YouTube Kanal: Fabian Rappert | Data Science Institute
# https://www.youtube.com/watch?v=6XH5hAEqE4k

#################################################################################
# NEW QUERY
#################################################################################
#SELECT
#*                              # selects all columns of a specific table
#emp_no                 	    # selects the column with employee numbers
#birth_date             	    # selects the column with birth dates
#gender, last_name              # selects the columns "gender" and "last_name"
#birth_date, first_name, emp_no # selects three columns
#emp_no, hire_date
#FROM employees                 # defines the table of which the data is selected


#################################################################################
# NEW QUERY (Task: Select "emp_no" and "title" from table "titles")
#################################################################################
#SELECT

#emp_no as "Personalnummer",    # Selects a column with their respective german translation
#title as "Titel" 

#FROM titles


#################################################################################
# NEW QUERY
#################################################################################
#SELECT DISTINCT                 # Selects only unique values of a column

#title as "Titel"

#FROM titles


#################################################################################
# NEW QUERY (Task: Get the number of distinct first names of all employees)
#################################################################################
#SELECT DISTINCT         # Remove "DISTINCT" to get the total number of emloyees 300024
 
#first_name as "Vorname" # Number of unique first names is 1275 (visible in the output message)

#FROM employees


#################################################################################
# NEW QUERY (Task: Get all employess which turn 60 today)
#################################################################################
#SELECT

#first_name as "Vorname",
#birth_date as "Geburtsdatum"

#FROM employees

#WHERE birth_date = "1963-03-24" # No entries on today's date "1965-04-15" (use date from tutorial)


#################################################################################
# NEW QUERY
#################################################################################
#SELECT

#first_name as "Vorname",
#emp_no as "Personalnummer"

#FROM employees

#WHERE first_name = "Hein" # In SQL use only a single "=" instead of double "==" as in python e.g.


#################################################################################
# NEW QUERY (Task: Get all information about employess with "Bale" as last name)
#################################################################################
#SELECT
#*
#FROM employees

#WHERE last_name = "Bale"


#################################################################################
# NEW QUERY (AND operator)
#################################################################################
#SELECT
#*
#FROM employees

#WHERE last_name = "Bale"
#and gender = "F"
#and first_name = "Lena" # only one person


#################################################################################
# NEW QUERY (Task: How many engineers are employed in our company)
#################################################################################
#SELECT
#*
#FROM titles

#WHERE title = "Engineer" and to_date = "9999-01-01" # AND operator only refers to the previous title
#or title = "Senior Engineer" and to_date = "9999-01-01"
#or title = "Assistant Engineer" and to_date = "9999-01-01" # 120520 Engineers in total


#################################################################################
# NEW QUERY (smarter way to do the previous task)
#################################################################################
SELECT
*
FROM titles

WHERE (title = "Engineer"
or title = "Senior Engineer"
or title = "Assistant Engineer")
and to_date = "9999-01-01" # AND operator refers to everything in the brakets


#################################################################################
# NEW QUERY (Task: ...)
#################################################################################
