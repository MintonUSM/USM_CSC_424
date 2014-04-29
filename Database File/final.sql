-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2014 at 02:46 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `final`
--
CREATE DATABASE IF NOT EXISTS `final` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `final`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created`, `modified`, `user_id`) VALUES
(8, 'Hello@', 'Testing!', '2014-04-28 18:01:41', '2014-04-28 18:08:52', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE IF NOT EXISTS `tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(260) NOT NULL,
  `expected output` varchar(100) NOT NULL,
  `date created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `test1` varchar(10) DEFAULT NULL,
  `test2` varchar(10) DEFAULT NULL,
  `test3` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`, `test1`, `test2`, `test3`) VALUES
(3, 'JacobPorter', '098b40a5e01a554a1dfd956f106c200e1061f08d', 'admin', '2014-04-18 01:46:24', '2014-04-18 01:46:24', NULL, NULL, NULL),
(4, 'FooSickles', '098b40a5e01a554a1dfd956f106c200e1061f08d', 'admin', '2014-04-18 03:02:01', '2014-04-18 03:02:01', NULL, NULL, NULL),
(5, 'Hello', '4a48d3a8350709426f0d1c7f79f5f12db0355cab', 'admin', '2014-04-18 03:03:48', '2014-04-18 03:03:48', NULL, NULL, NULL),
(6, 'Hello', '4a48d3a8350709426f0d1c7f79f5f12db0355cab', 'admin', '2014-04-18 03:04:10', '2014-04-18 03:04:10', NULL, NULL, NULL),
(7, 'Tyler', '098b40a5e01a554a1dfd956f106c200e1061f08d', 'author', '2014-04-22 19:30:56', '2014-04-22 19:30:56', NULL, NULL, NULL),
(8, 'Sun', '098b40a5e01a554a1dfd956f106c200e1061f08d', 'author', '2014-04-28 18:07:16', '2014-04-28 18:07:16', NULL, NULL, NULL),
(9, 'JacobRPorter', '93602b0b84a74b1643f04ea703c7882809983506', 'admin', '2014-04-28 18:07:50', '2014-04-28 18:07:50', NULL, NULL, NULL),
(10, 'JR', '098b40a5e01a554a1dfd956f106c200e1061f08d', 'admin', '2014-04-28 18:08:26', '2014-04-28 18:08:26', NULL, NULL, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
