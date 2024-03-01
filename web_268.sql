-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 02:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_268`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `quantity`) VALUES
(1, 1, 1),
(1, 2, 7),
(1, 3, 2),
(1, 33, 2),
(1, 34, 3),
(1, 35, 4),
(1, 65, 3),
(1, 66, 3),
(1, 67, 4),
(2, 2, 3),
(2, 4, 3),
(2, 5, 3),
(2, 6, 3),
(3, 1, 3),
(3, 2, 3),
(3, 4, 3),
(3, 5, 3),
(3, 33, 2),
(3, 34, 3),
(3, 37, 3),
(3, 38, 3),
(3, 39, 2),
(3, 40, 2),
(3, 67, 2),
(3, 68, 2),
(3, 69, 2),
(3, 70, 2),
(4, 1, 2),
(4, 2, 3),
(4, 4, 1),
(4, 5, 1),
(4, 33, 2),
(4, 34, 2),
(4, 36, 2),
(4, 37, 2),
(4, 65, 2),
(4, 68, 2),
(4, 69, 3),
(4, 71, 3),
(4, 72, 3),
(5, 1, 3),
(5, 3, 3),
(5, 33, 3),
(5, 34, 2),
(5, 35, 2),
(5, 38, 2),
(5, 65, 3),
(5, 66, 3),
(5, 67, 3),
(5, 69, 3),
(6, 1, 3),
(6, 2, 3),
(6, 4, 2),
(6, 5, 2),
(6, 6, 2),
(6, 9, 2),
(7, 3, 9),
(7, 35, 2),
(7, 65, 2),
(7, 66, 3),
(8, 1, 4),
(8, 3, 2),
(8, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `first_name`, `last_name`, `email`, `question`, `date`) VALUES
(1, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 00:00:00'),
(2, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:43:48'),
(3, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:45:27'),
(4, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:45:56'),
(5, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:47:29'),
(6, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:49:20'),
(7, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:51:28'),
(8, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:52:10'),
(9, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:52:27'),
(10, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:52:32'),
(11, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:55:09'),
(12, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:55:17'),
(13, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:55:36'),
(14, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:56:24'),
(15, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:56:43'),
(16, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:57:54'),
(17, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:58:00'),
(18, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 22:58:09'),
(19, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:01:40'),
(20, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:01:49'),
(21, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:02:17'),
(22, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:03:28'),
(23, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:03:46'),
(24, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:03:49'),
(25, 'Alex', 'Neher', 'aeneher@gmail.com', 'Test', '2024-01-28 23:03:59'),
(26, 'a', 'a', 'a@gmail.com', 'a', '2024-01-31 13:33:35'),
(27, 'a', 'a', 'a@gmail.com', 'Jerseys page doesn&#039;t work', '2024-02-29 19:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `first_name`, `last_name`, `email`, `order_date`) VALUES
(1, 'a', 'a', 'a@gmail.com', '2024-02-01 12:17:12'),
(2, 'a', 'a', 'a@gmail.com', '2024-02-01 12:18:02'),
(3, 'a', 'a', 'a@gmail.com', '2024-02-01 12:19:17'),
(4, 'b', 'b', 'b@gmail.com', '2024-02-01 12:20:47'),
(5, 'a', 'a', 'a@gmail.com', '2024-02-01 12:21:37'),
(6, 'a', 'a', 'a@gmail.com', '2024-02-01 12:25:48'),
(7, 'a', 'a', 'a@gmail.com', '2024-02-29 19:54:57');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 7),
(3, 1, 3, 2),
(4, 1, 33, 2),
(5, 1, 34, 3),
(6, 1, 35, 4),
(7, 1, 65, 3),
(8, 1, 66, 3),
(9, 1, 67, 4),
(10, 2, 2, 3),
(11, 2, 4, 3),
(12, 2, 5, 3),
(13, 2, 6, 3),
(14, 3, 1, 3),
(15, 3, 2, 3),
(16, 3, 4, 3),
(17, 3, 5, 3),
(18, 3, 33, 2),
(19, 3, 34, 3),
(20, 3, 37, 3),
(21, 3, 38, 3),
(22, 3, 39, 2),
(23, 3, 40, 2),
(24, 3, 67, 2),
(25, 3, 68, 2),
(26, 3, 69, 2),
(27, 3, 70, 2),
(28, 4, 1, 2),
(29, 4, 2, 3),
(30, 4, 4, 1),
(31, 4, 5, 1),
(32, 4, 33, 2),
(33, 4, 34, 2),
(34, 4, 36, 2),
(35, 4, 37, 2),
(36, 4, 65, 2),
(37, 4, 68, 2),
(38, 4, 69, 3),
(39, 4, 71, 3),
(40, 4, 72, 3),
(41, 5, 1, 3),
(42, 5, 3, 3),
(43, 5, 33, 3),
(44, 5, 34, 2),
(45, 5, 35, 2),
(46, 5, 38, 2),
(47, 5, 65, 3),
(48, 5, 66, 3),
(49, 5, 67, 3),
(50, 5, 69, 3),
(51, 6, 1, 3),
(52, 6, 2, 3),
(53, 6, 4, 2),
(54, 6, 5, 2),
(55, 6, 6, 2),
(56, 6, 9, 2),
(57, 7, 3, 9),
(58, 7, 35, 2),
(59, 7, 65, 2),
(60, 7, 66, 3);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `type`, `price`, `image`) VALUES
(1, 'A.J. Green Arizona Cardinals Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/arizona-cardinals/mens-nike-aj-green-cardinal-arizona-cardinals-game-jersey_pi4273000_altimages_ff_4273558-e45d7cdc45bc7e6c7ffealt1_full.jpg?_hv=2&w=900'),
(2, 'Bijan Robinson Atlanta Falcons Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/atlanta-falcons/mens-nike-bijan-robinson-black-atlanta-falcons-legend-jersey_ss5_p-200143037+u-w7efm6ffhfnuv4zmvx1g+v-zta6hkajqcwoze2za6ii.jpg?_hv=2&w=340'),
(3, 'Lamar Jackson Baltimore Ravens Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/baltimore-ravens/mens-nike-lamar-jackson-purple-baltimore-ravens-game-jersey_pi3892000_altimages_ff_3892782-9ecc225d4d4d0e8f4e35alt1_full.jpg?_hv=2&w=900'),
(4, 'Josh Allen Buffalo Bills Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/buffalo-bills/mens-nike-josh-allen-royal-buffalo-bills-team-game-player-jersey_pi3892000_ff_3892791-6f767e79dff6cc808994_full.jpg?_hv=2&w=340'),
(5, 'Bryce Young Carolina Panthers Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/carolina-panthers/mens-nike-bryce-young-black-carolina-panthers-team-game-jersey_ss5_p-200309770+u-eyhvianczcinmlkzty0b+v-3tl3rs4qbdm3d0wjkwe6.jpg?_hv=2&w=340'),
(6, 'D.J. Moore Chicago Bears Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/chicago-bears/mens-nike-dj-moore-navy-chicago-bears-team-color-game-jersey_ss5_p-200051258+u-q5coo4vdrnvjfcxgijpl+v-jsc0wd1crkmxjkt1gnrn.jpg?_hv=2&w=340'),
(7, 'Joe Burrow Cincinnati Bengals Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/cincinnati-bengals/mens-nike-joe-burrow-black-cincinnati-bengals-legend-jersey_pi4059000_ff_4059561-66c75af34a6cae28a02e_full.jpg?_hv=2&w=340'),
(8, 'Myles Garrett Cleveland Browns Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/cleveland-browns/mens-nike-myles-garrett-brown-cleveland-browns-player-game-jersey_pi3901000_ff_3901575-6f37f7480ca2c21672b9_full.jpg?_hv=2&w=340'),
(9, 'CeeDee Lamb Dallas Cowboys Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/dallas-cowboys/mens-nike-ceedee-lamb-navy-dallas-cowboys-game-jersey_pi3911000_ff_3911779-edd2bdd23cf8eee5efe2_full.jpg?_hv=2&w=340'),
(10, 'Russell Wilson Denver Broncos Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/denver-broncos/mens-nike-russell-wilson-orange-denver-broncos-legend-jersey_pi4835000_ff_4835355-9ef83beede965084d7d2_full.jpg?_hv=2&w=340'),
(11, 'Aidan Hutchinson Detroit Lions Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/detroit-lions/mens-nike-aidan-hutchinson-blue-detroit-lions-player-game-jersey_pi4868000_ff_4868477-a2df910de990c5657cf2_full.jpg?_hv=2&w=340'),
(12, 'Jordan Love Green Bay Packers Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/green-bay-packers/mens-nike-jordan-love-green-green-bay-packers-player-game-jersey_pi3919000_ff_3919132-9ce8a9b889a8941e5a4e_full.jpg?_hv=2&w=340'),
(13, 'C.J. Stroud Houston Texans Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/houston-texans/mens-nike-cj-stroud-navy-houston-texans-2023-nfl-draft-first-round-pick-game-jersey_ss5_p-200041213+u-rcxmln1pii8fmjhlrror+v-nu3kyz7x3wgmm7e6tfb0.jpg?_hv=2&w=340'),
(14, 'Anthony Richardson Indianapolis Colts Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/indianapolis-colts/mens-nike-anthony-richardson-royal-indianapolis-colts-2023-nfl-draft-first-round-pick-game-jersey_ss5_p-200041215+u-luagcjnkmf1h0phju3tp+v-mmuqj1ibtmolv57issiz.jpg?_hv=2&w=340'),
(15, 'Trevor Lawrence Jacksonville Jaguars Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/jacksonville-jaguars/mens-nike-trevor-lawrence-teal-jacksonville-jaguars-home-game-jersey_pi4324000_ff_4324438-12b17faa70392176eb4c_full.jpg?_hv=2&w=340'),
(16, 'Travis Kelce Kansas City Chiefs Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/kansas-city-chiefs/mens-nike-travis-kelce-red-kansas-city-chiefs-game-jersey_pi3892000_ff_3892891-07759f521fceb36b5549_full.jpg?_hv=2&w=340'),
(17, 'Maxx Crosby Las Vegas Raiders Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/las-vegas-raiders/mens-nike-maxx-crosby-black-las-vegas-raiders-game-jersey_pi3892000_ff_3892885-27d448c715404570711d_full.jpg?_hv=2&w=340'),
(18, 'Justin Herbert Los Angeles Chargers Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/los-angeles-chargers/mens-nike-justin-herbert-powder-blue-los-angeles-chargers-player-game-jersey_pi3919000_ff_3919116-f15a620981fe38c9fe4a_full.jpg?_hv=2&w=340'),
(19, 'Puka Nacua Los Angeles Rams Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/los-angeles-rams/mens-nike-puka-nacua-royal-los-angeles-rams-home-game-jersey_ss5_p-200145397+u-yvgvpvjishieu8a1og9k+v-9xkedgb2pafbtwo4vslf.jpg?_hv=2&w=340'),
(20, 'Tyreek Hill Miami Dolphins Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/miami-dolphins/mens-nike-tyreek-hill-aqua-miami-dolphins-game-jersey_pi4803000_ff_4803714-164e48bbebd1fcc163ac_full.jpg?_hv=2&w=340'),
(21, 'Justin Jefferson Minnesota Vikings Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/minnesota-vikings/mens-nike-justin-jefferson-purple-minnesota-vikings-player-game-jersey_pi3948000_ff_3948939-67a9b3cc128c54e4e15e_full.jpg?_hv=2&w=340'),
(22, 'Randy Moss New England Patriots Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/new-england-patriots/mens-nike-randy-moss-navy-new-england-patriots-game-retired-player-jersey_pi3974000_ff_3974208-617dde00bafe897172db_full.jpg?_hv=2&w=340'),
(23, 'Alvin Kamara New Orleans Saints Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/new-orleans-saints/mens-nike-alvin-kamara-black-new-orleans-saints-game-jersey_pi3892000_ff_3892967-710102d157dc8b28279d_full.jpg?_hv=2&w=340'),
(24, 'Tommy DeVito New York Giants Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/new-york-giants/mens-nike-tommy-devito-royal-new-york-giants-player-game-jersey_ss5_p-200969503+u-2kmcp51dcwllglpumbg9+v-qkaefvaensrdcyhee6eo.jpg?_hv=2&w=340'),
(25, 'Aaron Rodgers New York Jets Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/new-york-jets/mens-nike-aaron-rodgers-gotham-green-new-york-jets-legend-player-jersey_ss5_p-200095131+u-qzyunjomszilqmsrtcp0+v-zm4gqqif8ol0ljywquxk.jpg?_hv=2&w=340'),
(26, 'Jason Kelce Philadelphia Eagles Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/philadelphia-eagles/mens-nike-jason-kelce-midnight-green-philadelphia-eagles-vapor-fuse-limited-jersey_ss5_p-201037904+u-dhwr1a33em5rnoixhrw3+v-8azodwc8juhx42y1ktnj.jpg?_hv=2&w=340'),
(27, 'T.J. Watt Pittsburgh Steelers Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/pittsburgh-steelers/youth-nike-tj-watt-black-pittsburgh-steelers-game-jersey_pi2818000_ff_2818532_full.jpg?_hv=2&w=340'),
(28, 'Brock Purdy San Francisco 49ers Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/san-francisco-49ers/mens-nike-brock-purdy-scarlet-san-francisco-49ers-vapor-fuse-limited-jersey_ss5_p-5346682+u-c2rp3lrnpb3km5dfbnvp+v-l2qdavj6earxiwgfd9d2.jpg?_hv=2&w=340'),
(29, 'DK Metcalf Seattle Seahawks Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/seattle-seahawks/mens-nike-dk-metcalf-college-navy-seattle-seahawks-game-jersey_pi3892000_ff_3892414-99249cfd0a92c563851b_full.jpg?_hv=2&w=340'),
(30, 'Mike Evans Tampa Bay Buccaneers Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/tampa-bay-buccaneers/mens-nike-mike-evans-red-tampa-bay-buccaneers-game-jersey_pi3896000_ff_3896061-22a8192cc62b2b9bdaf3_full.jpg?_hv=2&w=340'),
(31, 'Derrick Henry Tennessee Titans Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/tennessee-titans/mens-nike-derrick-henry-navy-tennessee-titans-game-jersey_pi3892000_ff_3892428-0735bf1c98f6c23b782f_full.jpg?_hv=2&w=340'),
(32, 'Terry McLaurin Washington Commanders Jersey', 'jersey', 59.99, 'https://fanatics.frgimages.com/washington-commanders/mens-nike-terry-mclaurin-burgundy-washington-commanders-vapor-untouchable-limited-jersey_ss5_p-5030672+u-gqgl3znqqo2uj3by3tus+v-udsfvkurksqxzkzj9evy.jpg?_hv=2&w=340'),
(33, 'DeAndre Hopkins Arizona Cardinals Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/arizona-cardinals/mens-fanatics-branded-deandre-hopkins-cardinal-arizona-cardinals-player-icon-name-and-number-t-shirt_pi4180000_ff_4180335-1ed3471223babc3ab454_full.jpg?_hv=2&w=340'),
(34, 'Bijan Robinson Atlanta Falcons Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/atlanta-falcons/mens-nike-bijan-robinson-black-atlanta-falcons-2023-nfl-draft-first-round-pick-player-name-and-number-t-shirt_ss5_p-200106714+u-83kfhxk0gbh43gq9fql4+v-trpgyvhcwgjzoi5doba4.jpg?_hv=2&w=340'),
(35, 'Lamar Jackson Baltimore Ravens Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/baltimore-ravens/mens-fanatics-branded-lamar-jackson-purple-baltimore-ravens-player-icon-name-and-number-t-shirt_pi4180000_ff_4180369-13f1dbb8e1a0c97ae16d_full.jpg?_hv=2&w=340'),
(36, 'Josh Allen Buffalo Bills Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/buffalo-bills/mens-nike-josh-allen-royal-buffalo-bills-player-name-and-number-t-shirt_ss5_p-5021040+u-4wdbysqzrmug65zcif9u+v-6aae5rdnnrxpkhp5rxna.jpg?_hv=2&w=340'),
(37, 'Bryce Young Carolina Panthers Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/carolina-panthers/mens-nike-bryce-young-black-carolina-panthers-2023-nfl-draft-first-round-pick-player-name-and-number-t-shirt_ss5_p-200106717+u-zrz5iwg8m5xlnakreetj+v-xsozyx80quaobturvlz5.jpg?_hv=2&w=340'),
(38, 'Justin Fields Chicago Bears Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/chicago-bears/mens-nike-justin-fields-navy-chicago-bears-player-name-and-number-t-shirt_pi4276000_ff_4276536-a2b9e3c4dd42625c9c7c_full.jpg?_hv=2&w=340'),
(39, 'Joe Burrow Cincinnati Bengals Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/cincinnati-bengals/mens-nike-joe-burrow-black-cincinnati-bengals-player-name-and-number-t-shirt_pi4305000_ff_4305634-4b1934175fa6f44281d5_full.jpg?_hv=2&w=340'),
(40, 'Myles Garrett Cleveland Browns Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/cleveland-browns/mens-fanatics-branded-myles-garrett-brown-cleveland-browns-player-icon-name-and-number-t-shirt_pi4662000_ff_4662750-be843c6849a393dd0493_full.jpg?_hv=2&w=340'),
(41, 'CeeDee Lamb Dallas Cowboys Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/dallas-cowboys/mens-fanatics-branded-ceedee-lamb-navy-dallas-cowboys-team-player-icon-name-and-number-t-shirt_pi4575000_ff_4575909-282b9fcc1ef2f84a28f0_full.jpg?_hv=2&w=340'),
(42, 'Russell Wilson Denver Broncos Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/denver-broncos/mens-nike-russell-wilson-navy-denver-broncos-player-name-and-number-t-shirt_pi4785000_ff_4785207-fd37cf17f6cd9d3d83e2_full.jpg?_hv=2&w=340'),
(43, 'Jahmyr Gibbs Detroit Lions Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/detroit-lions/mens-nike-jahmyr-gibbs-blue-detroit-lions-2023-nfl-draft-first-round-pick-player-name-and-number-t-shirt_ss5_p-200106720+u-4hguecezzqwlz4arhlpt+v-snxxvtihucjwwbna4tor.jpg?_hv=2&w=340'),
(44, 'Jordan Love Green Bay Packers Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/green-bay-packers/mens-nike-jordan-love-green-green-bay-packers-player-name-and-number-t-shirt_ss5_p-200136243+u-ggddqb96xt9rynmbuqpm+v-9ebi2bfw02myhomlpqtr.jpg?_hv=2&w=340'),
(45, 'C.J. Stroud Houston Texans Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/houston-texans/mens-nike-cj-stroud-navy-houston-texans-2023-nfl-draft-first-round-pick-player-name-and-number-t-shirt_ss5_p-200106723+u-jz82ibbxeta77o5gw8bc+v-qofypgvipmrilrxauxmw.jpg?_hv=2&w=340'),
(46, 'Michael Pittman Jr. Indianapolis Colts Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/indianapolis-colts/mens-nike-michael-pittman-jr-royal-indianapolis-colts-player-name-and-number-t-shirt_ss5_p-200664172+u-kyyr1mfoig5iydcorflk+v-xic411op0hrmkodkky4g.jpg?_hv=2&w=340'),
(47, 'Trevor Lawrence Jacksonville Jaguars Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/jacksonville-jaguars/mens-nike-trevor-lawrence-teal-jacksonville-jaguars-player-name-and-number-t-shirt_ss5_p-200297970+u-dylmibgqkxypgag6jgox+v-ab2z6ftppt6bmasvy1nj.jpg?_hv=2&w=340'),
(48, 'Travis Kelce Kansas City Chiefs Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/kansas-city-chiefs/mens-fanatics-branded-travis-kelce-red-kansas-city-chiefs-player-icon-name-and-number-t-shirt_pi4180000_ff_4180345-91be599dfe5db140786f_full.jpg?_hv=2&w=340'),
(49, 'Maxx Crosby Las Vegas Raiders Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/las-vegas-raiders/mens-nike-maxx-crosby-black-las-vegas-raiders-player-name-and-number-t-shirt_ss5_p-200328173+u-5ov55hsu6asqcel5zwby+v-lxyndarbpbwro4h3huf7.jpg?_hv=2&w=340'),
(50, 'Justin Herbert Los Angeles Chargers Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/los-angeles-chargers/mens-fanatics-branded-justin-herbert-powder-blue-los-angeles-chargers-player-icon-name-and-number-t-shirt_pi4180000_ff_4180357-b4d1678d36fd1d9bf2f9_full.jpg?_hv=2&w=340'),
(51, 'Puka Nacua Los Angeles Rams Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/los-angeles-rams/mens-nike-puka-nacua-royal-los-angeles-rams-player-name-and-number-t-shirt_ss5_p-200676824+u-l9ejqyfrqqe6z3tiyiev+v-5ftqnhmfvvqr1sgkuuyi.jpg?_hv=2&w=340'),
(52, 'Tyreek Hill Miami Dolphins Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/miami-dolphins/mens-nike-tyreek-hill-aqua-miami-dolphins-player-name-and-number-t-shirt_ss5_p-5021050+u-ppfat9l8w5b0mehsqjvb+v-bfimaa1x8utlqxndcida.jpg?_hv=2&w=340'),
(53, 'Justin Jefferson Minnesota Vikings Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/minnesota-vikings/mens-nike-justin-jefferson-purple-minnesota-vikings-player-name-and-number-t-shirt_ss5_p-5021059+u-doyademscn4gvy0oz9oz+v-rmz5a8ikssyhx3mjg61q.jpg?_hv=2&w=340'),
(54, 'Ezekiel Elliott New England Patriots Jersey', 'shirt', 15.99, 'https://fanatics.frgimages.com/lf?set=key[number],value[15]&set=key[name],value[ELLIOTT]&call=url[http://dmimages.ff.p10/chains/4793974.txt]&scale=size[900]&sink'),
(55, 'Alvin Kamara New Orleans Saints Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/new-orleans-saints/mens-nike-alvin-kamara-black-new-orleans-saints-name-and-number-t-shirt_pi3668000_ff_3668922-af15ec38e98f8a65d676_full.jpg?_hv=2&w=340'),
(56, 'Tommy DeVito New York Giants Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/new-york-giants/mens-nike-tommy-devito-royal-new-york-giants-name-and-number-t-shirt_ss5_p-201073003+u-lzqt8pubud7vvpbw145k+v-objtuly17esfgqwnviu1.jpg?_hv=2&w=340'),
(57, 'Aaron Rodgers New York Jets Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/new-york-jets/mens-nike-aaron-rodgers-green-new-york-jets-player-name-and-number-t-shirt_ss5_p-200040435+u-knz2ox949zzuqee8qz35+v-yqxdymfgvgcsbjnnfhdk.jpg?_hv=2&w=340'),
(58, 'Jason Kelce Philadelphia Eagles Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/philadelphia-eagles/mens-nike-jason-kelce-midnight-green-philadelphia-eagles-player-name-and-number-t-shirt_ss5_p-200064441+u-h1c2enzm2nrfb5bilgrx+v-56zdpclryxjmdwflclpg.jpg?_hv=2&w=340'),
(59, 'T.J. Watt Pittsburgh Steelers Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/pittsburgh-steelers/mens-nike-tj-watt-black-pittsburgh-steelers-player-name-and-number-t-shirt_ss5_p-5021057+u-pxfry1x2cjop5trhepw9+v-xtsz769hktxfymml01bq.jpg?_hv=2&w=340'),
(60, 'Brock Purdy San Francisco 49ers Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/san-francisco-49ers/mens-nike-brock-purdy-scarlet-san-francisco-49ers-player-name-and-number-t-shirt_ss5_p-200541304+u-xcwdky7g7knsc5slveqi+v-dpk2vod5mvb1reswotm5.jpg?_hv=2&w=340'),
(61, 'DK Metcalf Seattle Seahawks Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/seattle-seahawks/mens-nike-dk-metcalf-college-navy-seattle-seahawks-name-and-number-t-shirt_pi3734000_ff_3734567-09724e62c8b6a91d7f3b_full.jpg?_hv=2&w=340'),
(62, 'Tom Brady Tampa Bay Buccaneers Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/tampa-bay-buccaneers/mens-nike-tom-brady-red-tampa-bay-buccaneers-name-and-number-t-shirt_pi3889000_ff_3889146-bb6b0886dd6ccd87d631_full.jpg?_hv=2&w=340'),
(63, 'Will Levis Tennessee Titans Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/tennessee-titans/mens-nike-will-levis-navy-tennessee-titans-2023-nfl-draft-player-name-and-number-t-shirt_ss5_p-200128884+u-eccp3zpcvxe24xlnumqf+v-rhlkbwqsnntdoimhstau.jpg?_hv=2&w=340'),
(64, 'Chase Young Washington Commanders Shirt', 'shirt', 15.99, 'https://fanatics.frgimages.com/washington-commanders/mens-fanatics-branded-chase-young-burgundy-washington-commanders-player-icon-name-and-number-t-shirt_pi4585000_ff_4585427-49bcdae1eb6202f7ad5c_full.jpg?_hv=2&w=340'),
(65, 'Arizona Cardinals Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/arizona-cardinals/mens-fanatics-branded-cardinal-arizona-cardinals-logo-team-lockup-fitted-pullover-hoodie_pi3724000_ff_3724437-92661ae116d09d7d6094_full.jpg?_hv=2&w=340'),
(66, 'Atlanta Falcons Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/atlanta-falcons/mens-new-era-red-atlanta-falcons-ink-dye-pullover-hoodie_pi4691000_ff_4691952-d197f8297dd63f1c40f3_full.jpg?_hv=2&w=340'),
(67, 'Baltimore Ravens Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/baltimore-ravens/mens-fanatics-branded-purple-baltimore-ravens-between-the-pylons-pullover-hoodie_ss5_p-5086118+u-kosoawrsvyrynrweultm+v-w6cp7sfhldtxwvtoaivn.jpg?_hv=2&w=340'),
(68, 'Buffalo Bills Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/buffalo-bills/mens-nike-royal-buffalo-bills-sideline-club-fleece-pullover-hoodie_ss5_p-5088672+u-8cmgplmd7ecqk7n7ens8+v-acgsk63bcjszybfekhfz.jpg?_hv=2&w=340'),
(69, 'Carolina Panthers Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/carolina-panthers/mens-nike-black-carolina-panthers-sideline-club-fleece-pullover-hoodie_ss5_p-5088641+u-c0x8f8woedynna14l6np+v-ee78jhmr9ewbebaluavj.jpg?_hv=2&w=340'),
(70, 'Chicago Bears Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/chicago-bears/mens-nike-navy-chicago-bears-sideline-club-fleece-pullover-hoodie_ss5_p-5088665+u-wc1wmslahlvvo6wphio2+v-ebjcnemb9yqlaxayuqyq.jpg?_hv=2&w=340'),
(71, 'Cincinnati Bengals Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/cincinnati-bengals/mens-starter-black-cincinnati-bengals-color-scratch-fleece-pullover-hoodie_ss5_p-200589466+u-vsqwuaj4dnxu5ekotqvj+v-ude7tyihu3yfqdgelpzx.jpg?_hv=2&w=340'),
(72, 'Cleveland Browns Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/cleveland-browns/mens-fanatics-branded-brown-cleveland-browns-team-lockup-pullover-hoodie_ss5_p-200951565+u-bhpupmik51zhmc9bo31e+v-i9zxjfo93vwhr2zxvqsi.jpg?_hv=2&w=340'),
(73, 'Dallas Cowboys Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/dallas-cowboys/mens-fanatics-branded-navy-dallas-cowboys-logo-team-lockup-fitted-pullover-hoodie_pi4575000_ff_4575195-1a00442b3ba307f7c294_full.jpg?_hv=2&w=340'),
(74, 'Denver Broncos Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/denver-broncos/mens-starter-orange-denver-broncos-captain-pullover-hoodie_ss5_p-200118450+u-5ukohomldmpgfjvxql26+v-68p1leqe3foc7nliqsdy.jpg?_hv=2&w=340'),
(75, 'Detroit Lions Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/detroit-lions/mens-fanatics-branded-blue-detroit-lions-between-the-pylons-pullover-hoodie_ss5_p-5086111+u-s2ye0lwg53cwxrfewjdv+v-rtsmyidwl62ypvjsraid.jpg?_hv=2&w=340'),
(76, 'Green Bay Packers Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/green-bay-packers/unisex-fanatics-signature-green-green-bay-packers-super-soft-fleece-pullover-hoodie_ss5_p-5042146+u-7gsuwuc605vsl7ct9e5l+v-46gi3spbdmngtwgmpwjd.jpg?_hv=2&w=340'),
(77, 'Houston Texans Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/houston-texans/unisex-fanatics-signature-navy-houston-texans-super-soft-fleece-pullover-hoodie_ss5_p-5042127+u-iqzldo55mvt1meu4kime+v-gebzjp8vtmdyr8gkkb0e.jpg?_hv=2&w=340'),
(78, 'Indianapolis Colts Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/indianapolis-colts/mens-fanatics-branded-heather-royal-indianapolis-colts-hook-and-ladder-pullover-hoodie_ss5_p-5227936+u-okxzfcolg2jsb1tt819s+v-cssks9u3zalmf2knjru2.jpg?_hv=2&w=340'),
(79, 'Jacksonville Jaguars Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/jacksonville-jaguars/mens-teal-jacksonville-jaguars-backfield-combine-authentic-pullover-hoodie_ss5_p-5275680+u-avrngodt7dgy0nxb3kcy+v-ycuq4vixxyhnjpgow6hv.jpg?_hv=2&w=340'),
(80, 'Kansas City Chiefs Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/kansas-city-chiefs/mens-fanatics-branded-silver/red-kansas-city-chiefs-big-and-tall-team-fleece-pullover-hoodie_ss5_p-200177139+u-ilnoaf2bhxpfw1iqbwuw+v-qom8hnewslgsqkoeksyr.jpg?_hv=2&w=340'),
(81, 'Las Vegas Raiders Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/las-vegas-raiders/mens-fanatics-branded-white/black-las-vegas-raiders-primary-arctic-pullover-hoodie_ss5_p-5228201+u-ntzbjf0hyyafblibx3ts+v-hqn9bsguufzrvqmc3ahc.jpg?_hv=2&w=340'),
(82, 'Los Angeles Chargers Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/los-angeles-chargers/mens-fanatics-branded-powder-blue-los-angeles-chargers-between-the-pylons-pullover-hoodie_ss5_p-5086112+u-o4wejchsalnzm0wnjav5+v-1l7mshlmc3wduxbraa0n.jpg?_hv=2&w=340'),
(83, 'Los Angeles Rams Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/los-angeles-rams/mens-nike-royal-los-angeles-rams-sideline-club-fleece-pullover-hoodie_ss5_p-5088676+u-zhtnx3mxc5du8qbntdsy+v-zsymztibh4rhgcd5p2ga.jpg?_hv=2&w=340'),
(84, 'Miami Dolphins Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/miami-dolphins/mens-fanatics-branded-heather-aqua-miami-dolphins-hook-and-ladder-pullover-hoodie_ss5_p-5227919+u-nblfp6clobl61fomf6ne+v-kgetcyn3bhovlkic7wjq.jpg?_hv=2&w=340'),
(85, 'Minnesota Vikings Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/minnesota-vikings/mens-fanatics-branded-heather-purple-minnesota-vikings-hook-and-ladder-pullover-hoodie_ss5_p-5227918+u-pbwag11td1clh0xz7dwj+v-rqj4avndweo9i1ryjqu2.jpg?_hv=2&w=340'),
(86, 'New England Patriots Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/new-england-patriots/mens-nike-navy-new-england-patriots-sideline-club-fleece-pullover-hoodie_ss5_p-5088669+u-woldyqxyqcb3it4mzu3o+v-ukemddbtjmhdoyopbe8q.jpg?_hv=2&w=340'),
(87, 'New Orleans Saints Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/new-orleans-saints/mens-fanatics-branded-heather-charcoal-new-orleans-saints-hook-and-ladder-pullover-hoodie_ss5_p-5227922+u-uxugdkgswmzlgjlgrekb+v-34iwdajeoxk7o24ynrtp.jpg?_hv=2&w=340'),
(88, 'New York Giants Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/new-york-giants/mens-nike-royal-new-york-giants-fan-gear-primary-logo-performance-pullover-hoodie_pi3733000_ff_3733317-db3b33150db1df8c4379_full.jpg?_hv=2&w=340'),
(89, 'New York Jets Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/new-york-jets/mens-fanatics-branded-heather-green-new-york-jets-hook-and-ladder-pullover-hoodie_ss5_p-5227917+u-romkovzrn2yyifpocrcw+v-6iidka4gk1edutgosiwi.jpg?_hv=2&w=340'),
(90, 'Philadelphia Eagles Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/philadelphia-eagles/mens-nike-midnight-green-philadelphia-eagles-fan-gear-primary-logo-performance-pullover-hoodie_pi3733000_ff_3733309-5935b012860d086df317_full.jpg?_hv=2&w=340'),
(91, 'Pittsburgh Steelers Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/pittsburgh-steelers/mens-starter-black-pittsburgh-steelers-throwback-logo-pullover-hoodie_ss5_p-201098350+u-nnz6szpv5eupifd3cils+v-uvqmefi26e2txe9bk0ww.jpg?_hv=2&w=340'),
(92, 'San Francisco 49ers Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/san-francisco-49ers/mens-nike-scarlet-san-francisco-49ers-fan-gear-primary-logo-therma-performance-pullover-hoodie_pi3733000_ff_3733320-947717e92dcfc1c382d6_full.jpg?_hv=2&w=340'),
(93, 'Seattle Seahawks Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/seattle-seahawks/mens-nike-college-navy-seattle-seahawks-fan-gear-primary-logo-therma-performance-pullover-hoodie_pi3733000_ff_3733312-cd3069de2c1ce42dc74a_full.jpg?_hv=2&w=340'),
(94, 'Tampa Bay Buccaneers Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/tampa-bay-buccaneers/mens-nike-red-tampa-bay-buccaneers-fan-gear-primary-logo-therma-performance-pullover-hoodie_pi3733000_ff_3733321-00a78a8b96f5575af010_full.jpg?_hv=2&w=340'),
(95, 'Tennessee Titans Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/tennessee-titans/mens-nike-navy-tennessee-titans-sideline-club-fleece-pullover-hoodie_ss5_p-5088668+u-kh685ypcj6cnpkupnjz3+v-s7ij2zyvzvmvjjq35is9.jpg?_hv=2&w=340'),
(96, 'Washington Commanders Hoodie', 'hoodie', 39.99, 'https://fanatics.frgimages.com/washington-commanders/mens-burgundy-washington-commanders-big-and-tall-logo-pullover-hoodie_pi5116000_ff_5116103-d4333e5357157d2419a4_full.jpg?_hv=2&w=340');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
