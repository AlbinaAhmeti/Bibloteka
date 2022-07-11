-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2021 at 02:11 PM
-- Server version: 10.3.27-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibllmga_bibloteka`
--

-- --------------------------------------------------------

--
-- Table structure for table `huate`
--

CREATE TABLE `huate` (
  `id` int(11) NOT NULL,
  `libriId` int(11) NOT NULL,
  `stafiId` int(11) NOT NULL,
  `studentiId` int(11) NOT NULL,
  `dataEMarrjes` date NOT NULL,
  `dataEKthimit` date NOT NULL,
  `statusi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `huate`
--

INSERT INTO `huate` (`id`, `libriId`, `stafiId`, `studentiId`, `dataEMarrjes`, `dataEKthimit`, `statusi`) VALUES
(34, 48, 1, 3, '2020-12-07', '2020-12-07', 'e marr'),
(35, 45, 1, 3, '2020-12-07', '2020-12-07', 'e kthyer'),
(37, 14, 1, 3, '2020-12-08', '2021-01-09', 'e marr'),
(40, 60, 52, 3, '2021-01-02', '2021-01-02', 'e kthyer');

-- --------------------------------------------------------

--
-- Table structure for table `kategorite`
--

CREATE TABLE `kategorite` (
  `id` int(11) NOT NULL,
  `emri` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategorite`
--

INSERT INTO `kategorite` (`id`, `emri`) VALUES
(1, 'Matematike'),
(2, 'Mjekesi');

-- --------------------------------------------------------

--
-- Table structure for table `librat`
--

CREATE TABLE `librat` (
  `id` int(11) NOT NULL,
  `stafiId` int(11) NOT NULL,
  `kategoriaId` int(11) NOT NULL,
  `titulli` varchar(50) NOT NULL,
  `autori` varchar(50) NOT NULL,
  `foto` longblob DEFAULT NULL,
  `isbn` varchar(50) NOT NULL,
  `rafti` varchar(255) NOT NULL,
  `faqet` int(100) NOT NULL,
  `signatura` varchar(255) NOT NULL,
  `vendi_botimit` varchar(100) NOT NULL,
  `dataEPublikimit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librat`
--

INSERT INTO `librat` (`id`, `stafiId`, `kategoriaId`, `titulli`, `autori`, `foto`, `isbn`, `rafti`, `faqet`, `signatura`, `vendi_botimit`, `dataEPublikimit`) VALUES
(11, 1, 2, 'Wylie Mccormick', 'Fraaund1', NULL, '123', 'A31', 123, 'ASR2323232D', 'Tirane', '2020-12-30'),
(12, 0, 2, 'Analize matematike 5', 'Bashkim Ruseti', NULL, '111111111111', 'B23', 233, 'ASeenje233', 'Prishtine', '1890-10-08'),
(14, 0, 2, 'Analize matematike 5666', 'Bashkim Ruseti', NULL, '1234567891234567', 'D52', 123, 'A239ejdj3', 'Prishtine', '2020-12-04'),
(44, 0, 1, 'Keely Foreman', 'Laboris modi aute no', 0x6277642e6a7067, '88', 'Asperiores sint in ', 6, 'Dolore quas consecte', 'Facere est minus eaq', '2020-12-04'),
(45, 0, 1, 'Cullen Shaw', 'Praesentium velit i', 0x302e706e67, '86', 'Aut sunt exercitatio', 82, 'Irure eligendi dolor', 'Quis quo est verita', '2020-12-04'),
(46, 0, 2, 'Signe Jacobson', 'Quidem ut architecto', 0x464951206c6f676f2e6a7067, '91', 'Iusto earum consecte', 68, 'Eligendi ullamco eni', 'Quia maxime ut iste ', '2020-12-04'),
(47, 52, 2, 'Chancellor Roberts', 'Aute illo esse qui d', 0x6277642e6a7067, '82', 'Hic dolor sed adipis', 13, 'Et cum voluptates in', 'Omnis optio magni n', '2020-12-04'),
(48, 52, 1, 'Igor James', 'Igor James', 0x302e706e67, '15', 'Quo aute quis necess', 36, 'Deleniti nihil qui r', 'Harum vel sunt qui ', '2020-12-04'),
(50, 1, 2, 'Charissa Dunlap', 'Laboriosam amet se', 0x526564204f6365616e2e6a7067, '32', 'Quod ad ipsum culpa', 46, 'Occaecat obcaecati u', 'In quaerat harum qui', '2020-12-30'),
(51, 1, 1, 'Karl James', 'Commodi rem aut susc', 0x73756e7365742e6a7067, '18', 'Non commodi obcaecat', 5, 'Est Nam qui et ut es', 'Quis ipsam quia est', '2021-01-01'),
(52, 1, 1, 'Karyn James', 'Commodi rem aut susc', 0x73756e7365742e6a7067, '18', 'Non commodi obcaecat', 5, 'Est Nam qui et ut es', 'Quis ipsam quia est', '2020-12-30'),
(53, 1, 1, 'Robin Craig', 'Omnis esse id quos', 0x43617074757265312e504e47, '60', 'Quaerat ullam fugiat', 2, 'Sit ut sint ab eum', 'Voluptate do tenetur', '2020-12-30'),
(54, 1, 2, 'Rogan Hanson', 'Earum aute est ut ex', 0x6c696768746e696e672d312e6a7067, '94', 'Eum velit sit labor', 60, 'Delectus facilis ve', 'Aut dignissimos pari', '2020-12-30'),
(55, 1, 2, 'Rafael Calhoun', 'Inventore perferendi', 0x4d69646e6967687420436974792e6a7067, '61', 'Voluptate dolorem pl', 50, 'Ea architecto archit', 'Quidem voluptate vol', '2020-12-30'),
(56, 1, 2, 'Zorita Page', 'Aut id sit magnam ', 0x424c41434b5f49495f6465736b746f702d312e6a7067, '72', 'Esse mollit nostrum ', 40, 'Error quidem qui con', 'Eos magnam reprehen', '2020-12-30'),
(57, 1, 2, 'Zorita Page', 'Aut id sit magnam ', 0x424c41434b5f49495f6465736b746f702d312e6a7067, '72', 'Esse mollit nostrum ', 40, 'Error quidem qui con', 'Eos magnam reprehen', '2020-12-30'),
(58, 1, 1, 'Guinevere Bean', 'Consequatur sit in ', 0x424c41434b5f49495f6465736b746f702d312e6a7067, '90', 'Aspernatur eiusmod n', 75, 'Mollitia consequat ', 'Soluta cupidatat vol', '2020-12-30'),
(59, 1, 2, 'Ava Palmer', 'Dolor sit magna qui ', 0x4d6f6f6e6c69742041737465726f69642e6a7067, '43', 'Et voluptate animi ', 46, 'Odio sint tempora ex', 'Cumque qui nulla aut', '2021-01-01'),
(60, 63, 1, 'Clirim', 'Clirim', 0x626c61636b2e6a7067, '111111111111111111', 'Clirim', 123, 'Clirim', 'Clirim', '2021-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `ngjarjet`
--

CREATE TABLE `ngjarjet` (
  `id` int(11) NOT NULL,
  `stafiId` int(11) NOT NULL,
  `titulli` varchar(255) NOT NULL,
  `permbajtja` text NOT NULL,
  `ora` time NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ngjarjet`
--

INSERT INTO `ngjarjet` (`id`, `stafiId`, `titulli`, `permbajtja`, `ora`, `data`) VALUES
(1, 1, 'Nasa Space App Challenge', 'Edhe kete vit u mbajt Nasa Space App Challenge 5 . Ky event u mbajt ne Prishtine, edhe kesaj here nga ICK. \r\n', '13:03:42', '2021-01-01'),
(8, 1, 'Adding a file to a repository using the command line', 'Adding a file to a repository using the command line is git add filename.txt, git commit -m \"message\" and in the end git push origin branchname.', '10:04:12', '2020-10-27'),
(9, 1, 'Ngjarja 2', 'Rerum voluptate volu', '00:00:00', '2021-01-01'),
(10, 1, 'Quod suscipit nostru', 'Aut voluptas eaque d', '00:00:00', '2021-01-01'),
(11, 63, 'Clirim', 'Ut aut nisi ad qui c\r\nClirirm', '13:00:00', '2021-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `stafi`
--

CREATE TABLE `stafi` (
  `id` int(11) NOT NULL,
  `emri` varchar(50) NOT NULL,
  `mbiemri` varchar(50) NOT NULL,
  `adresa` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `telefoni` varchar(50) DEFAULT NULL,
  `roli` int(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stafi`
--

INSERT INTO `stafi` (`id`, `emri`, `mbiemri`, `adresa`, `email`, `password`, `telefoni`, `roli`) VALUES
(1, 'Medina', 'Ahmeti', 'Kosovo', 'medinaah1@gmail.com', '$2y$10$FYmr1J05ShuaKvQPv6UcbOqyKykFfKlG3MqQvf/bVd2.YM/oFmnwy', '49470784', 1),
(52, 'Argjend', 'Llumnica', 'Barileve', 'argjend.llumnica@gmail.com', '$2y$10$7wUq9NiUBmL3gC2OBcHBxere4Bu2KJkAvMQQ8yPgfWI8ED4OVybGq', '45896752', 0),
(63, 'Clirimi', 'Salihu', 'Kosove', 'clirimkastrati0@gmail.com', '$2y$10$qlqK2OnMkuB6vl0Vzn0tZOH9WG0jvOc34slJmja8mqjvN8GkR2jji', '46528789', 0);

-- --------------------------------------------------------

--
-- Table structure for table `studentet`
--

CREATE TABLE `studentet` (
  `id` int(11) NOT NULL,
  `stafiId` int(11) NOT NULL,
  `nr_serik` int(11) NOT NULL,
  `emri` varchar(50) NOT NULL,
  `mbiemri` varchar(50) NOT NULL,
  `adresa` varchar(150) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(256) NOT NULL,
  `telefoni` varchar(50) DEFAULT NULL,
  `roli` int(20) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentet`
--

INSERT INTO `studentet` (`id`, `stafiId`, `nr_serik`, `emri`, `mbiemri`, `adresa`, `email`, `password`, `telefoni`, `roli`) VALUES
(3, 1, 1234, 'Albine', 'Ahmeti', 'Kosova', 'albina@gmail.com', '$2y$10$t8XQVkZJwygmTUprlaDKS.Yki/QKc27g2ByaM6bv.erVn9fYlbBCu', '789456123', 2),
(42, 1, 1245, 'Altin', 'Ahmeti', 'Lipjan, Kosove', 'altin@gmail.com', '$2y$10$wfqJLNhRQ7to9XYjmuk6SOj.hFwLl4helcx6k0EyX/iKpIral1LNe', '1111111111', 2),
(45, 63, 4522, 'dorris', 'manxhuka', 'ddd', 'dorris.bookwormsdevs@gmail.com', '$2y$10$vdgMricr3ncGM7UDnLdj0OlwtUASlviufsqkjlhnDx/0gG4KNR9P.', '38349305664', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `huate`
--
ALTER TABLE `huate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `libriId` (`libriId`),
  ADD KEY `stafiId` (`stafiId`),
  ADD KEY `studentiId` (`studentiId`);

--
-- Indexes for table `kategorite`
--
ALTER TABLE `kategorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librat`
--
ALTER TABLE `librat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategoriaId` (`kategoriaId`);

--
-- Indexes for table `ngjarjet`
--
ALTER TABLE `ngjarjet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stafiId` (`stafiId`);

--
-- Indexes for table `stafi`
--
ALTER TABLE `stafi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `studentet`
--
ALTER TABLE `studentet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stafiId` (`stafiId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `huate`
--
ALTER TABLE `huate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `kategorite`
--
ALTER TABLE `kategorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `librat`
--
ALTER TABLE `librat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `ngjarjet`
--
ALTER TABLE `ngjarjet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stafi`
--
ALTER TABLE `stafi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `studentet`
--
ALTER TABLE `studentet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `huate`
--
ALTER TABLE `huate`
  ADD CONSTRAINT `huate_ibfk_1` FOREIGN KEY (`libriId`) REFERENCES `librat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `huate_ibfk_2` FOREIGN KEY (`stafiId`) REFERENCES `stafi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `huate_ibfk_3` FOREIGN KEY (`studentiId`) REFERENCES `studentet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `librat`
--
ALTER TABLE `librat`
  ADD CONSTRAINT `librat_ibfk_1` FOREIGN KEY (`kategoriaId`) REFERENCES `kategorite` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ngjarjet`
--
ALTER TABLE `ngjarjet`
  ADD CONSTRAINT `ngjarjet_ibfk_1` FOREIGN KEY (`stafiId`) REFERENCES `stafi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studentet`
--
ALTER TABLE `studentet`
  ADD CONSTRAINT `studentet_ibfk_1` FOREIGN KEY (`stafiId`) REFERENCES `stafi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
