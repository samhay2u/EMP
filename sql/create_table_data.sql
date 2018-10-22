--
-- Database: `pis`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `employees` (
  `emp_no` varchar(10) NOT NULL PRIMARY KEY,
  `birth_date` DATE NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  `gender` char(1) DEFAULT 'U' NOT NULL,
  `hire_date` DATETIME DEFAULT NOW() NOT NULL  
);

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