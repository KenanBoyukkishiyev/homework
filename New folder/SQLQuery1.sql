use Dekan

create table Theacher(
Id int primary key identity,
Fulname nvarchar(50),
Identifikator nvarchar(100),
Parol nvarchar(100)
)


create table Subject(
Id int primary key identity,
Name nvarchar(50),

)


create table Groups(
Id int primary key identity,
Name nvarchar(50),

)

create table TSG(
Id int primary key identity,
TheacherId int references Theacher(Id),
GroupId int references Groups(Id),
SubjectId int references Subject(Id)
)


create table Student(
Id int primary key identity,
Fulname nvarchar(50),
Identifikator nvarchar(100),
Parol nvarchar(100),
GroupId int references Groups(Id)
)

create table Exam(
Id int primary key identity,
SubjectId int references Subject(Id),
BeforeExam int,
AfterExam int,
StudentId int references Student(Id)
)


create table Questions(
Id int primary key identity,
MainQuest nvarchar(200),
Anwer_A nvarchar(50),
Anwer_B nvarchar(50),
Anwer_C nvarchar(50),
Anwer_D nvarchar(50),
SubjectId int references Subject(Id)
)


create table Geate(
Id int primary key identity,
SubjectId int references Subject(Id),
StudentId int references Student(Id),
Point int,
DateTime date

)