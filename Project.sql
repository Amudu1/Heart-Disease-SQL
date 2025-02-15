create schema heart_disease;
create database disease;
use disease;
CREATE TABLE Patient (
    PatientId INT primary key auto_increment,
    PatientName	VARCHAR(25),
    Age	INT,
    Gender	VARCHAR(20),
    AgeCategory	VARCHAR(20)
);
select * from Heart_Metric;
INSERT INTO Patient (PatientId,PatientName, Age, Gender, AgeCategory) VALUES
	(1,'Aarav', '56', 'Male', '55-59'),
	(2,'Ananya', '67', 'Female', '65-69'),
	(3,'Devraj', '61', 'Male', '60-64'),
	(4,'Priya', '72', 'Female', '70-74'),
	(5,'Rajesh', '82', 'Male', '80 or older'),
	(6,'Kavya', '60', 'Female', '60-64'),
	(7,'Arjun', '70', 'Male', '70-74'),
	(8,'Neha', '71', 'Female', '70-74'),
	(9,'Siddharth', '58', 'Male', '55-59'),
	(10,'Aisha', '55', 'Female', '55-59'),
	(11,'Rahul', '69', 'Male', '65-69'),
	(12,'Sneha', '86', 'Female', '80 or older'),
	(13,'Vikram', '76', 'Male', '75-79'),
	(14,'Maya', '65', 'Female', '65-69'),
	(15,'Kiran', '45', 'Male', '45-49'),
	(16,'Rohan', '37', 'Male', '35-39'),
	(17,'Anjali', '58', 'Female', '55-59'),
	(18,'Harsh', '62', 'Male', '60-64'),
	(19,'Isha', '66', 'Female', '65-69'),
	(20,'Aman', '55', 'Male', '55-59'),
	(21,'Shruti', '80', 'Female', '80 or older'),
	(22,'Varun', '29', 'Male', '25-29'),
	(23,'Meera', '49', 'Female', '45-49'),
	(24,'Akash', '57', 'Male', '55-59'),
	(25,'Simran', '78', 'Female', '75-79'),
	(26,'Nikhil', '52', 'Male', '50-54'),
	(27,'Sonal', '63', 'Female', '60-64'),
	(28,'Rohit', '73', 'Male', '70-74'),
	(29,'Ria', '70', 'Female', '70-74'),
	(30,'Jay', '40', 'Male', '40-44');
    
    CREATE TABLE Heart_Metric (
    MetricId	INT,
    PatientId	INT,
    PatienNames	VARCHAR(25),
    HeartDisease	VARCHAR(10),
    BMI	decimal(10,2),
    Smoking	VARCHAR(50),
    AlcoholDrinking	VARCHAR(50),
    Stroke	VARCHAR(50),
    PhysicalHealth	VARCHAR(50),
    MentalHealth	INT,
    DiffWalking	VARCHAR(50),
    Gender	VARCHAR(50),
    Age	INT,
    AgeCategory	VARCHAR(50),
    Diabetic	VARCHAR(50),
    PhysicalActivity	VARCHAR(50),
    GenHealth	VARCHAR(50),
    SleepTime	INT,
    Asthma	VARCHAR(50),
    KidneyDisease	VARCHAR(50),
    SkinCancer	VARCHAR(50),
    Years	INT,
    foreign key (PatientId) references Patient(PatientId)
);
INSERT INTO  Heart_Metric(MetricId, PatientId, PatienNames,
 HeartDisease, BMI, Smoking, AlcoholDrinking, Stroke,
 PhysicalHealth, MentalHealth, DiffWalking, Gender, 
 Age, AgeCategory, Diabetic, PhysicalActivity, GenHealth,
 SleepTime, Asthma, KidneyDisease, SkinCancer, Years) VALUES
	('1001', '1', 'Aarav', 'No', '16.6', 'Yes', 'No', 'No', '3', '30', 'No', 'Male', '56', '55-59', 'Yes', 'Yes', 'Very good', '5', 'Yes', 'No', 'Yes', '2016'),
	('1002', '2', 'Ananya', 'No', '26.58', 'Yes', 'No', 'No', '20', '0', 'No', 'Female', '67', '65-69', 'Yes', 'Yes', 'Fair', '8', 'Yes', 'No', 'No', '2021'),
	('1003', '3', 'Devraj', 'No', '29.29', 'Yes', 'No', 'No', '0', '30', 'Yes', 'Male', '61', '60-64', 'No', 'No', 'Good', '5', 'No', 'No', 'No', '2018'),
	('1004', '4', 'Priya', 'No', '22.59', 'Yes', 'No', 'No', '0', '30', 'Yes', 'Female', '72', '70-74', 'No, borderline diabetes', 'Yes', 'Good', '8', 'No', 'No', 'No', '2018'),
	('1005', '5', 'Rajesh', 'No', '25.82', 'Yes', 'No', 'No', '0', '0', 'No', 'Male', '82', '80 or older', 'Yes', 'Yes', 'Fair', '8', 'No', 'No', 'No', '2015'),
	('1006', '6', 'Kavya', 'No', '29.18', 'Yes', 'No', 'No', '30', '30', 'Yes', 'Female', '60', '60-64', 'No', 'No', 'Poor', '6', 'Yes', 'No', 'No', '2015'),
	('1007', '7', 'Arjun', 'Yes', '28.29', 'Yes', 'No', 'No', '30', '30', 'No', 'Male', '70', '70-74', 'Yes', 'Yes', 'Poor', '9', 'No', 'Yes', 'No', '2020'),
	('1008', '8', 'Neha', 'Yes', '24.68', 'Yes', 'No', 'No', '30', '0', 'Yes', 'Female', '71', '70-74', 'No', 'Yes', 'Fair', '8', 'No', 'No', 'Yes', '2019'),
	('1009', '9', 'Siddharth', 'No', '34.41', 'No', 'No', 'No', '0', '30', 'No', 'Male', '58', '55-59', 'No', 'Yes', 'Good', '9', 'No', 'No', 'No', '2023'),
	('1010', '10', 'Aisha', 'No', '23.67', 'Yes', 'No', 'No', '5', '30', 'No', 'Female', '55', '55-59', 'Yes', 'Yes', 'Fair', '6', 'No', 'No', 'No', '2020'),
	('1011', '11', 'Rahul', 'No', '27.44', 'Yes', 'No', 'No', '4', '30', 'No', 'Male', '69', '65-69', 'Yes', 'Yes', 'Good', '6', 'No', 'No', 'No', '2019'),
	('1012', '12', 'Sneha', 'Yes', '26.29', 'No', 'No', 'No', '30', '0', 'Yes', 'Female', '86', '80 or older', 'No', 'No', 'Poor', '10', 'No', 'No', 'Yes', '2021'),
	('1013', '13', 'Vikram', 'Yes', '28.89', 'Yes', 'No', 'No', '3', '30', 'Yes', 'Male', '76', '75-79', 'Yes', 'No', 'Fair', '8', 'Yes', 'No', 'Yes', '2023'),
	('1014', '14', 'Maya', 'No', '29.53', 'Yes', 'No', 'No', '30', '0', 'Yes', 'Female', '65', '65-69', 'No', 'No', 'Good', '8', 'No', 'No', 'No', '2022'),
	('1015', '15', 'Kiran', 'No', '32.28', 'No', 'No', 'No', '1', '30', 'No', 'Male', '45', '45-49', 'No', 'Yes', 'Very good', '8', 'No', 'No', 'Yes', '2024'),
	('1016', '16', 'Rohan', 'No', '18.84', 'Yes', 'No', 'Yes', '0', '2', 'No', 'Male', '37', '35-39', 'No', 'No', 'Good', '2', 'No', 'No', 'No', '2020'),
	('1017', '17', 'Anjali', 'No', '53.09', 'No', 'No', 'No', '30', '30', 'Yes', 'Female', '58', '55-59', 'Yes', 'No', 'Poor', '7', 'No', 'No', 'No', '2017'),
	('1018', '18', 'Harsh', 'Yes', '32.08', 'Yes', 'No', 'Yes', '10', '30', 'Yes', 'Male', '62', '60-64', 'Yes', 'No', 'Fair', '3', 'No', 'No', 'No', '2016'),
	('1019', '19', 'Isha', 'Yes', '25.89', 'Yes', 'No', 'Yes', '0', '2', 'No', 'Female', '66', '65-69', 'No', 'No', 'Fair', '5', 'No', 'No', 'No', '2016'),
	('1020', '20', 'Aman', 'No', '34.33', 'No', 'No', 'No', '0', '30', 'No', 'Male', '55', '55-59', 'No', 'No', 'Good', '5', 'No', 'No', 'No', '2023'),
	('1021', '21', 'Shruti', 'No', '26.78', 'Yes', 'No', 'No', '30', '30', 'Yes', 'Female', '80', '80 or older', 'No', 'Yes', 'Fair', '8', 'No', 'No', 'No', '2015'),
	('1022', '22', 'Varun', 'No', '21.4', 'Yes', 'No', 'No', '15', '30', 'Yes', 'Male', '29', '25-29', 'No', 'No', 'Good', '6', 'Yes', 'No', 'No', '2024'),
	('1023', '23', 'Meera', 'No', '27.44', 'No', 'No', 'No', '30', '2', 'No', 'Female', '49', '45-49', 'No', 'Yes', 'Very good', '4', 'No', 'No', 'No', '2015'),
	('1024', '24', 'Akash', 'No', '30.41', 'Yes', 'No', 'No', '2', '30', 'No', 'Male', '57', '55-59', 'No', 'Yes', 'Very good', '7', 'No', 'No', 'No', '2020'),
	('1025', '25', 'Simran', 'Yes', '23.92', 'No', 'No', 'No', '30', '2', 'Yes', 'Female', '78', '75-79', 'Yes', 'No', 'Good', '7', 'No', 'Yes', 'Yes', '2016'),
	('1026', '26', 'Nikhil', 'No', '17.56', 'Yes', 'No', 'No', '2', '30', 'No', 'Male', '52', '50-54', 'No', 'Yes', 'Good', '5', 'No', 'No', 'No', '2024'),
	('1027', '27', 'Sonal', 'No', '20.07', 'Yes', 'Yes', 'No', '0', '30', 'Yes', 'Female', '63', '60-64', 'No', 'No', 'Fair', '9', 'No', 'No', 'No', '2022'),
	('1028', '28', 'Rohit', 'Yes', '28.12', 'No', 'No', 'Yes', '30', '30', 'Yes', 'Male', '73', '70-74', 'No', 'Yes', 'Fair', '5', 'Yes', 'No', 'No', '2018'),
	('1029', '29', 'Ria', 'Yes', '30.04', 'No', 'No', 'No', '30', '30', 'Yes', 'Female', '70', '70-74', 'Yes', 'No', 'Poor', '12', 'No', 'No', 'No', '2020'),
	('1030', '30', 'Jay', 'No', '21.8', 'Yes', 'Yes', 'No', '0', '30', 'No', 'Male', '40', '40-44', 'No', 'Yes', 'Excellent', '5', 'Yes', 'No', 'No', '2024');
  
  CREATE TABLE LifeStyle_Factor (
    FactorId	INT,
    PatientId	INT,
    PatienNames	VARCHAR(25),
    Smoking	VARCHAR(20),
    AlcoholDrinking	VARCHAR(20),
    PhysicalHealth INT,
    foreign key (PatientId) references Patient(PatientId)
);
INSERT INTO LifeStyle_Factor (FactorId, PatientId, PatienNames, Smoking, AlcoholDrinking, PhysicalHealth) VALUES
	('1', '1', 'Aarav', 'Yes', 'No', '3'),
	('2', '2', 'Ananya', 'Yes', 'No', '20'),
	('3', '3', 'Devraj', 'Yes', 'No', '0'),
	('4', '4', 'Priya', 'Yes', 'No', '0'),
	('5', '5', 'Rajesh', 'Yes', 'No', '0'),
	('6', '6', 'Kavya', 'Yes', 'No', '30'),
	('7', '7', 'Arjun', 'Yes', 'No', '30'),
	('8', '8', 'Neha', 'Yes', 'No', '30'),
	('9', '9', 'Siddharth', 'No', 'No', '0'),
	('10', '10', 'Aisha', 'Yes', 'No', '5'),
	('11', '11', 'Rahul', 'Yes', 'No', '4'),
	('12', '12', 'Sneha', 'No', 'No', '30'),
	('13', '13', 'Vikram', 'Yes', 'No', '3'),
	('14', '14', 'Maya', 'Yes', 'No', '30'),
	('15', '15', 'Kiran', 'No', 'No', '1'),
	('16', '16', 'Rohan', 'Yes', 'No', '0'),
	('17', '17', 'Anjali', 'No', 'No', '30'),
	('18', '18', 'Harsh', 'Yes', 'No', '10'),
	('19', '19', 'Isha', 'Yes', 'No', '0'),
	('20', '20', 'Aman', 'No', 'No', '0'),
	('21', '21', 'Shruti', 'Yes', 'No', '30'),
	('22', '22', 'Varun', 'Yes', 'No', '15'),
	('23', '23', 'Meera', 'No', 'No', '30'),
	('24', '24', 'Akash', 'Yes', 'No', '2'),
	('25', '25', 'Simran', 'No', 'No', '30'),
	('26', '26', 'Nikhil', 'Yes', 'No', '2'),
	('27', '27', 'Sonal', 'Yes', 'Yes', '0'),
	('28', '28', 'Rohit', 'No', 'No', '30'),
	('29', '29', 'Ria', 'No', 'No', '30'),
	('30', '30', 'Jay', 'Yes', 'Yes', '0');
    
    CREATE TABLE MedicalHistory (
    HistoryId	INT,
    PatientId	INT,
    GenHealth	VARCHAR(25),
    Treatment	VARCHAR(50),
    foreign key (PatientId) references Patient(PatientId)
);

INSERT INTO MedicalHistory (HistoryId, PatientId, GenHealth, Treatment) VALUES
	('1', '1', 'Very good', 'Astama_Diabetic_Skin'),
	('2', '2', 'Fair', 'Diabetic_Astama'),
	('3', '3', 'Good', 'No'),
	('4', '4', 'Good', 'No, borderline diabetes'),
	('5', '5', 'Fair', 'Diabetic'),
	('6', '6', 'Poor', 'Asthma'),
	('7', '7', 'Poor', 'Diabetic'),
	('8', '8', 'Fair', 'Skin'),
	('9', '9', 'Good', 'No'),
	('10', '10', 'Fair', 'Diabetic'),
	('11', '11', 'Good', 'Diabetic'),
	('12', '12', 'Poor', 'Skin'),
	('13', '13', 'Fair', 'Diabetic_Skin'),
	('14', '14', 'Good', 'No'),
	('15', '15', 'Very good', 'Skin'),
	('16', '16', 'Good', 'No'),
	('17', '17', 'Poor', 'Diabetic'),
	('18', '18', 'Fair', 'Diabetic'),
	('19', '19', 'Fair', 'No'),
	('20', '20', 'Good', 'No'),
	('21', '21', 'Fair', 'No'),
	('22', '22', 'Good', 'No'),
	('23', '23', 'Very good', 'No'),
	('24', '24', 'Very good', 'No'),
	('25', '25', 'Good', 'Diabetic_Skin'),
	('26', '26', 'Good', 'No'),
	('27', '27', 'Fair', 'No'),
	('28', '28', 'Fair', 'Asthma'),
	('29', '29', 'Poor', 'Diabetic'),
	('30', '30', 'Excellent', 'Asthma');
    
    CREATE TABLE Years (
    YearId	INT,
    Years	INT,
    foreign key (YearId) references Patient(PatientId)
);

INSERT INTO Years (YearId, Years) VALUES
	('1', '2016'),
	('2', '2021'),
	('3', '2018'),
	('4', '2018'),
	('5', '2015'),
	('6', '2015'),
	('7', '2020'),
	('8', '2019'),
	('9', '2023'),
	('10', '2020'),
	('11', '2019'),
	('12', '2021'),
	('13', '2023'),
	('14', '2022'),
	('15', '2024'),
	('16', '2020'),
	('17', '2017'),
	('18', '2016'),
	('19', '2016'),
	('20', '2023'),
	('21', '2015'),
	('22', '2024'),
	('23', '2015'),
	('24', '2020'),
	('25', '2016'),
	('26', '2024'),
	('27', '2022'),
	('28', '2018'),
	('29', '2020'),
	('30', '2024');
    
    SELECT
    p.PatientId,
    p.PatientName,
    l.Smoking,
    l.AlcoholDrinking,
    m.GenHealth AS MedicalGenHealth,
    m.Treatment
FROM Patient p
JOIN
    LifeStyle_Factor l ON p.PatientId = l.PatientId
JOIN
    MedicalHistory m ON p.PatientId = m.PatientId;
    
    SELECT
    p.PatientId,
    p.PatientName,
    p.Age,
    y.Years
FROM
    Patient p
JOIN
    Years y ON p.PatientId = y.YearId;
    
    SELECT
    p.PatientId,
    p.PatientName,
    m.GenHealth AS MedicalGenHealth,
    m.Treatment,
    h.HeartDisease,
    h.BMI
FROM
    Patient p
JOIN
    MedicalHistory m ON p.PatientId = m.PatientId
JOIN
    Heart_Metric h ON p.PatientId = h.PatientId;
    
    SELECT
    p.PatientId,
    p.PatientName,
    l.Smoking,
    l.AlcoholDrinking,
    l.PhysicalHealth
FROM
    Patient p
JOIN
    LifeStyle_Factor l ON p.PatientId = l.PatientId;
    
    SELECT
    p.PatientId,
    p.PatientName,
    h.HeartDisease,
    h.BMI,
    h.Smoking,
    h.AlcoholDrinking,
    h.Stroke,
    h.PhysicalHealth,
    h.MentalHealth
FROM
    Patient p
JOIN
    Heart_Metric h ON p.PatientId = h.PatientId;
    
    SELECT
    p.PatientId,
    p.PatientName,
    h.BMI,
    l.Smoking
FROM
    Patient p
JOIN
    Heart_Metric h ON p.PatientId = h.PatientId
JOIN
    LifeStyle_Factor l ON p.PatientId = l.PatientId
WHERE
    h.BMI > 30  -- Assuming BMI > 30 indicates high BMI
    AND l.Smoking = 'Yes';