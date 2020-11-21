
/*
/*those tables were been created to work and show more details about OQU project*/
  CREATE TABLE student(
 st_id INT,
 PRIMARY KEY(st_id),
 fname VARCHAR(32),
 lname VARCHAR(32),
 age DECIMAL(3),
 gender VARCHAR(10),
 place_birth VARCHAR(32),
 dateof_birth DATE,
 num_phone VARCHAR(255) 
);
insert into student(st_id, fname, lname, age, gender, place_birth, dateof_birth, num_phone)
values(101,'Askar','Rafail', 17, 'Male', 'Oral','18-03-2003','8-777-777-77-77'),
(102,'Erasyl','Asfendiarov',18,'Male','Nur-sultan','16-05-2002','8-764-789-99-65'),
(103,'Muhammed','Tolegenov',17,'Male','Oskemen','20-04-2003','8-759-798-55-99'),
(104,'Adelya','Sultan',18,'Female','Taraz','20-06-2002','8-780-779-52-59'),
(105,'Arman','Amirgaliev',17,'Male','Semey','25-01-2003','8-708-704-72-79'),
(106,'Duman','Marlambekov', 17, 'Male', 'Almaty','29-10-2003','8-705-764-39-52'),
(107,'Abdrakhmanova ','Nurgul',18,'Female','Kokshetau','19-01-2002','8 775 871 8210'),
(108,'Arlan','Zhuazbaev',17,'Male','Shymkent','29-04-2003','8-705-790-49-60'),
(109,'Balbyr','Soltanova',18,'Female','Aktau','10-03-2002','8-702-749-55-95'),
(1101,'Mark','Nelson', 18, 'Male', 'Los-Angeles','19-05-2002','1-212-123 45 67'),
(110,'Amina','Turdybekova',18,'Female','Aktobe','22-02-2002','8-723-752-79-89');
*/
/*
create table University ( 
UV_id INT,
st_id INT,
University_name VARCHAR(25),
Place VARCHAR(25), 
RANK VARCHAR(25),
Construction_year INT,
 students_total INT,
primary key(UV_id),
foreign key(st_id) REFERENCES student(st_id)
);

ALTER TABLE University
ADD UNIQUE (Uv_id);


 alter table university drop column students_total;

  insert into university(uv_id, university_name,place,rank,Construction_year)
    values (1,'AITU','Nur-Sultan','top1','2016'),
    (2,'KBTU','Almaty','top2','1957'),
    (3,'Asfendiyarov_Medical_UV','Almaty','top3','1930'),
    (4,'Kimep','Alamty','top4','1992'),
    ( 5, ' Narxoz','Almaty','top5','1963'),
    (6, 'Almau', 'Almaty', ' top6','1988'),
    (7,'MGTU','Aktau', 'top9','1994'),
    (8,'Agakaz','Almaty','top10','1989'),
    (9,'KAZNU','Almaty','top7','1978'),
    (10,'ENU','Nur-Sultan','top8','1966');
  */
  
  
  /*
   alter table university add column international_uni varchar(32);
 
 update university
  set international_uni = 'yes'
  where uv_id <= 10;   
  */
  
  /*
  select distinct university_name from university
  order by university_name asc;  
  */
  
  /*
    select uv_id, university_name,rank,construction_year
  from university 
  where place in ( 'Almaty')
  */
 
  /*
  create table university_facility(
  major_id int, 
  major Varchar(25), 
  min_ent_score int, 
  ent_score int,
  UV_id INT,
    av_ent int,
    foreign key(UV_id)
    references university(Uv_id),
    foreign key ( ent_score)
    references ent_result(ent_score)
  );
  alter table university_facility alter column major_id  TYPE varchar(32);
 
  alter table university_facility alter column major  TYPE varchar(55);
  
  insert into university_facility(UV_id,major_id,major,av_ent)
    values(1,'6B06103','Big_Data','88'),
    (2,'B271','Oil_gas_industry','98'), 
    (3,'В084','Nursing','102'),
    (4,'B093','Restaurant_Hotel_business','129'),
    (5,'В091','Tourism','115'),
    (6,'B047','Marketing_advertising','131'),
    (7,'B090','Social_work','84'),
    (8,'B067','Air_Transport_Technology','79'),
    (9,'B032','Philosophy_ethics','111'),
    (10,'В018','Training_of_foreign_language_teachers','119');
  */
  /*
  alter table university_facility add column second_diploma Varchar(32);

Update university_facility
set second_diploma ='yes'
where uv_id<=6; 
*/

/*to find avg ent score for 10 university */
/*
select  ROUND(AVG(av_ent),2)
from university_facility
*/
select university.university_name,university.place,university_facility.major
	from university 
	inner join university_facility on university.uv_id=university_facility.uv_id
	where place = ( select place where place in ( 'Almaty'));
/*
create table International_students(
inter_st_id int,
      UV_id int,
  foreign key(uv_id)
  references university(uv_id),
  primary key ( inter_st_id), 
  f_name Varchar(32),
  l_name Varchar(32), 
  number_phone int, 
  age int, 
  Gender varchar(32),
  date_of_birth date, 
  place_birth varchar(32)
);
insert into International_students(inter_st_id,f_name,l_name,number_phone,age,gender,date_of_birth,place_birth)
    values ( 1001,'Abror','Abdulla','99845122','18','Male','22-02-2002','UZ_Tashkent'),
    (1002,'Oksyana','Timiux','7499489','17','Female','22-03-2003','RUS_Orenburg'),
    ( 1003, 'Wiktor', ' Marsel', '85269555', ' 19', 'Male', '16-01-2001','POL_Warsaw'),
    ( 1004, 'Alimer', 'Azat','9967822', ' 18', 'Male', ' 01-06-2002','KRG_Osh'), 
    (1005, 'Guli','Bahor','998785632','19', 'female','24-06-2001','UZ_Hiva'),
    (1006,'Andrei', 'Russulnikov', '749856720','16','Male','24-11-2003','RUS_SaintPeterburg'), 
    ('1007', 'Kim', 'Un', '80865699','20','Male','16-01-2001','CHINA_Ürümqi'),
    (1008,'Jiří','Wohanka','96574500',' 18','Female', ' 06-02-2002','CZ_Prague'),
    (1009, 'li', 'Chen', '745850002','16','Male','09-12-2003','CHINA_Sanxin'),
    (1010,'Bayishbek', 'Ashym','80858506','17','Male', ' 18-03-2003','KRG_Bishkek' ),
(1011, 'Alamat','kozha','271039', '18','Male','05-01-2002', 'KZ_Aqtau');

*/

/*

delete from international_students 
where inter_st_id = 1011;   

*/

/*this to show who is not yet on minor age*/

/*
select inter_st_id,f_name, l_name,number_phone,date_of_birth,place_birth
from international_students 
where gender like 'Ma%' and age <=17;
*/

/*to show students who got from UZ country*/ 

/*
select inter_st_id,f_name,l_name,age
from international_students
where place_birth like ('UZ%'); 
*/

/*
create table Activity(
st_id int, 
  inter_st_id int, 
  work_ex varchar(32),
  sport_section varchar(32), 
  social_section varchar (32),
  foreign key(st_id)
  references student(st_id),
  foreign key ( inter_st_id)
  references international_students(inter_st_id)
  );
   insert into activity(st_id,work_ex,sport_section, social_section)
   values (101,'internship-at_BQO','-','Cali-camp_project'),
   (104,'-',' 5_YearOfDance','Volunteer'), 
   ( 110, 'SummerWork_Sales','Soccer','Volunteer'),
   (108,'-','wrestling','-'),
   (109,'StartUPproject','-','-');
  
   
   insert into activity(inter_st_id,work_ex,sport_section, social_section)
   values (1001,'UzbatSummerInternship', '-','VolunteerAtUZB'),
   (1009,'Alibaba_SMM','bowling', '-'),
   (1004,'AUSA_internship','Soccer','-'),
   (1002,'SalesManagerAT_BUB', 'voleyball','HospitalManager'),
   (1005,'GMPTUzbekistan','tennis','SomeSocialProjects');
  
  update activity
  set sport_section ='ping_pong'
  where inter_st_id = 1005;

*/

/*  to see what students do out of school time */

/*

/*
   select fname,lname,work_ex,sport_section,social_section
  from activity inner join student 
  on activity.st_id=student.st_id;
  */
  
  /*  to see what students do out of school time */
  
  /*
  select f_name,l_name,work_ex,sport_section,social_section
  from activity inner join international_students
  on activity.inter_st_id=international_students.inter_st_id;
*/

/*
CREATE TABLE ent_result(
  st_id INT,
  FOREIGN KEY(st_id) REFERENCES student(st_id),
  ent_score INT,
  PRIMARY KEY(ent_score) );
  INSERT INTO ent_result(st_id,ent_score)
VALUES (101,140),
(102,117),
(103,92),
(104,99),
(105,104),
(106,100),
(107,80),
(108,70),
(109,102),
(110,120);
 */
 
 /*
 
 create table list_of_applicants( 
  Uv_id int,
  ST_id int, 
  inter_st_id int,
  foreign key(Uv_id)
  REFERENCES university(UV_id),
  foreign key (st_id)
  references student(st_id),
  foreign key (inter_st_id)
  references international_students(inter_st_id));
  
  insert into list_of_applicants( st_id,uv_id)
   values ( 101,1),
       (102,3),
      (103,4),
      (104,2),
      (105,6),
       (106, 7),
        (107,9),
      (108,5),
       (109,8),
      (110,10);
    insert into list_of_applicants(inter_st_id,uv_id)
    values(1001,2 ),
        (1002,3),
         (1003,6),
         (1004,9),
        (1005, 10),
         (1006,7),
      (1007,1),
      (1008,4),
       (1009,5),
        (1010, 8);
      
        update list_of_applicants
        set uv_id = 1
        where inter_st_id =1001;
 */
select international_students.f_name, international_students.l_name, international_students.age,international_students.place_birth,activity.work_ex,activity.sport_section
from international_students
inner join activity on  international_students.inter_st_id=activity.inter_st_id
where age =( select age where age <='17');
/*
select  student.fname,student.lname,university.university_name, ent_result.ent_score
from list_of_applicants inner join student on student.st_id=list_of_applicants.st_id
right join university on university.uv_id=list_of_applicants.uv_id
left join ent_result on student.st_id=ent_result.st_id  where ent_score >'100'
order by fname asc;*/
