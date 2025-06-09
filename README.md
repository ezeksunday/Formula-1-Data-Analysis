# FORMULAR 1 DATABASE CHALLANGE: SQL Data Analysis


## INTRODUCTION
### Welcome to the Formula 1 Database Challenge!  
This project showcases a comprehensive journey through SQL; Applying various querying techniques to a rich dataset of Formula 1 racing statistics. As a data enthusiast, I've leveraged this dataset, which includes detailed information on constructors, drivers, races, and results from multiple seasons, to demonstrate my ability to extract, manipulate, and analyze data effectively using SQL.  
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
- - <img width="792" alt="Image" src="https://github.com/user-attachments/assets/4f277a33-a204-42f6-95bc-9eff4c13725e" />

## Q2. Find all Drivers:  
- List the names of all Drivers in the dataset
- - <img width="789" alt="Image" src="https://github.com/user-attachments/assets/68188f36-257a-4cfd-9964-afad49cbb544" />  

## Q3. Count the Number of Constructors:  
- How many constructors are there in the dataset?
- <img width="849" alt="Image" src="https://github.com/user-attachments/assets/a52c51d5-bd25-418a-bcbb-7cc228b583c8" />

## Q4. Count the Number of Drivers:  
 - How many drivers are there in the dataset?
 - - <img width="815" alt="Image" src="https://github.com/user-attachments/assets/1fedab77-adff-491d-8512-f0abba8b6e78" />

## Q5. List all Races for a Specific Season:  
- Retrieve all races that took place in 2020 season.
- - <img width="835" alt="Image" src="https://github.com/user-attachments/assets/641a6279-74a6-4eb5-9e7a-89fedd48a173" /> 

## Q6. Basic SELECT:  
- Retrieve the 'Names' and 'Nationality' of all Constructors.
- - <img width="813" alt="Image" src="https://github.com/user-attachments/assets/e2b97ad9-96d7-4ae5-958a-1f200fc56b9e" />  

## Q7. SELECT with Aliases:
- Retrieve driver 'GivenName' and 'FamilyName' and alias them as 'FirstName' and 'LastName'.
- - <img width="824" alt="Image" src="https://github.com/user-attachments/assets/760eae86-d1dc-4a91-9cc4-9977bf9245c2" />

## Q8. SELECT Distinct Values:
- Retrieve Distinct nationalities of drivers from 'drivers' table.
- - <img width="816" alt="Image" src="https://github.com/user-attachments/assets/7e7104ea-aa79-495b-bcf3-d4de7ad0d1a2" />
- - <img width="828" alt="Image" src="https://github.com/user-attachments/assets/aef44f67-cb84-4549-b7be-19017835161b" /> 

## Q9. SELECT with Calculated Columns:
- Retrieve the 'Position' and 'Points' of drivers, and calculate their 'PointsPerPosition' (Points divide by Position).
- - <img width="789" alt="Image" src="https://github.com/user-attachments/assets/9a41df02-03b4-4274-8ee8-f3fd7139f8ae" />

## Q10. SELECT with Concatenation:  
- Retrieve driver 'GivenName' and 'FirstName' concatenate into a single column named 'FullName'.
- - <img width="516" alt="Image" src="https://github.com/user-attachments/assets/63bd96ff-c13d-46f9-971e-ff90ed20ff63" />

## Q11. Basic Filtering:  
- Retrieve all races where the 'Season' is 2022.
- - <img width="816" alt="Image" src="https://github.com/user-attachments/assets/3630f006-c488-4584-bcca-2b5a78f01d39" /> 

## Q12. Filtering with Multiple Copnditions:  
- Retrieve drivers who are either 'German' or 'British'.
- - <img width="795" alt="Image" src="https://github.com/user-attachments/assets/dc1acb9c-d445-487d-b47e-dfc64ab5ba90" />
- - <img width="809" alt="Image" src="https://github.com/user-attachments/assets/f20252fc-d356-4bf0-b824-25948cdd3b1b" />

## Q13. Filtering with LIKE:
- Retrieve all constructors whose name contains 'Ferrari'.
- - <img width="806" alt="Image" src="https://github.com/user-attachments/assets/b5810523-44ee-473e-8eaf-969de01633d3" />

## Q14. Filtering with IN:  
- Retreive all result where the 'ConstructorID' is either 'ferrari' or 'william'.
- - <img width="835" alt="Image" src="https://github.com/user-attachments/assets/02ef2d76-1017-41a7-b038-106fde1f4a28" />

## Q15. Filtering with Date:
- Retrieve all drivers who where born before 2000.
- - <img width="812" alt="Image" src="https://github.com/user-attachments/assets/4c7eacef-af7a-4fff-a7a1-e2440083d26b" />
- - <img width="794" alt="Image" src="https://github.com/user-attachments/assets/b3f44b4e-5f15-41d9-9d4f-3d6f1227ae90" />

## Q16. Basic Sortin:
- Retrieve all races sorted by 'Season' in ascending order.
- - <img width="816" alt="Image" src="https://github.com/user-attachments/assets/43d6c84a-311a-4346-a713-49dc9ca91951" />

## Q17. Sorting with Multiple Columns:  
- Retrieve all drivers sorted first by 'Nationality, and then by 'GivenName'.
- - <img width="821" alt="Image" src="https://github.com/user-attachments/assets/683a23fb-0406-427a-a0de-65ef09efa1a3" />

## Q18. Descending Order:
- Retrieve all result sorted by 'points' in descending order.
- -<img width="806" alt="Image" src="https://github.com/user-attachments/assets/6de8148a-b0c6-4b33-a251-8f984ccf51e5" />

## Q19. Sort with NULL:
- Retrieve all drivers and sort by 'DateOfBirth', placing NULL values last.
- - <img width="523" alt="Image" src="https://github.com/user-attachments/assets/012a9195-15b2-4319-bf9d-f87168c2b2ec" />

## Q20. Top N Result:
- Retrieve the top 5 drivers with the highest 'points' in the 2020 season.
- - <img width="539" alt="Image" src="https://github.com/user-attachments/assets/eec3190a-426d-4536-9235-3a2f31bab8d7" />

## Q21. Basic LIMIT:
- Retrieve the first 10 constructors from the 'constructors' table.
- - <img width="566" alt="Image" src="https://github.com/user-attachments/assets/9c89a25b-14d2-4561-9285-d538e8ef5d82" />
- - <img width="308" alt="Image" src="https://github.com/user-attachments/assets/85e018f9-fde9-4f46-93e1-9d79d87226b1" />

## Q22. LIMIT with OFFSET:  
- Retrieve 10 drivers starting from the 11th driver in the list.
- - <img width="342" alt="Image" src="https://github.com/user-attachments/assets/68989f5a-a4df-49d7-afd7-d028dbebcdb0" />

## Q23. Top N Result with OFFSET:  
- Reyrieve the next 10 after the top 5 drivers with the most 'points' in the 2021 season.
- - <img width="593" alt="Image" src="https://github.com/user-attachments/assets/34091560-5d86-4594-a98b-cc14d3071407" />

## Q24. LIMIT without ORDER BY:
- Retrieve the first 5 results of the 2020 season without specifying the order.
- - <img width="805" alt="Image" src="https://github.com/user-attachments/assets/e2ebef29-8968-4b21-b72d-fa4d3de1cc22" />

## Q25. Pagination:
- Retrieve drivers for the 2020 season, showing results 11 through 20.
- - <img width="760" alt="Image" src="https://github.com/user-attachments/assets/17b9097a-8f75-4427-ab3d-d6410d3dd2d6" />

## Q26. SUM Function:  
- Calculate the total 'points' scored in the 2024 season.
- - <img width="427" alt="Image" src="https://github.com/user-attachments/assets/4bed3273-e516-49de-a571-fc92c1e015cd" />

## Q27.AVG Function:
- Calculate the average 'points' scored by drivers in the 2000 season.
- - <img width="386" alt="Image" src="https://github.com/user-attachments/assets/87934a7d-3e2e-49c5-b7c2-34b2df5a6a6f" />

## Q28. MIN and MAX Functions:
- Find the Maximum and Minimum 'Points' scored by a driver in the 2021 season.
- - <img width="364" alt="Image" src="https://github.com/user-attachments/assets/09da8c46-2106-4473-acd5-6d27eede5e71" />

## Q29. COUNT Function:  
- Count the number of races in 2000 season.
- - <img width="369" alt="Image" src="https://github.com/user-attachments/assets/9c0e227e-87b2-43ce-8170-e594f20920d8" />

## Q30. GROUP_CONCAT Functions:
- List all drivers in each constructor, concatenate into a single column.
- - <img width="821" alt="Image" src="https://github.com/user-attachments/assets/9c930818-4e47-48be-ad45-8085759f8f5f" />

## Q31. Basic GROUP BY
- Retrieve the total 'points' scored by each constructor in the 2000 season.
- - <img width="468" alt="Image" src="https://github.com/user-attachments/assets/d688fe9b-a845-43a9-91fb-6e093b8bbd84" />

## Q32. GROUP BY with HAVING
- Retrieve constructors that have more than 20 `Points' in the 2002 season.
- - <img width="307" alt="Image" src="https://github.com/user-attachments/assets/a9e19f8e-9918-4b2d-8fb1-dc6ce9001b52" />

## Q33. COUNT with GROUP BY:
- Count the number of races each constructor participated in during 2020.
- = <img width="463" alt="Image" src="https://github.com/user-attachments/assets/f71369de-cd23-444a-86fa-d4d29e132604" />

## Q34. SUM with GROUP BY:
- Calculate the total 'Points' for each driver, grouped by 'Nationality'.
- - <img width="824" alt="Image" src="https://github.com/user-attachments/assets/c83bf36d-e64e-4b56-aef6-3c2b66820fa1" />

## Q35. GROUP BY with Multiple Columns:
-  Retrieve the average 'Points' for each constructor and season combination.
- - <img width="793" alt="Image" src="https://github.com/user-attachments/assets/43bf2c90-05a7-4046-878d-c6ca3b05b061" />

## Q36. INNER JOIN:  
- Retrieve driver names and their corresponding constructor names for races in the 2000 season.
- - <img width="934" alt="Image" src="https://github.com/user-attachments/assets/6f64e529-bdf0-4ec0-a170-19c008911d27" />
- - <img width="794" alt="Image" src="https://github.com/user-attachments/assets/233df1e5-0816-4a6c-85b6-07deb9d01a57" /> 

## Q37. LEFT JOIN:  
- Retrieve all constructors and any drivers who raced for them(include constructors with no drivers).
- - <img width="938" alt="Image" src="https://github.com/user-attachments/assets/10f63ae6-7185-4886-babb-32d7ab048eab" />

## Q38. RIGHT JOIN:
- Retrieve all results and the corresponding drivers for each result, including results with no drivers.
- - <img width="821" alt="Image" src="https://github.com/user-attachments/assets/e45e4a58-dc6b-4f1a-a9e4-35ef45e7e53c" />

## Q39. LEFT JOIN:  
- Retrieve a list of all drivers and their corresponding results, including drivers who have not participated in any races.
- - <img width="941" alt="Image" src="https://github.com/user-attachments/assets/87614d59-1167-4507-bab4-da639d0fa054" />

## Q40. JOIN with Multiple Tables:  
- Retrieve the GivenName, FamilyName, and ConstructorName for each driver, along with their total Points earned in the 2000 season.
- - <img width="727" alt="Image" src="https://github.com/user-attachments/assets/d0fcba1b-1855-446e-8267-31741a5a98cd" />

## Q41. Simple Subquery:  
- Retrieve drivers who have more points than the driver with the least points in the 2000 season.
- - <img width="752" alt="Image" src="https://github.com/user-attachments/assets/80c36498-7980-4ad2-bf71-01035714c034" />

## Q42. Subquery in SELECT:  
- Retrieve the 'GivenName' and 'FamilyName' of drivers along with their highest 'Points' in any race.
- - <img width="884" alt="Image" src="https://github.com/user-attachments/assets/62b4d82f-9c33-416b-b3df-badc1a904532" />

## Q43. Correlated Subquery:
- Retrieve constructors and their drivers where the driver’s 'Points' is greater than the average 'Points' for that constructor.
- - <img width="920" alt="Image" src="https://github.com/user-attachments/assets/11369d74-4eeb-4c05-bb0b-1b0ad2baf0eb" />

## Q44. Simple CTE:  
- Retrieve the average points scored per driver in the 2000 season. Use a CTE to first calculate the total points scored by each driver, and then calculate the average from this aggregated data.
- - <img width="717" alt="Image" src="https://github.com/user-attachments/assets/0f89a8cd-e8fc-48a5-a160-b85ebd107894" />   

## Q45. Complex CTE:
Retrieve drivers who have finished in the top 3 positions in more than 5 races in the 2000 season, along with their average points per race
- - <img width="1001" alt="Image" src="https://github.com/user-attachments/assets/75a7535d-ae28-4b13-b479-5126d8432591" />
