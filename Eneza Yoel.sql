/* The first three mysql codes are for creating my database which is "ResearchInstitute" and setting my environment to be inside that database for executing all the code below it */
DROP DATABASE IF EXISTS ResearchInstitute;

CREATE DATABASE ResearchInstitute;

USE ResearchInstitute;

/* Since all employees works in one of the departments except Executive director thus creating department table will provide a foreign key for other tables which i will have to show relationship between employees and their departments. */
CREATE TABLE Departments (
	DepartmentNo INTEGER PRIMARY KEY,
	DepartmentName CHAR(80));

INSERT INTO Departments VALUES
	(1,'Plants_Unit'),
	(2,'Insect_Unit'),
	(3,'Animal_Unit'),
	(4,'Administrative_Unit'),
	(5,'Information-Health_Unit');

/* This includes all the employees in the research institute. Ideal this table shows details/information regarding all 100 employees and dependencies to various attributes mainly being EmployeeID.*/
CREATE TABLE Employees 
	(EmployeeID VARCHAR(10) PRIMARY KEY,
	FirstName CHAR(50) NOT NULL,
	LastName CHAR(50) NOT NULL,
	EmailAddress VARCHAR(80),
	PhoneNumber INTEGER(15) NOT NULL,
	HomeAddress VARCHAR(100) NOT NULL,
	SALARY FLOAT, 
	JobDescription CHAR(100),
	DepartmentNo INTEGER NULL);

INSERT INTO Employees VALUES
	('RI-01', 'Blondell', 'Calvard', 'bcalvard0@gmail.com', 0714113525, '39 Melby Terrace', 250000, 'Executive director', NULL), 
	('RI-02', 'Angelika', 'Dunning', 'adunning1@gmail.com', 0748945563, '010 Fairview Crossing', 150000, 'ResearchScientist', 1), 
	('RI-03', 'Kahlil', 'Rideout', 'krideout2@gmail.com', 0733228764, '13 Union Plaza', 150000, 'ResearchScientist', 2),
	('RI-04', 'Jarvis', 'Newstead', 'jnewstead3@gmail.com', 0761946381, '9376 Blaine Park', 150000, 'ResearchScientist', 3),
	('RI-05', 'Milli', 'Meade', 'mmeade4@gmail.com', 0797834851, '9 4th Way', 150000, 'Manager', 4),
	('RI-06', 'Cedric', 'Cosson', 'ccosson5@gmail.com', 0755060717, '75 Kim Point', 160000, 'HR-manager', 5),
	('RI-07', 'Priscilla', 'Madle', 'pmadle6@gmail.com', 0756930260, '33 Forster Hill', 120000, 'ResearchScientist', 1),
	('RI-08', 'Cletus', 'Chatt', 'cchatt7@gmail.com', 0759553805, '9453 Thierer Circle', 120000, 'ResearchScientist', 1),
	('RI-09', 'Ephrayim', 'Dufton', 'edufton8@yahoo.com', 0729010714, '18376 Kropf Drive', 120000, 'Research officer', 1),
	('RI-10', 'Foss', 'Fraschini', 'ffraschini9@gmail.com', 0748132361, '63 Sherman Center', 120000, 'Manager', 1),
	('RI-11', 'Amandy', 'Burnie', 'aburniea@gmail.com', 0695447572, '5287 Shoshone Avenue', 120000, 'Research officer', 1),
	('RI-12', 'Henderson', 'Inchley', 'hinchleyb@gmail.com', 0741673836, '5696 Katie Junction', 120000, 'Research officer', 2),
	('RI-13', 'Pace', 'Gamage', 'pgamagec@yahoo.com', 0428556369, '91897 Union Street',  120000, 'Manager', 2),
	('RI-14', 'Peria', 'Halpin', 'phalpind@gmail.com', 0405233566, '94 Harper Parkway',  120000, 'Research officer', 2),
	('RI-15', 'Fanchette', 'Lown', 'flowne@gmail.com', 0735425023, '76 Redwing Plaza',  120000, 'Research officer', 2),
	('RI-16', 'Edyth', 'Wadworth', 'ewadworthf@gmail.com', 0735531662, '1842 Clarendon Pass',  120000, 'ResearchScientist', 3),
	('RI-17', 'Patty', 'Monni', 'pmonnig@gmail.com', 0724238196, '81823 Corben Terrace', 120000, 'Manager', 3),
	('RI-18', 'Patricia', 'Bogeys', 'pbogeysh@gmail.com', 0775481196, '98 Ronald Regan Pass', 120000, 'Research officer', 3),
	('RI-19', 'Clementina', 'Soame', 'csoamei@gmail.com', 0788541164, '19983 Glacier Hill Circle', 100000,'Assistant research officer', 1),
	('RI-20', 'Con', 'Vest', 'cvestj@yahoo.com', 0660468544, '903 Fair Oaks Alley', 100000,'ResearchScientist', 1),
	('RI-21', 'Konstantine', 'Giff', 'kgiffk@gmail.com', 0779131092, '3 Brickson Park Parkway', 100000,'Assistant research officer', 1),
	('RI-22', 'Oralle', 'Behling', 'obehlingl@gmail.com', 0797815190, '59330 Pawling Pass', 100000,'Assistant research officer', 1),
	('RI-23', 'Derk', 'Glen', 'dglenm@gmail.com', 0785605582, '66641 Mccormick Crossing', 100000,'Assistant research officer', 1), 
	('RI-24', 'Chev', 'Millwater', 'cmillwatern@gmail.com', 0862958745, '97 Hudson Park', 100000,'Assistant research officer', 1),
	('RI-25', 'Ava', 'Round', 'aroundo@gmail.com', 0744638064, '03250 Pawling Alley', 100000,'Assistant research officer', 1),
	('RI-26', 'Temple', 'Lovart', 'tlovartp@gmail.com', 0712055295, '7884 Farwell Road', 100000,'ResearchScientist', 2),
	('RI-27', 'Piotr', 'Lodin', 'plodinq@gmail.com', 0621202264, '1593 Tennessee Lane', 100000,'Assistant research officer', 2),
	('RI-28', 'Barrie', 'Bigby', 'bbigbyr@gmail.com', 0769197345, '857 Westridge Pass', 100000,'Assistant research officer', 2),
	('RI-29', 'Collen', 'Jacqueminot', 'cjacqueminots@gmail.com', 0714254301, '6309 Sachs Pass', 100000,'Assistant research officer', 2),
	('RI-30', 'Tine', 'Bennie', 'tbenniet@gmail.com', 0793349637, '6166 Schlimgen Parkway', 100000,'Assistant research officer', 2),
	('RI-31', 'Levey', 'Kurt', 'lkurtu@gmail.com', 0629165313, '81684 Kim Terrace', 100000,'Assistant research officer', 2),
	('RI-32', 'Patrizia', 'Lindstedt', 'plindstedtv@yahoo.com.', 079512877, '3 Judy Park', 100000,'ResearchScientist', 3),
	('RI-33', 'Aprilette', 'Cleynaert', 'acleynaertw@gmail.com', 0680972464, '67166 Briar Crest Circle', 100000,'Assistant research officer', 3),
	('RI-34', 'Zeke', 'Standley', 'zstandleyx@gmail.com', 0673808434, '92582 Gateway Plaza', 100000,'ResearchScientist', 3),
	('RI-35', 'Shayna', 'Gummow', 'sgummowy@gmail.com', 0669738598, '0331 Cambridge Terrace', 100000,'Assistant research officer', 3),
	('RI-36', 'Lolita', 'Foister', 'lfoisterz@gmail.com', 0729499315, '14042 Warbler Way', 100000,'Assistant research officer', 3),
	('RI-37', 'Culley', 'Gian', 'cgian10@gmail.com', 0657751455, '17757 Claremont Hill', 100000,'Assistant research officer', 3),
	('RI-38', 'Thaxter', 'Craigmile', 'tcraigmile11@gmail.com', 0746448408, '78101 Logan Drive', 100000,'Assistant research officer', 3),
	('RI-39', 'Lucita', 'Chippindale', 'lchippindale12@gmail.com', 0864305926, '63177 Gina Hill', 80000, 'Laboratory manager', 1),
	('RI-40', 'Salem', 'De Minico', 'sdeminico13@gmail.com', 0782922478, '77495 Crowley Center', 80000, 'Laboratory manager', 2),
	('RI-41', 'Shelagh', 'Philipard', 'sphilipard14@gmail.com', 0899470939, '96503 Lake View Crossing', 80000, 'Laboratory manager', 3),
	('RI-42', 'Cris', 'Bygott', 'cbygott15@dgmail.com', 0795894907, '16179 Mosinee Junction', 40000, 'Laboratory technician', 1),
	('RI-43', 'Jobina', 'Wickerson', 'jwickerson16@gmail.com', 0894136866, '95 West Avenue', 40000, 'Laboratory technician', 1),
	('RI-44', 'Gregor', 'Thurborn', 'gthurborn17@gmail.com', 0868708173, '84 Mariners Cove Parkway', 40000, 'Laboratory technician', 1),
	('RI-45', 'Gil', 'Kauffman', 'gkauffman18@gmail.com', 0734529539, '9500 Shasta Lane', 40000, 'Laboratory technician', 1),
	('RI-46', 'Rene', 'Limb', 'rlimb19@gmail.com', 0720822635, '8 Corben Avenue', 40000, 'Laboratory technician', 1),
	('RI-47', 'Felipe', 'Lewry', 'flewry1a@gmail.com', 0606717577, '1050 Mallory Way', 40000, 'Laboratory technician', 1),
	('RI-48', 'Gideon', 'Meineken', 'gmeineken1b@gmail.com', 0794403605, '9 Beilfuss Place', 40000, 'Laboratory technician', 2),
	('RI-49', 'Dehlia', 'Full', 'dfull1c@gmail.com', 0713506633, '24 Amoth Street', 40000, 'Laboratory technician', 2),
	('RI-50', 'Patten', 'Ajsik', 'pajsik1d@gmail.com', 0748417764, '36 Warrior Point', 40000, 'Laboratory technician', 2),
	('RI-51', 'Andrea', 'Teresia', 'ateresia1e@gmail.com', 0790956638, '83010 Arapahoe Street', 40000, 'Laboratory technician', 2),
	('RI-52', 'Carrissa', 'Carefull', 'ccarefull1f@gmail.com', 0735195786, '79 David Trail', 40000, 'Laboratory technician', 2),
	('RI-53', 'Niall', 'Olivari', 'nolivari1g@gmail.com', 0781986650, '05 Glacier Hill Point', 40000, 'Laboratory technician', 3),
	('RI-54', 'Karin', 'Jordeson', 'kjordeson1h@gmail.com', 0770806306, '9 Farragut Pass', 40000, 'Laboratory technician', 3),
	('RI-55', 'Veronika', 'Yoxall', 'vyoxall1i@gmail.com', 0766272744, '55704 Vernon Road', 40000, 'Laboratory technician', 3),
	('RI-56', 'Rosie', 'Billo', 'rbillo1j@gmail.com', 0704435410, '4 Menomonie Terrace', 40000, 'Laboratory technician', 3),
	('RI-57', 'Paige', 'Juppe', 'pjuppe1k@gmail.com', 0745672067, '1930 Blaine Pass', 40000, 'Laboratory technician', 3),
	('RI-58', 'Scotti', 'Casham', 'scasham1l@gmail.com', 0708190347, '2752 Gerald Junction', 40000, 'Laboratory technician', 3),
	('RI-59', 'Mikaela', 'Wickmann', 'mwickmann1m@gmail.com', 0734949580, '640 Merry Trail', 40000, 'Laboratory technician', 3),
	('RI-60', 'Drusilla', 'McSpirron', 'dmcspirron1n@gmail.com', 0736804357, '7 Dennis Hill', 45000, 'MastersStudent', 1),
	('RI-61', 'Florry', 'Andriesse', 'fandriesse1o@gmail.com', 0721703286, '64 Scofield Plaza', 45000, 'MastersStudent', 1),
	('RI-62', 'Abraham', 'Maclean', 'amaclean1p@gmail.com', 0726211891, '27668 Corscot Pass', 45000, 'MastersStudent', 1),
	('RI-63', 'Robin', 'Borkett', 'rborkett1q@gmail.com', 0741259654, '4 Lighthouse Bay Avenue', 45000, 'MastersStudent', 1),
	('RI-64', 'Woody', 'Lobb', 'wlobb1r@gmail.com', 0719040310, '0293 Pine View Center', 45000, 'MastersStudent', 1),
	('RI-65', 'Rob', 'Hulcoop', 'rhulcoop1s@gmail.com', 0757979071, '43 Petterle Avenue', 45000, 'MastersStudent', 2),
	('RI-66', 'Pauli', 'Leavy', 'pleavy1t@gmail.com', 0764836401, '58 Ridgeway Way', 45000, 'MastersStudent', 2),
	('RI-67', 'Lindi', 'Sandeford', 'lsandeford1u@gmail.com', 0783650018, '4 Russell Road', 45000, 'MastersStudent', 2),
	('RI-68', 'Shurwood', 'Bonus', 'sbonus1v@gmail.com', 0721898700, '897 Old Shore Hill', 45000, 'MastersStudent', 2),
	('RI-69', 'Edy', 'McGraw', 'emcgraw1w@gmail.com', 0792359864, '28 Prairieview Junction', 45000, 'MastersStudent', 2),
	('RI-70', 'Holly', 'Drust', 'hdrust1x@gmail.com', 0762644054, '6592 Upham Drive', 45000, 'MastersStudent', 3),
	('RI-71', 'Binky', 'Lorens', 'blorens1y@gmail.com', 0677914954, '9 Westport Trail', 45000, 'MastersStudent', 3),
	('RI-72', 'Juanita', 'Gawkes', 'jgawkes1z@gmail.com', 0684782812, '6469 Roxbury Place', 45000, 'MastersStudent', 3),
	('RI-73', 'Allayne', 'Suggett', 'asuggett20@gmail.com', 0754716199, '70150 Blaine Drive', 45000, 'MastersStudent', 3),
	('RI-74', 'Trudie', 'Leal', 'tleal21@gmail.com', 0668498848, '632 Petterle Center', 45000, 'MastersStudent', 3),
	('RI-75', 'Rustie', 'Lower', 'rlower22@gmail.com', 0765741237, '79 Killdeer Plaza', 90000, 'PhDStudent', 1),
	('RI-76', 'Lianne', 'Gall', 'lgall23@gmail.com', 0717346013, '743 Hooker Drive', 90000, 'PhDStudent', 1),
	('RI-77', 'Debi', 'Klimochkin', 'dklimochkin24@gmail.com', 0742429716, '8 Riverside Place', 90000, 'PhDStudent', 1),
	('RI-78', 'Faustina', 'Prettjohn', 'fprettjohn25@gmail.com', 0759773897, '2 High Crossing Parkway', 90000, 'PhDStudent', 2),
	('RI-79', 'Branden', 'Geffcock', 'bgeffcock26@gmail.com', 0795531824, '4714 Forest Run Point', 90000, 'PhDStudent', 2),
	('RI-80', 'Gwenora', 'Winger', 'gwinger27@gmail.com', 0762767826, '6 Thackeray Circle', 90000, 'PhDStudent', 2),
	('RI-81', 'Chicky', 'Matissoff', 'cmatissoff28@gmail.com', 0859336984, '7732 Johnson Road', 90000, 'PhDStudent', 3),
	('RI-82', 'Dari', 'Windsor', 'dwindsor29@gmail.com', 0913292024, '6 Larry Street', 90000, 'PhDStudent', 3),
	('RI-83', 'Charmaine', 'Jackett', 'cjackett2a@gmail.com', 0762913661, '5930 Union Park', 90000, 'PhDStudent', 3),
	('RI-84', 'Anny', 'Nerne', 'anerne2b@gmail.com', 0799234558, '66424 Westridge Drive', 45000, 'MastersStudent', 2),
	('RI-85', 'Augy', 'Lunnon', 'alunnon2c@gmail.com', 0799159939, '06 Sloan Park', 45000, 'MastersStudent', 1),
	('RI-86', 'Rivy', 'Powell', 'rpowell2d@gmail.com', 0719485066, '92 Bunting Court', 40000, 'Information technology', 5),
	('RI-87', 'Hillary', 'Togwell', 'htogwell2e@gmail.com', 0735337186, '4 Burrows Circle', 40000, 'Information technology', 5),
	('RI-88', 'Neely', 'Hurton', 'nhurton2f@yahoo.com', 0736632895, '274 Ridge Oak Terrace', 100000, 'Clinician', 5),
	('RI-89', 'Ladonna', 'Pettwood', 'lpettwood2g@yahoo.com', 0747522601, '11508 Hallows Place', 100000, 'Clinician', 5),
	('RI-90', 'Daryle', 'Sketch', 'dsketch2h@gmail.us', 0732686478, '54300 Morrow Drive', 10000, 'Cleaning and Maintanance', 4),
	('RI-91', 'Manda', 'Summerell', 'msummerell2i@gmail.com', 0798970410, '257 Meadow Vale Pass', 10000, 'Cleaning and Maintanance', 4),
	('RI-92', 'Gris', 'Windous', 'gwindous2j@gmail.com', 0757217571, '707 Dapin Junction', 50000, 'finance officer', 4),
	('RI-93', 'Raye', 'Rivitt', 'rrivitt2k@gmail.com', 0788611444, '9143 Waywood Point', 40000, 'Nurse', 5),
	('RI-94', 'Carmelita', 'Krishtopaittis', 'ckrishtopaittis2l@gmail.com', 0747572815, '78 Dovetail Point', 40000, 'Nurse', 5),
	('RI-95', 'Lennie', 'Gannan', 'lgannan2m@gmail.com', 0742570820, '42 Elgar Center', 10000, 'Cleaning and Maintanance', 4),
	('RI-96', 'Elizabeth', 'Tregiddo', 'etregiddo2n@gmail.com', 0747510291, '88418 Sauthoff Court', 15000, 'CustomerCare', 4),
	('RI-97', 'Estell', 'Whelpdale', 'ewhelpdale2o@gmail.com', 0738652841, '4 Raven Place', 30000, 'Secretary', 4), 
	('RI-98', 'Stavros', 'Belch', 'sbelch2p@gmail.com', 0781313871, '75 Mallard Avenue', 40000, 'Nurse', 5),
	('RI-99', 'Trudi', 'Ormonde', 'tormonde2q@gmail.com', 0705784854, '88 Ruskin Crossing', 8000, 'Security', 4),
	('RI-100', 'Marcelle', 'Kirkbright', 'mkirkbright2r@gmail.com', 0769536966, '30 Dixon Terrace', 30000, 'Secretary', 4);

/* This table shows relationship between different research groups and departments,I have chosen ResearchScientist to be group leader for various groups which are within single Research departments.*/
CREATE TABLE ResearchGroups
	(GroupNo VARCHAR(50) PRIMARY KEY,
	GroupName CHAR(80),
	DepartmentNo INTEGER,
	FOREIGN KEY (`DepartmentNo`) REFERENCES `Departments`(`DepartmentNo`) ON UPDATE CASCADE);

INSERT INTO ResearchGroups VALUES
	('G1', 'Bioinformatics', 3),
	('G2', 'MolecularBiology', 3),
	('G3', 'Microbiology', 3),
	('G4', 'PlantPhysiology', 1),
	('G5', 'TissueCulture', 1),
	('G6', 'GeneticEngineering', 1),
	('G7', 'InsectVectors', 2),
	('G8', 'InsectPhysiology', 2),
	('G9', 'InsectDiseases', 2);

/* Since supervisors are employee of the institute, in this table i use their employee ID so as to assign them a new variable, which is SupervisorsNo which leter i will link it to the students they supervise*/
CREATE TABLE Supervisors
	(EmployeeID VARCHAR(10),
	FOREIGN KEY (`EmployeeID`) REFERENCES `Employees`(`EmployeeID`) ON UPDATE CASCADE,
	SupervisorsNo VARCHAR(10) PRIMARY KEY,
	GroupNo VARCHAR(50),
	FOREIGN KEY (`GroupNo`) REFERENCES `ResearchGroups`(`GroupNo`) ON UPDATE CASCADE);

INSERT INTO Supervisors VALUES
	('RI-03', 'DP2-01', 'G9'),
	('RI-13', 'DP2-02', 'G8'),
	('RI-26', 'DP2-03', 'G7'),
	('RI-02', 'DP1-01', 'G6'),
	('RI-07', 'DP1-02', 'G5'),
	('RI-08', 'DP1-03', 'G4'),
	('RI-04', 'DP3-01', 'G1'),
	('RI-16', 'DP3-02', 'G2'),
	('RI-34', 'DP3-03', 'G3');
/* Since the relation between Supervisor and student is a many-many, thus three tables are required to express this kind of relation in mysql.*/
/* Being employed as students in the institute means they have their student ID*/
CREATE TABLE Student_Employee (
	StudentID VARCHAR(20) PRIMARY KEY,
	EmployeeID VARCHAR(10),
	FOREIGN KEY (`EmployeeID`) REFERENCES `Employees`(`EmployeeID`) ON UPDATE CASCADE
);

INSERT INTO Student_Employee VALUES
	('MS001', 'RI-60'),
	('MS002', 'RI-61'),
	('MS003', 'RI-62'),
	('MS004', 'RI-63'),
	('MS005', 'RI-65'),
	('MS006', 'RI-66'),
	('MS007', 'RI-67'),
	('MS008', 'RI-70'),
	('MS009', 'RI-71'),
	('MS010', 'RI-72'),
	('MS011', 'RI-73'),
	('MS012', 'RI-74'),
	('MS013', 'RI-84'),
	('MS014', 'RI-85'),
	('MS015', 'RI-69'),
	('MS016', 'RI-68'),
	('MS017', 'RI-64'),
	('PH001', 'RI-75'),
	('PH002', 'RI-78'),
	('PH003', 'RI-76'),
	('PH004', 'RI-77'),
	('PH005', 'RI-81'),
	('PH006', 'RI-82'),
	('PH007', 'RI-83'),
	('PH008', 'RI-79'),
	('PH009', 'RI-80');

CREATE TABLE Student_Supervisor 
	(StudentID VARCHAR(20), FOREIGN KEY (`StudentID`) REFERENCES `Student_Employee`(`StudentID`) ON UPDATE CASCADE,
	SupervisorsNo VARCHAR(10), FOREIGN KEY (`SupervisorsNo`) REFERENCES `Supervisors`(`SupervisorsNo`) ON UPDATE CASCADE);

INSERT INTO Student_Supervisor VALUES
	('MS001', 'DP1-01'),
	('MS002', 'DP1-02'),
	('MS003', 'DP1-03'),
	('MS004', 'DP1-03'),
	('MS001', 'DP2-01'),
	('MS005', 'DP2-01'),
	('MS006', 'DP2-02'),
	('MS003', 'DP3-03'),
	('MS007', 'DP2-03'),
	('MS008', 'DP3-01'),
	('MS008', 'DP2-03'),
	('MS005', 'DP3-02'),
	('MS009', 'DP3-02'),
	('MS010', 'DP2-01'),
	('MS010', 'DP1-02'),
	('PH001', 'DP2-01'),
	('PH001', 'DP1-01'),
	('PH002', 'DP2-02'),
	('PH002', 'DP3-02'),
	('PH003', 'DP1-03'),
	('PH004', 'DP1-03'),
	('PH005', 'DP3-02'),
	('PH005', 'DP1-01'),
	('PH006', 'DP3-01'),
	('PH007', 'DP3-02'),
	('PH008', 'DP2-01'),
	('PH009', 'DP2-02');

/* MySQL code for computing total, minimum, maximum and average salaries for all employees of a given position for all the positions in the database.*/
SELECT SUM(Salary) AS sumSALARY,
	MIN(Salary) AS minSALARY,
	MAX(Salary) AS maxSalary,
	AVG(Salary) AS avgSALARY
	FROM Employees GROUP BY JobDescription;


/* Below are codes for creating Views for HR department staffs and managers for each respective departments. Ideal for HRoffice table we will use vertical view approach to limit HR from seeing Salary column 
 While for Managers table we will use horizontal view approach.*/
CREATE VIEW HRoffice AS 
	SELECT EmployeeID, FirstName, LastName, EmailAddress, 
	PhoneNumber, HomeAddress, JobDescription, DepartmentNo
	FROM Employees;

CREATE VIEW ManagerDP01 AS 
	SELECT EmployeeID, FirstName, LastName, EmailAddress, 
	PhoneNumber, HomeAddress, Salary, JobDescription
	FROM Employees WHERE DepartmentNo = 1;

CREATE VIEW ManagerDP02 AS 
	SELECT EmployeeID, FirstName, LastName, EmailAddress, 
	PhoneNumber, HomeAddress, Salary, JobDescription
	FROM Employees WHERE DepartmentNo = 2;

CREATE VIEW ManagerDP03 AS 
	SELECT EmployeeID, FirstName, LastName, EmailAddress, 
	PhoneNumber, HomeAddress, Salary, JobDescription
	FROM Employees WHERE DepartmentNo = 3;







