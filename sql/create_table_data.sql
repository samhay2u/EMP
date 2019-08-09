--
use EMPLOYEES;
drop table `employees`;
drop table `users`;
----------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `employees` (
  `emp_no` varchar(10) NOT NULL PRIMARY KEY,
  `birth_date` DATE NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `gender` varchar(7) DEFAULT 'Unknown' NOT NULL,
  `hire_date` DATETIME DEFAULT NOW() NOT NULL,  
  `salary` DECIMAL(13, 4) NOT NULL
  CHECK(salary > 20000 and salary < 100000 ) 
);




insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (1, '1931-04-02', 'Edgard', 'Cheyne', 'Male', '2003-08-04', 34186.57);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (2, '1960-09-18', 'Hewett', 'Tookey', 'Male', '2002-08-21', 28048.44);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (3, '1910-07-05', 'Hugibert', 'Melton', 'Male', '2011-05-23', 92292.86);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (4, '1993-04-30', 'Martyn', 'Normandale', 'Male', '2014-03-21', 70778.76);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (5, '1967-11-07', 'Welbie', 'Kenna', 'Male', '2015-12-14', 34939.32);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (6, '1993-12-11', 'Bobby', 'Jerred', 'Female', '2017-09-18', 39424.83);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (7, '1931-12-23', 'Lora', 'Ireson', 'Female', '2007-04-22', 67921.19);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (8, '2000-06-07', 'Silvan', 'Brozek', 'Male', '2018-05-01', 71852.28);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (9, '1932-08-12', 'Elnore', 'Exrol', 'Female', '2009-08-22', 49840.11);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (10, '1916-10-18', 'Tymon', 'Siehard', 'Male', '2017-01-29', 66645.41);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (11, '1963-05-30', 'Dick', 'Verbrugge', 'Male', '2009-03-13', 53939.5);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (12, '1913-02-03', 'Gabriel', 'Wolfers', 'Female', '2007-02-10', 77594.23);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (13, '1986-07-17', 'Chrissy', 'Tennick', 'Female', '2009-09-21', 36000.8);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (14, '1909-03-20', 'Kermit', 'Griffin', 'Male', '2010-12-05', 92279.08);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (15, '1990-08-22', 'Jamison', 'Dennett', 'Male', '2002-08-10', 29590.14);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (16, '1992-06-05', 'Cele', 'Heads', 'Female', '2004-03-10', 54224.69);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (17, '1969-08-02', 'Stafani', 'Garbutt', 'Female', '2016-11-12', 33431.31);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (18, '1989-04-17', 'Keelia', 'Sealey', 'Female', '2007-01-26', 33811.24);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (19, '1949-02-07', 'Reider', 'Crack', 'Male', '2017-12-06', 25299.21);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (20, '1935-02-22', 'Pace', 'MacKeague', 'Male', '2017-09-17', 78907.1);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (21, '1936-07-23', 'Marni', 'Southam', 'Female', '2005-11-22', 54234.35);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (22, '2000-07-02', 'Gayle', 'Sillis', 'Female', '2012-01-30', 48455.28);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (23, '1952-11-21', 'Petrina', 'MacCook', 'Female', '2005-06-15', 90538.89);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (24, '1977-12-15', 'Brien', 'Wharrier', 'Male', '2012-04-05', 96901.51);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (25, '1939-08-26', 'Hatti', 'Leadston', 'Female', '2016-09-29', 72199.7);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (26, '1999-09-20', 'Luise', 'Tighe', 'Female', '2010-09-29', 46508.64);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (27, '1940-12-07', 'Padriac', 'Brahm', 'Male', '2014-08-02', 88742.69);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (28, '1961-02-24', 'Paulette', 'Perfitt', 'Female', '2010-12-03', 95139.35);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (29, '1917-08-02', 'Manya', 'Stoodale', 'Female', '2012-10-17', 33252.12);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (30, '1910-05-19', 'Margret', 'Winslow', 'Female', '2013-04-18', 65832.37);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (31, '1944-07-08', 'Holt', 'Fridd', 'Male', '2006-01-25', 65875.84);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (32, '1936-11-23', 'Kristoffer', 'Dable', 'Male', '2008-09-12', 76156.3);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (33, '1922-08-03', 'Maren', 'Jenken', 'Female', '2008-06-27', 32867.5);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (34, '1937-09-17', 'Timmie', 'Bolle', 'Female', '2013-03-31', 96949.65);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (35, '1959-07-22', 'Misti', 'Teresi', 'Female', '2005-06-13', 89685.51);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (36, '1979-05-18', 'Dev', 'Brammar', 'Male', '2003-06-06', 81342.02);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (37, '1913-05-12', 'Shannon', 'Birkmyre', 'Female', '2018-04-10', 23314.3);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (38, '2000-12-13', 'Alaster', 'Mattioli', 'Male', '2005-01-16', 39170.33);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (39, '1998-12-19', 'Dacey', 'Eastop', 'Female', '2009-08-12', 33542.09);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (40, '1928-02-10', 'Caresa', 'Seale', 'Female', '2009-01-16', 81596.83);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (41, '1930-07-07', 'Wandie', 'Truder', 'Female', '2006-08-19', 68426.89);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (42, '1980-06-27', 'Branden', 'Hubberstey', 'Male', '2003-12-12', 68399.17);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (43, '1992-01-28', 'Ivy', 'Le Leu', 'Female', '2015-11-06', 59361.96);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (44, '1952-02-28', 'Byrann', 'Byforth', 'Male', '2004-06-13', 51269.0);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (45, '1900-10-04', 'Ardyce', 'Braunstein', 'Female', '2016-09-20', 75358.87);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (46, '1970-09-21', 'Lettie', 'Harold', 'Female', '2003-11-26', 68830.5);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (47, '1995-11-16', 'Andrea', 'Blowes', 'Female', '2002-08-10', 97954.2);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (48, '1905-04-25', 'Waldon', 'Fidelli', 'Male', '2015-10-28', 33851.44);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (49, '1953-12-07', 'Putnam', 'Geggie', 'Male', '2016-07-01', 36101.24);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (50, '1965-07-14', 'Auberta', 'Lafrentz', 'Female', '2011-09-15', 81540.68);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (51, '1926-04-18', 'Immanuel', 'Tyrone', 'Male', '2003-11-16', 98753.83);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (52, '1914-10-09', 'Aileen', 'Simo', 'Female', '2008-07-11', 42991.18);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (53, '1951-10-31', 'Irwinn', 'Broske', 'Male', '2008-04-10', 88558.17);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (54, '1903-12-20', 'Earle', 'Berkely', 'Male', '2017-10-18', 63294.0);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (55, '1960-02-20', 'Wileen', 'Clearley', 'Female', '2003-09-21', 22996.96);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (56, '1970-03-26', 'Peri', 'Heardman', 'Female', '2014-01-27', 22019.38);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (57, '1972-03-05', 'Ferdinande', 'Spalding', 'Female', '2005-04-13', 98810.99);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (58, '1999-01-24', 'Neddie', 'Smiley', 'Male', '2015-04-06', 81163.14);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (59, '1936-08-19', 'Allis', 'Balmann', 'Female', '2015-03-24', 86198.55);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (60, '1909-12-12', 'Belinda', 'Pettyfer', 'Female', '2005-12-10', 63874.82);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (61, '1967-09-21', 'Melva', 'Springer', 'Female', '2016-06-29', 87994.69);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (62, '1951-02-12', 'Jacquenetta', 'Clipsham', 'Female', '2011-11-09', 79183.29);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (63, '1912-10-22', 'Suzann', 'Arnholz', 'Female', '2010-03-31', 42711.82);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (64, '1911-11-25', 'Patrice', 'Wattingham', 'Male', '2014-03-15', 77605.65);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (65, '1950-11-27', 'Germayne', 'Knifton', 'Male', '2011-10-29', 89996.38);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (66, '1902-01-17', 'Caddric', 'Hyde-Chambers', 'Male', '2009-07-16', 68038.21);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (67, '1960-09-18', 'Chip', 'Cholmondeley', 'Male', '2015-10-27', 50556.62);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (68, '1957-02-13', 'Gherardo', 'Sealeaf', 'Male', '2012-07-22', 55374.9);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (69, '1948-10-21', 'Timothee', 'Gardener', 'Male', '2006-10-16', 91095.02);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (70, '1987-09-03', 'Doreen', 'Tofts', 'Female', '2017-06-25', 98295.45);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (71, '1914-04-05', 'Archibold', 'O''Carney', 'Male', '2014-11-05', 49312.33);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (72, '1934-07-24', 'Barbra', 'Vanne', 'Female', '2006-12-07', 36722.48);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (73, '1930-07-08', 'Melony', 'Bradford', 'Female', '2013-06-03', 21917.14);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (74, '1940-06-03', 'Eadith', 'Weymont', 'Female', '2003-11-22', 31933.23);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (75, '1906-04-29', 'Merrie', 'Urch', 'Female', '2007-12-09', 37512.89);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (76, '1979-09-07', 'Jameson', 'Perillio', 'Male', '2016-07-28', 92386.24);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (77, '1923-03-02', 'John', 'Rawlins', 'Male', '2015-01-13', 96303.31);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (78, '1941-02-07', 'Fleming', 'Van Der Weedenburg', 'Male', '2004-11-03', 62299.81);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (79, '1972-04-04', 'Aube', 'Mableson', 'Male', '2015-05-02', 68001.72);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (80, '1937-06-07', 'Delmer', 'Rudledge', 'Male', '2018-07-11', 67506.39);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (81, '1993-09-23', 'Morgan', 'Peto', 'Female', '2011-03-27', 43042.23);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (82, '1992-10-30', 'Burty', 'Quarlis', 'Male', '2013-08-01', 96620.79);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (83, '1941-04-19', 'Hulda', 'Chidzoy', 'Female', '2008-03-06', 94459.95);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (84, '1915-04-23', 'Cirilo', 'Peppard', 'Male', '2010-12-13', 20520.39);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (85, '1951-01-12', 'Ingamar', 'Collcutt', 'Male', '2009-12-17', 50475.43);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (86, '1988-02-11', 'Carny', 'Birchall', 'Male', '2014-11-04', 98224.75);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (87, '1999-01-12', 'Doyle', 'McAvey', 'Male', '2015-10-17', 77419.77);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (88, '1987-01-13', 'Jacklin', 'Wink', 'Female', '2012-11-28', 79262.78);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (89, '1910-06-16', 'Carola', 'Kienle', 'Female', '2008-02-04', 52871.61);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (90, '1947-07-24', 'Giorgio', 'Derrington', 'Male', '2009-04-01', 79785.94);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (91, '1982-02-24', 'Orbadiah', 'Yendall', 'Male', '2018-02-11', 64286.03);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (92, '1933-10-14', 'Conn', 'Caughte', 'Male', '2003-07-25', 59940.71);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (93, '1941-09-08', 'Delila', 'Childes', 'Female', '2009-08-02', 34792.03);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (94, '1980-08-31', 'Bastien', 'Swayland', 'Male', '2007-02-24', 30263.99);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (95, '1970-10-03', 'Vanya', 'Shenley', 'Female', '2004-09-12', 49607.63);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (96, '1998-08-19', 'Sherwood', 'Tackley', 'Male', '2011-12-06', 26634.33);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (97, '1966-08-12', 'Correy', 'Farney', 'Male', '2011-08-31', 95938.17);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (98, '1948-11-10', 'Camila', 'Snoden', 'Female', '2017-07-03', 33970.89);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (99, '1904-05-26', 'Harriette', 'Bowshire', 'Female', '2018-02-16', 36244.84);
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date, salary) values (100, '1907-09-02', 'Monty', 'Filppetti', 'Male', '2013-04-17', 25038.17);
--
-- Dumping data for table `patienthx`
--
 CREATE TABLE `users`(
   `user_id`            	varchar(225) NOT NULL, 
   `user_password`		   	varchar(225) NOT NULL, 								
   `first_name` 	    	varchar(225) NOT NULL,
   `middle_name`	    	varchar(225) NOT NULL, 
   `last_name`		    	varchar(225) NOT NULL,
   `user_email`				varchar(225) NOT NULL,
   `created`				TIMESTAMP DEFAULT NOW(),
   PRIMARY KEY (`user_id`)
);

INSERT INTO `users`
(`user_id`,
`user_password`,
`first_name`,
`middle_name`,
`last_name`,
`user_email`)
VALUES
('Mcsammer',
'tset',
'Sam',
'Hutson',
'Hay',
'samhay2u@gmail.com');

COMMIT;