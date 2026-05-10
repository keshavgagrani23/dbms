USE student;

create view student_view as
select * from studentinfo;
select * from student_view;

create view student_course_detail as
select studentinfo.Studentid, studentinfo.Name as Student_Name, courseinfo.Name as Course_Name, courseinfo.Credits
from studentinfo
inner join enrollmentinfo on
studentinfo.Studentid = enrollmentinfo.Studentid
inner join courseinfo on
enrollmentinfo.Courseid = courseinfo.Courseid;

select * from student_course_detail;

select Course_Name from student_course_detail where Studentid = 105;

select Student_Name from student_course_detail where Course_Name = 'DBMS';

select Student_Name from student_course_detail where Credits >= 4;

create view personal_info as
select Studentid,Name from studentinfo;
select * from personal_info;

create view student_age as
select Name from studentinfo where Age > 18;
select * from student_age;

update personal_info
set Name = 'Keshav' where Studentid = 101;

delete from personal_info where Studentid = 105;

drop view student_age;