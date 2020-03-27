-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 27, 2020 at 04:24 PM
-- Server version: 5.7.29-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iotied`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator_super_user`
--

CREATE TABLE `administrator_super_user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `tx_address` text NOT NULL,
  `tokens` varchar(20) NOT NULL DEFAULT '0',
  `carbon_credits` varchar(20) NOT NULL DEFAULT '0',
  `energy_units` varchar(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `administrator_super_user`
--

INSERT INTO `administrator_super_user` (`id`, `name`, `email`, `password`, `tx_address`, `tokens`, `carbon_credits`, `energy_units`) VALUES
(1, 'Amits', 'admin@iotied.io', 'Iostream', '0xAf55F3B7DC65c8f8577cf00C8C5CA7b6E8Cc4433', '1200000', '122000', '1002002');

-- --------------------------------------------------------

--
-- Table structure for table `buy_token`
--

CREATE TABLE `buy_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tx_address` varchar(100) NOT NULL,
  `amount` float NOT NULL,
  `no_of_tokens` float NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `buy_tx_id` varchar(100) NOT NULL,
  `currency` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buy_token`
--

INSERT INTO `buy_token` (`id`, `user_id`, `user_name`, `email`, `tx_address`, `amount`, `no_of_tokens`, `status`, `date`, `buy_tx_id`, `currency`) VALUES
(38, 77, 'NMS Lab', 'nms.lab@gmail.com', '0x2d5c9d98cf1ee88244277cca933c759215002f69', 1000, 1000, 'Approved', '2020-01-06 17:03:03', '0x6YAcpxOnDVG7f8dWesoE2Trlvg5Ftb', 'Dollar'),
(39, 77, 'NMS Lab', 'nms.lab@gmail.com', '0x2d5c9d98cf1ee88244277cca933c759215002f69', 0.3, 2277.78, 'Approved', '2020-01-06 17:03:10', '0xeumEb1JAo6MxPNDFgwiLyBp8fWUShl', 'Bitcoin'),
(40, 80, 'Vinshu Gupta', 'vinshu.gupta@blockcluster.io', '0x53cca4c8da571aed85b70939a235d213c535fb97', 100, 100, 'Approved', '2020-01-07 16:16:48', '', 'Dollar'),
(41, 81, 'Tata Health', 'tatahealth@gmail.com', '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 9000, 9000, 'Approved', '2020-01-07 19:35:31', '', 'Dollar'),
(42, 80, 'Vinshu Gupta', 'vinshu.gupta@blockcluster.io', '0x53cca4c8da571aed85b70939a235d213c535fb97', 0, 0, 'Approved', '2020-01-08 06:58:36', 'PK0576576', 'Dollar'),
(43, 80, 'Vinshu Gupta', 'vinshu.gupta@blockcluster.io', '0x53cca4c8da571aed85b70939a235d213c535fb97', 126, 126, 'Approved', '2020-01-08 06:58:47', 'J12483u943u', 'Dollar'),
(44, 79, 'Vinshu Gupta', 'guptavinshu@gmail.com', '0x97765d73011b034f9007139401cf6009f2a35645', 7, 58392.9, 'Approved', '2020-01-08 11:07:46', 'ggygtfffgfgfgasfgdasfdas54465654', 'Bitcoin'),
(45, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 1500, 1500, 'Approved', '2020-01-08 13:34:31', 'P12483u943u', 'Dollar'),
(46, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 1000, 1000, 'Approved', '2020-01-08 15:46:14', 'W12483u943u', 'Dollar'),
(47, 84, 'Lal Path Labs', 'admin@lalpathlab.com', '0x74b9445784be8284657762817ab90c33a6391e98', 1000, 1000, 'Approved', '2020-01-09 06:08:05', 'J12483u943u', 'Dollar'),
(48, 85, 'Wallsgreen', 'admin@wallsgreen.com', '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', 1000, 1000, 'Approved', '2020-01-13 10:18:33', 'JP2938283', 'Dollar'),
(49, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 1000, 1000, 'Approved', '2020-01-20 20:28:56', 'NbbbC', 'Dollar'),
(50, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 4000, 4000, 'Approved', '2020-01-21 01:51:16', 'NBCCFFTY', 'Dollar'),
(51, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 5000, 5000, 'Approved', '2020-01-23 02:06:52', 'BBHHNYTT!^&*', 'Dollar'),
(52, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 500, 500, 'Approved', '2020-01-29 19:48:12', ' BBnYt90226890SAqER1', 'Dollar'),
(53, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 1000, 1000, 'Approved', '2020-02-20 16:53:58', 'Jpani29937', 'Dollar'),
(54, 86, 'NNC Lab', 'rabi@rabilive.com', '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', 0, 0, 'Approved', '2020-03-05 07:26:50', '123123gdfgdhfgh', 'Dollar'),
(55, 86, 'NNC Lab', 'rabi@rabilive.com', '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', 100, 100, 'Approved', '2020-03-05 07:27:07', 'yrhwrhgh', 'Dollar'),
(56, 86, 'NNC Lab', 'rabi@rabilive.com', '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', 100, 100, 'Approved', '2020-03-05 11:48:03', '6547475htyjgfjhjfghjfgj', 'Dollar'),
(57, 82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 5000, 5000, 'Approved', '2020-03-07 02:07:33', 'CVBNQ!@#$', 'Dollar'),
(58, 91, 'kinie', 'kinie@iotied.io', '0xe720758dcd647c6597f337b251648d6b5e359826', 1000, 1000, 'Approved', '2020-03-16 10:19:20', '7680adec8eabcabac676be9e83854ade0bd22cdb', 'Dollar'),
(59, 86, 'NNC Lab', 'rabi@rabilive.com', '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', 100, 100, 'Approved', '2020-03-18 06:02:44', '4234234234', 'Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `document_name` varchar(50) NOT NULL,
  `file` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `user_id`, `document_name`, `file`, `status`, `date`, `username`, `email`) VALUES
(155, 86, 'Passport', '1584563855unnamed.png', 'Pending', '2020-03-18 20:37:35', 'NNC Lab', 'rabi@rabilive.com');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `notification` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `for` varchar(100) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` varchar(20) NOT NULL DEFAULT 'Unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `notification`, `date`, `for`, `user_id`, `status`) VALUES
(1, 'A New User Created', '2019-11-01 15:41:11', 'admin', 0, 'Unread'),
(2, 'A New User Created', '2019-11-01 15:41:14', 'admin', 0, 'Unread'),
(3, 'A New User Created', '2019-11-01 15:41:16', 'admin', 0, 'Unread'),
(4, 'A New User Created', '2019-11-02 06:20:35', 'admin', 0, 'Unread'),
(5, 'A New Asset has been added by Kishan  Sharma', '2019-11-02 06:22:03', 'admin', 0, 'Unread'),
(6, 'A New User Created', '2019-12-27 12:31:15', 'admin', 0, 'Unread'),
(7, 'A New User Created', '2019-12-27 12:32:42', 'admin', 0, 'Unread'),
(8, 'A New User Created', '2019-12-27 12:33:25', 'admin', 0, 'Unread'),
(9, 'A New User Created', '2019-12-27 12:35:45', 'admin', 0, 'Unread'),
(10, 'A New User Created', '2019-12-27 12:49:24', 'admin', 0, 'Unread'),
(11, 'A New User Created', '2020-01-05 11:13:29', 'admin', 0, 'Unread'),
(12, 'A New User Created', '2020-01-05 11:14:13', 'admin', 0, 'Unread'),
(13, 'A New User Created', '2020-01-05 11:14:26', 'admin', 0, 'Unread'),
(14, 'A New User Created', '2020-01-05 11:14:56', 'admin', 0, 'Unread'),
(15, 'A New User Created', '2020-01-05 11:29:31', 'admin', 0, 'Unread'),
(16, ' Tokens Added to ', '2020-01-05 12:07:38', 'admin', 0, 'Unread'),
(17, ' Tokens Added to ', '2020-01-05 12:07:41', 'admin', 0, 'Unread'),
(18, 'A kyc is Requested from User', '2020-01-05 13:26:25', 'admin', 0, 'Unread'),
(19, ' Tokens Added to ', '2020-01-05 14:28:13', 'admin', 0, 'Unread'),
(20, 'A New User Created', '2020-01-05 17:18:39', 'admin', 0, 'Unread'),
(21, 'A Buy Request has been Initiated', '2020-01-06 13:15:07', 'admin', 0, 'Unread'),
(22, 'A Buy Request has been Initiated', '2020-01-06 13:19:53', 'admin', 0, 'Unread'),
(23, 'A kyc is Requested from User', '2020-01-06 13:25:24', 'admin', 0, 'Unread'),
(24, 'A kyc is Requested from User', '2020-01-06 16:42:39', 'admin', 0, 'Unread'),
(25, 'A New User Created', '2020-01-06 16:58:07', 'admin', 0, 'Unread'),
(26, 'A kyc is Requested from User', '2020-01-06 17:02:03', 'admin', 0, 'Unread'),
(27, 'A Buy Request has been Initiated', '2020-01-06 17:03:03', 'admin', 0, 'Unread'),
(28, 'A Buy Request has been Initiated', '2020-01-06 17:03:10', 'admin', 0, 'Unread'),
(29, 'A New User Created', '2020-01-06 18:43:34', 'admin', 0, 'Unread'),
(30, 'A kyc is Requested from User', '2020-01-06 18:48:29', 'admin', 0, 'Unread'),
(31, 'A New User Created', '2020-01-07 05:47:03', 'admin', 0, 'Unread'),
(32, 'A kyc is Requested from User', '2020-01-07 05:47:30', 'admin', 0, 'Unread'),
(33, 'A New User Created', '2020-01-07 16:09:00', 'admin', 0, 'Unread'),
(34, 'A kyc is Requested from User', '2020-01-07 16:10:30', 'admin', 0, 'Unread'),
(35, 'A Buy Request has been Initiated', '2020-01-07 16:16:48', 'admin', 0, 'Unread'),
(36, 'A New User Created', '2020-01-07 19:13:21', 'admin', 0, 'Unread'),
(37, 'A kyc is Requested from User', '2020-01-07 19:15:05', 'admin', 0, 'Unread'),
(38, 'A Buy Request has been Initiated', '2020-01-07 19:35:31', 'admin', 0, 'Unread'),
(39, 'A Buy Request has been Initiated', '2020-01-08 06:58:36', 'admin', 0, 'Unread'),
(40, 'A Buy Request has been Initiated', '2020-01-08 06:58:47', 'admin', 0, 'Unread'),
(41, 'A Buy Request has been Initiated', '2020-01-08 11:07:46', 'admin', 0, 'Unread'),
(42, 'A New User Created', '2020-01-08 13:17:50', 'admin', 0, 'Unread'),
(43, 'A kyc is Requested from User', '2020-01-08 13:18:29', 'admin', 0, 'Unread'),
(44, 'A Buy Request has been Initiated', '2020-01-08 13:34:31', 'admin', 0, 'Unread'),
(45, 'A Buy Request has been Initiated', '2020-01-08 15:46:14', 'admin', 0, 'Unread'),
(46, 'A New User Created', '2020-01-09 05:48:52', 'admin', 0, 'Unread'),
(47, 'A kyc is Requested from User', '2020-01-09 05:49:07', 'admin', 0, 'Unread'),
(48, 'A New User Created', '2020-01-09 06:03:55', 'admin', 0, 'Unread'),
(49, 'A kyc is Requested from User', '2020-01-09 06:04:36', 'admin', 0, 'Unread'),
(50, 'A Buy Request has been Initiated', '2020-01-09 06:08:05', 'admin', 0, 'Unread'),
(51, 'A New User Created', '2020-01-13 10:12:16', 'admin', 0, 'Unread'),
(52, 'A kyc is Requested from User', '2020-01-13 10:14:20', 'admin', 0, 'Unread'),
(53, 'A Buy Request has been Initiated', '2020-01-13 10:18:33', 'admin', 0, 'Unread'),
(54, 'A Buy Request has been Initiated', '2020-01-20 20:28:56', 'admin', 0, 'Unread'),
(55, 'A Buy Request has been Initiated', '2020-01-21 01:51:16', 'admin', 0, 'Unread'),
(56, 'A Buy Request has been Initiated', '2020-01-23 02:06:52', 'admin', 0, 'Unread'),
(57, 'A New User Created', '2020-01-24 05:48:47', 'admin', 0, 'Unread'),
(58, 'A Buy Request has been Initiated', '2020-01-29 19:48:12', 'admin', 0, 'Unread'),
(59, 'A kyc is Requested from User', '2020-01-30 09:13:07', 'admin', 0, 'Unread'),
(60, 'A New User Created', '2020-02-11 15:23:17', 'admin', 0, 'Unread'),
(61, 'A New User Created', '2020-02-13 07:21:04', 'admin', 0, 'Unread'),
(62, 'A New User Created', '2020-02-13 07:24:13', 'admin', 0, 'Unread'),
(63, 'A New User Created', '2020-02-14 09:16:04', 'admin', 0, 'Unread'),
(64, 'A Buy Request has been Initiated', '2020-02-20 16:53:58', 'admin', 0, 'Unread'),
(65, 'A Buy Request has been Initiated', '2020-03-05 07:26:50', 'admin', 0, 'Unread'),
(66, 'A Buy Request has been Initiated', '2020-03-05 07:27:07', 'admin', 0, 'Unread'),
(67, 'A Buy Request has been Initiated', '2020-03-05 11:48:03', 'admin', 0, 'Unread'),
(68, 'A Buy Request has been Initiated', '2020-03-07 02:07:33', 'admin', 0, 'Unread'),
(69, 'A New User Created', '2020-03-16 10:06:15', 'admin', 0, 'Unread'),
(70, 'A Buy Request has been Initiated', '2020-03-16 10:19:20', 'admin', 0, 'Unread'),
(71, 'A Buy Request has been Initiated', '2020-03-18 06:02:44', 'admin', 0, 'Unread'),
(72, 'A kyc is Requested from User', '2020-03-18 20:37:35', 'admin', 0, 'Unread'),
(73, 'A kyc is Requested from User', '2020-03-18 20:55:36', 'admin', 0, 'Unread'),
(74, 'A kyc is Requested from User', '2020-03-18 20:56:04', 'admin', 0, 'Unread'),
(75, 'A kyc is Requested from User', '2020-03-18 20:56:13', 'admin', 0, 'Unread'),
(76, 'A kyc is Requested from User', '2020-03-18 20:56:47', 'admin', 0, 'Unread'),
(77, 'A kyc is Requested from User', '2020-03-18 20:57:31', 'admin', 0, 'Unread'),
(78, 'A kyc is Requested from User', '2020-03-18 20:59:55', 'admin', 0, 'Unread'),
(79, 'A kyc is Requested from User', '2020-03-18 21:03:42', 'admin', 0, 'Unread'),
(80, 'A kyc is Requested from User', '2020-03-18 21:11:59', 'admin', 0, 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `tx` varchar(100) NOT NULL,
  `disease` varchar(70) NOT NULL,
  `reward` varchar(10) NOT NULL,
  `vendor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `tx`, `disease`, `reward`, `vendor_id`) VALUES
(8, '0x2d5c9d98cf1ee88244277cca933c759215002f69', 'Cancer', '100', 0),
(9, '0x2d5c9d98cf1ee88244277cca933c759215002f69', 'Cholera', '100', 0),
(10, '0x2d5c9d98cf1ee88244277cca933c759215002f69', 'polio', '100', 0),
(11, '0x97765d73011b034f9007139401cf6009f2a35645', 'Laprosy', '120', 0),
(12, '0x97765d73011b034f9007139401cf6009f2a35645', 'Kidney Disease', '200', 0),
(13, '0x97765d73011b034f9007139401cf6009f2a35645', 'Hunger', '10', 0),
(14, '0x53cca4c8da571aed85b70939a235d213c535fb97', 'Cancer Reward Plan', '10', 0),
(15, '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 'Cancer Plan', '10', 0),
(16, '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 'Kidney Plan', '20', 0),
(17, '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 'Polio Plan', '30', 0),
(18, '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 'Tooth Decan Plan', '10', 0),
(19, '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 'Cholera Plan ', '30', 0),
(20, '0x53cca4c8da571aed85b70939a235d213c535fb97', 'Cold Reward Plan', '12', 0),
(21, '0x97765d73011b034f9007139401cf6009f2a35645', 'Polio Reward Plan', '30', 0),
(22, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Cancer Reward Plan', '12', 0),
(23, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Cholera Reward Plan', '18', 0),
(24, '0x74b9445784be8284657762817ab90c33a6391e98', 'Cancer Reward Plan', '50', 0),
(25, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', 'Polio Reward Plan', '100', 0),
(26, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', 'Cancer Reward Plan', '50', 0),
(27, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'cancer', '10', 0),
(28, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Cardio', '5', 0),
(29, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Cardio', '5', 0),
(30, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Cardio', '5', 0),
(31, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Cardio  11', '10', 0),
(32, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Herat Disease', '10', 0),
(33, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', 'Cancer', '5', 0),
(34, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Diabetes ', '10', 0),
(35, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'Fever', '100', 0);

-- --------------------------------------------------------

--
-- Table structure for table `request_access`
--

CREATE TABLE `request_access` (
  `id` int(11) NOT NULL,
  `vendor_tx` varchar(60) NOT NULL,
  `patient_tx` varchar(60) NOT NULL,
  `tx` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Not Contacted',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `plan` varchar(100) DEFAULT NULL,
  `days` int(11) NOT NULL DEFAULT '0',
  `reward_point` int(11) DEFAULT NULL,
  `approve_date` varchar(100) NOT NULL DEFAULT '--',
  `currency` varchar(100) DEFAULT 'Iotied',
  `type` varchar(30) NOT NULL DEFAULT 'None',
  `vendor_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request_access`
--

INSERT INTO `request_access` (`id`, `vendor_tx`, `patient_tx`, `tx`, `status`, `date`, `plan`, `days`, `reward_point`, `approve_date`, `currency`, `type`, `vendor_name`) VALUES
(41, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x8db058e36f1672a4cf965be8f349a032c5868c59', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer Reward Plan', 20, 12, '--', 'Iotied', 'None', 'NNC Lab'),
(42, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x7eb058e36f1672a4cf965be8f349a032c5868c42', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer', 20, 100, '--', 'Iotied', 'None', 'NNC Lab'),
(43, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', '0x8db058e36f1672a4cf965be8f349a032c5868c59', 'request_to_access', 'Pending', '2020-03-19 08:01:03', 'polio', 20, 100, '--', 'Iotied', 'None', 'Wallsgreen'),
(44, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', '0x7eb058e36f1672a4cf965be8f349a032c5868c42', 'request_to_access', 'Pending', '2020-03-19 08:01:03', 'Kidney Disease', 20, 200, '--', 'Dollar', 'None', 'Wallsgreen'),
(45, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', '0x7eb058e36f1672a4cf965be8f349a032c5868c42', '0x5f09b3542b5296b2379cd0eb9376408ae2952a40893c36dc6bf45c76c1599c79', 'Approved', '2020-03-19 08:02:12', 'Tooth Decan Plan', 20, 10, '2020-03-19 06:10:42', 'Iotied', 'None', 'Apollo Healthcare'),
(46, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xd3d83011fbdc1589554e09bc0c3ac1dc8349602e', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer', 20, 100, '--', 'Iotied', 'None', 'NNC Lab'),
(47, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x801529ea3b19628ea23d12c556b61a93cf483b58', '0x93dcf8c1795523296c71966f262c27323b75ebd985844d687d09efa4965b8797', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-20 10:14:57', 'Iotied', 'Full Access', 'NNC Lab'),
(48, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x801529ea3b19628ea23d12c556b61a93cf483b58', '0x51499a274fcb33dfd4987ef5e84cfa8e495a46adb6648a966580e8669f69102c', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-20 10:15:13', 'Iotied', 'Full Access', 'NNC Lab'),
(49, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x8db058e36f1672a4cf965be8f349a032c5868666', '0xf95c7911ba948d03dcf90ee5f98f4e682f86248f839c76c2cdd11181a2a64364', 'Approved', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-14 12:13:44', 'Dollar', 'Full Access', 'NNC Lab'),
(50, '0x086cedca1f09300b80159271684b702070356047', '0x8db058e36f1672a4cf965be8f349a032c5868666', '0x5bfaaec8378b0de1f218e8cc059ac9c5649b701df09b624c8d5667634756de38', 'Approved', '2020-03-19 08:03:44', 'Cancer', 20, 100, '2020-03-04 08:33:49', 'Dollar', 'Full Access', 'newdemo'),
(51, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xfc173841c2b8be5a61f01076975fa901033f420c', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer', 365, 100, '--', 'USD', 'Full Access', 'NNC Lab'),
(52, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x3dd6a14f1dd9c30c3fbedaf3696591940a3a3275', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer', 20, 100, '--', 'USD', 'Full Access', 'NNC Lab'),
(53, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', '0xd2a27e5112ad4998148f98f2f69e4b88e19c5e96', '0x502357cad2dee1b16bc8e7f2bf8e58e50e069f456eb2a2c8fe1048feeb04bb8e', 'Approved', '2020-03-19 08:01:03', 'polio', 20, 100, '2020-02-19 18:45:55', 'USD', 'Full Access', 'Wallsgreen'),
(54, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', '0x01f8864ab1c084a021c2e58ed620fcaab330af04', '0x388cd19d527c2e750d0d2bad372e088dfa1c4a65a06548cfe67cbf63911ca6ec', 'Approved', '2020-03-19 08:01:03', 'Cancer', 20, 100, '2020-02-19 18:48:09', 'USD', 'Full Access', 'Wallsgreen'),
(55, '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', '0x83e526d1bc309f7f622e57b92ea2e57be3873eb7', '0xc19b7eb1e46961e41081291add02074a1416888fe3c47b5489c4635633f94b02', 'Approved', '2020-03-19 08:01:03', 'Cancer', 20, 100, '2020-03-18 21:46:20', 'USD', 'DNA', 'Wallsgreen'),
(56, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xac4679e6fc28489905bdbd2969b06d69dbf02f26', '0x2d835b9e9e9e47a2f09e9e9351dc60df389ffccf5fad9828a745e341ca58d3f2', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-20 10:17:22', 'IOTied', 'Full Access', 'NNC Lab'),
(57, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xac4679e6fc28489905bdbd2969b06d69dbf02f26', '0x0dfd8e77c08e71ba7aea31706cc3d936d8479b7d6212ec452a8c7677810c5755', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-20 10:18:25', 'IOTied', 'Wearable ', 'NNC Lab'),
(58, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xac4679e6fc28489905bdbd2969b06d69dbf02f26', '0x5bf47c324ae7c62b86d971b9c68b7d6af9f50932e8c9b40dce107beb07380dfa', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-20 10:28:35', 'USD', 'No Access', 'NNC Lab'),
(59, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xac4679e6fc28489905bdbd2969b06d69dbf02f26', '0x126f4e51348a32f1b412b0dab33866f97e2cbb0cd3978c225da17b3bd29e8506', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-20 10:30:06', 'IOTied', 'No Access', 'NNC Lab'),
(60, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xac4679e6fc28489905bdbd2969b06d69dbf02f26', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-21 07:19:54', 'IOTied', 'No Access', 'NNC Lab'),
(61, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', '0x8db058e36f1672a4cf965be8f349a032c5868666', '0xefba2d696b49973c5f9183338387e0ce6b8f7df2daebb0d62aa0a354f400053d', 'Approved', '2020-03-19 08:02:12', 'Diabetes', 30, 10, '2020-02-20 16:56:13', 'IOTied', 'No Access', 'Apollo Healthcare'),
(62, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xac4679e6fc28489905bdbd2969b06d69dbf02f26', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer', 20, 100, '--', 'IOTied', 'No Access', 'NNC Lab'),
(63, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x24269fb361b718baa698f8aca89cfce1a5f2879f', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-02-24 05:23:52', 'USD', 'No Access', 'NNC Lab'),
(64, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x24269fb361b718baa698f8aca89cfce1a5f2879f', 'request_to_access', 'Pending', '2020-03-19 07:59:25', 'Cancer', 20, 100, '--', 'IOTied', 'PersonalInformation, Wearable', 'NNC Lab'),
(65, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-03-02 05:25:42', 'IOTied', 'Full Access', 'NNC Lab'),
(66, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-03-03 10:21:21', 'USD', 'No Access', 'NNC Lab'),
(67, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-03-03 10:21:17', 'IOTied', 'Full Access', 'NNC Lab'),
(68, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x73ddce5a19da24b539adca5a45177f43e31392b33e4c97050fdf7ca3cfc735a3', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer Reward Plan', 20, 10, '2020-03-05 07:30:23', 'IOTied', 'Full Access', 'NNC Lab'),
(69, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Kidney Plan', 20, 20, '2020-03-05 08:45:23', 'IOTied', 'Personal Information,Vitals', 'NNC Lab'),
(70, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x07a0ee4ffd1a7512ae7641dbd336ab20f038583385629eca7a9a8ebeb24a1789', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-03-05 08:58:33', 'IOTied', 'Personal Informatio', 'NNC Lab'),
(71, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'cancer', 20, 10, '2020-03-05 08:59:54', 'USD', 'No Access', 'NNC Lab'),
(72, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x2e1dc48ecfbccd281db21499213b39f083b555bc1e2d74df65c74c78ae435ebc', 'Blacklisted', '2020-03-19 07:59:25', 'cancer', 20, 10, '2020-03-05 11:52:29', 'IOTied', 'No Access', 'NNC Lab'),
(73, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x3b106c2e24018e97d006c0a6b79794781166a3a3e1ad43d0bfc1b2626aafce68', 'Blacklisted', '2020-03-19 07:59:25', 'Kidney Plan', 20, 20, '2020-03-19 06:12:41', 'IOTied', 'Full Access', 'NNC Lab'),
(74, '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', '0x01f8864ab1c084a021c2e58ed620fcaab330af04', 'request_to_access', 'Pending', '2020-03-19 08:02:12', 'Cancer', 20, 100, '--', '', '', 'Apollo Healthcare'),
(75, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-03-13 11:43:50', 'USD', 'No Access', 'NNC Lab'),
(76, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', '0xdb676cea079bae529360456c36830693fd1533850a7d96938bc400cfb913a0d8', 'Blacklisted', '2020-03-19 07:59:25', 'Cancer', 20, 100, '2020-03-15 18:52:25', 'IOTied', 'Full Access', 'NNC Lab'),
(77, '0xe720758dcd647c6597f337b251648d6b5e359826', '0x8db058e36f1672a4cf965be8f349a032c5868666', '0xce7ab3b38ddc1f4c87403170e3f173530e6b3fcb66c533b1fb93f9f525c9800f', 'Approved', '2020-03-16 10:18:05', 'Cancer Plan', 20, 10, '2020-03-16 10:18:05', 'USD', 'No Access', ''),
(78, '', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', 'error', 'Approved', '2020-03-17 07:30:29', 'Cancer', 20, 100, '2020-03-17 07:30:29', 'IOTied', 'Full Access', ''),
(79, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', 'error', 'Blacklisted', '2020-03-19 07:59:25', 'Kidney Disease', 20, 200, '2020-03-17 07:30:24', 'IOTied', 'No Access', 'NNC Lab'),
(80, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', '0x306e8fbb6bec6cceab68e10ff774f7afa6961451adacd0ed3405c7010630384f', 'Blacklisted', '2020-03-19 07:59:25', 'Hunger', 20, 10, '2020-03-17 08:49:54', 'IOTied', 'Full Access', 'NNC Lab'),
(81, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xcd41c636e5a2655e9eecd3a41382657a7ba32a4e', '0x4646d7ce2b48991b90434057524a6fdfb911f5eee1660dc4b0dff93592dfff18', 'Approved', '2020-03-19 07:59:25', 'Hunger', 20, 10, '2020-03-17 11:28:22', 'IOTied', 'Full Access', 'NNC Lab'),
(82, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x435d5019462673fa5f4b1aff4d79d1dd4f97c8dc04b88ef22597c821ba8d7554', 'Blacklisted', '2020-03-19 11:06:56', 'Hunger', 20, 3, '2020-03-19 11:06:56', 'IOTied', 'Personal Information,Wearable ', 'NNC Lab'),
(83, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0x83e526d1bc309f7f622e57b92ea2e57be3873eb7', 'request_to_access', 'Pending', '2020-03-19 07:57:39', 'Cancer', 20, 100, '--', 'USD', 'No Access', 'NNC Lab'),
(84, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x53eedf62f912337a5bb99a4d7588853e70c4a7492835350b7cff8caf6cfa3631', 'Blacklisted', '2020-03-19 11:48:29', 'Hunger', 20, 10, '2020-03-19 11:48:29', 'IOTied', 'Full Access', 'NNC Lab'),
(85, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x2817eb95eed9176e9b94539cb2ffb1d359384736780c26ba92324cce34fc44d3', 'Blacklisted', '2020-03-19 11:52:07', 'Hunger', 20, 0, '2020-03-19 11:52:07', 'IOTied', 'No Access', 'NNC Lab'),
(86, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', 'error', 'Blacklisted', '2020-03-26 11:49:31', 'Hunger', 20, 5, '2020-03-26 11:49:31', 'IOTied', 'Personal Information,Vitals', 'NNC Lab'),
(87, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xd2a27e5112ad4998148f98f2f69e4b88e19c5e96', 'error', 'Approved', '2020-03-26 11:05:57', 'Cancer', 20, 5, '2020-03-26 11:05:57', 'IOTied', 'Full Access', 'NNC Lab'),
(88, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', 'error', 'Blacklisted', '2020-03-27 09:14:53', 'Cancer', 20, 5, '2020-03-27 09:14:53', 'IOTied', 'Full Access', 'NNC Lab'),
(89, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', '0x5e6e0eb6253565fb63ddde6578d51bbaf461be203fdbb34efdb168be89df3008', 'Blacklisted', '2020-03-27 09:19:53', 'Cancer', 20, 0, '2020-03-27 09:19:53', 'IOTied', 'No Access', 'NNC Lab'),
(90, '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '0xde2b868d0ed9f52baa6b8e51cfbedaba25bbbfe1', 'error', 'Approved', '2020-03-27 12:22:25', 'Cancer', 20, 3, '2020-03-27 09:22:25', 'IOTied', 'Full Access', 'NNC Lab');

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `query` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tx_address` varchar(60) NOT NULL,
  `file` varchar(150) NOT NULL DEFAULT 'default.jpg',
  `gender` varchar(10) NOT NULL DEFAULT 'Male',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` varchar(20) NOT NULL DEFAULT 'True',
  `password` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL DEFAULT '1234567890',
  `balance` varchar(10) NOT NULL DEFAULT '500',
  `kyc_approved` varchar(20) NOT NULL DEFAULT 'Pending',
  `country` varchar(100) NOT NULL DEFAULT 'India',
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `tx_address`, `file`, `gender`, `date`, `verified`, `password`, `phone`, `balance`, `kyc_approved`, `country`, `type`) VALUES
(77, 'NMS Lab', 'nms.lab@gmail.com', '0x2d5c9d98cf1ee88244277cca933c759215002f69', 'default.jpg', 'Male', '2020-01-06 17:02:20', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Laboratory'),
(78, 'Parimal Pharmacy', 'parimal@gmail.com', '0xec926389119e7c65a4ebc8f50f13ce6ddbb44949', 'default.jpg', 'Male', '2020-01-06 18:52:09', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Pharmacy'),
(79, 'Vinshu Gupta', 'guptavinshu@gmail.com', '0x97765d73011b034f9007139401cf6009f2a35645', 'default.jpg', 'Male', '2020-01-08 10:14:54', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Hospital'),
(80, 'Vinshu Gupta', 'vinshu.gupta@blockcluster.io', '0x53cca4c8da571aed85b70939a235d213c535fb97', 'default.jpg', 'Male', '2020-01-07 16:11:23', 'Yes', 'pass', '1234567890', '500', 'Approved', 'United States', 'Pharmacy'),
(81, 'Tata Health', 'tatahealth@gmail.com', '0xf4cbc473e4f88e91b91eb0b7137f03c49b355aa2', 'default.jpg', 'Male', '2020-01-07 19:15:27', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Insuarance Company'),
(82, 'Apollo Healthcare', 'admin@apollohealth.com', '0xbd649de089fcf4dede25fa0ee170b86691a7d44e', 'default.jpg', 'Male', '2020-01-08 13:19:57', 'Yes', 'pass', '1234567890', '500', 'Approved', 'United States', 'Hospital'),
(83, 'Lal Path Lab', 'lalpathlab@gmail.com', '0xed3504a64c5336ac6dd6cb7c543170c546e15056', 'default.jpg', 'Male', '2020-01-09 05:49:53', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Laboratory'),
(84, 'Lal Path Labs', 'admin@lalpathlab.com', '0x74b9445784be8284657762817ab90c33a6391e98', 'default.jpg', 'Male', '2020-01-09 06:05:26', 'Yes', 'pass', '1234567890', '500', 'Approved', 'United States', 'Laboratory'),
(85, 'Wallsgreen', 'admin@wallsgreen.com', '0x5b21eb9f93fb473649efd74f9718868c1ea6f095', 'default.jpg', 'Male', '2020-01-13 10:15:41', 'Yes', 'pass', '1234567890', '500', 'Approved', 'United States', 'Pharmacy'),
(86, 'NNC Lab', 'rabi@rabilive.com', '0x99db73fcd794f94f78db058952fdeaa2c11c4d03', '158456307898-984343_infinity-vector-symbol-computer-infinite-logo.png', 'Male', '2020-03-18 20:24:38', 'Yes', '1234', '7987829007', '500', 'Approved', 'United States', 'Laboratory'),
(87, 'Walgreens', 'admin@walgreens.us', '0xb572d52b37e655311332526b072a98706f7a5b2e', 'default.jpg', 'Male', '2020-02-11 15:23:17', 'Yes', 'pass', '1234567890', '500', 'Pending', 'United States', 'Pharmacy'),
(88, 'Nili', 'nili.thp@gmail.com', '0xfc0de393030396a7c0ce4c4caac20724a6c031e2', 'default.jpg', 'Male', '2020-02-13 07:21:04', 'Yes', 'aydi573', '1234567890', '500', 'Pending', 'India', 'Laboratory'),
(89, 'Nili', 'nili.kbj@gmail.com', '0xad404f72427770db9b3fd8847f3670d5399a8413', 'default.jpg', 'Male', '2020-02-13 07:24:13', 'Yes', '12345', '1234567890', '500', 'Pending', 'India', 'Laboratory'),
(90, 'newdemo', 'newdemo@gmail.com', '0x086cedca1f09300b80159271684b702070356047', 'default.jpg', 'Male', '2020-02-14 09:17:10', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Laboratory'),
(91, 'kinie', 'kinie@iotied.io', '0xe720758dcd647c6597f337b251648d6b5e359826', 'default.jpg', 'Male', '2020-03-16 10:09:42', 'Yes', 'pass', '1234567890', '500', 'Approved', 'India', 'Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `street_number` varchar(50) NOT NULL,
  `po_box` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `company_identity` varchar(50) NOT NULL,
  `ein_number` varchar(50) NOT NULL,
  `primary_bank_name` varchar(50) NOT NULL,
  `primary_routing_no` varchar(50) NOT NULL,
  `primary_account_no` varchar(50) NOT NULL,
  `secondary_bank_name` varchar(50) NOT NULL,
  `secondary_routing_no` varchar(50) NOT NULL,
  `secondary_account_no` varchar(50) NOT NULL,
  `primary_first_name` varchar(40) NOT NULL,
  `primary_last_name` varchar(40) NOT NULL,
  `primary_email` varchar(50) NOT NULL,
  `primary_phone` varchar(20) NOT NULL,
  `primary_extension` varchar(30) NOT NULL,
  `secondary_first_name` varchar(40) NOT NULL,
  `secondary_last_name` varchar(40) NOT NULL,
  `secondary_email` varchar(50) NOT NULL,
  `secondary_phone` varchar(20) NOT NULL,
  `secondary_extension` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `user_id`, `street_name`, `street_number`, `po_box`, `city`, `state`, `zip`, `country`, `company_identity`, `ein_number`, `primary_bank_name`, `primary_routing_no`, `primary_account_no`, `secondary_bank_name`, `secondary_routing_no`, `secondary_account_no`, `primary_first_name`, `primary_last_name`, `primary_email`, `primary_phone`, `primary_extension`, `secondary_first_name`, `secondary_last_name`, `secondary_email`, `secondary_phone`, `secondary_extension`, `date`) VALUES
(6, 86, 'Shloka', '54545', '145235', 'Ranoli', 'Rajasthan', '745666', 'India', 'Designing', '4568556', 'ICICI', '4568522112', '5465444564', 'HDFC', '445453', '3566565', 'HDFC', 'Sharma', 'crazykane2000@gmail.com', '4569871235', '13136454654', 'HDFC', '5445645646', 'ae@hhjkhj.com', '45456456454', '3543254543', '2020-03-18 21:11:59'),
(7, 86, 'Shloka', '54545', '145235', 'Ranoli', 'Rajasthan', '745666', 'India', 'Designing', '4568556', 'ICICI', '4568522112', '5465444564', 'HDFC', '445453', '3566565', 'HDFC', 'Sharma', 'crazykane2000@gmail.com', '4569871235', '13136454654', 'HDFC', '5445645646', 'ae@hhjkhj.com', '45456456454', '3543254543', '2020-03-18 21:11:59'),
(8, 86, 'Shloka', '54545', '145235', 'Ranoli', 'Rajasthan', '745666', 'India', 'Designing', '4568556', 'ICICI', '5465444564', '4568522112', 'HDFC', '3566565', '445453', 'HDFC', 'Sharma', 'crazykane2000@gmail.com', '4569871235', '13136454654', 'HDFC', '5445645646', 'ae@hhjkhj.com', '45456456454', '3543254543', '2020-03-18 21:11:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator_super_user`
--
ALTER TABLE `administrator_super_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_token`
--
ALTER TABLE `buy_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_access`
--
ALTER TABLE `request_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator_super_user`
--
ALTER TABLE `administrator_super_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `buy_token`
--
ALTER TABLE `buy_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `request_access`
--
ALTER TABLE `request_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
