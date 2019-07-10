-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2019 at 10:40 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(7) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(300) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Birthday_Date` varchar(11) NOT NULL,
  `adminUser` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `Name`, `Email`, `Password`, `Gender`, `Birthday_Date`, `adminUser`) VALUES
(25, 'sri', 'sri@gmail.com', '92392', 'female', '1995-01-01', 0),
(26, 'sai', 'sai@gmail.com', '$2y$10$WPFoetadRLELomAU9Q7B3.gFUY1gcC0lidt73jLPfbwR.8pP/Ybqe', 'male', '1995-02-02', 0),
(27, 'suma', 'suma@gmail.com', '$2y$10$W58hGkwxFD5d7n/iNKNZZ.JNUBmsSvibf8GzZXoK90HUxulJ9b/oa', 'female', '1995-03-03', 0),
(28, 'bhavya', 'bhavya@gmail.com', '$2y$10$iWR07ws9QMfwBtbZA4cWCOIxkgzrVIbGNBS9qTfQAPw1Szh6aZnbq', 'female', '1994-07-15', 0),
(29, 'John', 'john123@gmail.com', '$2y$10$FhnG36mPjoBr5uks5hL5Bex1UhqXtq6oACV1XkBU0S2A6sniurW4u', 'male', '1992-07-23', 0),
(30, 'sam', 'sam123@gmail.com', '$2y$10$LAiFlan7g4LBsutsXL2Az.DMhcFMqPiMTl4fCFPgm0QqQPTVzq0QK', 'female', '1991-02-22', 0),
(33, 'a', 'a@gmail.com', '$2y$10$vPhoQUiMd8ykKMRzTnXjuueFBUu0GrmeUIiuT1tWbKV6JqEDWnL3S', 'male', '1111-01-01', 0),
(36, 'Hema', 'hema@gmail.com', '$2y$10$Tf/y.JFotc0rC2a88puuDONTptLNshml9.zquiZ559in2v7CRPcNi', 'female', '2222-02-02', 0),
(37, 'Hey', 'hey@gmail.com', '$2y$10$C.ZujyQj0Rt1QwSAzQPFyevV11WUtyL637tlJTY0Baeaq4ogW2rtC', 'female', '1111-11-11', 0),
(38, 'fix', 'fix@gmail.com', '$2y$10$drmBo3JJoMYi5F3GOIO9TOr87FZLgpHzWgX1ySscjEt6db4U3USMK', 'female', '4444-04-04', 0),
(39, 'Hari', 'abc@gmail.com', '$2y$10$VBw0VkzTYbU9dcssoTg1mObuHI7buxaRizzPBflrMnxWEwlo.V89m', 'male', '0004-02-02', 0),
(40, 'Hari', 'abc@gmail.com', '$2y$10$kHvydlUURs7yqvDq1Ux7we.SBf72FlHKsMaABC1OnIXiVN4448JEW', 'male', '0004-02-02', 0),
(41, 'Swapna', 'chswapnasmailbox@gmail.com', '87041', 'female', '1995-12-19', 0),
(42, 'roja', 'roja@gmail.com', '$2y$10$bk/DT1PXXcbbUYzJ60z.1.KobZHC.Gfe.f7O7JSndDX3ICn2KLK0u', 'female', '1999-02-22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_privacy`
--

CREATE TABLE `users_privacy` (
  `user_id` int(7) NOT NULL,
  `post_lookup_privacy` varchar(25) NOT NULL DEFAULT 'public',
  `addPost_privacy` varchar(25) NOT NULL DEFAULT 'public',
  `reviewPost` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_privacy`
--

INSERT INTO `users_privacy` (`user_id`, `post_lookup_privacy`, `addPost_privacy`, `reviewPost`) VALUES
(28, 'public', 'public', 0),
(28, 'public', 'public', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_cover_pic`
--

CREATE TABLE `user_cover_pic` (
  `cover_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_friends`
--

CREATE TABLE `user_friends` (
  `user_id` int(7) NOT NULL,
  `friend_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_friends`
--

INSERT INTO `user_friends` (`user_id`, `friend_id`) VALUES
(25, 26),
(25, 27),
(26, 25),
(26, 27),
(26, 42),
(27, 26),
(27, 42),
(33, 27),
(33, 29),
(42, 25),
(42, 26),
(42, 27);

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

CREATE TABLE `user_messages` (
  `user_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message_id` text NOT NULL,
  `message_content` text NOT NULL,
  `sent` text NOT NULL,
  `Attachment` text NOT NULL,
  `thread` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`user_id`, `sender_id`, `message_id`, `message_content`, `sent`, `Attachment`, `thread`) VALUES
(25, 26, '2526Apr302019034952AM', 'Hii', 'Apr-30-2019 03:49:52 AM', '', 'Hii'),
(25, 26, '2526Apr302019035017AM', 'Hello', 'Apr-30-2019 03:50:17 AM', '', 'Hello'),
(25, 26, '2526Apr302019035107AM', 'Hey', 'Apr-30-2019 03:51:07 AM', '', 'Hey \n Hii');

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `notify_id` int(7) NOT NULL,
  `from_user_id` int(7) NOT NULL,
  `to_user_id` int(7) NOT NULL,
  `post_txt` text NOT NULL,
  `post_pic` varchar(150) NOT NULL,
  `post_time` varchar(30) NOT NULL,
  `priority` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `post_txt` text NOT NULL,
  `post_pic` varchar(150) NOT NULL,
  `post_time` varchar(30) NOT NULL,
  `priority` varchar(8) NOT NULL,
  `to_user_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`post_id`, `user_id`, `post_txt`, `post_pic`, `post_time`, `priority`, `to_user_id`) VALUES
(80, 27, 'This is Private pic.', '3.jpg', '19-4-2019 15:57', 'Private', 0),
(81, 25, 'This is Sri..', '5.jpg', '19-4-2019 15:58', 'Public', 0),
(82, 25, 'Sri', '', '19-4-2019 16:2', 'Public', 0),
(83, 25, 'Suma text post.', '', '19-4-2019 16:2', 'Public', 0),
(84, 27, 'Suma window', '', '19-4-2019 16:4', 'Public', 0),
(87, 26, 'Sai Private image', '8.jpg', '19-4-2019 16:21', 'Private', 0),
(88, 26, 'Private text', '', '19-4-2019 16:23', 'Private', 0),
(89, 26, 'Public text', '', '19-4-2019 16:26', 'Public', 0),
(92, 25, 'Sri profile', 'bg-1.jpg', '19-4-2019 17:15', 'Public', 0),
(94, 29, 'hi', '', '25-4-2019 20:34', 'Public', 0),
(97, 29, 'Hello', '', '25-4-2019 20:39', 'Public', 0),
(98, 29, 'Hello', '', '25-4-2019 20:39', 'Public', 0),
(99, 30, 'sam profile', '', '25-4-2019 20:46', 'Public', 0),
(100, 25, 'added a new photo.', '999584_496501817111249_1587007043_n.jpg', '25-4-2019 20:59', 'Public', 0),
(101, 25, 'jsdnj', '3.mp4', '25-4-2019 21:4', 'Public', 0),
(102, 25, 'jsdnj', '3.mp4', '25-4-2019 21:4', 'Public', 0),
(103, 25, 'added a new photo.', '', '25-4-2019 21:6', 'Public', 0),
(104, 25, 'added a new photo.', '3.mp4', '25-4-2019 21:6', 'Public', 0),
(105, 25, 'added a new photo.', '3.mp4', '25-4-2019 21:6', 'Public', 0),
(108, 25, 'added a new photo.', '12.mp4', '25-4-2019 21:11', 'Public', 0),
(110, 28, 'hello', '', '25-4-2019 21:45', 'Public', 0),
(111, 28, 'hello', '', '25-4-2019 21:45', 'Public', 0),
(112, 28, 'hello', '', '25-4-2019 21:45', 'Public', 0),
(113, 28, 'hello', '', '25-4-2019 21:45', 'Public', 0),
(114, 27, 'vfhsh', '', '25-4-2019 22:6', 'Public', 0),
(115, 25, '3mb video', '3.mp4', '26-4-2019 13:57', 'Public', 0),
(116, 27, 'Suma FOF', '', '26-4-2019 19:49', 'FOF', 0),
(117, 27, 'Private', '', '26-4-2019 19:51', 'Private', 0),
(118, 27, 'Friends', '', '26-4-2019 19:51', 'Friends', 0),
(119, 26, 'Hi', '', '26-4-2019 19:53', 'Friends', 0),
(120, 26, 'public', '', '26-4-2019 19:54', 'Public', 0),
(121, 27, 'suma public', '', '26-4-2019 19:55', 'Public', 0),
(122, 25, 'sri private', '', '26-4-2019 19:57', 'Private', 0),
(123, 26, 'sai private', '', '26-4-2019 19:57', 'Private', 0),
(124, 27, 'public', '', '26-4-2019 20:49', 'Public', 0),
(125, 25, 'This is Suma', '', '27-4-2019 21:50', 'Public', 0),
(126, 25, 'This is sri on sum page', '', '27-4-2019 23:8', 'Public', 0),
(127, 25, 'Hi', '', '28-4-2019 0:54', 'Public', 25),
(128, 25, 'suma sai', '', '28-4-2019 0:54', 'Public', 0),
(129, 25, 'hey sai', '', '28-4-2019 0:55', 'Public', 26),
(130, 25, 'dajsfdsjfsjd', '', '28-4-2019 1:17', 'Public', 26),
(131, 27, 'gvhnvgh', '', '28-4-2019 1:18', 'Public', 26),
(135, 25, 'Sri on suma page', '6.jpg', '28-4-2019 14:54', 'Public', 27),
(136, 27, 'Test1:text', '', '28-4-2019 15:39', 'Public', 27),
(137, 27, 'Test1:pic', '9.jpg', '28-4-2019 15:40', 'Public', 27),
(138, 27, 'Test1:video', 'small.mp4', '28-4-2019 15:43', 'Public', 27),
(139, 27, 'Test2:text', '', '28-4-2019 15:43', 'Friends', 27),
(140, 26, 'this is sai', '', '28-4-2019 16:38', 'Public', 0),
(141, 26, 'this is sai friends', '', '28-4-2019 16:38', 'Friends', 0),
(142, 26, 'Sai friends', '', '28-4-2019 16:39', 'Friends', 26),
(143, 27, 'suam friends', '', '28-4-2019 16:39', 'Friends', 27),
(144, 27, 'suma friends', '', '28-4-2019 16:40', 'Friends', 0),
(145, 26, 'Hi', '', '28-4-2019 16:53', 'Public', 25),
(146, 25, 'hey', '', '29-4-2019 13:59', 'Public', 26),
(147, 26, 'jfslkjsdl', '', '29-4-2019 14:0', 'Friends', 26),
(148, 26, 'dfdsfds', '', '29-4-2019 14:0', 'FOF', 26),
(149, 25, 'sri friends', '', '29-4-2019 14:8', 'Friends', 25),
(150, 26, 'sai friends', '', '29-4-2019 14:10', 'Friends', 26),
(151, 27, 'suma friends', '', '29-4-2019 14:10', 'Friends', 27),
(152, 25, 'sdjfhkjs', '', '29-4-2019 18:16', 'Public', 25),
(153, 26, 'Sai message', '', '29-4-2019 18:18', 'Public', 26),
(154, 27, 'suma msg', '', '29-4-2019 18:18', 'FOF', 27),
(155, 25, 'sri fof', '', '29-4-2019 18:19', 'FOF', 25),
(156, 27, 'suma frnds', '', '29-4-2019 18:20', 'Friends', 27),
(157, 26, 'sai frnds', '', '29-4-2019 18:27', 'Friends', 26),
(158, 26, 'hii', 'bg-2.jpg', '29-4-2019 18:29', 'Friends', 25),
(159, 25, 'hey...', '12.mp4', '29-4-2019 18:43', 'Public', 26);

-- --------------------------------------------------------

--
-- Table structure for table `user_post_comment`
--

CREATE TABLE `user_post_comment` (
  `comment_id` int(7) NOT NULL,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `comment` text NOT NULL,
  `comment_pic` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post_comment`
--

INSERT INTO `user_post_comment` (`comment_id`, `post_id`, `user_id`, `comment`, `comment_pic`) VALUES
(23, 92, 25, 'Hi', ''),
(28, 89, 25, 'dbbw', ''),
(33, 98, 29, 'bshfdgfd', ''),
(34, 98, 29, 'bshfdgfd', ''),
(35, 105, 25, 'added a new photo.', 'Hydrangeas.jpg'),
(36, 105, 25, 'ehvdvwe', ''),
(37, 115, 25, 'Hi', ''),
(39, 115, 27, 'Nice', ''),
(40, 135, 27, 'nice', ''),
(41, 135, 27, 'Hi', ''),
(42, 131, 27, 'Hi', ''),
(43, 130, 27, 'Hi', ''),
(44, 140, 25, 'Hey ', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_status`
--

CREATE TABLE `user_post_status` (
  `status_id` int(7) NOT NULL,
  `post_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `status` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile_pic`
--

CREATE TABLE `user_profile_pic` (
  `profile_id` int(7) NOT NULL,
  `user_id` int(7) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile_pic`
--

INSERT INTO `user_profile_pic` (`profile_id`, `user_id`, `image`) VALUES
(22, 25, '4.jpg'),
(23, 29, 'my.jpg'),
(24, 30, '999584_496501817111249_1587007043_n.jpg'),
(25, 27, 'user-9.jpg'),
(26, 36, '4.jpg'),
(27, 37, 'user-1.jpg'),
(28, 38, '3.jpg'),
(29, 41, '5.jpg'),
(30, 42, '5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_secret_quotes`
--

CREATE TABLE `user_secret_quotes` (
  `user_id` int(7) NOT NULL,
  `Question1` varchar(50) NOT NULL,
  `Answer1` varchar(20) NOT NULL,
  `Question2` varchar(50) NOT NULL,
  `Answer2` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_status`
--

CREATE TABLE `user_status` (
  `user_id` int(7) NOT NULL,
  `status` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_privacy`
--
ALTER TABLE `users_privacy`
  ADD KEY `fk_userid` (`user_id`);

--
-- Indexes for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  ADD PRIMARY KEY (`cover_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_friends`
--
ALTER TABLE `user_friends`
  ADD PRIMARY KEY (`user_id`,`friend_id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD PRIMARY KEY (`status_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD PRIMARY KEY (`profile_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_secret_quotes`
--
ALTER TABLE `user_secret_quotes`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user_status`
--
ALTER TABLE `user_status`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  MODIFY `cover_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `notify_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_post`
--
ALTER TABLE `user_post`
  MODIFY `post_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  MODIFY `comment_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user_post_status`
--
ALTER TABLE `user_post_status`
  MODIFY `status_id` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  MODIFY `profile_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_privacy`
--
ALTER TABLE `users_privacy`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_cover_pic`
--
ALTER TABLE `user_cover_pic`
  ADD CONSTRAINT `user_cover_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_friends`
--
ALTER TABLE `user_friends`
  ADD CONSTRAINT `fk_friends_userid` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post`
--
ALTER TABLE `user_post`
  ADD CONSTRAINT `user_post_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_comment`
--
ALTER TABLE `user_post_comment`
  ADD CONSTRAINT `user_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `user_post` (`post_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_post_status`
--
ALTER TABLE `user_post_status`
  ADD CONSTRAINT `user_post_status_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_post_status_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_post` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_profile_pic`
--
ALTER TABLE `user_profile_pic`
  ADD CONSTRAINT `user_profile_pic_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
