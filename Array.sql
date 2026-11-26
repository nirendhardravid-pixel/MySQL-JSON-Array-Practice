create table example(id int auto_increment primary key,
                     course Json);

insert into example(course) value('["Mern","DA","DS","Ai"]')

select * from example;

select Json_LENGTH(course) as Count from example;

select Json_Extract(course,'$[1]') as course from example;

CREATE TABLE JSON_Exercise (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Employee_Name VARCHAR(50),
    Skills JSON
);

INSERT INTO JSON_Exercise (Employee_Name, Skills)
VALUES
('Arun', '["SQL", "Excel", "Power BI"]'),
('Priya', '["Python", "Machine Learning", "SQL"]'),
('Karthik', '["Excel", "Power BI"]'),
('Divya', '["Python", "SQL", "Tableau", "Excel"]'),
('Rahul', '["Java", "Spring Boot"]'),
('Sneha', '["Python", "Power BI", "SQL", "Excel"]'),
('Vijay', '["HTML", "CSS", "JavaScript"]'),
('Meena', '["SQL", "Python"]'),
('Suresh', '["Power BI", "Excel", "SQL"]'),
('Anitha', '["Python", "Machine Learning", "Deep Learning"]');

select* from JSON_Exercise;


Basic Level
1. Display all employee names and their skills.
2. Extract the first skill of every employee using JSON_EXTRACT().
3. Extract the second skill of every employee.
4. Extract the third skill of every employee.
5. Display the total number of skills for each employee using JSON_LENGTH().

Intermediate Level
6. Display employees whose first skill is SQL.
7. Display employees whose total skills are greater than 2.
8. Display employees who have exactly 2 skills.
9. Display employees whose second skill is Python.
10. Display employees who have more than 3 skills.

Advanced Level
11. Display employees whose first skill is Excel and total skills are greater than 2.
12. Display employees whose third skill is SQL.
13. Display employees whose total skills are between 2 and 3.
14. Display employees whose first skill is Python and second skill is Machine Learning.
15. Display employee names, first skill, second skill and total number of skills in a single query.


select * from JSON_Exercise; 


select Json_Extract(skills,"$[0]") as First_skill_of_emp from JSON_Exercise;

select Json_Extract(skills,"$[1]") as Second_skill_of_emp from Json_Exercise;

select Json_Extract(skills,"$[2]") as Second_skill_of_emp from Json_Exercise;

select Json_length(skills) as count from Json_Exercise;


SELECT 
    JSON_EXTRACT(Skills, '$[0]') AS First_skill_of_emp
FROM JSON_Exercise
WHERE JSON_EXTRACT(Skills, '$[0]') = '"SQL"';

SELECT 
    JSON_LENGTH(Skills) as Count from JSON_Exercise
where  JSON_LENGTH(Skills) > 2;

SELECT Employee_Name,
    JSON_LENGTH(Skills) as Count from JSON_Exercise
where  JSON_LENGTH(Skills) =2;

select Employee_Name,
       JSON_EXTRACT(skills,"$[1]") as skill from  JSON_Exercise
where JSON_EXTRACT(skills,"$[1]") = "Python";


SELECT Employee_Name,
    JSON_LENGTH(Skills) as Count from JSON_Exercise
where  JSON_LENGTH(Skills) >3;


select Employee_Name, JSON_EXTRACT(skills,"$[0]") as skill,
       Json_Length(skills) as count from JSON_Exercise
where JSON_EXTRACT(skills,"$[0]") ="Excel" and Json_Length(skills) > 2;

select Employee_Name,JSON_EXtract(skills,'$[2]') as skill from JSON_Exercise
where JSON_EXtract(skills,'$[2]') ="SQL";


select Employee_Name,Json_LENGTH(skills) as count from JSON_Exercise
where Json_LENGTH(skills) between 2 and 3;

select Employee_Name,JSON_EXTRACT(skills,"$[0]") as Fisrt_skill,
       Json_Extract(skills,'$[1]') as Second_skill from JSON_Exercise
where JSON_EXTRACT(skills,"$[0]") ="Python" and Json_Extract(skills,'$[1]') ="Machine Learning";


select Employee_Name,JSON_EXTRACT(skills,"$[0]") as Fisrt_skill,
       Json_Extract(skills,'$[1]') as Second_skill ,
       JSON_LENGTH(skills) as count from JSON_Exercise;

SELECT JSON_UNQUOTE(JSON_EXTRACT(Skills, '$[0]')) as skill
FROM JSON_Exercise;


CREATE TABLE JSON_Practice2 (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Skills JSON
);

INSERT INTO JSON_Practice2 (Name, Skills)
VALUES ('Arun', JSON_ARRAY('SQL', 'Excel', 'Power BI'));

INSERT INTO JSON_Practice2 (Name, Skills)
VALUES ('Priya', JSON_ARRAY('Python', 'SQL', 'Machine Learning'));

INSERT INTO JSON_Practice2 (Name, Skills)
VALUES ('Karthik', JSON_ARRAY('Excel', 'Power BI'));

INSERT INTO JSON_Practice2 (Name, Skills)
VALUES ('Divya', JSON_ARRAY('Python', 'SQL', 'Tableau', 'Excel'));

INSERT INTO JSON_Practice2 (Name, Skills)
VALUES ('Rahul', JSON_ARRAY('Java', 'Python'));


SELECT * FROM JSON_Practice2;


SELECT Name, Skills
FROM JSON_Practice2
WHERE JSON_CONTAINS(Skills, '"SQL"');

select Name,JSON_EXTRACT(skills,"$[1]") as skill from Json_practice2;

select  Name,skills,json_length(skills) as count from Json_practice2
where json_length(skills) >2;

SELECT Name,
       JSON_SEARCH(Skills, 'one', 'Python') AS Position
FROM JSON_Practice2;

select  Name,json_length(skills) as count from Json_practice2
where json_length(skills) ="SQL" and json_length(skills)="Python";

select Name,JSON_EXTRACT(skills,"$[0]") as skill,
            JSON_LENGTH(skills) as count from Json_practice2;

