use quanlysinhvien;
SELECT * FROM quanlysinhvien.subject;
select * from `subject` where `subject`.credit = all(select max(`subject`.credit) from `subject`);

select * from `subject` join mark on `subject`.subid = mark.subid
where mark.mark = all(select max(mark) from mark);


select student.*, avg(mark) as 'diem trung binh' from student join mark on student.studentid = mark.studentid
group by student.studentid
order by  avg(mark) DESC;