-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 07:46 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--
CREATE DATABASE IF NOT EXISTS `cms` DEFAULT CHARACTER SET latin1 COLLATE utf8_general_ci;
USE `cms`;
-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Java'),
(2, 'UI'),
(8, 'C#'),
(9, 'UX'),
(10, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(50) NOT NULL DEFAULT 'disapproved',
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 1, 'yukta', 'yukta@gmail.com', 'useless', 'approved ', '2019-01-03'),
(3, 2, 'guest', 'guest123@gmail.com', 'nice', 'approved ', '2019-01-03'),
(4, 6, 'guestuser', 'user123@gmail.com', 'bullshit', 'approved ', '2019-01-03'),
(5, 2, 'yuku', 'yuku@gmail.com', 'not worth', 'disapproved ', '2019-01-03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_cat_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL DEFAULT '0',
  `post_status` varchar(255) NOT NULL,
  `post_views_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_cat_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'Multithreading', '10', '2018-12-03', 'multithreading.jpeg', 'Multithreading is an ablitity of Os to support multiple threads in a single process', 'java,multithreading', 0, 'published', 0),
(2, 2, 'How to select Colors?', '7', '2018-12-19', 'ui.jpeg', 'There are many ways to choose colors.\r\nusually our screen deals with RGB color format or Hex code.', 'colors, ui ,rohit', 0, 'draft', 0),
(4, 8, 'context in C#', '7', '2018-12-28', 'c_sharp_hero.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam dolor doloremque expedita explicabo fuga fugit itaque, labore laboriosam neque nihil, officia quas quisquam saepe tempora, totam voluptas? Aliquam, aperiam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam dolor doloremque expedita explicabo fuga fugit itaque, labore laboriosam neque nihil, officia quas quisquam saepe tempora, totam voluptas? Aliquam, aperiam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam dolor doloremque expedita explicabo fuga fugit itaque, labore laboriosam neque nihil, officia quas quisquam saepe tempora, totam voluptas? Aliquam, aperiam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam dolor doloremque expedita explicabo fuga fugit itaque, labore laboriosam neque nihil, officia quas quisquam saepe tempora, totam voluptas? Aliquam, aperiam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam dolor doloremque expedita explicabo fuga fugit itaque, labore laboriosam neque nihil, officia quas quisquam saepe tempora, totam voluptas? Aliquam, aperiam.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium aperiam dolor doloremque expedita explicabo fuga fugit itaque, labore laboriosam neque nihil, officia quas quisquam saepe tempora, totam voluptas? Aliquam, aperiam.', 'c#,Yukta', 0, 'published', 0),
(6, 10, 'pointers in c', '10', '2018-12-28', 'c.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque deserunt doloribus eaque enim eveniet necessitatibus porro provident quae quibusdam tempora. Assumenda consequuntur doloremque eveniet fuga harum impedit officia perspiciatis sapiente?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque deserunt doloribus eaque enim eveniet necessitatibus porro provident quae quibusdam tempora. Assumenda consequuntur doloremque eveniet fuga harum impedit officia perspiciatis sapiente?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque deserunt doloribus eaque enim eveniet necessitatibus porro provident quae quibusdam tempora. Assumenda consequuntur doloremque eveniet fuga harum impedit officia perspiciatis sapiente?\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque deserunt doloribus eaque enim eveniet necessitatibus porro provident quae quibusdam tempora. Assumenda consequuntur doloremque eveniet fuga harum impedit officia perspiciatis sapiente?', 'c, c-programming,dkh', 0, 'draft', 0),
(8, 10, 'Pointers', '7', '2019-01-29', 'c.png', ' loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem', 'C,pointers', 0, 'draft', 0),
(10, 9, 'User experience', '7', '2019-02-03', 'ux.png', '<h1><strong>hello this is first post</strong></h1>\r\n<p><strong>Welcome to UX</strong></p>', 'UX, User Desgin, Yuku', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `role` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `last_name`, `email`, `image`, `role`, `token`) VALUES
(7, 'yuku', '$2y$10$i97SBFweqmocXo2DjZmUXOJte64RRqxiqBuxR.gDbgZa3ZR79kSK2', 'Yukta', 'Peswani', 'yukta@gmail.com', 'favicon.png', 'super_admin', ''),
(10, 'DKH', '$2y$10$lrKUxdDOl.mgYp.gboN9selUqUnyuJNdQkuPdYbCc792zVRz96FmC', 'Dhiresh', 'hirani', 'DKH@gmail.com', '13321126_1619213221739036_1281718465_o.jpg', 'subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
