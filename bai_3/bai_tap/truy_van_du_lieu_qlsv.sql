use quanlysinhvien;
select * from student where StudentName like 'h%';

select * from `subject` where Credit between 3 and 5;

update student set student.ClassId = 2 where student.StudentName = 'Hung';

select student.StudentName, `subject`.SubName, mark.Mark 
from student inner join mark on student.StudentId = mark.StudentId 
inner join `subject` on `subject`.SubId = mark.SubId order by mark.Mark DESC;

select * from class where month(StartDate) = 12;