#################################################################################
# NEW QUERY (count function: count all employees hired in 1995)
#################################################################################
SELECT
count(*)
FROM employees

WHERE hire_date like "1995%";


#################################################################################
# NEW QUERY (count all female employees)
#################################################################################
SELECT
count(*)
FROM employees

WHERE gender = "F";


#################################################################################
# NEW QUERY (count the salary raises for a specific employee)
#################################################################################
SELECT
count(*) as "Salaries_of_employee_10001"
FROM salaries

WHERE emp_no = 10001;


#################################################################################
# NEW QUERY (count the total number of salaries in the company's history)
#################################################################################
SELECT
count(*) as "Total number of salaries"
FROM salaries;


#################################################################################
# NEW QUERY (GROUP BY: count the number of salaries per employee)
#################################################################################
SELECT
emp_no as "Personalnummer", # First column of the output
count(*) as "Gehälter" # Or use count(salary); second column of the output table
FROM salaries

GROUP BY emp_no;


#################################################################################
# NEW QUERY (max funciton: add highest salary for each employee in third column)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
max(salary) as "Highest_Salary"
FROM salaries

GROUP BY emp_no;


#################################################################################
# NEW QUERY (min funciton: add lowest salary for each employee)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
min(salary) as "Lowest_Salary",
max(salary) as "Highest_Salary"
FROM salaries

GROUP BY emp_no;


#################################################################################
# NEW QUERY (compute and add the total salary raise per employee)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
min(salary) as "Lowest_Salary",
max(salary) as "Highest_Salary",
max(salary) - min(salary) as "Total_Salary_Raise"
FROM salaries

GROUP BY emp_no;


#################################################################################
# NEW QUERY (compute and add the mean salary per employee)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
min(salary) as "Lowest_Salary",
max(salary) as "Highest_Salary",
max(salary) - min(salary) as "Total_Salary_Raise",
avg(salary) as "Mean_Salary"
FROM salaries

GROUP BY emp_no;


#################################################################################
# NEW QUERY (compute and add the sum of all salaries per employee)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
min(salary) as "Lowest_Salary",
max(salary) as "Highest_Salary",
max(salary) - min(salary) as "Total_Salary_Raise",
avg(salary) as "Mean_Salary",
sum(salary) as "Sum_of_all_Salaries"
FROM salaries

GROUP BY emp_no;


#################################################################################
# NEW QUERY (select only employees with more than 100000 as max income)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
max(salary) as "Highest_Salary"
FROM salaries

GROUP BY emp_no

HAVING max(salary) > 100000; # Use "HAVING" instead of "WHERE" after GROUP BY


#################################################################################
# NEW QUERY (additional example with WHERE, GROUP BY and HAVING)
#################################################################################
SELECT
emp_no as "ID",
count(salary) as "Salaries",
max(salary) as "Highest_Salary"
FROM salaries

WHERE emp_no > 10300 # Filter ID additionally

GROUP BY emp_no

HAVING max(salary) > 100000
and count(salary) >= 10 # Only employees with at least 10 salaries

