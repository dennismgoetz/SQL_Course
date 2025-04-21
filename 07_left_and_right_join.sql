#################################################################################
# NEW QUERY (Left Join: show all employees and if they get a salary)
#################################################################################
# The left join of the employees and salaries tables selects all records of the 
# left table (here employees). This means that all employees (including unpaid
# interns) are selected, regardless of their salary.
SELECT
*
FROM employees e

LEFT JOIN salaries s ON s.emp_no = e.emp_no

WHERE to_date = "9999-01-01" # Select only the entries with the current salary
or to_date IS NULL;  		 # And select the employees without salary


#################################################################################
# NEW QUERY (Right Join: Show all salary entries and add the employees' details)
#################################################################################
# The right join of the employees and salaries tables selects all records of the 
# right table (here salaries). This means that all the salary records are
# selected, regardless of whether these people have an entry in the employees 
# table or not (Freelancer or illegal work for example).
SELECT
*
FROM employees e

RIGHT JOIN salaries s ON s.emp_no = e.emp_no # No NULL entries -> all people are recorded in the employees table (no freelancer)

WHERE to_date = "9999-01-01";


#################################################################################
# NEW QUERY (Full Outer Join)
#################################################################################
# The full (outer) join of the employees and salaries tables is a complete 
# combination (union) of both tables and selects all records.
SELECT *
FROM employees e
LEFT JOIN salaries s ON s.emp_no = e.emp_no

UNION

SELECT *
FROM employees e
RIGHT JOIN salaries s ON s.emp_no = e.emp_no;


#################################################################################
# NEW QUERY (Left Join Exclusive: show all unpaid employees)
#################################################################################
# The left join exclusive of the employees and salaries tables selects 
# exclusively all employees without a salary, e.g. interns.
SELECT
*
FROM employees e

LEFT JOIN salaries s ON s.emp_no = e.emp_no

WHERE s.salary IS NULL; # Filter by NULL entries to select the unpaid employees


#################################################################################
# NEW QUERY (Same result with right join exclusive)
#################################################################################
# As the salaries table is now the left table, its columns appear first in the 
# output. Apart from that, the output remains the same as above and shows all 
# unpaid employees.
SELECT
*
FROM salaries s

RIGHT JOIN employees e ON s.emp_no = e.emp_no

WHERE s.salary IS NULL;

#################################################################################
# NEW QUERY (Right Join Exclusive)
#################################################################################
# The right join exclusive of the employees and salaries tables selects 
# exclusively all salary entries of people who do not have an entry in the 
# employees table, e.g. freelancers or illegal workers.
SELECT
*
FROM employees e

RIGHT JOIN salaries s ON s.emp_no = e.emp_no

WHERE e.first_name IS NULL # No entries as expected

