library(RMySQL)
library(DBI)

drv <- dbDriver("MySQL")
mysqlconnection = dbConnect(drv,username='root',password='',dbname='test1',host='localhost')
dbListTables(mysqlconnection)

Department <- dbSendQuery(mysqlconnection,"select * from Department")
data.frame <- fetch(Department)
print(data.frame)

Student <- dbSendQuery(mysqlconnection,"select * from Student")
data.frame <- fetch(Student)
print(data.frame)

subject <- dbSendQuery(mysqlconnection,"select * from subject")
data.frame <- fetch(subject)
print(data.frame)

Transactions <- dbSendQuery(mysqlconnection,"select * from Transactions")
data.frame <- fetch(Transactions)
print(data.frame)

# Highest & Lowest Score for each Subject 
ScoreSubject <- dbSendQuery(mysqlconnection,"SELECT S.SubjectName,MAX(T.mark)as HighestScore,
                                            MIN(T.mark)as LowestScore FROM transactions T  
                                            inner join subject S on S.SubjectID = T.SubjectID
                                            group by S.SubjectName ")
data.frame <- fetch(ScoreSubject)
print(data.frame)

# Total Secured in each subject by each student in each department 
TotalMarkSubject <- dbSendQuery(mysqlconnection,"SELECT S.SubjectName,sum(T.mark)as Mark,STD.StudentName,D.DepartmentName
                                            FROM transactions T  
                                            inner join subject S on S.SubjectID = T.SubjectID
                                            inner join student std on std.StudentID = T.StudentID 
                                            inner join department d on d.DeptID = T.DeptID
                                            group by S.SubjectName,STD.StudentName,D.DepartmentName
                                            order by D.DepartmentName,S.SubjectName;")
data.frame <- fetch(TotalMarkSubject)
print(data.frame)

# Subject average of each department
SubjectAvg <- dbSendQuery(mysqlconnection,"SELECT AVG(T.mark)as mark,S.SubjectName,D.DepartmentName
                                            FROM transactions T  
                                            inner join subject S on S.SubjectID = T.SubjectID
                                            inner join department d on d.DeptID = T.DeptID
                                            group by D.DepartmentName,S.SubjectName
                                            order by D.DepartmentName;")
data.frame <- fetch(SubjectAvg)
print(data.frame)

# average of department
DepartmentAvg <- dbSendQuery(mysqlconnection,"SELECT AVG(T.mark)as mark,D.DepartmentName
                                              FROM transactions T  
                                              inner join department d on d.DeptID = T.DeptID
                                              group by D.DepartmentName
                                              order by D.DepartmentName;")
data.frame <- fetch(DepartmentAvg)
print(data.frame)