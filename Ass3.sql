USE student;
SELECT*FROM studentinfo WHERE Age BETWEEN 18 AND 20;
SELECT*FROM Instructorinfo WHERE Department='CS';
SELECT*FROM studentinfo WHERE email='%ac%';
select*from courseinfo where Instructorid in (11,13);
select*from studentinfo order by Age desc;
select*from courseinfo order by Credits desc;
select*from instructorinfo order by Department asc,Name asc;
select*from studentinfo order by Address asc,Age asc;

select count(*) from studentinfo;
select avg(Age) from studentinfo;
select Instructorid,count(*) as course_count from courseinfo group by Instructorid;
select Courseid,count(*) as student_count from enrollmentinfo group by Courseid;
SELECT MAX(Age) FROM studentinfo;
SELECT MIN(Age) FROM studentinfo;

select*from enrollmentinfo where EnrollmentDate > 2025-01-15;

select Name 
from studentinfo 
where Studentid in(select Studentid
				from enrollmentinfo
                where Courseid in(select Courseid
							   from courseinfo
                               where Name= 'DBMS'));
select Name 
from studentinfo 
where Studentid in(select Studentid
				from enrollmentinfo
                where Courseid in(select Courseid
							   from courseinfo
                               where Name= 'DBMS'));