Use QuanLySInhVien;

SELECT * FROM Student;
-- Hiển thị danh sách các học viên đang theo học;
SELECT * FROM Student
WHERE Status = true;
-- hiển thị danh sách các môn học có thời gian nhỏ hơn 10h;
SELECT * FROM Subject 
WHERE Credit < 10;

-- hiển thị danh sách lớp học A1;

SELECT S.StudentID, S.StudentName, C.ClassName
FROM Student S join Class C on S.ClassID = C.ClassID
WHERE C.ClassName = 'A1';

-- hiển thị điểm thi môn CF của học viên;

SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';