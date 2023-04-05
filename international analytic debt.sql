Create database `International analytic Debt`;

Use `International analytic Debt`;

Create table `statistics`(
Country_ID INT Primary key,
Country_Name VARCHAR (50),
Country_Code VARCHAR (50),
Indicator_Name VARCHAR (100),
Indicator_Code_Debt INT

);

Insert into statistics values
(1,'Australia','AUS','public service',28563),
(2,'Belgium','BEL','Projects',3269),
(3,'Canada','CAN','Infrastructure',2587),
(4,'Finland','FIN','Hospital',1456),
(5,'France','FRA','Gas',47632),
(6,'Germmany','DEU','Education',9563),
(7,'Iceland','ISL','Scholarship',8520),
(8,'Italy','ITA','Military',5412),
(9,'Korea','KOR','technology',1785),
(10,'Portugal','PRT','Cultivation',3485);

-- Total amount of money that countries Owe to the Wolrd Bank --
Select SUM(Indicator_Code_Debt) From Statistics;

-- Country having the highest debt and how much --
Select Country_Name, Country_Code_Debt From Statistics Where Indicator_Code_Debt=(Select Max(Indicator_Code_Debt) from Statistics);
 
 -- The mean debt for the country --
 Select Country_Name, Indicator_Code_Debt=(Select AVG(Indicator_Code_Debt) from Statistics);









