-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 07:47 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `address_type` varchar(10) NOT NULL,
  `method` varchar(50) NOT NULL,
  `product_id` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `qty` varchar(2) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) NOT NULL DEFAULT 'in progress'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `address`, `address_type`, `method`, `product_id`, `price`, `qty`, `date`, `status`) VALUES
('EYZ94PhWrzea0s9Tdd2J', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'BLTtlhOgq1cuz7plh4Ia', '123', '1', '2023-02-28', 'canceled'),
('DStPLCBmD0m0OjAFYlhg', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'jo35YMmBWpvbCMB65UdA', '160', '1', '2023-02-28', 'canceled'),
('XyoWmad14f2YOWbi11XF', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'aSBHDzG26iXurm6cfoNv', '50', '1', '2023-02-28', 'canceled'),
('OGTzld6EmHmNHeXZQkB6', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'uOarNNg0n3KD9OvPtItP', '80', '1', '2023-02-28', 'canceled'),
('UUFMa328sIAdb3znDXce', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '567G, 24 back side, Delhi, India, 110080', 'home', 'credit or debit card', 'kun96OpQed6Eww6M1URo', '120', '1', '2023-02-28', 'canceled'),
('Bsatz7miuWWgXMEx5qzW', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'kun96OpQed6Eww6M1URo', '120', '1', '2023-02-28', 'in progress'),
('4SJfc2GJY4ekJN45CKbP', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'BLTtlhOgq1cuz7plh4Ia', '123', '1', '2023-02-28', 'in progress'),
('Jd0yGYljvlchrTLd5KGQ', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '456A, 24 back side, Delhi, India, 110019', 'office', 'credit or debit card', 'BLTtlhOgq1cuz7plh4Ia', '123', '1', '2023-02-28', 'in progress'),
('wtyNDfBfSwShC9FXFnbC', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '456A, 24 back side, Delhi, India, 110019', 'office', 'credit or debit card', 'aSBHDzG26iXurm6cfoNv', '50', '1', '2023-02-28', 'in progress'),
('KRbSyH7ZgbVzWyyZQoiv', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '456A, 24 back side, Delhi, India, 110019', 'office', 'credit or debit card', 'uOarNNg0n3KD9OvPtItP', '80', '1', '2023-02-28', 'in progress'),
('9vucKr2sSPqcIUidPedP', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'office', 'cash on delivery', 'kun96OpQed6Eww6M1URo', '120', '1', '2023-02-28', 'in progress'),
('gq2RDUuhaPe7TDcxiGCy', 'UAVjN46f0bvXSKquej8S', 'mahi', '7788669955', 'mahinazir@gmail.com', '507A, 24 back side, Delhi, India, 110019', 'home', 'cash on delivery', 'g5DLcNHmtHvq3DtJYsCb', '80', '1', '2023-02-28', 'in progress'),
('JqyfHoT9UzR4qcvp3LNJ', 'd5URvsP8VusCXQoCdMBG', 'shalu', '7788669955', 'shaluAnsari@gmail.com', '507A, 24 back side, mumbai, India, 110019', 'home', 'credit or debit card', 'BLTtlhOgq1cuz7plh4Ia', '123', '1', '2023-02-28', 'in progress'),
('yyD4B276Pg9lfGpRjcr9', 'd5URvsP8VusCXQoCdMBG', 'shalu', '7788669944', 'shaluAnsari@gmail.com', '507A, 24 back side, mumbai, india, 112233', 'office', 'credit or debit card', 'jo35YMmBWpvbCMB65UdA', '160', '2', '2023-02-28', 'canceled'),
('LzO3uiRvjtT5HClilCW5', 'd5URvsP8VusCXQoCdMBG', 'shalu', '7788669944', 'shaluAnsari@gmail.com', '507A, 24 back side, mumbai, india, 112233', 'office', 'credit or debit card', 'aSBHDzG26iXurm6cfoNv', '50', '2', '2023-02-28', 'canceled'),
('FkTlPTkCt1TYaHdSlJDF', 'd5URvsP8VusCXQoCdMBG', 'shalu', '7788669944', 'shaluAnsari@gmail.com', '507A, 24 back side, mumbai, india, 112233', 'office', 'credit or debit card', 'g5DLcNHmtHvq3DtJYsCb', '80', '1', '2023-02-28', 'in progress'),
('9vSbflKRInDRRzfObq5U', 'd5URvsP8VusCXQoCdMBG', 'shalu', '7788669944', 'shaluAnsari@gmail.com', '507A, 24 back side, mumbai, india, 112233', 'office', 'credit or debit card', 'uOarNNg0n3KD9OvPtItP', '80', '1', '2023-02-28', 'in progress');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_detail` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

product_id varchar 255 nodefault
name
price int 10
image
product_detail 2000

INSERT INTO `products` (`name`, `price`, `image`, `product_detail`) VALUES
('Sweet Tomato Seeds', '70', 'tomato1.jpg', 'The perfect addition to any garden! These seeds are carefully selected to produce sweet, juicy tomatoes that are bursting with flavor. Easy to grow and packed with nutrients, our Sweet Tomato Seeds will provide you with a delicious and healthy harvest that you can enjoy in salads, sauces, or simply as a healthy snack. Get your Sweet Tomato Seeds today and start growing your own delicious tomatoes!'),
('Lettuce Seeds', '70', 'lettuce1.jpg', 'Lettuce seeds are an essential ingredient for any home gardener looking to grow fresh and nutritious lettuce in their own backyard. These high-quality seeds are carefully selected for their ability to grow into crisp, flavorful lettuce plants that can be harvested throughout the growing season. With their versatility and health benefits, lettuce is an excellent addition to salads, sandwiches, and a variety of other dishes. Easy to plant and cultivate, lettuce seeds are a great choice for both novice and experienced gardeners looking to add a little green to their garden.'),
('Carrot Seeds', '70', 'carrot1.jpg', 'Carrot seed is a small, dried seed derived from the carrot plant (Daucus carota). Known for its distinctive earthy and sweet aroma, carrot seed is often used in aromatherapy and skincare formulations. It is rich in antioxidants, vitamins, and minerals, making it a popular ingredient in natural skincare products. Carrot seed oil is also widely used in the culinary world, as it adds a unique flavor and aroma to dishes. Additionally, carrot seed has been traditionally used for its medicinal properties, such as aiding in digestion and promoting healthy skin.'),
('Spinach Seeds', '70', 'spinach1.jpg', 'Spinach seeds are the perfect choice for home gardeners looking to add a healthy and nutritious leafy green to their diet. These seeds are easy to plant and cultivate, producing a bountiful harvest of fresh and flavorful spinach throughout the growing season. Spinach is a nutrient-dense vegetable, packed with vitamins and minerals like iron, calcium, and vitamins A and C. With their mild flavor and versatile uses, spinach leaves can be added to salads, smoothies, and a variety of cooked dishes. So why wait? Start your own spinach garden today and enjoy the taste and health benefits of home-grown spinach.'),
('Sunflower Seeds', '70', 'sunflower1.jpg', 'Sunflower seeds for planting are a great way to bring the beauty of these bright, cheerful flowers into your own garden. These high-quality seeds are easy to plant and cultivate, and with a little care and attention, they can grow into tall, sturdy plants with stunning blooms. In addition to their beauty, sunflowers are also known for their ability to attract birds and other wildlife to your garden. So whether you are an experienced gardener or just starting out, planting sunflower seeds is a great way to add a touch of natural beauty to your outdoor space.'),
('Zinnia Seeds', '70', 'zinnia1.jpg', 'Zinnia seeds are a colorful and easy-to-grow addition to any garden. These seeds come in a variety of vibrant shades, from bright yellows and oranges to soft pinks and purples. Planting zinnia seeds is a simple and straightforward process, making them a great choice for novice gardeners. Once planted, these seeds will quickly grow into beautiful and long-lasting blooms, attracting butterflies and other pollinators to your garden. With their low-maintenance nature and stunning appearance, zinnias are a popular choice for gardeners looking to add a splash of color and beauty to their outdoor space.'),
('Marigold Seeds', '70', 'marigold1.jpg', 'Marigold seeds are a must-have for any home gardener looking to add a splash of vibrant color to their garden. These high-quality seeds are easy to plant and cultivate, producing beautiful and hardy marigold flowers that bloom throughout the summer months. Marigolds are known for their bright yellow and orange hues, making them a popular choice for adding visual interest to borders, flower beds, and containers. With their easy-to-grow nature and eye-catching appearance, marigold seeds are the perfect choice for both novice and experienced gardeners looking to create a stunning garden display.'),
('Cosmos Seeds', '70', 'cosmos1.jpg', 'Cosmos seeds are the perfect choice for any home gardener looking to add a splash of vibrant color to their garden. These easy-to-plant seeds produce tall, slender stems topped with bright and colorful blooms that are sure to attract butterflies and bees. Cosmos flowers are also known for their long blooming period, providing months of beautiful and fragrant flowers throughout the summer and into the fall. With their low maintenance requirements and stunning visual appeal, cosmos seeds are a great investment in any home garden.'),
('Oak Tree Seeds', '70', 'oak1.jpg', 'Unleash the power of nature with our Oak Tree Seeds. Witness the awe-inspiring growth of majestic oak trees right in your own backyard. These premium seeds promise to bring timeless beauty and environmental benefits to your surroundings. As a symbol of strength and endurance, an oak tree adds a touch of elegance to any landscape. By planting these seeds, you become an environmental steward, contributing to the preservation of our planet. Watch as your tree becomes a haven for wildlife, purifies the air, and offers shade for generations to come. Embark on a captivating journey and nurture the growth of a mighty oak.'),
('Maple Tree Seeds', '70', 'maple1.jpg', 'Experience the magic of nature with our Maple Tree Seeds. Transform your outdoor space into a picturesque haven with the beauty and grace of these premium seeds. Watch in awe as your own maple tree grows, showcasing vibrant autumn foliage and providing shade during sunny days. Maple trees are renowned for their elegance and their ability to capture the essence of each season. By planting these seeds, you become a steward of the environment, creating habitats for wildlife and contributing to a healthier ecosystem. '),
('Pine Tree Seeds', '70', 'pine1.jpg', 'Introducing our Pine Tree Seeds, a perfect choice for arborists and forestry enthusiasts. These premium seeds offer the opportunity to cultivate majestic pine trees with exceptional genetic traits and robust growth potential. With carefully selected seeds from superior pine tree varieties, you can expect high germination rates and consistent growth patterns. Our seeds are meticulously processed, ensuring optimal purity and viability for successful propagation. Whether you are establishing a pine forest or seeking to enhance your landscape with these resilient trees, our Pine Tree Seeds deliver the reliability and quality you need.'),
('Birch Tree Seeds', '70', 'birch1.jpg', 'Birch Tree Seeds is a high-quality, organic seed product that is designed to help gardeners and landscapers grow healthy and vibrant birch trees. These seeds are carefully selected and packaged to ensure maximum germination rates and healthy growth. Birch Tree Seeds are ideal for a wide range of applications, including landscaping, reforestation, and ornamental gardening. They are easy to plant and require minimal maintenance, making them an excellent choice for both novice and experienced gardeners. With Birch Tree Seeds, you can enjoy the beauty and benefits of birch trees in your garden or landscape, while also supporting sustainable and eco-friendly practices.'),
('Basil Seeds', '70', 'basil1.jpg', 'Basil seeds, also known as Sabja seeds, are a popular ingredient in Southeast Asian cuisine and have recently gained popularity as a health food. These small, black seeds come from the basil plant and are rich in fiber, protein, and essential nutrients like iron, calcium, and magnesium. When soaked in water, they expand and form a gel-like substance that can be used in drinks, desserts, or as a natural thickener in cooking. Basil seeds are believed to have a variety of health benefits, including aiding digestion, reducing inflammation, and promoting weight loss. They have a mild flavor and can be easily added to your favorite dishes or beverages for a nutritious boost.'),
('Rosemary Seeds', '70', 'rosemary1.jpg', 'Rosemary seeds are the small, brown seeds of the rosemary plant that can be easily grown into aromatic plants. They are used in cooking and have medicinal properties. Easy to grow and versatile, rosemary seeds are a valuable addition to any garden or kitchen.'),
('Thyme Seeds', '70', 'thyme1.jpg', 'Thyme seeds come from the thyme plant and can be easily grown into a hardy, aromatic herb. These seeds are easy to grow, and the resulting plants can be harvested for cooking or medicinal purposes. Thyme leaves are commonly used in a variety of dishes and have numerous health benefits.'),
('Sage Seeds', '70', 'sage1.jpg', 'Sage seeds are small, dark seeds that come from the sage plant, a perennial herb that is commonly used in cooking and medicinal applications. These seeds can be easily grown into sage plants that produce fragrant, silvery-green leaves. Sage seeds can be planted in well-drained soil and full sun, and take approximately two to three weeks to germinate. Once established, sage plants are hardy and require minimal maintenance. Sage leaves are commonly used in cooking and can add a savory, earthy flavor to dishes like stuffing, meats, and soups. Sage is also known for its medicinal properties and has been used to treat various ailments such as sore throats, digestive issues, and menopausal symptoms.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
('UAVjN46f0bvXSKquej8S', 'mahi', 'mahinazir@gmail.com', 'mahi786', 'user'),
('ir7qjxTxaQm9PM5drpEn', 'selena', 'selenaAnsari@gmail.com', 'selena786', 'user'),
('GE2LLAWjKATiQRLHaa6O', 'Aiyman', 'aiymanAnsari@gmail.com', '12345', 'user'),
('d5URvsP8VusCXQoCdMBG', 'shalu', 'shaluAnsari@gmail.com', '12345', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `price`) VALUES
('s4qs7PZG9IyDZqTGgt3D', 'UAVjN46f0bvXSKquej8S', 'jo35YMmBWpvbCMB65UdA', '160');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
