# In a database, a primary key (Primärschlüssel) is a unique identifier 
# for each record in a table. It ensures that no two rows are exactly 
# the same in terms of that key. The primary key must always have a 
# value — it can’t be empty or duplicated. For example, in the employees
# table, the column emp_no is used as the primary key because each 
# employee should have a unique ID.

# A foreign key (Fremdschlüssel), is a column in one table that refers 
# to the primary key in another table. It’s used to create a link between 
# two tables. This helps keep the data connected and consistent. For 
# instance, in an orders table, the column order_id could be used as the
# primary key, and the foreign key could be emp_no, referencing the 
# employee who assisted the customer during the purchase. This emp_no 
# would refer to the primary key of the employees table.


#################################################################################
# NEW QUERY (Inner Join: create a connection between two tables with keys)
#################################################################################
# The inner join selects the intersection (Schnittmenge) between the employees 
# table and salaries table. This means that only employees who appear in both
# tables are selected. Interns without a salary, for example, don't appear.
SELECT
*
FROM employees e # Use "e" as shortcut for the employees table (as emp_no is called identical in employees and salaries)

INNER JOIN salaries s ON e.emp_no = s.emp_no; # Use "s" as shortcut for the salaries table


#################################################################################
# NEW QUERY (Select all employees with a salary greater than 100000)
#################################################################################
SELECT
e.emp_no, # Use "e" here otherwise ambiguous error
first_name,
last_name,
salary,
to_date
FROM employees e

INNER JOIN salaries s ON e.emp_no = s.emp_no

WHERE to_date = "9999-01-01" # Use WHERE always after JOIN statement
and salary > 100000;


#################################################################################
# NEW QUERY (Connect three tables: add job title for each employee)
#################################################################################
SELECT
e.emp_no,
first_name,
last_name,
salary,
s.to_date as "salaries_to_date", # Use "s" here otherwise ambiguous error
title,
t.to_date as "title_to_date"
FROM employees e

INNER JOIN salaries s ON e.emp_no = s.emp_no
INNER JOIN titles t ON e.emp_no = t.emp_no

WHERE s.to_date = "9999-01-01"
and t.to_date = "9999-01-01" # Also filter the date of the titles table to avoid previous jobs of an employee
and salary > 100000;


#################################################################################
# NEW QUERY (Task: all first and last names of the companies managers)
#################################################################################
SELECT
dm.emp_no,
e.first_name, # Use "e.first_name" or just "first_name"
e.last_name,
dm.dept_no,
dm.to_date
FROM dept_manager dm

INNER JOIN employees e ON e.emp_no = dm.emp_no

WHERE dm.to_date = "9999-01-01";


#################################################################################
# NEW QUERY (Add the department name)
#################################################################################
SELECT
dm.emp_no,
first_name,
last_name,
dm.dept_no,
dept_name,
to_date
FROM employees e # Or use dept_manager dm (both possible)

INNER JOIN dept_manager dm ON dm.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = dm.dept_no

WHERE dm.to_date = "9999-01-01"

