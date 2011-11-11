-- phpMyAdmin SQL Dump
-- version 2.11.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2011 at 02:05 AM
-- Server version: 5.0.67
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `ashraf2movies`
--

CREATE TABLE IF NOT EXISTS `ashraf2movies` (
  `useridmovieadded` smallint(11) NOT NULL auto_increment,
  `movieid` smallint(11) NOT NULL,
  `favstatus` tinyint(1) NOT NULL,
  `dateadded` date NOT NULL,
  `loanstatus` varchar(200) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`useridmovieadded`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `ashraf2movies`
--


-- --------------------------------------------------------

--
-- Table structure for table `ashrafmovies`
--

CREATE TABLE IF NOT EXISTS `ashrafmovies` (
  `useridmovieadded` smallint(11) NOT NULL auto_increment,
  `movieid` smallint(11) NOT NULL,
  `favstatus` tinyint(1) NOT NULL,
  `dateadded` date NOT NULL,
  `loanstatus` varchar(200) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`useridmovieadded`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `ashrafmovies`
--

INSERT INTO `ashrafmovies` (`useridmovieadded`, `movieid`, `favstatus`, `dateadded`, `loanstatus`) VALUES
(1, 13051, 0, '2011-10-21', 'In Collection'),
(2, 10757, 0, '2011-10-21', 'In Collection');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE IF NOT EXISTS `guests` (
  `guestid` int(11) NOT NULL auto_increment,
  `usersguest` varchar(20) collate latin1_general_ci default NULL,
  `email` varchar(100) character set latin1 NOT NULL,
  `activatehash` varchar(200) character set latin1 NOT NULL,
  PRIMARY KEY  (`guestid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `guests`
--


-- --------------------------------------------------------

--
-- Table structure for table `movf`
--

CREATE TABLE IF NOT EXISTS `movf` (
  `movieid` int(11) NOT NULL,
  `moviename` varchar(120) character set latin1 NOT NULL,
  `releasedate` date default NULL,
  `plot` longtext character set latin1,
  `trailer` varchar(200) character set latin1 default NULL,
  `rating` decimal(2,1) default NULL,
  `genre` varchar(100) character set latin1 default NULL,
  `imdb_id` varchar(12) character set latin1 default NULL,
  `studio` varchar(75) character set latin1 default NULL,
  `poster` varchar(200) collate latin1_general_ci NOT NULL default '/images/images/NoPhotoAvailable,jpg',
  `background` varchar(200) collate latin1_general_ci NOT NULL default 'http://images.themoviedb.org/backdrops/69965/avatar-2.jpg',
  PRIMARY KEY  (`movieid`),
  FULLTEXT KEY `moviename` (`moviename`,`plot`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `movf`
--

INSERT INTO `movf` (`movieid`, `moviename`, `releasedate`, `plot`, `trailer`, `rating`, `genre`, `imdb_id`, `studio`, `poster`, `background`) VALUES
(13051, 'Max Payne', '2008-10-16', 'Coming together to solve a series of murders in New York City are a DEA agent whose family was slain as part of a conspiracy and an assassin out to avenge her sister''s death. The duo will be hunted by the police, the mob, and a ruthless corporation.', 'http://www.youtube.com/watch?v=Q2jAEoBz6RY', 7.4, 'Action', 'tt0467197', '20th Century Fox', 'http://cf1.imgobject.com/posters/37a/4e9396d27b9aa153e100037a/max-payne-cover.jpg', 'http://cf1.imgobject.com/backdrops/85c/4bc93ac9017a3c57fe01885c/max-payne-original.jpg'),
(10757, 'Kabhi Khushi Kabhie Gham...', '2001-12-14', 'Orthodox Indian, Raichand, would like his two sons to live together with him and his wife, and get married to girls'' of his choice. One of his sons, Rahul, is adopted, while Rohan is his real son. Rahul falls in love with a poor Indian girl named Anjali, and incurs the displeasure of Raichand, they argue and fight, as a result Rahul leaves the house, moves to Britain, and settles down. Raichand now focuses his attention on his real son, Rohan, who has no plans to get married, but is determined to bring Rahul and Anjali back home so that they can be together again. Will Raichand permit Rohan to have his way, or will he also ask him to leave the house?', '', 6.6, 'Comedy', 'tt0248126', 'Yash Raj Films', 'http://cf1.imgobject.com/posters/58b/4dcaea495e73d630a800258b/kabhi-khushi-kabhie-gham-cover.jpg', 'http://cf1.imgobject.com/backdrops/376/4db4345f7b9aa11f24002376/kabhi-khushi-kabhie-gham-original.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `moviecrew`
--

CREATE TABLE IF NOT EXISTS `moviecrew` (
  `personid` int(11) NOT NULL,
  `name` varchar(100) character set latin1 default NULL,
  `moviename` varchar(120) character set latin1 default NULL,
  `movieid` int(11) default NULL,
  `job` varchar(120) character set latin1 default NULL,
  `thumbimg` varchar(200) character set latin1 default NULL,
  `actorrole` varchar(150) character set latin1 default NULL,
  KEY `movieid` (`movieid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `moviecrew`
--

INSERT INTO `moviecrew` (`personid`, `name`, `moviename`, `movieid`, `job`, `thumbimg`, `actorrole`) VALUES
(13240, 'Mark Wahlberg', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/2ba/4bd2daeb017a3c63ea0002ba/mark-wahlberg-thumb.jpg', 'Max Payne'),
(18973, 'Mila Kunis', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/409/4bfa7879017a3c7036000409/mila-kunis-thumb.jpg', 'Mona Sax'),
(2222, 'Beau Bridges', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/7f0/4c7000335e73d65f7e0007f0/beau-bridges-thumb.jpg', 'BB Hensley'),
(8171, 'Ludacris', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/28f/4c99d4217b9aa1275800028f/ludacris-thumb.jpg', 'Jim Bravura'),
(5577, 'Chris O''Donnell', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/f4a/4cbc0d6a7b9aa138d7000f4a/chris-o-donnell-thumb.jpg', 'Jason Colvin'),
(10825, 'Donal Logue', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/914/4de352835e73d60b06000914/donal-logue-thumb.jpg', 'Alex Balder'),
(17341, 'Amaury Nolasco', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/1a5/4c3b1df95e73d671d10001a5/amaury-nolasco-thumb.jpg', 'Jack Lupino'),
(20879, 'Kate Burton', 'Max Payne', 13051, 'Actor', '', 'Nicole Horne'),
(18182, 'Olga Kurylenko', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/163/4bec018e017a3c37a9000163/olga-kurylenko-thumb.jpg', 'Natasha'),
(63813, 'Rothaford Gray', 'Max Payne', 13051, 'Actor', '', 'Joe Salle'),
(74122, 'Joel Gordon', 'Max Payne', 13051, 'Actor', '', 'Owen Green'),
(74123, 'Jamie Hector', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/2ce/4dcb9afe5e73d630ae0032ce/jamie-hector-thumb.jpg', 'Lincoln DeNeuf'),
(74124, 'Andrew Friedman', 'Max Payne', 13051, 'Actor', '', 'Trevor'),
(74125, 'Marianthi Evans', 'Max Payne', 13051, 'Actor', '', 'Michelle Payne'),
(74126, 'Nelly Furtado', 'Max Payne', 13051, 'Actor', 'http://cf1.imgobject.com/profiles/25e/4c9a4ddd5e73d6554900025e/nelly-furtado-thumb.jpg', 'Christa Balder'),
(12028, 'John Moore', 'Max Payne', 13051, 'Director', 'http://cf1.imgobject.com/profiles/e0a/4dcbb37a7b9aa15202003e0a/john-moore-thumb.jpg', ''),
(35742, 'Shahrukh Khan', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/14c/4bcb1e6b017a3c0e9600014c/shahrukh-khan-thumb.jpg', 'Rahul Y. Raichand'),
(55061, 'Kajol', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/026/4bc990c9017a3c181e000026/kajol-thumb.jpg', 'Anjali Sharma'),
(35780, 'Amitabh Bachchan', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/122/4c4f00e97b9aa1326c000122/amitabh-bachchan-thumb.jpg', 'Yashvardhan ''Yash'' Raichand'),
(35743, 'Jaya Bhaduri', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/b5d/4d21a1457b9aa1736b002b5d/jaya-bhaduri-thumb.jpg', 'Nandini Y. Raichand'),
(78749, 'Hrithik Roshan', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/102/4c4f188b5e73d62ec1000102/hrithik-roshan-thumb.jpg', 'Rohan Raichand'),
(37233, 'Kareena Kapoor', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/126/4bf126f7017a3c320b000126/kareena-kapoor-thumb.jpg', 'Pooja Sharma'),
(35776, 'Rani Mukherjee', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/12e/4c4f02647b9aa1326d00012e/rani-mukherjee-thumb.jpg', 'Naina (as Rani Mukherji)'),
(146971, 'Farida Jalal', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/4cf/4d2179b47b9aa128860004cf/farida-jalal-thumb.jpg', 'Sayeeda'),
(86784, 'Alok Nath', 'Kabhi Khushi Kabhie Gham...', 10757, 'Actor', 'http://cf1.imgobject.com/profiles/5c8/4d21a27b7b9aa128230005c8/alok-nath-thumb.jpg', 'Bauji'),
(35736, 'Karan Johar', 'Kabhi Khushi Kabhie Gham...', 10757, 'Director', 'http://cf1.imgobject.com/profiles/11f/4c4f01457b9aa1326e00011f/karan-johar-thumb.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `there`
--

CREATE TABLE IF NOT EXISTS `there` (
  `userid` int(11) NOT NULL auto_increment,
  `username` varchar(50) collate latin1_general_ci NOT NULL,
  `passwd` varchar(100) collate latin1_general_ci NOT NULL,
  `activate_status` tinyint(1) NOT NULL default '0',
  `first_name` varchar(50) collate latin1_general_ci NOT NULL,
  `last_name` varchar(50) collate latin1_general_ci NOT NULL,
  `birth_date` date NOT NULL,
  `email` varchar(100) collate latin1_general_ci NOT NULL,
  `activecode` varchar(100) collate latin1_general_ci NOT NULL,
  `emailhash` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `there`
--

INSERT INTO `there` (`userid`, `username`, `passwd`, `activate_status`, `first_name`, `last_name`, `birth_date`, `email`, `activecode`, `emailhash`) VALUES
(1, 'ashraf', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Ashraf', 'Mirza', '1985-12-25', 'ashraf.mmirza@gmail.com', '508924b0eac2ba101ada28841c931e44', 'a7b5345a4e7c85783acc262b0c793762'),
(2, 'ashraf2', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Ashraf', 'Mirza', '1985-12-25', 'ashraf.mmirza@gmail.com', '4ea338471b914634f16357764ce39295', 'a7b5345a4e7c85783acc262b0c793762');
