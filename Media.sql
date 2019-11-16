-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 16, 2019 at 12:45 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cr10_sarah_ley_biglibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `Media`
--

CREATE TABLE `Media` (
  `ID` int(6) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `type` enum('book','CD','DVD') DEFAULT NULL,
  `ISBN_code` int(11) DEFAULT NULL,
  `short_description` varchar(100) DEFAULT NULL,
  `author_firstname` varchar(55) DEFAULT NULL,
  `author_lastname` varchar(55) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `publisher_name` varchar(55) DEFAULT NULL,
  `publisher_address` varchar(55) DEFAULT NULL,
  `publisher_size` enum('small','`medium`','large') DEFAULT NULL,
  `status` enum('available','reserved') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Media`
--

INSERT INTO `Media` (`ID`, `title`, `type`, `ISBN_code`, `short_description`, `author_firstname`, `author_lastname`, `publish_date`, `publisher_name`, `publisher_address`, `publisher_size`, `status`) VALUES
(1, 'City of Girls', 'book', 1234567891, 'A girl moves to NYC to find herself.', 'Elizabeth', 'Gilbert', '2019-06-06', 'Riverhead Books', 'New York, New York', 'large', 'reserved'),
(2, 'The Silent Patient', 'book', 239842345, 'A story of a women\'s act of violence against her husband.', 'Alex', 'Michaelides', '2019-02-05', 'Macmillian USA', 'New York, New York', 'large', 'reserved'),
(3, 'Once More We Saw Stars', 'book', 239847098, 'A father learns of his daughter\'s freak accident', 'Jayson', 'Greene', '2019-05-14', 'Knopf', 'Los Angeles, California', '`medium`', 'available'),
(4, 'Mrs. Everything', 'book', 8374599, 'A story of two sisters in the #Metoo era.', 'Jennifer', 'Weiner', '2019-06-11', 'Atria Book', 'Portland, Oregon', 'small', 'reserved'),
(5, 'Staying at Tamara\'s', 'CD', NULL, 'Singer-Songwriter', 'George', 'Ezra', '2019-03-23', 'Columbia Records', 'New York , New York', 'large', 'available'),
(6, 'When We All Fall Asleep Where Do We Go?', 'CD', NULL, 'Alternative-Indie', 'Billie', 'Eillish', '2019-03-29', 'Interscope Records', 'Santa Monica, California', 'large', 'available'),
(8, 'Toy Story 4', 'DVD', NULL, 'Woody, Buzz Lightyear and the rest of the gang embark on a road trip.', 'Josh ', 'Cooley', '2019-06-11', 'Walt Disney Pictures', 'Burbank, California', 'large', 'reserved'),
(9, 'Bohiemian Rhapsody', 'DVD', NULL, 'Freddie Mercury -- the lead singer of Queen -- defies stereotypes', 'Brian', 'Singer', '2018-10-24', '20th Century Fox', 'Los Angeles, California', 'large', 'available'),
(10, 'Divide', 'CD', NULL, 'Pop', 'Ed', 'Sheeran', '2017-03-03', 'Atlantic Records', 'London, UK', 'large', 'available'),
(11, 'Captain Marvel', 'DVD', NULL, 'Captain Marvel herself caught in an intergalactic battle.', 'Anna', 'Boden', '2019-02-27', 'Marvel Studios', 'Burbank, California', 'large', 'available'),
(12, 'The Girls', 'book', 23948, '1970\'s California, a teenage girl runs away.', 'Emma', 'Kleine', '2018-04-03', 'River Run', 'New York, New York', 'large', 'available'),
(13, 'Titantic', 'DVD', 2340982, 'The story of love and survival across the Atlantic', 'James', 'Cameron', '1998-01-09', 'Paramount Pictures', 'Hollywood', 'large', 'available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Media`
--
ALTER TABLE `Media`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Media`
--
ALTER TABLE `Media`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
