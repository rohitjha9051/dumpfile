-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2024 at 09:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_quiz.oops`
--
CREATE DATABASE IF NOT EXISTS `database_quiz.oops` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database_quiz.oops`;

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `exam`
--
CREATE DATABASE IF NOT EXISTS `exam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `exam`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'rohitjha01@gmail.com', 'rahul@01');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d7a'),
('5b141d712647f', '5b141d71485b9'),
('5b141d718f873', '5b141d71978be'),
('5b141d71ddb46', '5b141d71e5f2b'),
('5b141d721a738', '5b141d7222820'),
('5b141d7260b7d', '5b141d7268fcb'),
('5b141d72a6fa1', '5b141d72aefcb'),
('5b141d72d7a1c', '5b141d72dc234'),
('5b141d731429b', '5b141d731c234'),
('5b141d7345176', '5b141d734cd10'),
('5b141d737ddfc', '5b141d73858d0'),
('5b1422651fdde', '5b1422654ab3a'),
('5b14226574ed5', '5b1422657d052'),
('5b142265b5d08', '5b142265c09e3'),
('5b1422661d93f', '5b14226635df5'),
('5b14226663cf4', '5b1422666bf2b'),
('5b1422669481b', '5b1422669c8dc'),
('5b142266c525c', '5b142266cd353'),
('5b14226711d91', '5b14226719fa0'),
('5b1422674286d', '5b1422674aa0b'),
('5b1422677371f', '5b1422677b3e9');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'Jawaharlal Nehru ', '5b13ed3a9436a'),
('5b13ed3a6e006', 'Narendra Modi', '5b13ed3a94374'),
('5b13ed3a6e006', 'Dr. Manmohan Singh', '5b13ed3a94377'),
('5b13ed3a6e006', 'Rajiv Gandhi', '5b13ed3a94379'),
('5b13ed72489d8', 'Punjab', '5b13ed7263d70'),
('5b13ed72489d8', 'New Delhi', '5b13ed7263d7a'),
('5b13ed72489d8', 'Gujrat', '5b13ed7263d7d'),
('5b13ed72489d8', 'Bihar', '5b13ed7263d80'),
('5b141d712647f', 'Bengal Tiger', '5b141d71485b9'),
('5b141d712647f', 'Lion', '5b141d71485dc'),
('5b141d712647f', 'Wolf', '5b141d71485e0'),
('5b141d712647f', 'Dog', '5b141d71485e4'),
('5b141d718f873', 'Lotus', '5b141d71978be'),
('5b141d718f873', 'Marie Gold', '5b141d71978cc'),
('5b141d718f873', 'Sun Flower', '5b141d71978d1'),
('5b141d718f873', 'Rose', '5b141d71978d4'),
('5b141d71ddb46', 'The Ganges', '5b141d71e5f2b'),
('5b141d71ddb46', 'Jamuna', '5b141d71e5f3c'),
('5b141d71ddb46', 'Hoogly River', '5b141d71e5f43'),
('5b141d71ddb46', 'Sarswati ', '5b141d71e5f48'),
('5b141d721a738', 'Mahatma Gandhi', '5b141d7222820'),
('5b141d721a738', 'Jawahar lal Nehru', '5b141d722282f'),
('5b141d721a738', 'Narendra Modi', '5b141d7222880'),
('5b141d721a738', 'Rajiv Gandhi', '5b141d7222884'),
('5b141d7260b7d', 'Punjab', '5b141d7268b8a'),
('5b141d7260b7d', 'Haryana', '5b141d7268b95'),
('5b141d7260b7d', 'Delhi', '5b141d7268b98'),
('5b141d7260b7d', 'All of the above', '5b141d7268b9a'),
('5b141d72a6fa1', 'Hindi', '5b141d72aefcb'),
('5b141d72a6fa1', 'Bengali', '5b141d72aefd8'),
('5b141d72a6fa1', 'Gujrati', '5b141d72aefdc'),
('5b141d72a6fa1', 'Maithili', '5b141d72aefe0'),
('5b141d72d7a1c', 'Diwali', '5b141d72dfa7b'),
('5b141d72d7a1c', 'Holi', '5b141d72dfa85'),
('5b141d72d7a1c', 'Eid', '5b141d72dfa88'),
('5b141d72d7a1c', 'Durga Puja', '5b141d72dfa8b'),
('5b141d731429b', 'Rabindranath Tagore', '5b141d731c234'),
('5b141d731429b', 'Mahatma Gandhi', '5b141d731c242'),
('5b141d731429b', 'Narendra Modi', '5b141d731c248'),
('5b141d731429b', 'Bhagat Singh', '5b141d731c24b'),
('5b141d7345176', 'Kangchenjunga', '5b141d734cd10'),
('5b141d7345176', 'Himalaya', '5b141d734cd1b'),
('5b141d7345176', 'Tam Jhum', '5b141d734cd1d'),
('5b141d7345176', 'Namcha Barua', '5b141d734cd20'),
('5b141d737ddfc', 'Field Hocky', '5b141d73858d0'),
('5b141d737ddfc', 'Cricket', '5b141d73858df'),
('5b141d737ddfc', 'Football', '5b141d73858e3'),
('5b141d737ddfc', 'Batminton', '5b141d73858e8'),
('5b1422651fdde', 'Dr. Rajendra Prasad', '5b1422654ab3a'),
('5b1422651fdde', 'Draupdi Murmur', '5b1422654ab48'),
('5b1422651fdde', 'Abdul Kalam', '5b1422654ab4d'),
('5b1422651fdde', 'Ramnath Kovind', '5b1422654ab51'),
('5b14226574ed5', 'Goa', '5b1422657d052'),
('5b14226574ed5', 'Kolkata', '5b1422657d05f'),
('5b14226574ed5', 'Uttar Pradesh', '5b1422657d064'),
('5b14226574ed5', 'West Bengal', '5b1422657d069'),
('5b142265b5d08', 'Indian Ruppees(INR)', '5b142265c09e3'),
('5b142265b5d08', 'Dollar', '5b142265c09f5'),
('5b142265b5d08', 'Euro', '5b142265c09fa'),
('5b142265b5d08', 'Riyad', '5b142265c09ff'),
('5b1422661d93f', 'Banglore', '5b14226635df5'),
('5b1422661d93f', 'Kolkata', '5b14226635e04'),
('5b1422661d93f', 'Gujrat', '5b14226635e09'),
('5b1422661d93f', 'Bihar', '5b14226635e0d'),
('5b14226663cf4', 'Sardar Vallabhbhai Patel', '5b1422666bf2b'),
('5b14226663cf4', 'Narendra Modi', '5b1422666bf39'),
('5b14226663cf4', 'Yogi Aditya Nath', '5b1422666bf3e'),
('5b14226663cf4', 'Mamta Banerjee', '5b1422666bf42'),
('5b1422669481b', 'Kerela', '5b1422669c8dc'),
('5b1422669481b', 'Punjab', '5b1422669c8ea'),
('5b1422669481b', 'Mangalyaan', '5b1422669c8ef'),
('5b1422669481b', 'Delhi', '5b1422669c8f3'),
('5b142266c525c', 'Mangalyaan', '5b142266cd353'),
('5b142266c525c', 'Bihar', '5b142266cd361'),
('5b142266c525c', 'Gujrat', '5b142266cd365'),
('5b142266c525c', 'Bengal', '5b142266cd369'),
('5b14226711d91', 'The Taj Mahal', '5b14226719fa0'),
('5b14226711d91', 'Qutur Minar', '5b14226719fb1'),
('5b14226711d91', 'Lal Kila', '5b14226719fb7'),
('5b14226711d91', 'Victoria Memorial', '5b14226719fbb'),
('5b1422674286d', 'Gangotri River', '5b1422674a9ee'),
('5b1422674286d', 'Jamuna River', '5b1422674aa01'),
('5b1422674286d', 'Ganga River', '5b1422674aa06'),
('5b1422674286d', 'Nile River', '5b1422674aa0b'),
('5b1422677371f', 'Seven', '5b1422677b3e9'),
('5b1422677371f', 'Two', '5b1422677b3f7'),
('5b1422677371f', 'Three', '5b1422677b3fc'),
('5b1422677371f', 'Six', '5b1422677b400');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'Who was the first Prime Minister of India?', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'What is the capital of India?', 4, 1),
('5b141b8009cf0', '5b141d712647f', 'Which is the international animal of India?', 4, 1),
('5b141b8009cf0', '5b141d718f873', 'What is the national flower of india?', 4, 2),
('5b141b8009cf0', '5b141d71ddb46', 'Which is the longest river in india?', 4, 3),
('5b141b8009cf0', '5b141d721a738', 'Who is known as the father of the Nation in India?', 4, 4),
('5b141b8009cf0', '5b141d7260b7d', 'Which Indian state is known as the \"Land of Five Rivers\"?', 4, 5),
('5b141b8009cf0', '5b141d72a6fa1', 'What is the official language of India?', 4, 6),
('5b141b8009cf0', '5b141d72d7a1c', 'Which festival is known as the festival of Lights in India?', 4, 7),
('5b141b8009cf0', '5b141d731429b', 'Who wrote the indian National Anthem?', 4, 8),
('5b141b8009cf0', '5b141d7345176', 'Which is the highest mountain peak in India?', 4, 9),
('5b141b8009cf0', '5b141d737ddfc', 'What is the national sport of India?', 4, 10),
('5b141f1e8399e', '5b1422651fdde', 'Who was the first President of India?', 4, 1),
('5b141f1e8399e', '5b14226574ed5', 'Which is the smallest state in India by area?', 4, 2),
('5b141f1e8399e', '5b142265b5d08', 'What is the currency of India', 4, 3),
('5b141f1e8399e', '5b1422661d93f', 'Which city is Known as the Silicon Valley of India?', 4, 4),
('5b141f1e8399e', '5b14226663cf4', 'Who is Known as the Iron Man of India?', 4, 5),
('5b141f1e8399e', '5b1422669481b', 'Which state in India is known for its backwaters?', 4, 6),
('5b141f1e8399e', '5b142266c525c', 'What is the name of the Indian Space Research Organisation (ISRO) Mars orbiter Mission?', 4, 7),
('5b141f1e8399e', '5b14226711d91', 'Which historical monument in India was built by shah Jahan in memory of his wife  Mumtaz Mahal?', 4, 8),
('5b141f1e8399e', '5b1422674286d', 'What is the longest river in the world?', 4, 9),
('5b141f1e8399e', '5b1422677371f', 'How many continents are in the world?', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('5b141b8009cf0', 'General Knowledge (Paper 2)', 3, 1, 10, '2024-06-29 04:42:57'),
('5b141f1e8399e', 'General Knowledge (Paper 1)', 3, 1, 10, '2024-06-29 04:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Rahul ', 'BPPIMT', 'rahul@gmail.com', 'rahul@1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'signup', 'table', 'database_quiz.oops', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"exam\",\"table\":\"answer\"},{\"db\":\"exam\",\"table\":\"options\"},{\"db\":\"exam\",\"table\":\"quiz\"},{\"db\":\"exam\",\"table\":\"history\"},{\"db\":\"exam\",\"table\":\"user\"},{\"db\":\"exam\",\"table\":\"questions\"},{\"db\":\"exam\",\"table\":\"admin\"},{\"db\":\"exam\",\"table\":\"rank\"},{\"db\":\"database_quiz.oops\",\"table\":\"signup\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-29 05:43:34', '{\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
