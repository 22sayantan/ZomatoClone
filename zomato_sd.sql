-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 07:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zomato`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `details` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `details`, `phone`, `pincode`) VALUES
(6, 9, 'street 1,MG Road,kolkata- 700001', '9093885779', '700001'),
(7, 10, 'xy street,vip road,kolkata', '7797302555', '700002');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(23, 7, 85, 1),
(24, 7, 93, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `coupon_id` int(11) NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`coupon_id`, `coupon_name`, `coupon_value`, `coupon_status`) VALUES
(1, 'offer puja', 12, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `name`, `type`) VALUES
(1, 'chicken biriyani', 'non-veg'),
(2, 'chicken kosha', 'non-veg'),
(3, 'mutton kosha', 'non-veg'),
(4, 'chicken chow', 'non-veg'),
(5, 'chicken momo', 'non-veg'),
(6, 'mutton biriyani', 'non-veg'),
(7, 'chilli chicken', 'non-veg'),
(8, 'plain rice', 'veg'),
(9, 'jeera rice', 'veg'),
(10, 'polao rice', 'veg'),
(11, 'fried rice', 'veg'),
(12, 'chole bhature', 'veg'),
(13, 'butter paneer masala', 'veg'),
(14, 'butter nun', 'veg'),
(15, 'roti/chapati', 'veg'),
(16, 'aloo paratha', 'veg'),
(17, 'paratha', 'veg'),
(18, 'masala paratha', 'veg'),
(19, 'lachha paratha', 'veg'),
(20, 'alur dum', 'veg'),
(21, 'tarka', 'veg'),
(22, 'kaju barfi', 'dessert'),
(23, 'kheer', 'dessert'),
(24, 'gulab jamun', 'dessert'),
(25, 'gajar ka halwa', 'dessert'),
(26, 'rosgulla', 'dessert');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `address` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `amount`, `order_date`, `address`, `status`, `payment_method`) VALUES
('618754e3787c8', 7, 200, '2021-11-07', 5, 1, 'Debit Card'),
('618756ddedb58', 7, 200, '2021-11-07', 5, 1, 'UPI'),
('6187d8df28123', 7, 100, '2021-11-07', 5, 1, 'NEFT'),
('618a747e2f27d', 7, 675, '2021-11-09', 5, 1, 'NEFT'),
('618aa927a76b6', 9, 1540, '2021-11-09', 6, 1, 'Credit Card'),
('618ab1a7e77bb', 10, 850, '2021-11-09', 7, 1, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`) VALUES
(65, '618754e3787c8', 78, 1),
(66, '618754e3787c8', 78, 0),
(67, '618756ddedb58', 79, 1),
(68, '6187d8df28123', 78, 1),
(69, '618a747e2f27d', 78, 1),
(70, '618a747e2f27d', 78, 1),
(71, '618a747e2f27d', 78, 1),
(72, '618a747e2f27d', 78, 1),
(73, '618a747e2f27d', 80, -1),
(74, '618a747e2f27d', 80, -1),
(75, '618a747e2f27d', 81, 1),
(76, '618a747e2f27d', 87, 2),
(77, '618aa927a76b6', 88, 2),
(78, '618aa927a76b6', 94, 2),
(79, '618aa927a76b6', 99, 2),
(80, '618aa927a76b6', 82, 2),
(81, '618aa927a76b6', 102, 3),
(82, '618aa927a76b6', 107, 2),
(83, '618aa927a76b6', 87, 1),
(84, '618aa927a76b6', 105, 1),
(85, '618ab1a7e77bb', 88, 2),
(86, '618ab1a7e77bb', 89, 1),
(87, '618ab1a7e77bb', 100, 2),
(88, '618ab1a7e77bb', 102, 3),
(89, '618ab1a7e77bb', 103, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `details` text NOT NULL,
  `bg_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `name`, `seller`, `category`, `price`, `details`, `bg_img`) VALUES
(80, 'chicken biriyani', 'seller 1', 'non-veg', 150, 'zomato service', '\"https://images.squarespace-cdn.com/content/v1/5c5c3833840b161566b02a76/1573133725500-Y5PCN0V04I86HDAT8AT0/WBC_7095.jpg?format=2500w\"'),
(81, 'mutton biriyani', 'seller 2', 'non-veg', 225, 'zomato service', '\"https://www.cubesnjuliennes.com/wp-content/uploads/2021/03/Best-Mutton-Biryani-Recipe.jpg\"'),
(82, 'chicken momo', 'seller 3', 'non-veg', 175, 'zomato service', '\"http://www.theterracekitchen.in/wp-content/uploads/2019/07/048.-Chicken-Momos_545X545.png\"'),
(83, 'chilli chicken', 'seller 1', 'non-veg', 135, 'zomato service', '\"https://static.toiimg.com/photo/53094926.cms\"'),
(84, 'chicken chow', 'seller 3', 'non-veg', 110, 'zomato service', '\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMqKrwKuUV6YOwIThtcwpA4SJZYHIyDosSrA&usqp=CAU\"'),
(85, 'plain rice', 'seller 2', 'veg', 75, 'zomato service', '\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNHPylPd6PCRdE2j1EKgyFN3_vqGeDJk-FjQ&usqp=CAU\"'),
(87, 'kaju barfi', 'seller_10', 'dessert', 225, 'kaju barfi one of the most popular sweets in india', '\"https://m.media-amazon.com/images/I/61Uy38eX+AL.jpg\"'),
(88, 'fried rice', 'seller 6', 'veg', 125, '1 Plate with out service tax', '\"https://nishkitchen.com/wp-content/uploads/2018/07/Vegetable-Fried-Rice-1B-480x360.jpg\"'),
(89, 'plain rice', 'seller 13', 'veg', 40, '1 Plate include service tax', '\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNHPylPd6PCRdE2j1EKgyFN3_vqGeDJk-FjQ&usqp=CAU\"'),
(90, 'jeera rice', 'seller 13', 'veg', 50, '1 Plate with out service tax', '\"https://www.whiskaffair.com/wp-content/uploads/2020/09/Jeera-Rice-2-3.jpg\"'),
(91, 'polao rice', 'seller 6', 'veg', 70, '1 Plate with out service tax', '\"https://www.spiceupthecurry.com/wp-content/uploads/2019/07/spicy-veg-pulao-14-500x500.jpg\"'),
(92, 'chole bhature', 'seller 18', 'veg', 110, '1 Plate with out service tax', '\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrrOzUArm-Fj12vFSlzc0qo38JDaGWtNUJidY_k42qGunABEN1bB20ZZVMV6dNmeFGYkQ&usqp=CAU\"'),
(93, 'butter paneer masala', 'seller 18', 'veg', 125, '1 Plate with out service tax', '\"https://i0.wp.com/vegecravings.com/wp-content/uploads/2017/04/paneer-butter-masala-recipe-step-by-step-instructions.jpg?fit=2592%2C1944&quality=30&strip=all&ssl=1\"'),
(94, 'butter nun', 'seller 2', 'veg', 60, '5pc with out service tax', '\"https://static.toiimg.com/photo/53338316.cms\"'),
(95, 'roti/chapati', 'seller 2', 'veg', 20, '5 pc. with out service tax', '\"https://thebellyrulesthemind.net/wp-content/uploads/2020/09/Copy-of-ig-720x720.jpg\"'),
(96, 'aloo paratha', 'seller 2', 'veg', 40, '4 pc. with out service tax', '\"https://cookingfromheart.com/wp-content/uploads/2020/09/Aloo-Paratha-4.jpg\"'),
(97, 'parahta', 'seller 9', 'veg', 15, '3 pc. with out service tax', '\"https://www.thedeliciouscrescent.com/wp-content/uploads/2020/06/Paratha-Square.jpg\"'),
(98, 'masala parahta', 'seller 9', 'veg', 25, '3 pc  with out service tax', '\"https://www.whiskaffair.com/wp-content/uploads/2017/03/Masala-Paratha-4.jpg\"'),
(99, 'lachha paratha', 'seller 9', 'veg', 30, '3pc with out service tax', '\"https://www.cookclickndevour.com/wp-content/uploads/2015/07/lachha-paratha-recipe-a.jpg\"'),
(100, 'alur dum', 'seller 18', 'veg', 50, '1 plate with out service tax', '\"https://www.vegrecipesofindia.com/wp-content/uploads/2012/04/kashmiri-dum-aloo-recipe-11a.jpg\"'),
(101, 'tarka', 'seller 18', 'veg', 75, '1 plate with out service tax', '\"https://veggiedesserts.com/wp-content/uploads/2021/04/tarka-dal-tadka-2.jpg\"'),
(102, 'chicken kosha', 'seller 5', 'non-veg', 120, 'bangalir favourite  ekhon online', '\"https://fromykitchen.com/wp-content/uploads/2019/11/1574919010540.jpg\"'),
(103, 'kheer', 'seller4', 'dessert', 50, 'taste good', '\"https://foodiesterminal.com/wp-content/uploads/2020/03/Instant-Pot-kheer-recipe-2.jpg\"'),
(104, 'gajar ka halwa', 'seller 7', 'dessert', 75, 'with kesar for better taste', '\"https://indianvegrecipe.com/wp-content/uploads/2020/01/carrot-halwa-recipe.jpg\"'),
(105, 'gulab jamun', 'seller 14', 'dessert', 35, 'taste good with 5pcs', '\"https://www.cookingcarnival.com/wp-content/uploads/2020/10/Gulab-jamun.jpg\"'),
(106, 'rosgulla', 'seller 17', 'dessert', 30, 'with kesar for better taste ( 5 pcs)', '\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7ALHUA2lfmSHuehLx9QIjMOzHyAYeTV4mHg&usqp=CAU\"'),
(107, 'mutton kosha', 'seller 12', 'non-veg', 175, 'bangalir favourite ekhon online', '\"https://kitchenofdebjani.com/wp-content/uploads/2019/09/Kosha-Mangsho.jpg\"');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review_title` varchar(255) NOT NULL,
  `review_text` text NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `user_id`, `product_id`, `rating`, `review_title`, `review_text`, `review_date`) VALUES
(1, 7, 78, 3, 'good', 'wonderful taste and service\r\n', '2021-11-07'),
(2, 7, 78, 1, 'bad ', 'service quality is very bad', '2021-11-07'),
(3, 7, 80, 3, 'hello', 'jdfldshfyhweiounvljkhfjkfdj', '2021-11-09'),
(4, 7, 80, 5, 'hkjhfjsdhkhfkdshf', 'dnfhjhdhsiufhiudsf', '2021-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type1` varchar(255) NOT NULL,
  `type2` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `type1`, `type2`) VALUES
(18, 'seller18', 'veg', 'none'),
(17, 'seller13', 'veg', 'non-veg'),
(16, 'seller9', 'veg', 'none'),
(15, 'seller6', 'veg', 'non-veg'),
(14, 'seller2', 'veg', 'none'),
(19, 'seller1', 'non-veg', 'none'),
(20, 'seller3', 'non-veg', 'none'),
(21, 'seller5', 'non-veg', 'none'),
(22, 'seller8', 'non-veg', 'none'),
(23, 'seller10', 'non-veg', 'none'),
(24, 'seller11', 'non-veg', 'none'),
(25, 'seller12', 'non-veg', 'none'),
(26, 'seller15', 'non-veg', 'none'),
(27, 'seller16', 'non-veg', 'none'),
(28, 'seller20', 'non-veg', 'none'),
(29, 'seller4', 'dessert', 'none'),
(30, 'seller14', 'dessert', 'none'),
(31, 'seller17', 'dessert', 'none'),
(32, 'seller7', 'dessert', 'none'),
(33, 'seller19', 'dessert', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`) VALUES
(7, 'sayantan dolui', 'sayantandolui@gmail.com', '1234'),
(8, 'trisha dolui', 'trisha@gmail.com', '4567'),
(9, 'consumer01', 'cons01@gmail.com', '1234'),
(10, 'consumer02', 'cons02@gmail.com', '1234'),
(11, 'consumer03', 'cons03@gmail.com', '1234'),
(12, 'consumer04', 'cons04@gmail.com', '1234'),
(13, 'consumer05', 'cons05@gmail.com', '1234'),
(14, 'consumer06', 'cons06@gmail.com', '1234'),
(15, 'consumer07', 'cons07@gmail.com', '1234'),
(16, 'consumer08', 'cons08@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`) VALUES
(4, 7, 78);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
