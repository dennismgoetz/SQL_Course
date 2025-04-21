#################################################################################
# NEW QUERY (AND operator)
#################################################################################
SELECT
*
FROM employees

WHERE last_name = "Bale"
and gender = "F"
and first_name = "Lena"; # only one person


#################################################################################
# NEW QUERY (Task: How many engineers are employed in our company)
#################################################################################
SELECT
*
FROM titles

WHERE title = "Engineer" and to_date = "9999-01-01" # AND operator only refers to the previous title
or title = "Senior Engineer" and to_date = "9999-01-01"
or title = "Assistant Engineer" and to_date = "9999-01-01"; # 120520 Engineers in total


#################################################################################
# NEW QUERY (smarter way to do the previous task)
#################################################################################
SELECT
*
FROM titles

WHERE (title = "Engineer"
or title = "Senior Engineer"
or title = "Assistant Engineer")
and to_date = "9999-01-01"; # AND operator refers to everything in the brakets


#################################################################################
# NEW QUERY (Task: show me all staff members hired on 03.12.1995)
#################################################################################
SELECT
*
FROM titles

WHERE (title = "Senior Staff"
or title = "Staff")
and from_date = "1995-12-03";


#################################################################################
# NEW QUERY (IN operator: smarter way)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Senior Staff", "Staff")
and from_date = "1995-12-03";


#################################################################################
# NEW QUERY (all engineers hired on 28.02.2002)
#################################################################################
SELECT
*
FROM titles

WHERE title in ("Engineer", "Assistant Engineer", "Senior Engineer")
and from_date = "2002-02-28"

