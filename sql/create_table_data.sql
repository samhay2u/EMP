--
use EMPLOYEES;
drop table if exists `employees`;
drop table if exists `users`;
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
  CHECK(salary > 12000 and salary < 120000 ) 
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
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (202, 'Syseland', 'Catharina', '1977-09-28', 'F', '1972-06-17', '40064.11');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (203, 'Habble', 'Cindelyn', '1976-04-23', 'F', '1988-05-19', '38761.32');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (204, 'Angrick', 'Wallache', '1963-04-05', 'M', '2020-05-24', '62048.95');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (205, 'Caze', 'Lindsey', '1971-05-07', 'M', '1976-03-20', '73670.10');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (206, 'Neillans', 'Devin', '1981-08-14', 'F', '1993-03-29', '45070.07');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (207, 'Leile', 'Kira', '1976-08-03', 'F', '1976-03-21', '40076.11');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (208, 'Tumasian', 'Obie', '1970-06-26', 'M', '2015-06-02', '105489.38');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (209, 'Reames', 'Essy', '1981-01-05', 'F', '1982-05-12', '94675.66');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (210, 'Hallgarth', 'Alano', '1959-02-04', 'M', '1981-06-17', '37813.83');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (211, 'Mulholland', 'Garold', '1972-02-27', 'M', '2007-08-28', '74596.63');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (212, 'Dumberell', 'Yvon', '1968-07-08', 'M', '1980-09-27', '38559.07');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (213, 'Rajchert', 'Devon', '1989-09-08', 'F', '1972-10-16', '90608.03');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (214, 'Blackborow', 'Hestia', '1966-11-01', 'F', '1984-07-05', '27714.19');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (215, 'Tillett', 'Christan', '1984-10-10', 'F', '1975-03-07', '45773.30');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (216, 'MacCarroll', 'Cathee', '1985-07-15', 'F', '1991-11-18', '14336.06');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (217, 'Bruty', 'Andriette', '1962-02-22', 'F', '2017-12-30', '22930.98');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (218, 'Comberbach', 'Lev', '1988-05-08', 'M', '2007-05-12', '13230.10');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (219, 'Firbank', 'Darb', '1985-11-23', 'F', '1998-09-29', '119583.64');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (220, 'O''Cooney', 'Yank', '1960-11-29', 'M', '2017-06-21', '86960.24');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (221, 'Branscomb', 'Brocky', '1963-01-14', 'M', '1999-03-16', '76029.76');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (222, 'Constable', 'Adella', '1970-10-27', 'F', '2013-09-21', '95082.10');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (223, 'Dautry', 'Davis', '1976-03-11', 'M', '2001-07-03', '91640.21');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (224, 'Scollan', 'Hadrian', '1977-11-29', 'M', '2017-04-21', '59033.17');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (225, 'Coghlin', 'Damaris', '1976-07-02', 'F', '1978-07-26', '71098.59');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (226, 'Guyton', 'Fraze', '1969-07-01', 'M', '1977-02-08', '40719.68');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (227, 'Bonnett', 'Mozelle', '1988-06-30', 'F', '2002-06-25', '63559.68');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (228, 'Yashunin', 'Ermin', '1973-09-29', 'M', '2018-03-18', '86580.66');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (229, 'Ketton', 'Brandice', '1981-09-15', 'F', '2015-09-24', '44362.58');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (230, 'Dyball', 'Emera', '1987-12-27', 'F', '1976-01-02', '90920.32');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (231, 'Bradmore', 'Harrison', '1960-10-30', 'M', '1991-11-28', '58366.15');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (232, 'McGiffie', 'Leontyne', '1974-03-03', 'F', '2001-09-22', '55075.01');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (233, 'Heugel', 'Ruthie', '1975-10-20', 'F', '1992-07-14', '95292.28');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (234, 'Message', 'Sabina', '1958-10-25', 'F', '1979-09-26', '28440.59');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (235, 'Sabates', 'Ashbey', '1988-12-02', 'M', '2003-02-21', '89654.93');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (236, 'Clitsome', 'Fidelio', '1971-03-25', 'M', '1980-04-14', '111917.50');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (237, 'Mozzini', 'Mendy', '1979-01-12', 'M', '1982-10-01', '54237.37');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (238, 'Coot', 'Rudy', '1979-04-16', 'M', '2013-05-11', '63983.17');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (239, 'Keaveny', 'Edgardo', '1976-11-05', 'M', '2010-08-18', '99751.00');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (240, 'Hay', 'Welbie', '1987-03-23', 'M', '1967-08-04', '110489.86');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (241, 'Ivatt', 'Cosimo', '1974-03-13', 'M', '2011-01-21', '118459.09');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (242, 'Peggram', 'Willa', '1975-05-21', 'F', '1988-03-08', '117604.50');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (243, 'Roussell', 'Adelaida', '1971-12-22', 'F', '2013-09-10', '29322.22');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (244, 'Brodeur', 'Jacquetta', '1980-08-05', 'F', '1986-06-19', '53558.12');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (245, 'D''orsay', 'Robbie', '1958-03-19', 'F', '2009-06-18', '41088.55');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (246, 'Adney', 'Avram', '1963-03-14', 'M', '2001-09-21', '50988.22');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (247, 'Dagnall', 'Tedd', '1960-09-04', 'M', '1994-10-12', '52088.42');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (248, 'Dickinson', 'Cleveland', '1962-02-05', 'M', '1992-02-11', '75868.81');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (249, 'Stallworth', 'Orson', '1976-07-30', 'M', '2006-02-16', '44471.85');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (250, 'Tigner', 'Linn', '1973-05-17', 'M', '1994-08-24', '97363.26');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (251, 'Braine', 'Michal', '1974-07-09', 'M', '2003-07-03', '110698.46');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (252, 'Darrigoe', 'Shelia', '1979-08-14', 'F', '2017-12-21', '52732.40');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (253, 'Adiscot', 'Sibbie', '1959-08-02', 'F', '1988-05-23', '87484.15');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (254, 'Saile', 'Mirabella', '1988-12-10', 'F', '1999-03-17', '95639.56');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (255, 'Calam', 'Gayler', '1988-12-06', 'M', '2019-08-17', '60586.84');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (256, 'Arnopp', 'Ab', '1962-06-08', 'M', '1973-08-13', '99040.32');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (257, 'Veschi', 'Aundrea', '1967-10-13', 'F', '1982-07-24', '118831.56');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (258, 'Storek', 'Lois', '1983-02-14', 'F', '1973-06-03', '34258.24');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (259, 'Labes', 'Adan', '1960-11-20', 'M', '1983-11-14', '59975.08');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (260, 'Drivers', 'Tabatha', '1968-07-20', 'F', '1972-03-29', '76685.34');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (261, 'Shoppee', 'Tadeas', '1958-06-12', 'M', '1969-11-24', '15813.97');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (262, 'Ruslin', 'Boycey', '1958-05-06', 'M', '1977-06-23', '104906.05');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (263, 'Mewett', 'Cassaundra', '1978-10-27', 'F', '1970-07-12', '65013.76');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (264, 'Chittie', 'Urbanus', '1985-06-18', 'M', '1993-03-25', '83944.45');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (265, 'Rodman', 'Constantine', '1983-09-30', 'M', '2017-01-30', '112270.63');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (266, 'Tidbury', 'Emmanuel', '1984-07-16', 'M', '1989-01-17', '94036.74');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (267, 'Pippard', 'Min', '1974-03-13', 'F', '1988-11-23', '117188.52');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (268, 'Crich', 'Alyssa', '1978-09-27', 'F', '1991-11-04', '103184.15');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (269, 'Valentinuzzi', 'Calley', '1981-11-27', 'F', '2008-04-07', '47347.46');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (270, 'Haugg', 'Rose', '1973-05-17', 'F', '1979-10-31', '44588.63');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (271, 'McAndie', 'Edd', '1977-05-01', 'M', '2011-05-01', '112529.51');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (272, 'Mutter', 'Elliot', '1975-10-10', 'M', '1999-03-09', '30128.79');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (273, 'Lurcock', 'Dario', '1984-03-10', 'M', '1968-05-30', '118926.59');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (274, 'Cisar', 'Inna', '1965-07-30', 'F', '2016-05-24', '80372.99');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (275, 'Remington', 'Sidoney', '1972-10-18', 'F', '1996-09-25', '66432.16');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (276, 'Rothman', 'Rutherford', '1988-08-11', 'M', '2003-09-17', '63472.73');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (277, 'Bertl', 'Israel', '1968-01-24', 'M', '1968-04-30', '48209.07');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (278, 'Cowie', 'Binny', '1973-12-30', 'F', '1993-05-10', '27766.66');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (279, 'Hayman', 'Glendon', '1960-05-10', 'M', '1981-11-20', '33075.42');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (280, 'Srawley', 'Debra', '1975-04-01', 'F', '2012-12-05', '104357.17');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (281, 'Grewer', 'Carolus', '1988-11-22', 'M', '2019-02-21', '31679.08');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (282, 'Valentin', 'Yelena', '1980-03-09', 'F', '1969-08-01', '15884.26');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (283, 'McColley', 'Keary', '1963-08-25', 'M', '2001-09-30', '72907.74');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (284, 'Males', 'Thaddeus', '1979-03-12', 'M', '1997-09-24', '81556.38');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (285, 'Brute', 'Nathanil', '1962-06-04', 'M', '1988-01-11', '118000.85');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (286, 'Jesty', 'Hilarius', '1984-08-18', 'M', '2017-10-16', '116009.94');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (287, 'Cecely', 'Lezley', '1982-04-09', 'M', '2002-10-24', '69916.46');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (288, 'Karpf', 'Steffie', '1968-06-25', 'F', '1969-02-12', '15479.89');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (289, 'Evitt', 'Beryl', '1971-01-14', 'F', '1968-11-29', '103382.13');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (290, 'Bridgwater', 'Berk', '1979-02-02', 'M', '2010-10-28', '12092.09');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (291, 'Blazic', 'Lewes', '1978-02-19', 'M', '2004-02-21', '53714.17');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (292, 'Fochs', 'Warner', '1986-01-16', 'M', '2000-01-14', '21057.23');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (293, 'Chung', 'Erica', '1984-10-20', 'F', '1968-01-13', '14344.76');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (294, 'Brion', 'Maudie', '1973-06-09', 'F', '2000-07-21', '94497.50');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (295, 'Chilcott', 'Lebbie', '1965-06-18', 'F', '1979-03-12', '25958.96');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (296, 'Kob', 'Christie', '1971-08-12', 'M', '2010-02-22', '72934.65');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (297, 'Waud', 'Cleon', '1985-12-16', 'M', '2012-11-30', '83429.42');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (298, 'Denziloe', 'Shanda', '1964-06-05', 'F', '1999-09-24', '115353.78');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (299, 'Stuke', 'Wilfred', '1979-11-02', 'M', '1990-11-14', '50590.69');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (300, 'Rock', 'Townie', '1981-02-08', 'M', '2018-01-15', '90394.17');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (301, 'Bannerman', 'Elladine', '1980-11-27', 'F', '2018-08-23', '59307.08');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (302, 'Jurzyk', 'Aundrea', '1965-03-23', 'F', '1986-10-10', '58134.14');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (303, 'Klich', 'Reg', '1975-01-04', 'M', '1977-04-06', '15305.86');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (304, 'Rantoul', 'Kary', '1977-11-13', 'F', '2008-12-18', '80818.71');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (305, 'Lamar', 'Berta', '1975-03-22', 'F', '1978-09-03', '94893.22');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (306, 'Mickelwright', 'Lewes', '1958-02-06', 'M', '2014-02-05', '18493.49');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (307, 'Oldland', 'Hallie', '1982-10-14', 'F', '1984-01-27', '90003.33');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (308, 'Kettle', 'Read', '1970-11-19', 'M', '2020-03-22', '56004.39');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (309, 'Basini-Gazzi', 'Stephen', '1981-04-09', 'M', '1998-01-25', '14773.27');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (310, 'Hugenin', 'Quincy', '1983-11-20', 'M', '1975-05-02', '117105.80');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (311, 'McKleod', 'Lind', '1984-12-13', 'M', '1981-03-25', '68784.42');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (312, 'Adamovich', 'Tatiana', '1985-08-20', 'F', '2013-09-12', '16386.54');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (313, 'Cakebread', 'Eugine', '1964-01-31', 'F', '1978-01-13', '84364.62');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (314, 'Darracott', 'Hendrika', '1967-06-10', 'F', '1970-04-03', '12520.40');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (315, 'Gisburn', 'Berenice', '1972-11-21', 'F', '2015-11-25', '49483.74');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (316, 'Rivel', 'Dominica', '1963-08-01', 'F', '1980-06-20', '21003.11');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (317, 'Bohman', 'Fin', '1973-09-04', 'M', '1998-05-23', '92938.87');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (318, 'Warbrick', 'Morgan', '1985-05-20', 'M', '1999-06-20', '102483.66');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (319, 'Birtwistle', 'Frances', '1985-10-23', 'F', '1976-06-02', '39599.85');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (320, 'Braybrooks', 'Maire', '1978-07-31', 'F', '1977-09-27', '103979.16');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (321, 'Stede', 'Thekla', '1979-01-05', 'F', '2004-08-07', '49352.58');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (322, 'Mackerel', 'Codi', '1962-12-21', 'M', '1986-04-11', '50568.82');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (323, 'Lathwell', 'Lydon', '1989-12-14', 'M', '1983-11-16', '71755.43');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (324, 'Tabner', 'Renate', '1983-05-20', 'F', '2013-06-07', '78420.85');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (325, 'Wieprecht', 'Giacinta', '1986-03-10', 'F', '1979-10-20', '61001.58');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (326, 'Haversum', 'Saxe', '1961-01-14', 'M', '1989-12-12', '93044.33');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (327, 'Doog', 'Michail', '1976-02-15', 'M', '1991-05-08', '85530.60');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (328, 'Beel', 'Shelton', '1984-03-11', 'M', '1987-12-14', '61215.19');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (329, 'Parades', 'Sullivan', '1979-03-05', 'M', '1982-06-21', '65286.72');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (330, 'Rickard', 'Angelina', '1990-05-28', 'F', '1983-09-25', '24179.67');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (331, 'Flory', 'Jena', '1983-10-21', 'F', '1971-08-15', '100614.16');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (332, 'Nutting', 'Shae', '1980-12-17', 'M', '1981-01-10', '80729.07');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (333, 'Dowell', 'Rhody', '1987-11-07', 'F', '1967-09-14', '19041.87');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (334, 'Hasell', 'Gawen', '1979-12-20', 'M', '2018-05-09', '56687.38');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (335, 'Venny', 'Tonye', '1958-02-20', 'F', '2007-09-12', '14517.78');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (336, 'Vasovic', 'Paddy', '1958-07-25', 'M', '2002-10-11', '17433.48');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (337, 'Cristea', 'Webb', '1982-08-09', 'M', '1975-07-29', '56794.74');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (338, 'Blindt', 'Margaret', '1975-08-29', 'F', '1982-06-02', '34712.54');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (339, 'Hourigan', 'Clayborn', '1972-12-12', 'M', '2014-07-05', '54194.85');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (340, 'McColm', 'Aluin', '1983-01-26', 'M', '1979-08-30', '17224.46');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (341, 'Traill', 'Merry', '1957-11-23', 'F', '1995-01-02', '14463.48');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (342, 'Denyer', 'Claiborn', '1964-10-12', 'M', '1986-02-21', '41600.12');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (343, 'Pinchin', 'Selena', '1963-01-08', 'F', '2011-10-06', '14645.83');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (344, 'Bangiard', 'Patrizia', '1988-06-27', 'F', '2015-05-19', '107742.98');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (345, 'Blinerman', 'Gal', '1977-12-28', 'M', '1968-12-07', '40796.40');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (346, 'Ornelas', 'Shirley', '1970-06-25', 'F', '2017-07-28', '27066.40');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (347, 'Berendsen', 'Dall', '1990-07-23', 'M', '1979-06-09', '18174.61');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (348, 'Pulteneye', 'Pierre', '1968-06-08', 'M', '2009-03-26', '88817.53');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (349, 'Aspinall', 'Nikolai', '1966-01-06', 'M', '1974-04-19', '64471.92');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (350, 'Rosenfelder', 'Cleveland', '1968-01-26', 'M', '2013-04-12', '77286.21');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (351, 'Hove', 'Megan', '1981-05-20', 'F', '1992-01-22', '89770.48');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (352, 'Plume', 'Fanny', '1989-06-28', 'F', '1982-06-06', '45043.46');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (353, 'Gillions', 'Adelina', '1963-06-20', 'F', '1970-06-24', '54275.02');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (354, 'Murison', 'Vin', '1962-06-16', 'M', '1981-09-27', '42463.35');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (355, 'Witherbed', 'Arni', '1987-04-07', 'M', '1994-04-10', '76326.01');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (356, 'Ferrelli', 'Stuart', '1965-04-13', 'M', '1994-12-02', '72646.39');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (357, 'Haselup', 'Sean', '1970-05-23', 'M', '1968-12-05', '71832.03');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (358, 'Staggs', 'Bertie', '1974-04-03', 'F', '1971-06-02', '18019.70');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (359, 'Summerside', 'Petr', '1989-12-11', 'M', '1977-02-03', '31582.84');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (360, 'Balducci', 'Jennifer', '1978-01-25', 'F', '2017-12-15', '72566.45');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (361, 'Swinn', 'Merridie', '1977-12-02', 'F', '1993-11-14', '44333.31');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (362, 'Elton', 'Marlow', '1981-04-14', 'M', '1984-10-08', '15031.49');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (363, 'Sloan', 'Lemuel', '1959-10-28', 'M', '2016-01-07', '29475.60');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (364, 'Perrigo', 'Nita', '1985-08-04', 'F', '1992-07-28', '67724.08');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (365, 'Setford', 'Cobb', '1977-03-07', 'M', '1980-03-23', '20586.86');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (366, 'Jarvis', 'Ede', '1964-08-20', 'F', '1984-08-19', '12727.85');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (367, 'Randle', 'Dacie', '1981-09-03', 'F', '2004-02-23', '95135.91');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (368, 'Lammie', 'Gabie', '1987-03-27', 'F', '1998-06-02', '51051.77');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (369, 'Mongain', 'Miguelita', '1988-03-29', 'F', '2009-02-12', '21354.37');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (370, 'Creegan', 'Lucilia', '1966-11-08', 'F', '2019-10-01', '26670.58');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (371, 'Messham', 'Brigham', '1962-10-28', 'M', '2013-02-15', '118200.62');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (372, 'McGraith', 'Zedekiah', '1980-03-20', 'M', '2017-04-14', '111983.13');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (373, 'Duchatel', 'Emmye', '1972-08-09', 'F', '1992-10-15', '74162.97');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (374, 'Lorente', 'Sterne', '1978-02-28', 'M', '1980-02-01', '111095.14');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (375, 'Le Provest', 'Zed', '1985-06-06', 'M', '2001-12-21', '97680.21');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (376, 'Chattey', 'Anne-corinne', '1970-01-27', 'F', '1982-06-28', '46395.72');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (377, 'Antonov', 'Nara', '1988-05-20', 'F', '1994-02-06', '18922.25');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (378, 'Lindley', 'Kayne', '1967-06-10', 'M', '1976-07-05', '93405.96');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (379, 'Musterd', 'Jacqui', '1982-01-13', 'F', '1967-11-26', '91086.57');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (380, 'Vickars', 'Ame', '1965-03-20', 'F', '1989-05-23', '64490.95');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (381, 'Fieldstone', 'Winni', '1970-07-13', 'F', '1990-09-30', '104359.83');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (382, 'Duchesne', 'Phyllys', '1964-07-02', 'F', '1986-08-07', '63403.49');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (383, 'Frossell', 'Sherwynd', '1967-10-20', 'M', '2018-11-15', '78686.39');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (384, 'MacDonald', 'Irvin', '1987-10-12', 'M', '2004-12-13', '22996.35');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (385, 'Berston', 'Martynne', '1957-10-01', 'F', '1982-05-01', '14345.64');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (386, 'Lampke', 'Flore', '1961-05-27', 'F', '2007-11-14', '22787.16');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (387, 'Nusche', 'Adelaida', '1960-08-31', 'F', '1998-06-30', '22931.07');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (388, 'Manthorpe', 'Ernesta', '1988-10-13', 'F', '2009-06-11', '18066.00');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (389, 'Lempenny', 'Paige', '1988-04-11', 'F', '1987-08-08', '108128.18');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (390, 'Tomsa', 'Benito', '1970-12-15', 'M', '2016-08-17', '90360.37');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (391, 'Neles', 'Jennifer', '1972-09-06', 'F', '1995-05-13', '31110.45');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (392, 'Sarfati', 'Glynnis', '1963-03-02', 'F', '2012-05-22', '29246.20');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (393, 'Daysh', 'Ki', '1964-10-27', 'F', '2009-11-12', '13525.18');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (394, 'Aitkin', 'Cameron', '1979-01-04', 'M', '2017-06-22', '20708.11');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (395, 'Gerritzen', 'Farrell', '1960-07-25', 'M', '1978-07-11', '16834.43');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (396, 'Ebbrell', 'Gene', '1980-12-11', 'M', '1969-02-27', '31396.35');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (397, 'Danniel', 'Xylia', '1984-09-26', 'F', '2015-05-09', '81163.25');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (398, 'McCarly', 'Huntington', '1987-07-16', 'M', '1994-04-22', '100380.17');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (399, 'Nealand', 'Chickie', '1990-03-25', 'F', '2017-03-21', '72044.21');
insert into employees (emp_no, last_name, first_name, birth_date, gender, hire_date, salary) values (400, 'Leavold', 'Beulah', '1989-07-12', 'F', '2014-01-21', '53631.80');
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