-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2023 at 05:47 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rdbms_assign`
--

-- --------------------------------------------------------

--
-- Table structure for table `dept_table`
--

CREATE TABLE `dept_table` (
  `DEPTNO` int(2) NOT NULL,
  `DNAME` varchar(14) DEFAULT NULL,
  `LOC` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept_table`
--

INSERT INTO `dept_table` (`DEPTNO`, `DNAME`, `LOC`) VALUES
(10, 'ACCOUNTING', 'NEW TORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATION', 'BOSTON');

-- --------------------------------------------------------

--
-- Table structure for table `emp_log_table`
--

CREATE TABLE `emp_log_table` (
  `EMP_ID` int(5) NOT NULL,
  `LOG_DATE` date DEFAULT NULL,
  `NEW_SALARY` int(10) NOT NULL,
  `ACTION` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `RNO` int(2) NOT NULL,
  `SNAME` varchar(14) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `Empno` int(4) NOT NULL,
  `Ename` varchar(10) NOT NULL,
  `Job` varchar(9) NOT NULL,
  `Mgr` int(4) NOT NULL,
  `Hiredate` date NOT NULL,
  `Sal` decimal(7,2) NOT NULL,
  `Comm` decimal(7,2) NOT NULL,
  `DEPTNO` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table1`
--

INSERT INTO `table1` (`Empno`, `Ename`, `Job`, `Mgr`, `Hiredate`, `Sal`, `Comm`, `DEPTNO`) VALUES
(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', '800.00', '0.00', 20),
(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', '1600.00', '300.00', 30),
(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', '1250.00', '500.00', 30),
(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', '2975.00', '0.00', 20),
(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', '1250.00', '1400.00', 30),
(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', '2850.00', '0.00', 30),
(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', '2450.00', '0.00', 10),
(7788, 'SCOTT', 'ANALYST', 7566, '1987-06-11', '3000.00', '0.00', 20),
(7839, 'KING', 'PRESIDENT', 0, '1981-11-17', '5000.00', '0.00', 10),
(7844, 'TURNER', 'SALESMAN', 7698, '1981-08-09', '1500.00', '0.00', 30),
(7876, 'ADAMS', 'CLERK', 7788, '1987-07-13', '1100.00', '0.00', 20),
(7900, 'JAMES', 'CLERK', 7698, '1981-03-12', '950.00', '0.00', 30),
(7902, 'FORD', 'ANALYST', 7566, '1981-03-12', '3000.00', '0.00', 10),
(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', '1300.00', '0.00', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dept_table`
--
ALTER TABLE `dept_table`
  ADD PRIMARY KEY (`DEPTNO`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`RNO`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`Empno`),
  ADD KEY `DEPTNO` (`DEPTNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dept_table`
--
ALTER TABLE `dept_table`
  MODIFY `DEPTNO` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `student_table`
--
ALTER TABLE `student_table`
  MODIFY `RNO` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
