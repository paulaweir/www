-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2013 at 04:17 PM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `finalem`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` varchar(245) DEFAULT NULL,
  `correct` enum('0','1') DEFAULT '0',
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`answer_id`, `question_id`, `answer_text`, `correct`) VALUES
(1, 1, 'two months', '0'),
(2, 1, 'six months', '1'),
(3, 1, 'one year', '0'),
(4, 2, '75 per cent', '0'),
(5, 2, '50 per cent', '0'),
(6, 2, '40 per cent', '1'),
(7, 3, 'three', '0'),
(8, 3, 'seven', '1'),
(9, 3, 'ten', '0'),
(10, 4, 'Barbara Bush', '1'),
(11, 4, 'Mammie Eisenhower', '0'),
(12, 4, 'Jackie Kennedy Onasis', '0'),
(13, 5, '50 per cent', '0'),
(14, 5, '35 per cent', '0'),
(15, 5, '20 per cent', '1'),
(16, 6, 'buys all the alcohol', '1'),
(17, 6, 'pays for groomsmen wear', '0'),
(18, 6, 'pays for the marriage license', '0'),
(19, 7, 'parents', '0'),
(20, 7, 'bride', '1'),
(21, 7, 'groom', '0'),
(22, 8, 'wear a veil', '1'),
(23, 8, 'wear white', '0'),
(24, 8, 'wear something blue', '0'),
(25, 9, 'to honor Junus god of marriage', '0'),
(26, 9, 'Considered lucky to marry on first full moon of summer', '0'),
(27, 9, 'People were clean from annual may baths', '1'),
(28, 10, 'To shower a blessing', '0'),
(29, 10, 'Ward of evil spirits', '0'),
(30, 10, 'Symbol of fertility', '1'),
(31, 11, 'February', '0'),
(32, 11, 'December', '1'),
(33, 11, 'April', '0'),
(34, 12, '100000', '1'),
(35, 12, '500000', '0'),
(36, 12, '1000000', '0'),
(37, 13, 'Dried Peas', '0'),
(38, 13, 'Dried Grapes', '0'),
(39, 13, 'Wheat', '1'),
(40, 14, 'Kiss me Kate', '0'),
(41, 14, 'My Fair Lady', '1'),
(42, 14, 'Dolly', '0'),
(43, 15, '126', '0'),
(44, 15, '142', '0'),
(45, 15, '153', '1'),
(46, 16, 'fertility herbs', '0'),
(47, 16, 'loincloth', '1'),
(48, 16, 'receipt of ownership', '0'),
(49, 17, 'Fresh', '0'),
(50, 17, 'Virgin', '0'),
(51, 17, 'Cook', '1'),
(52, 18, 'A bar song', '0'),
(53, 18, 'An Opera', '1'),
(54, 18, 'A music box', '0'),
(55, 19, 'Need a hand to place ring on', '1'),
(56, 19, 'Women disguised hands with gloves when single', '0'),
(57, 19, 'Holding hands as singles was not allowed', '0'),
(58, 20, 'Chest filled with linens hand embroidered when girl young', '1'),
(59, 20, 'Chest of fertility herbs', '0'),
(60, 20, 'Symbol for womans heart filled with love for a man', '0'),
(61, 21, 'Before wedding women of town would make quilt for bride', '0'),
(62, 21, 'When a woman was refused a dowry by her father in holland the town collected items for her for one', '1'),
(63, 21, 'Watering down a bride to make her pure before marriage', '0'),
(64, 22, 'Romans kissed each other on the cheek to seal a contract', '0'),
(65, 22, 'Romans believed souls were exchanged during the kiss', '0'),
(66, 22, 'Both', '0'),
(67, 23, 'To never be in debt', '0'),
(68, 23, 'To be happy', '1'),
(69, 23, 'To be indebted to her husband', '0');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_text` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_text`) VALUES
(1, 'engagements average how long'),
(2, 'How many brides actually marry the first man they fall in love with'),
(3, 'the average person will fall in love how many times before they get married'),
(4, 'I married the first man I ever kissed when I tell my children that they want to throw up who_who said this'),
(5, 'how many men still propose in the traditional way _ on their knee'),
(6, 'What is the best man job in a greek wedding'),
(7, 'the first toast in an american wedding is made to whom'),
(8, 'if it is not the brides first wedding what is she not suppose to do'),
(9, 'Why in the middle ages was june was called the marriage month'),
(10, 'For what reason is rice thrown traditionally after the wedding ceremony'),
(11, 'What is the most popular month to get engaged'),
(12, 'Las Vegas is called the marriage capitol of the world how many licences are issued there annually'),
(13, 'What is thrown instead of rice after a french wedding ceremony'),
(14, 'Get me to the church on time is a song from what musical'),
(15, 'The average three tier wedding cake will serve how many people'),
(16, 'What did the mother in law give the groom at an aztec wedding'),
(17, 'What does bride mean in old english'),
(18, 'here comes the bride is from what musical score originally'),
(19, 'From what custom does the phrase your hand in marriage come from'),
(20, 'What is a hope chest'),
(21, 'Bridal Shower comes from what custom'),
(22, 'The Bride and Groom kiss at the end of the ceremony based on what roman belief'),
(23, 'What does something borrowed stand for in something old new borrowed and blue');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quiz_id` int(11) DEFAULT '1',
  `question_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`id`, `quiz_id`, `question_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 22),
(8, 1, 18),
(9, 1, 11),
(10, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `scoreboard`
--

CREATE TABLE `scoreboard` (
  `scoreboard_id` int(11) NOT NULL AUTO_INCREMENT,
  `fk_user_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`scoreboard_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=187 ;

--
-- Dumping data for table `scoreboard`
--

INSERT INTO `scoreboard` (`scoreboard_id`, `fk_user_id`, `answer_id`) VALUES
(68, 5, 32),
(69, 5, 47),
(70, 6, 2),
(79, 2, 2),
(80, 2, 5),
(81, 2, 8),
(82, 2, 10),
(83, 2, 15),
(84, 2, 16),
(85, 2, 66),
(86, 2, 53),
(87, 2, 32),
(88, 2, 47),
(89, 3, 2),
(90, 3, 5),
(91, 3, 8),
(92, 3, 10),
(93, 3, 13),
(94, 3, 53),
(95, 1, 2),
(96, 1, 5),
(97, 1, 66),
(98, 1, 32),
(99, 1, 46),
(100, 4, 2),
(101, 4, 8),
(102, 4, 10),
(103, 4, 13),
(104, 4, 66),
(105, 4, 53),
(106, 6, 2),
(107, 6, 5),
(108, 1, 2),
(109, 1, 47),
(110, 4, 2),
(111, 4, 8),
(112, 4, 10),
(113, 4, 14),
(114, 4, 16),
(115, 4, 66),
(116, 4, 47),
(117, 4, 2),
(118, 4, 16),
(119, 4, 66),
(120, 4, 46),
(121, 6, 2),
(122, 6, 8),
(123, 6, 12),
(124, 6, 13),
(125, 6, 66),
(126, 6, 53),
(127, 6, 47),
(128, 3, 1),
(129, 6, 2),
(130, 6, 53),
(131, 5, 10),
(132, 5, 14),
(133, 5, 47),
(134, 4, 2),
(135, 4, 66),
(136, 4, 53),
(137, 2, 10),
(138, 5, 8),
(139, 5, 10),
(140, 5, 66),
(141, 5, 53),
(142, 5, 8),
(143, 5, 10),
(144, 5, 66),
(145, 5, 53),
(146, 1, 2),
(147, 1, 16),
(148, 1, 66),
(149, 3, 53),
(150, 3, 32),
(151, 5, 2),
(152, 5, 53),
(153, 4, 2),
(154, 4, 53),
(155, 4, 47),
(156, 4, 2),
(157, 4, 5),
(158, 3, 6),
(159, 6, 1),
(160, 6, 10),
(161, 6, 31),
(162, 4, 5),
(163, 4, 32),
(164, 4, 3),
(165, 4, 1),
(166, 4, 46),
(167, 5, 2),
(168, 5, 47),
(169, 6, 2),
(170, 5, 6),
(171, 5, 2),
(172, 6, 3),
(173, 5, 2),
(174, 3, 2),
(175, 3, 66),
(176, 3, 53),
(177, 4, 4),
(178, 4, 10),
(179, 5, 5),
(180, 5, 12),
(181, 4, 2),
(182, 4, 47),
(183, 2, 14),
(184, 2, 18),
(185, 2, 65),
(186, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `pk_user_id` int(150) NOT NULL AUTO_INCREMENT,
  `fk_wedding_id` int(150) NOT NULL,
  `user_first_name` varchar(350) NOT NULL,
  `user_last_name` varchar(350) NOT NULL,
  `user_email` varchar(350) NOT NULL,
  PRIMARY KEY (`pk_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`pk_user_id`, `fk_wedding_id`, `user_first_name`, `user_last_name`, `user_email`) VALUES
(1, 1, 'joe', 'smith', 'joe@email.com'),
(2, 1, 'martha', 'kane', 'martha@email.com'),
(3, 1, 'Tim', 'Roth', 'tim@email.com'),
(4, 1, 'Rose', 'Murphy', 'rose@email.com'),
(5, 1, 'ed', 'ward', 'ed@email.com'),
(6, 1, 'jane', 'doe', 'jane@email.com');
