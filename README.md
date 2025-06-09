# FORMULAR 1 DATABASE CHALLANGE: SQL Data Analysis


## INTRODUCTION
Welcome to the Formula 1 Database Challenge!  
This project showcases a comprehensive journey through SQL, applying various querying techniques to a rich dataset of Formula 1 racing statistics. As a data enthusiast, I've leveraged this dataset, which includes detailed information on constructors, drivers, races, and results from multiple seasons, to demonstrate my ability to extract, manipulate, and analyze data effectively using SQL.  
This activity is designed to test and enhance SQL skills across various difficulty levels, starting from simple **SELECT** statements and progressing to more advanced queries involving multiple tables, subqueries, and sophisticated data analysis techniques like Common Table Expressions (CTEs). Each task simulates real-world scenarios a data analyst might encounter when working with sports statistics or any large, relational database, emphasizing not just correct results, but also understanding the underlying logic and database interactions  

## Dataset  
The dataset for this challenge comprises 8 Microsoft Excel files (provided as CSVs for easy database import):  
- constructor_standings.csv  
- constructors.csv  
- driver_standings.csv  
- drivers.csv  
- pitstops.csv  
- results.csv  
- results_history.csv  
- results_qualy.csv  
## Tools and  Technologies  
Visual Studio Code Editor  
Relational Database Management System:  
- MySQL  
- MySQL Server  
## Project Goals
- **Demonstrate SQL Proficiency:** Showcase a strong command of SQL fundamentals and advanced concepts.  
- **Data Extraction & Manipulation:** Prove ability to retrieve, filter, sort, and combine data from multiple tables.  
- **Analytical Skills:** Apply aggregate functions and grouping to derive meaningful insights.  
- **Problem-Solving:** Tackle real-world data challenges and structure complex queries effectively.  
- **Clean Code:** Present well-formatted and commented SQL queries for readability.  

## Challenge Structure
The challenges are organized into a series of progressing questions ‘1 to 45’ advancing into several complexity sections:  
- I. **Basic Data Retrieval:** Simple SELECT statements.
- II. **Filtering Data:** Using WHERE clauses with various conditions.
- III. **Sorting Data:** Ordering results for better analysis.
- IV. **Limiting & Pagination:** Controlling the number and range of results.
- V. **Aggregate Functions:** Performing calculations (SUM, AVG, MAX, MIN, COUNT).
- VI. **Grouping Data:** Aggregating data into meaningful groups (GROUP BY, HAVING).
- VII. **Joining Tables:** Combining data from multiple related tables (INNER JOIN, LEFT JOIN, RIGHT JOIN).
- VIII. **Subqueries:** Using nested queries for complex filtering and selection.
- IX. **Common Table Expressions (CTEs):** Breaking down complex queries into readable, reusable components.

# SQL Challange and Solutions  
- Create the Database: CREATE DATABASE Formula_1;  
- Upload the Dataset to the database schema using the following steps:  
  - Choose the Database you want to import the data from the "Schema Panel"  
  - Right click and select "Table Data Import Wizard"  
  - Select the File path location and hit open  
  - Click "Next" after mapping your data type then follow the wizard prompt as it execute.
  - Click on Finish and refreshed the schema.

## Q1. List all Constructors:  
- Retrieve the names of all constructors

## Q2. Find all Drivers:  
- List the names of all Drivers in the dataset  

## Q3. Count the Number of Constructors:  
- How many constructors are there in the dataset?

## Q4. Count the Number of Drivers:  
 - How many drivers are there in the dataset?  

## Q5. List all Races for a Specific Season:  
- Retrieve all races that took place in 2020 season.  

## Q6. Basic SELECT:  
- Retrieve the 'Names' and 'Nationality' of all Constructors.  

## Q7. SELECT with Aliases:
- Retrieve driver 'GivenName' and 'FamilyName' and alias them as 'FirstName' and 'LastName'.  

## Q8. SELECT Distinct Values:
- Retrieve Distinct nationalities of drivers from 'drivers' table.  

## Q9. SELECT with Calculated Columns:
- Retrieve the 'Position' and 'Points' of drivers, and calculate their 'PointsPerPosition' (Points divide by Position).

## Q10. SELECT with Concatenation:  
- Retrieve driver 'GivenName' and 'FirstName' concatenate into a single column named 'FullName'.  

## Q11. Basic Filtering:  
- Retrieve all races where the 'Season' is 2022.  

## Q12. Filtering with Multiple Copnditions:  
- Retrieve drivers who are either 'German' or 'British'.  

## Q13. Filtering with LIKE:
- Retrieve all constructors whose name contains 'Ferrari'.  

## Q14. Filtering with IN:  
- Retreive all result where the 'ConstructorID' is either 'ferrari' or 'william'.

## Q15. Filtering with Date:
- Retrieve all drivers who where born before 2000.

## Q16. Basic Sortin:
- Retrieve all races sorted by 'Season' in ascending order.

## Q17. Sorting with Multiple Columns:  
- Retrieve all drivers sorted first by 'Nationality, and then by 'GivenName'.

## Q18. Descending Order:
- Retrieve all result sorted by 'points' in descending order.   

## Q19. Sort with NULL:
- Retrieve all drivers and sort by 'DateOfBirth', placing NULL values last.  

## Q20. Top N Result:
- Retrieve the top 5 drivers with the highest 'points' in the 2020 season.  

## Q21. Basic LIMIT:
- Retrieve the first 10 constructors from the 'constructors' table.  

## Q22. LIMIT with OFFSET:  
- Retrieve 10 drivers starting from the 11th driver in the list.  

## Q23. Top N Result with OFFSET:  
- Reyrieve the next 10 after the top 5 drivers with the most 'points' in the 2021 season.  

## Q24. LIMIT without ORDER BY:
- Retrieve the first 5 results of the 2020 season without specifying the order.  

## Q25. Pagination:
- Retrieve drivers for the 2020 season, showing results 11 through 20.  

## Q26. SUM Function:  
- Calculate the total 'points' scored in the 2024 season.  

## Q27.AVG Function:
- Calculate the average 'points' scored by drivers in the 2000 season.

## Q28. MIN and MAX Functions:
- Find the Maximum and Minimum 'Points' scored by a driver in the 2021 season.  

## Q29. COUNT Function:  
- Count the number of races in 2000 season.  

## Q30. GROUP_CONCAT Functions:
- List all drivers in each constructor, concatenate into a single column.

## Q31. Basic GROUP BY
- Retrieve the total 'points' scored by each constructor in the 2000 season.  

## Q32. GROUP BY with HAVING
- Retrieve constructors that have more than 20 `Points' in the 2002 season.  

## Q33. COUNT with GROUP BY:
- Count the number of races each constructor participated in during 2020.  

## Q34. SUM with GROUP BY:
- Calculate the total 'Points' for each driver, grouped by 'Nationality'.

## Q35. GROUP BY with Multiple Columns:
-  Retrieve the average 'Points' for each constructor and season combination.  

## Q36. INNER JOIN:  
- Retrieve driver names and their corresponding constructor names for races in the 2000 season.

## Q37. LEFT JOIN:  
- Retrieve all constructors and any drivers who raced for them(include constructors with no drivers).  

## Q38. RIGHT JOIN:
- Retrieve all results and the corresponding drivers for each result, including results with no drivers.

## Q39. LEFT JOIN:  
- Retrieve a list of all drivers and their corresponding results, including drivers who have not participated in any races.  

## Q40. JOIN with Multiple Tables:  
- Retrieve the GivenName, FamilyName, and ConstructorName for each driver, along with their total Points earned in the 2000 season.

## Q41. Simple Subquery:  
- Retrieve drivers who have more points than the driver with the least points in the 2000 season.  

## Q42. Subquery in SELECT:  
- Retrieve the 'GivenName' and 'FamilyName' of drivers along with their highest 'Points' in any race.  

## Q43. Correlated Subquery:
- Retrieve constructors and their drivers where the driver’s 'Points' is greater than the average 'Points' for that constructor.  

## Q44. Simple CTE:  
- Retrieve the average points scored per driver in the 2000 season. Use a CTE to first calculate the total points scored by each driver, and then calculate the average from this aggregated data.   

## Q45. Complex CTE:
Retrieve drivers who have finished in the top 3 positions in more than 5 races in the 2000 season, along with their average points per race