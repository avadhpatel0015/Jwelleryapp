-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 02:12 PM
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
-- Database: `jewellary_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `login_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`login_id`, `username`, `password`, `name`, `email`, `type`) VALUES
(2, 'abhay_mayani', '15092003', 'roy', 'admin@gmail.com', ' sub'),
(3, 'abhay_mayani', '15092003', 'roy', 'admin@gmail.com', ' sub'),
(4, 'abhay_mayani', '15092003', 'roy', 'admin@gmail.com', ' sub'),
(5, 'patel', 'roy1234', 'avadh', 'royakshay4603@gmail.com', ' super'),
(6, 'patel', '123456', 'AVADHKUMAR', 'avadhpatel@gmail.com', ' super'),
(7, 'patel', '15092003', 'naresh', 'naresh.4522.np@gmail.com', ' super'),
(8, '_akshay_roy_1209', '123123', 'akshay', 'royakshay123@gmail.com', ' super'),
(9, 'abc123', '123', 'abc', 'abc@gmail.com', ' sub'),
(10, 'yash', 'yash@9962', 'Yash', 'moradiyayash9962@gmail.com', 'super');

-- --------------------------------------------------------

--
-- Table structure for table `carat`
--

CREATE TABLE `carat` (
  `carat_id` int(11) NOT NULL,
  `carat_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carat`
--

INSERT INTO `carat` (`carat_id`, `carat_name`) VALUES
(5, '24K (100% pure gold)'),
(6, '22K (92% gold and 8% alloyed m'),
(7, '18K (75% gold and 25% alloyed '),
(8, '14K (58% gold and 42% alloyed '),
(9, 'silver 24k');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `cat_img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_img`) VALUES
(2, 'chain', '17098101013822.webp'),
(4, 'bracelet', '17098101358998.webp'),
(5, 'Necklace', '17098113329902.webp'),
(6, 'Bangles', '17098104146058.webp'),
(7, 'earring', '17098115821563.webp'),
(23, 'Mangalsutra', '17101501564875.webp'),
(24, 'NoseRing', '17101504696835.webp'),
(25, 'Ring', '17113447455239.webp');

-- --------------------------------------------------------

--
-- Table structure for table `jewellery`
--

CREATE TABLE `jewellery` (
  `jewellery_id` int(11) NOT NULL,
  `subcat_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `usertype` varchar(50) NOT NULL,
  `specification` text NOT NULL,
  `carat_id` int(11) NOT NULL,
  `shape_id` int(11) NOT NULL,
  `isactive` varchar(30) NOT NULL,
  `img1` varchar(100) NOT NULL,
  `img2` varchar(100) NOT NULL,
  `img3` varchar(100) NOT NULL,
  `video_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jewellery`
--

INSERT INTO `jewellery` (`jewellery_id`, `subcat_id`, `title`, `description`, `price`, `type_id`, `usertype`, `specification`, `carat_id`, `shape_id`, `isactive`, `img1`, `img2`, `img3`, `video_url`) VALUES
(42, 18, 'Silver Coeur Pendant with Box Chain', 'this Silver Coeur Pendant is YOUR ticket to effortless grace and charm.', 1599, 21, 'women', 'This Silver Coeur Pendant is handcrafted with love', 9, 7, 'yes', '17098061354691.webp', '17098061354108.webp', '17098061357259.webp', '17098061354075.mp4'),
(43, 19, 'Rose Gold Loving in Red Pendant With Link Chain', 'The Rose Gold Loving in Red Pendant  is inspired by the feminine delicacy of red roses that has a charm of its own.', 1699, 11, 'children', '925 Silver with Rose Gold plating Dimensions: 1.5 ', 6, 7, 'yes', '17098064254025.webp', '17098064254802.webp', '17098064257105.webp', '17098064254030.mp4'),
(44, 22, 'Silver Interlocked Heart Duo Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 2599, 22, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 7, 'yes', '17098067819693.webp', '17098067811816.webp', '17098067817497.webp', '17098067815412.mp4'),
(51, 30, 'Anushka Sharma Silver Leaf Necklace', 'Whenever you wear this necklace, your neck will exude elegance and grace like never before.', 1799, 25, 'women', 'Motif Height: 1 cm, Width: 3.1 cm ', 9, 7, 'yes', '17098089986404.webp', '17098089988311.jpg', '17098089982370.webp', '17098089982533.mp4'),
(63, 39, 'Gold Dancing Flame Diamond Earrings', 'The Gold Dancing Flame Diamond Earrings are inspired by the dancing flames of a campfire.', 19443, 12, 'women', 'These diamond-studded gold earrings have a two-flame motif with a small flame inside a larger flame.', 7, 4, 'yes', '17098924432100.webp', '17098924435129.webp', '17098924437650.webp', '17098924431153.mp4'),
(64, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 1399, 12, 'women', 'Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 5, 'yes', '17098927695318.webp', '17098927694987.webp', '17098927695168.webp', ''),
(86, 17, 'Gold Limitless Love Diamond Chain', 'The Gold Limitless Love Diamond Necklace is inspired by the love that weaves a story of never-ending devotion, a bond that transcends the limitations of the physical world.', 27856, 11, 'women', 'This necklace has an infinity motif with a heart at the centre set with lab-grown diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever. 14K gold will not oxidise or discolour so you can wear your', 6, 7, 'yes', '17102279969626.webp', '17102279962695.webp', '17102279968740.webp', '17102279963795.mp4'),
(89, 17, 'Golden Clover Dangle Pendant with Link Chain', 'Graceful? Check. Gorgeous? Check. Lucky? Quintuple Check! DIVA, we feel lucky each time we get to talk to YOU, so we want YOU to have the best luck ever. This was the inspiration behind this Golden Clover Dangle Pendant, designed to bless YOU with all the luck this world possesses.', 3599, 11, 'women', 'This Golden Clover Dangle Pendant has been handcrafted with love, especially for YOU! With five-leaf clovers encrusted with sparkling zircons, this set is here to make YOU the luckiest person on the planet. The golden beads dangling off the clovers simply add to the charm!', 6, 4, 'yes', '17102287387653.webp', '17102287383027.webp', '17102287389211.webp', '17102287384644.mp4'),
(90, 17, 'Golden Zigzag Pendant With Link Chain', 'A striking design that appreciates unique styles. This pendant will be your ideal choice of gifting your loved ones.', 1799, 11, 'women', 'This golden pendant features a unique zigzag design with zircons.  925 Silver with Gold Plating Perfect for sensitive skin Length of chain: 43 cm + 4 cm Adjustable Motif Height: 3 cm, Width: 0.7 cm', 6, 14, 'yes', '17102291117074.webp', '17102291112121.webp', '17102291115332.webp', '17102291116172.mp4'),
(91, 18, 'Silver Mystic Blue Leaf Pendant with Link Chain', 'Inspired by the adorable leaves that mesmerize all who witness them swaying, these Silver Mystic Blue Leaf Pendant is YOUR new companions.', 3299, 11, 'women', 'This Silver Mystic Blue Leaf Pendant is handcrafted with love, just for YOU', 7, 15, 'yes', '17102295704352.webp', '17102295709422.webp', '17102295709287.webp', '17102295703222.mp4'),
(93, 18, 'Oxidised Silver Moon Heart Pendant with Link Chain', 'The Oxidised Silver Moon Heart Pendant with Link Chain is inspired by a stroll along the seashore in the middle of the night to feel at peace.', 1999, 11, 'women', 'The oxidised silver pendant has a crescent moon that has intricate design and a blue coloured heart dangling from the top.', 7, 8, 'yes', '17102301134144.webp', '17102301136891.webp', '17102301136805.webp', '17102301139521.mp4'),
(94, 18, 'Silver Zircon Double Heart Pendant with Link Chain', 'YOUR heart is the purest thing about YOU. How can a heart that’s so kind not be! ', 1799, 11, 'women', 'The Silver Zircon Dual Heart Pendant is handcrafted with love, just for YOU! The attention to detail in this pendant is simply astounding. Featuring intertwined silver and zircon hearts, this pendant represents YOUR precious heart in all its glory! ', 6, 7, 'yes', '17102302568245.webp', '17102302562196.webp', '17102302563650.webp', '17102302569132.mp4'),
(95, 18, 'Oxidised Silver Unwind Moon Pendant with Box Chain', 'If not a long one, then at least a short one that lets you relax. Inspired by our desire to ensure YOU relax, comes this Oxidised Silver Unwind Moon Pendant. Why the moon?', 1800, 11, 'women', 'This Oxidised Silver Unwind Moon Pendant has been handcrafted with love, especially for YOU. ', 6, 8, 'yes', '17102304595669.webp', '17102304592868.jpg', '17102304598437.webp', '17102304595832.mp4'),
(98, 19, 'Rose Gold Mystique Romance Pendant With Link Chain', 'The Rose Gold Mystique Romance Pendant is inspired by the settling of a mysterious charm of romance - bewitching but making its vibe settle in and presence felt.', 1599, 11, 'women', 'The Rose Gold Mystique Romance pendant is designed with a classic romantic approach.', 7, 6, 'yes', '17102318532695.webp', '17102318538294.webp', '17102318533186.webp', '17102318539390.mp4'),
(99, 19, 'Rose Gold Charming Butterfly Pendant with Link Chain', 'Mother Nature never fails to amaze us. Take butterflies for instance. They are beautiful reminders that all good things take time and patience.', 1299, 11, 'women', ' Its the spirit of never giving up that matters. This Rose Gold Charming Butterfly Pendant is our polite reminder to never stop believing in the power of YOU.', 8, 15, 'yes', '17102320262395.webp', '17102320266708.webp', '17102320269716.webp', '17102320265326.mp4'),
(101, 19, 'Rose Gold Princess Pendant With Link Chain', 'The Rose Gold Princess Pendant With Link Chain is inspired by the one who knows her time to shine has come.', 2599, 11, 'women', 'This pendant has an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 6, 7, 'yes', '17102325801542.jpg', '17102325804095.webp', '17102325809713.webp', '17102325806462.mp4'),
(102, 19, 'Rose Gold Crystal Heart Pendant With Link Chain', 'The Rose Gold Crystal Heart Pendant With Link Chain is one of the most beautiful depictions of a heart that has dared to love and hence shines bright.', 2899, 11, 'women', 'The Rose Gold Crystal Heart Pendant With Link Chain is handcrafted with love, just for YOU. The little heart sits nestled in the cozy rose gold frame and shows how love is the shiniest thing out there.', 7, 7, 'yes', '17102326646892.webp', '17102326648795.webp', '17102326643671.webp', '17102326646789.mp4'),
(120, 17, 'Gold Captivating Butterfly Diamond chain', 'The Gold Melting Hearts Diamond Necklace is inspired by the warmth of love. It symbolises a heart melting like honey, creating a sweet symphony that echoes through eternity.', 21000, 11, 'women', 'This necklace has three circles connected with each other and is set with diamonds.  BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. 14K gold will not oxidise or discolour so you can wear your jewellery daily. Necklace Size: Height - 0.8 cm, Necklace Width - 2.1 cm  Comes with the GIVA Jewelle', 6, 16, 'yes', '17111895709996.webp', '17111895701257.webp', '17111895703385.webp', '17111895701587.mp4'),
(121, 17, 'Gold Captivating Butterfly Diamond Chain', 'The Gold Melting Hearts Diamond Necklace is inspired by the warmth of love. It symbolises a heart melting like honey, creating a sweet symphony that echoes through eternity.', 34999, 11, 'women', 'This necklace has three circles connected with each other and is set with diamonds.  BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. 14K gold will not oxidise or discolour so you can wear your jewellery daily. Necklace Size: Height - 0.8 cm, Necklace Width - 2.1 cm  Comes with the GIVA Jewellery kit and authenticity certificate.', 8, 15, 'yes', '17111897694771.webp', '17111897693420.webp', '17111897693475.webp', '17111897695557.mp4'),
(122, 17, 'Golden Dual Layer Zircon Chain', 'The Gold Melting Hearts Diamond Necklace is inspired by the warmth of love. It symbolises a heart melting like honey, creating a sweet symphony that echoes through eternity.', 31999, 11, 'women', ' This necklace has three circles connected with each other and is set with diamonds.  BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. 14K gold will not oxidise or discolour so you can wear your jewellery daily. Necklace Size: Height - 0.8 cm, Necklace Width - 2.1 cm  Comes with the GIVA Jewellery kit and authenticity certificate.', 6, 16, 'yes', '17111899857215.webp', '17111899856436.webp', '17111899857033.webp', '17111899851207.mp4'),
(123, 17, 'Gold Classic Flow Diamond Pendant', 'The Gold Melting Hearts Diamond Necklace is inspired by the warmth of love. It symbolises a heart melting like honey, creating a sweet symphony that echoes through eternity.', 19999, 11, 'women', 'This necklace has three circles connected with each other and is set with diamonds.  BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. 14K gold will not oxidise or discolour so you can wear your jewellery daily. Necklace Size: Height - 0.8 cm, Necklace Width - 2.1 cm  Comes with the GIVA Jewellery kit and authenticity certificate.', 6, 4, 'yes', '17111902268760.webp', '17111902262687.webp', '17111902269158.webp', '17111902264040.mp4'),
(124, 17, 'Golden Tranquil Waters Chain', 'The Gold Melting Hearts Diamond Necklace is inspired by the warmth of love. It symbolises a heart melting like honey, creating a sweet symphony that echoes through eternity.', 1200, 11, 'women', 'This necklace has three circles connected with each other and is set with diamonds.  BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. 14K gold will not oxidise or discolour so you can wear your jewellery daily. Necklace Size: Height - 0.8 cm, Necklace Width - 2.1 cm  Comes with the GIVA Jewellery kit and authenticity certificate.', 6, 16, 'yes', '17111903888511.webp', '17111903885515.jpg', '17111903885496.webp', '17111903886520.mp4'),
(125, 18, 'Silver Flower Pendant With Link Chain', 'If not a long one, then at least a short one that lets you relax. Inspired by our desire to ensure YOU relax, comes this Oxidised Silver Unwind Moon Pendant. Why the moon?', 1299, 11, 'women', 'This Silver Coeur Pendant is handcrafted with love', 9, 16, 'yes', '17111909583933.webp', '17111909583797.jpg', '17111909586532.webp', '17111909585347.mp4'),
(126, 18, 'Chain ', 'This Silver Coeur Pendant is handcrafted with love', 999, 11, 'women', 'If not a long one, then at least a short one that lets you relax. Inspired by our desire to ensure YOU relax, comes this Oxidised Silver Unwind Moon Pendant. Why the moon?', 9, 16, 'yes', '17111910558643.webp', '17111910555057.webp', '17111910557939.webp', '17111910552246.mp4'),
(127, 18, '24 carat silver chain ', 'If not a long one, then at least a short one that lets you relax. Inspired by our desire to ensure YOU relax, comes this Oxidised Silver Unwind Moon Pendant. Why the moon?', 1999, 11, 'women', 'This Silver Coeur Pendant is handcrafted with love', 9, 13, 'yes', '17111912379864.webp', '17111912374291.webp', '17111912372093.webp', '17111912371753.mp4'),
(128, 19, 'Rose Gold Loving in Red Pendant With Link Chain', 'The Rose Gold Loving in Red Pendant is inspired by the feminine delicacy of red roses that has a charm of its own.', 1299, 11, 'women', '	925 Silver with Rose Gold plating Dimensions: 1.5', 8, 16, 'yes', '17111917777062.webp', '17111917779269.webp', '17111917779923.webp', '17111917779869.mp4'),
(129, 19, 'Rose Gold Loving in Red Pendant With Link Chain', 'The Rose Gold Loving in Red Pendant is inspired by the feminine delicacy of red roses that has a charm of its own.', 1999, 11, 'women', '	925 Silver with Rose Gold plating Dimensions: 1.5', 8, 16, 'yes', '17111918908655.webp', '17111918902237.webp', '17111918903034.webp', '17111918907186.mp4'),
(130, 19, 'Rose Gold Loving in Red Pendant With Link Chain', 'If not a long one, then at least a short one that lets you relax. Inspired by our desire to ensure YOU relax, comes this Oxidised Silver Unwind Moon Pendant. Why the moon?', 1999, 11, 'women', '	925 Silver with Rose Gold plating Dimensions: 1.5', 8, 16, 'yes', '17111920295234.webp', '17111920291222.webp', '17111920296212.webp', '17111920296336.mp4'),
(131, 23, 'Rose Gold Harmony Bracelet', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 1999, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals.  925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 16, 'yes', '17111931581860.webp', '17111931581808.webp', '17111931583439.webp', '17111931589373.mp4'),
(132, 23, 'Rose Gold Harmony Bracelet', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 999, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals.  925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 7, 'yes', '17111932857091.webp', '17111932859213.webp', '17111932854810.webp', '17111932853600.mp4'),
(133, 23, 'Rose Gold Harmony Bracelet', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 899, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals.  925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 16, 'yes', '17111933936893.webp', '17111933934428.webp', '17111933934855.webp', '17111933937380.mp4'),
(134, 23, 'Rose Gold Harmony Bracelet', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 899, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals. 925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 4, 'yes', '17112020708568.webp', '17112020703935.webp', '17112020709712.webp', '17112020709975.mp4'),
(135, 23, 'Rose Gold Harmony Bracelet', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 999, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals. 925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 16, 'yes', '17112021593484.webp', '17112021596615.webp', '17112021597989.webp', '17112021591643.mp4'),
(136, 23, 'Rose Gold Harmony Bracelet', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 1999, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals. 925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 16, 'yes', '17112022452271.webp', '17112022459996.webp', '17112022459555.webp', '17112022459133.mp4'),
(137, 23, 'Rose Gold Sun Flower Pendant with Link Chain', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 1999, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals. 925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 8, 16, 'yes', '17112023229024.webp', '17112023224232.webp', '17112023221598.webp', '17112023225738.mp4'),
(138, 23, 'Rose Gold Sun Flower Pendant with Link Chain', 'The Rose Gold Harmony Bracelet is inspired by the soothing rustle of the leaves of a tree that connects us to the rhythm of life and evokes peace.', 1199, 10, 'women', 'This rose gold bracelet features oval motifs with zircons set in alternating ovals. 925 Silver With Rose Gold Plating Perfect for sensitive skin The length of the chain is 15 cm with a 3 cm adjustable portion Comes with the GIVA Jewellery kit and authenticity certificate Content: Bracelet Net Qty- 1 unit', 7, 16, 'yes', '17112023736917.webp', '17112023735943.webp', '17112023735787.webp', '17112023732039.mp4'),
(139, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 999, 10, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 16, 'yes', '17112026583065.webp', '17112026586147.webp', '17112026584883.webp', '17112026584422.mp4'),
(140, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 1999, 10, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 16, 'yes', '17112027182244.webp', '17112027182492.webp', '17112027189412.webp', '17112027181397.mp4'),
(141, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 1199, 10, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 16, 'yes', '17112027692567.webp', '17112027698348.webp', '17112027693387.webp', '17112027691695.mp4'),
(142, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 1129, 10, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 16, 'yes', '17112028357600.jpg', '17112028354950.webp', '17112028351988.webp', '17112028353651.mp4'),
(143, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 1999, 10, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 8, 'yes', '17112029196695.webp', '17112029194120.webp', '17112029197094.webp', '17112029198462.mp4'),
(144, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 3099, 10, 'men', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 16, 'yes', '17112031802683.webp', '17112031809674.webp', '17112031805262.webp', '17112031808832.mp4'),
(145, 22, 'Silver Interlocked Heart Bracelet', 'Your heart with mine, makes everything fine! For all the romantics out there', 2999, 10, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 9, 16, 'yes', '17112032203183.webp', '17112032205070.webp', '17112032209690.webp', '17112032204218.mp4'),
(146, 32, 'Gold Classic Evil Eye Diamond Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 21099, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 7, 16, 'yes', '17112042874760.webp', '17112042871558.webp', '17112042878705.webp', '17112042876013.mp4'),
(147, 32, 'Gold Classic Evil Eye Diamond Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 19909, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 6, 16, 'yes', '17112043552093.webp', '17112043557115.jpg', '17112043558126.webp', '17112043555305.mp4'),
(148, 32, 'Gold Classic Evil Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 20109, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 8, 16, 'yes', '17112044053171.webp', '17112044051665.jpg', '17112044051286.webp', '17112044052631.mp4'),
(149, 32, 'Gold Classic Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 19909, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 8, 16, 'yes', '17112044593102.webp', '17112044596266.jpg', '17112044597815.webp', '17112044599290.mp4'),
(150, 32, 'Gold Classic Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 10909, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 8, 16, 'yes', '17112045061722.webp', '17112045062738.webp', '17112045069608.webp', '17112045063421.mp4'),
(151, 32, 'Gold Classic Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 19909, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 8, 16, 'yes', '17112045548731.webp', '17112045544201.webp', '17112045545372.webp', '17112045545494.mp4'),
(152, 32, 'Gold Classic Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 10909, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 8, 16, 'yes', '17112046711713.webp', '17112046712306.webp', '17112046713179.webp', '17112046714791.mp4'),
(153, 32, 'Gold Classic Bracelet', 'The Gold Classic Evil Eye Diamond Bracelet embrace ancient wisdom and modern design. The evil eye bracelet can empower you to face challenges with unwavering strength.', 19909, 10, 'women', 'This bracelet features an evil eye motif set with coloured stone at the centre and lab-grown diamonds studded around. BIS-Hallmarked Gold Jewellery Lab grown diamonds Our 14K solid gold pieces are made to last forever. ', 8, 16, 'yes', '17112047294401.webp', '17112047292091.webp', '17112047296009.webp', '17112047297342.mp4'),
(154, 25, 'Gold Captivating Butterfly Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 32999, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 16, 'yes', '17112116893823.webp', '17112116897543.webp', '17112116896804.webp', '17112116893942.mp4'),
(155, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 32999, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 16, 'yes', '17112117477857.webp', '17112117478834.webp', '17112117473340.webp', '17112117476684.mp4'),
(156, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 29999, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 16, 'yes', '17112117917630.webp', '17112117914349.webp', '17112117915217.webp', '17112117917070.mp4'),
(157, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 19999, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 16, 'yes', '17112118364551.webp', '17112118363103.webp', '17112118363374.webp', '17112118368089.mp4'),
(158, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 21099, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 4, 'yes', '17112119002884.webp', '17112119006982.webp', '17112119006786.webp', '17112119003167.mp4'),
(159, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 21099, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 7, 16, 'yes', '17112119475042.webp', '17112119477403.webp', '17112119479709.webp', '17112119475585.mp4'),
(160, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 17099, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 16, 'yes', '17112120137319.webp', '17112120132784.webp', '17112120137175.webp', '17112120135542.mp4'),
(161, 25, 'Gold Captivating Diamond Necklace', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 25099, 39, 'women', 'This necklace has a butterfly motif set inside another butterfly, studded with diamonds.  BIS-Hallmarked Gold Jewellery Lab-grown diamonds Our 14K solid gold pieces are made to last forever.', 8, 16, 'yes', '17112120629292.webp', '17112120625627.webp', '17112120627712.webp', '17112120622028.mp4'),
(162, 30, 'Silver Infinity Heart Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 1899, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5\"+2.5\" silver chain Sterling silver base', 8, 16, 'yes', '17112121813059.webp', '17112121812331.webp', '17112121816511.webp', '17112121819520.mp4'),
(163, 30, 'Silver Infinity Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 2499, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5', 9, 5, 'yes', '17112124256972.webp', '17112124253319.webp', '17112124252510.webp', '17112124255369.mp4'),
(164, 30, 'Silver Infinity Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 1999, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5', 9, 16, 'yes', '17112124743077.webp', '17112124746615.jpg', '17112124744541.webp', '17112124744099.mp4'),
(165, 30, 'Silver Infinity Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 1099, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5', 9, 16, 'yes', '17112125203255.webp', '17112125203100.webp', '17112125203743.webp', '17112125207700.mp4'),
(166, 30, 'Silver Infinity Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 1899, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5\"+2.5\" silver chain Sterling silver base', 9, 16, 'yes', '17112125978388.webp', '17112125971752.webp', '17112125976278.webp', '17112125971632.mp4'),
(167, 30, 'Silver Infinity Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 1899, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5\"+2.5\" silver chain Sterling silver base', 9, 16, 'yes', '17112126385572.webp', '17112126385495.webp', '17112126384546.webp', '17112126387065.mp4'),
(168, 30, 'Silver Infinity Necklace', 'The Silver Infinity Heart Necklace is inspired by every second you spend with your soulmate, every second that seems to encapsulate the whole of eternity.', 2199, 39, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15.5\"+2.5\" silver chain Sterling silver base', 9, 16, 'yes', '17112126831837.webp', '17112126835628.webp', '17112126834700.webp', '17112126834657.mp4'),
(169, 31, 'Rose Gold Zircon Arc Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 2199, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 8, 16, 'yes', '17112128276481.webp', '17112128271775.webp', '17112128275593.webp', '17112128276939.mp4'),
(170, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 1099, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 8, 16, 'yes', '17112128835026.webp', '17112128835158.webp', '17112128836531.webp', '17112128835644.mp4'),
(171, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 2099, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 8, 16, 'yes', '17112129452718.webp', '17112129455381.webp', '17112129459223.webp', '17112129452021.mp4'),
(172, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 3299, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 7, 16, 'yes', '17112129996260.webp', '17112129993632.webp', '17112129999426.webp', '17112129997635.mp4'),
(173, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 2199, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 8, 16, 'yes', '17112130428085.webp', '17112130423957.webp', '17112130421928.webp', '17112130427532.mp4'),
(174, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 2999, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 8, 16, 'yes', '17112130936056.webp', '17112130934084.jpg', '17112130939618.webp', '17112130935270.mp4'),
(175, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 1999, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 7, 16, 'yes', '17112131496997.webp', '17112131493556.webp', '17112131494145.webp', '17112131499679.mp4'),
(176, 31, 'Rose Gold Zircon Necklace', 'Simplicity and diamonds never fail to impress your friend, and therefore we brought both of them together in this Rose Gold Zircon Arc Necklace.   ', 2399, 39, 'women', 'Rose Gold Zircon Arc Necklace is handcrafted with love, just for YOU. This dainty necklace is studded with zircon that come together to form a perfect Arc.  ', 7, 16, 'yes', '17112132226687.webp', '17112132229947.webp', '17112132225281.webp', '17112132226436.mp4'),
(177, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 3199, 40, 'women', 'This golden bangle has a classic minimal design that will look good on your wrist.  925 Silver with Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112519508217.webp', '17112519507193.webp', '17112519503019.webp', '17112519507647.mp4'),
(178, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 2999, 40, 'women', 'This golden bangle has a classic minimal design that will look good on your wrist.  925 Silver with Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112520073598.webp', '17112520074953.webp', '17112520079617.webp', '17112520076455.mp4'),
(179, 33, 'Golden Classic Kada Bangle', 'The Gold Captivating Butterfly Diamond Necklace is inspired by a butterfly, gracefully navigating the winds of life, inspiring others with its vibrant colours and gentle presence.', 2029, 40, 'women', 'This golden bangle has a classic minimal design that will look good on your wrist.  925 Silver with Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112520951997.jpg', '17112520954244.webp', '17112520959949.webp', '17112520958912.mp4'),
(180, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 2012, 40, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 8, 16, 'yes', '17112521797957.jpg', '17112521791269.jpg', '17112521795092.webp', '17112521791373.mp4'),
(181, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 2099, 40, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 8, 16, 'yes', '17112522392851.webp', '17112522393872.webp', '17112522393798.webp', '17112522399813.mp4'),
(182, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 3099, 40, 'women', 'This golden bangle has a classic minimal design that will look good on your wrist.  925 Silver with Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112523057982.webp', '17112523058357.webp', '17112523059836.webp', '17112523059082.mp4'),
(183, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 2099, 40, 'women', 'This golden bangle has a classic minimal design that will look good on your wrist.  925 Silver with Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112524248906.webp', '17112524246631.webp', '17112524246315.webp', '17112524241524.mp4'),
(184, 33, 'Golden Classic Kada Bangle', 'With this bangle, we honour every woman who exemplifies the spirit of the strong and the fearless.', 999, 40, 'women', 'High quality zircon stones Adjustable upto 2.2 inc', 8, 16, 'yes', '17112524843837.webp', '17112524847976.webp', '17112524846919.webp', '17112524849101.mp4'),
(185, 34, 'Silver Sparkle Bangle', 'Believe in yourself, for you are stronger and more beautiful than you can imagine.', 3600, 40, 'women', 'This silver bangle has a kite motif design with a zircon placed at the centre and zircon studded alternatively on the bangle. 925 Silver  Perfect for sensitive skin', 9, 16, 'yes', '17112525712750.jpg', '17112525716486.webp', '17112525714143.webp', '17112525718159.mp4'),
(186, 34, 'Silver Sparkle Bangle', 'Believe in yourself, for you are stronger and more beautiful than you can imagine.', 2099, 40, 'women', 'This silver bangle has a kite motif design with a zircon placed at the centre and zircon studded alternatively on the bangle. 925 Silver  Perfect for sensitive skin Bangle Diameter: 6.2 cm', 9, 16, 'yes', '17112526567160.jpg', '17112526568882.webp', '17112526569209.webp', '17112526561792.mp4'),
(187, 34, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 2099, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112549966748.webp', '17112549964198.webp', '17112549964676.webp', '17112549964933.mp4'),
(188, 34, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 1099, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112550841693.webp', '17112550847813.webp', '17112550847450.webp', '17112550844853.mp4'),
(189, 35, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 2099, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112557995648.webp', '17112557991708.webp', '17112557992327.webp', '17112557995132.mp4'),
(190, 34, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 999, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112551858653.webp', '17112551856953.webp', '17112551859763.webp', '17112551851443.mp4'),
(191, 34, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 1299, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112552273633.webp', '17112552279662.webp', '17112552273552.webp', '17112552277411.mp4'),
(192, 34, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 999, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112552743214.webp', '17112552746289.webp', '17112552743152.webp', '17112552741797.mp4'),
(193, 34, 'Silver Glinting Treasure Bangle', 'The Silver Glinting Treasure Bangle is our favourite new silver jewellery piece! Inspired by the warmth of glinting treasure, it is a statement of classic regality.', 1999, 40, 'women', 'This bangle features oval chained patterns with flower motifs in the centre of each link. This silver bangle is studded with Zircons and is perfect for royalty.', 9, 16, 'yes', '17112555057334.jpg', '17112554678499.webp', '17112554679490.webp', '17112555053751.mp4'),
(194, 35, 'Rose Gold Circle Patterned Bangle', 'A harmonious balance of simplicity and intricacy etched into the circles, this bangle is a perfect choice of gifting for your mother.', 4099, 40, 'women', 'This rose gold bangle has a design of interlocking circles imprinted throughout the bangle. 925 Silver with Rose Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112556899934.jpg', '17112556893410.webp', '17112556894702.webp', '17112556896875.mp4'),
(195, 35, 'Rose Gold Circle Patterned Bangle', 'A harmonious balance of simplicity and intricacy etched into the circles, this bangle is a perfect choice of gifting for your mother.', 1099, 40, 'women', 'This rose gold bangle has a design of interlocking circles imprinted throughout the bangle. 925 Silver with Rose Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112560959461.webp', '17112560956801.webp', '17112560953539.webp', '17112560957369.mp4'),
(196, 35, 'Rose Gold Circle Patterned Bangle', 'A harmonious balance of simplicity and intricacy etched into the circles, this bangle is a perfect choice of gifting for your mother.', 2999, 40, 'women', 'This rose gold bangle has a design of interlocking circles imprinted throughout the bangle. 925 Silver with Rose Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 8, 16, 'yes', '17112561362763.webp', '17112561364167.webp', '17112561368526.webp', '17112561364237.mp4'),
(197, 35, 'Rose Gold Circle Patterned Bangle', 'A harmonious balance of simplicity and intricacy etched into the circles, this bangle is a perfect choice of gifting for your mother.', 3499, 40, 'women', 'This rose gold bangle has a design of interlocking circles imprinted throughout the bangle. 925 Silver with Rose Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 7, 16, 'yes', '17112561996839.webp', '17112561994286.webp', '17112561997528.webp', '17112561995472.mp4'),
(198, 35, 'Rose Gold Circle Patterned Bangle', 'A harmonious balance of simplicity and intricacy etched into the circles, this bangle is a perfect choice of gifting for your mother.', 2899, 40, 'women', 'This rose gold bangle has a design of interlocking circles imprinted throughout the bangle. 925 Silver with Rose Gold Plating Perfect for sensitive skin Bangle Diameter: 6.2 cm', 7, 16, 'yes', '17112562733328.webp', '17112562734622.webp', '17112562734532.webp', '17112562733978.mp4'),
(199, 35, 'Rose Gold Circle Patterned Bangle', 'Our Rose Gold Glittering Sheen Bangle is inspired by the idea that 1in the glow of our love embrace, we create a love story that timeless, never to be sold.', 2099, 40, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15 silver chain Sterling silver base', 8, 16, 'yes', '17112564446116.webp', '17112564447079.webp', '17112564448569.webp', '17112564449785.mp4'),
(200, 35, 'Rose Gold Circle Patterned Bangle', 'Our Rose Gold Glittering Sheen Bangle is inspired by the idea that 1in the glow of our love embrace, we create a love story that timeless, never to be sold.', 1999, 40, 'women', 'The Silver Infinity Heart Necklace has a very elegant design of an infinity shape - studded with zircons and 3 smaller shaped hearts juxtaposed into the shape. High quality zircon stones 15 silver chain Sterling silver base', 8, 16, 'yes', '17112564952659.webp', '17112564956811.webp', '17112564957698.webp', '17112564957498.mp4'),
(201, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 7299, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112650459917.webp', '17112650453188.webp', '17112650459089.webp', '17112650454643.mp4'),
(202, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 5599, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112651685883.webp', '17112651689270.webp', '17112651686543.webp', '17112651694843.mp4'),
(203, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 7899, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112652228890.webp', '17112652221882.webp', '17112652228364.webp', '17112652229747.mp4');
INSERT INTO `jewellery` (`jewellery_id`, `subcat_id`, `title`, `description`, `price`, `type_id`, `usertype`, `specification`, `carat_id`, `shape_id`, `isactive`, `img1`, `img2`, `img3`, `video_url`) VALUES
(204, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 5299, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112652811393.webp', '17112652815007.webp', '17112652814391.webp', '17112652814342.mp4'),
(205, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 6799, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112653195812.webp', '17112653197146.webp', '17112653195992.webp', '17112653194249.mp4'),
(206, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 4099, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112654133983.webp', '17112654132788.webp', '17112654131545.webp', '17112654132294.mp4'),
(207, 39, 'Gold Leafy Grace Diamond Earrings', 'Taking a leaf from your preferred style, we made these earrings with a classic design. They would be gorgeous on you.', 4099, 12, 'women', 'These gold earrings have six leaves in alternating settings studded with lab-grown diamonds. BIS-Hallmarked Gold Jewellery Authentic lab-grown diamonds', 8, 16, 'yes', '17112654597178.webp', '17112654593253.webp', '17112654593640.webp', '17112654596504.mp4'),
(208, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 1399, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm.', 9, 16, 'yes', '17112655608484.webp', '17112655603671.webp', '17112655609784.webp', '17112655605675.mp4'),
(209, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 1298, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 16, 'yes', '17112656229317.webp', '17112656229941.webp', '17112656221718.webp', '17112656224140.mp4'),
(210, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 1998, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 16, 'yes', '17112657474825.jpg', '17112657472478.webp', '17112657475576.webp', '17112657476670.mp4'),
(211, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 2099, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 16, 'yes', '17112657924613.webp', '17112657922206.webp', '17112657928211.webp', '17112657925755.mp4'),
(212, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 1799, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 16, 'yes', '17112658449227.webp', '17112658443106.webp', '17112658448211.webp', '17112658443209.mp4'),
(213, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 1999, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 16, 'yes', '17112659009457.webp', '17112659006347.webp', '17112659004925.webp', '17112659003516.mp4'),
(214, 40, 'Silver Leaf Earrings', 'Cuter than cupids! These five-leaved ear studs are our new favourite pair. Minimal, chic, and playful, these little cuties are the perfect pair to elevate your look.', 999, 12, 'women', 'These silver earrings feature leaves motif studded with zircons.  925 Silver  Perfect for sensitive skin Earring Size: Height - 1.5 cm, Width - 0.6 cm', 9, 16, 'yes', '17112659381498.webp', '17112659382682.webp', '17112659381920.webp', '17112659383069.mp4'),
(215, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 1799, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 7, 16, 'yes', '17112660485911.webp', '17112660489626.webp', '17112660486876.webp', '17112660485946.mp4'),
(216, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 1999, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112661163311.jpg', '17112661168905.jpg', '17112661166509.webp', '17112661165552.mp4'),
(217, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 1499, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112661676127.webp', '17112661679868.webp', '17112661678516.webp', '17112661676030.mp4'),
(218, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 1099, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112662478555.webp', '17112662474433.webp', '17112662476401.webp', '17112662473945.mp4'),
(219, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 1299, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112662897297.webp', '17112662896371.webp', '17112662899216.webp', '17112662894526.mp4'),
(220, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 1009, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112663359768.webp', '17112663357691.webp', '17112663355741.webp', '17112663355521.mp4'),
(221, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 9909, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112663799755.jpg', '17112663796848.webp', '17112663792573.webp', '17112663797073.mp4'),
(222, 41, 'Rose Gold Princess Earrings', 'The Rose Gold Princess Earrings are inspired by the one who knows her time to shine has come.', 2999, 12, 'women', 'These earrings have an eye-catching elongated hoop with a cluster of zircons on the top and the bottom tip.  925 Silver with Rose Gold Plating Perfect for sensitive skin', 8, 16, 'yes', '17112664481606.webp', '17112664481392.jpg', '17112664484495.webp', '17112664487519.mp4'),
(223, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 3499, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 8, 16, 'yes', '17113413809891.webp', '17113413804429.webp', '17113413801122.webp', '17113413802799.mp4'),
(224, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 4599, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 7, 16, 'yes', '17113414702837.webp', '17113414702771.webp', '17113414706646.webp', '17113414703144.mp4'),
(225, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 5499, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 8, 16, 'yes', '17113415311581.webp', '17113415311402.webp', '17113415311986.webp', '17113415313667.mp4'),
(226, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 3999, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 8, 16, 'yes', '17113415774704.webp', '17113415779018.webp', '17113415773699.webp', '17113415777842.mp4'),
(227, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 2299, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 8, 16, 'yes', '17113416252304.webp', '17113416252972.webp', '17113416253765.webp', '17113416253733.mp4'),
(228, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 3999, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 8, 16, 'yes', '17113416719483.webp', '17113416713285.webp', '17113416715818.webp', '17113416719514.mp4'),
(229, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 6599, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 6, 16, 'yes', '17113417131115.webp', '17113417132261.webp', '17113417137853.webp', '17113417139867.mp4'),
(230, 44, 'Golden Mangalsutra', 'A symbol of love embarking on a different glow and charm. This ethnic piece is perfect for your other half.', 4099, 41, 'women', 'This design is making a statement with a unique embellishment of this gold-plated musing.', 8, 16, 'yes', '17113417509406.webp', '17113417502771.webp', '17113417503963.webp', '17113417505502.mp4'),
(231, 45, 'Silver Drizzle Drop Mangalsutra', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 2299, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113418747506.webp', '17113418744383.webp', '17113418746124.webp', '17113418741116.mp4'),
(232, 45, 'Silver Drizzle Drop Mangalsutra', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 2299, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113420668349.webp', '17113420661208.webp', '17113420665486.webp', '17113420667645.mp4'),
(233, 45, 'Silver Drizzle Drop Mangalsutra', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 2099, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113421084447.webp', '17113421088356.webp', '17113421088922.webp', '17113421081378.mp4'),
(234, 45, 'Silver Drizzle Drop Mangalsutra 4', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 3599, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113421754995.webp', '17113421753583.webp', '17113421759638.webp', '17113421759590.mp4'),
(235, 45, 'Silver Drizzle Drop Mangalsutra 5', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 5399, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113422227665.webp', '17113422222523.webp', '17113422222628.webp', '17113422229724.mp4'),
(236, 45, 'Silver Drizzle Drop Mangalsutra 6', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 7399, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113422759242.webp', '17113422759822.webp', '17113422758533.webp', '17113422756391.mp4'),
(237, 45, 'Silver Drizzle Drop Mangalsutra 7', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 5599, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113423187979.webp', '17113423181156.jpg', '17113423189539.webp', '17113423186375.mp4'),
(238, 45, 'Silver Drizzle Drop Mangalsutra 8', 'The Silver Drizzle Drop Mangalsutra is inspired by the mild drizzle that weaves magic and aura.', 3999, 41, 'women', 'he Silver Drizzle Drop Mangalsutra has a zircon stone nestled in a circular silver frame.  925 Silver  AAA+ Quality Zircons Charm: 12 mm x 17 mm', 9, 16, 'yes', '17113423878888.webp', '17113423877565.jpg', '17113423878724.webp', '17113423872527.mp4'),
(239, 46, 'Rose Gold Periwinkle Mangalsutra', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 2399, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113424936431.webp', '17113424939431.webp', '17113424931452.webp', '17113424937900.mp4'),
(240, 46, 'Rose Gold Periwinkle Mangalsutra 2', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 2999, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113425365748.webp', '17113425368859.webp', '17113425363650.webp', '17113425362862.mp4'),
(241, 46, 'Rose Gold Periwinkle Mangalsutra 2', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 5999, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 7, 16, 'yes', '17113429197957.webp', '17113429199942.webp', '17113429196999.webp', '17113429197405.mp4'),
(242, 46, 'Rose Gold Periwinkle Mangalsutra 2', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 6999, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113429671996.webp', '17113429673006.webp', '17113429672895.webp', '17113429677321.mp4'),
(243, 46, 'Rose Gold Periwinkle Mangalsutra 5', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 5599, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113430205711.webp', '17113430203903.jpg', '17113430206372.webp', '17113430202025.mp4'),
(244, 46, 'Rose Gold Periwinkle Mangalsutra 6', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 3599, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113431094633.webp', '17113431096085.jpg', '17113431094012.webp', '17113431091830.mp4'),
(245, 46, 'Rose Gold Periwinkle Mangalsutra 7', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 3599, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113431752703.webp', '17113431756924.webp', '17113431755421.webp', '17113431756345.mp4'),
(246, 46, 'Rose Gold Periwinkle Mangalsutra 8', 'The Rose Gold Periwinkle Mangalsutra is inspired by the gorgeous white hue of the periwinkle flower that symbolizes purity and innocence.', 4599, 41, 'women', 'The Rose Gold Circle Of Love Mangalsutra has a gorgeous circular design with leaf-shaped zircons embedded within it.  925 Silver with Rose Gold Plating AAA+ Quality Zircons', 8, 16, 'yes', '17113432175245.webp', '17113432172791.webp', '17113432174356.webp', '17113432175901.mp4'),
(247, 47, 'Gold Nose Pin', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 499, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113434482568.webp', '17113434483598.webp', '17113434484797.webp', '17113434482582.mp4'),
(248, 47, 'Gold Nose Pin 2', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 399, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113435153672.webp', '17113435156659.webp', '17113435155462.webp', '17113435154003.mp4'),
(249, 47, 'Gold Nose Pin 3', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 349, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113435556085.webp', '17113435555351.webp', '17113435554014.webp', '17113435552620.mp4'),
(250, 47, 'Gold Nose Pin 4', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 299, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113437222733.webp', '17113437223030.webp', '17113437226133.webp', '17113437225158.mp4'),
(251, 47, 'Gold Nose Pin 4', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 699, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113437867270.webp', '17113437868072.webp', '17113437862906.webp', '17113437865475.mp4'),
(252, 47, 'Gold Nose Pin 6', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 699, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113438269785.webp', '17113438262371.webp', '17113438261305.webp', '17113438265860.mp4'),
(253, 47, 'Gold Nose Pin 7', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 749, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113439243420.webp', '17113439245920.webp', '17113439246633.webp', '17113439247384.mp4'),
(254, 47, 'Gold Nose Pin 8', 'Let your beauty sparkle like this nosepin! Shine with love and happiness throughout the festivities.', 549, 13, 'women', 'This golden nose pin features a flower motif with rose-cut glass stones at the centre. Presenting  chic #VivaahDaSwag Collection for an unforgettable wedding. 925 Silver with Gold Plating Diameter- 0.6 cm x 0.6 cm', 8, 16, 'yes', '17113440424480.webp', '17113440427899.webp', '17113440428367.webp', '17113440428837.mp4'),
(255, 48, 'Silver Nose Pin ', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 289, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113441803943.webp', '17113441807953.webp', '17113441807419.webp', '17113441803484.mp4'),
(256, 48, 'Silver Nose Pin 2', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 399, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113442212024.jpg', '17113442213930.jpg', '17113442215484.webp', '17113442219021.mp4'),
(257, 48, 'Silver Nose Pin 3', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 449, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113442649786.webp', '17113442648091.webp', '17113442642236.webp', '17113442645982.mp4'),
(258, 48, 'Silver Nose Pin 4', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 549, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113443059309.webp', '17113443058106.webp', '17113443057583.webp', '17113443057897.mp4'),
(259, 48, 'Silver Nose Pin 5', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 249, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113443476092.webp', '17113443472445.webp', '17113443475090.webp', '17113443472608.mp4'),
(260, 48, 'Silver Nose Pin 5', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 399, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113443863788.webp', '17113443864408.webp', '17113443869147.webp', '17113443861579.mp4'),
(261, 48, 'Silver Nose Pin 7', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 249, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113444545890.webp', '17113444544501.webp', '17113444545884.webp', '17113444542325.mp4'),
(262, 48, 'Silver Nose Pin 8', 'Here is a our creation, inspired by nature and fueled by our boundless imagination.', 599, 13, 'women', 'This beautiful silver nose pin has a floral motif with zircons. 925 Silver Diameter- 1.4 cm x 0.8 cm Perfect for sensitive skin', 9, 16, 'yes', '17113444931403.webp', '17113444937722.webp', '17113444933931.webp', '17113444931372.mp4'),
(263, 49, 'Gold Classic Diamond Ring', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 8899, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113452195185.webp', '17113452199588.webp', '17113452191558.webp', '17113452197031.mp4'),
(264, 49, 'Gold Classic Diamond Ring 2', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 7999, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113453186341.webp', '17113453188800.webp', '17113453181718.webp', '17113453188785.mp4'),
(265, 49, 'Gold Classic Diamond Ring 3', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 5599, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113453945284.webp', '17113453946704.webp', '17113453948252.webp', '17113453944931.mp4'),
(266, 49, 'Gold Classic Diamond Ring 4', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 3999, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113454472602.webp', '17113454474429.webp', '17113454472077.webp', '17113454478318.mp4'),
(267, 49, 'Gold Classic Diamond Ring 5', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 2299, 42, 'men', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113454989399.webp', '17113454983661.webp', '17113454983537.webp', '17113454987950.mp4'),
(268, 49, 'Gold Classic Diamond Rin 6', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 3299, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113455516457.webp', '17113455515449.webp', '17113455513620.webp', '17113455517645.mp4'),
(269, 49, 'Gold Classic Diamond Rin 7', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 3999, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113456062987.webp', '17113456064495.webp', '17113456068800.webp', '17113456069310.mp4'),
(270, 49, 'Gold Classic Diamond Rin 8', 'We believe that the jewellery you wear should be both beautiful and meaningful. And nothing like some timeless collection to elevate your everyday look.', 4499, 42, 'women', 'This gold ring is studded with lab-grown diamonds arranged in a line towards the centre. BIS-Hallmarked Gold Jewellery Lab-grown diamonds', 8, 16, 'yes', '17113456706583.webp', '17113456703596.webp', '17113456703700.webp', '17113456709190.mp4'),
(271, 50, 'Silver Hollow Heart Ring', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 999, 42, 'women', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113459273925.webp', '17113459277971.webp', '17113459279673.webp', '17113459278023.mp4'),
(272, 50, 'Silver Hollow Heart Ring 2', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 1099, 42, 'men', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113459886913.webp', '17113459889345.webp', '17113459889752.webp', '17113459889567.mp4'),
(273, 50, 'Silver Hollow Heart Ring 3', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 899, 42, 'men', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113460722242.webp', '17113460727226.webp', '17113460723546.webp', '17113460728322.mp4'),
(274, 50, 'Silver Hollow Heart Ring 4', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 1099, 42, 'men', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113461589835.webp', '17113461584406.webp', '17113461586758.webp', '17113461587924.mp4'),
(275, 50, 'Silver Hollow Heart Ring 5', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 1299, 42, 'women', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113462204543.jpg', '17113462201265.webp', '17113462205712.jpg', '17113462208869.mp4'),
(276, 50, 'Silver Hollow Heart Ring 6', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 1499, 42, 'women', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113463047125.webp', '17113463043618.webp', '17113463047984.webp', '17113463047891.mp4'),
(277, 50, 'Silver Hollow Heart Ring 7', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 999, 42, 'women', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113465592583.webp', '17113465592278.webp', '17113465595982.webp', '17113465595440.mp4'),
(278, 50, 'Silver Hollow Heart Ring 8', 'The Silver Hollow Heart Ring is inspired by the void which fills up when youre in love.', 1099, 42, 'women', 'The Silver Ring has a heart shape cut out at the centre. 925 Silver  Adjustable size to ensure no fitting issues Diameter: 20 mm +Adjustable', 9, 16, 'yes', '17113466104192.webp', '17113466104904.webp', '17113466107003.webp', '17113466109364.mp4'),
(279, 51, 'Rose Gold Ring', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1199, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113467478118.jpg', '17113467476702.webp', '17113467477965.webp', '17113467478930.mp4'),
(280, 51, 'Rose Gold Ring 2', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1099, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113468925702.webp', '17113468922983.jpg', '17113468925179.webp', '17113468923305.mp4'),
(281, 51, 'Rose Gold Ring 3', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1299, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113469328338.webp', '17113469321223.webp', '17113469324371.webp', '17113469326263.mp4'),
(282, 51, 'Rose Gold Ring 4', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1949, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113469864920.webp', '17113469865725.webp', '17113469868498.webp', '17113469868010.mp4'),
(283, 51, 'Rose Gold Ring 5', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1799, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113470447514.webp', '17113470446499.webp', '17113470441397.webp', '17113470447678.mp4'),
(284, 51, 'Rose Gold Ring 6', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1099, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113470895567.webp', '17113470895271.webp', '17113470893442.webp', '17113470894927.mp4'),
(285, 51, 'Rose Gold Ring 7', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1399, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113471412994.webp', '17113471414991.webp', '17113471412336.webp', '17113471416082.mp4'),
(286, 51, 'Rose Gold Ring 8', 'The Rose Gold Snowflake Ring is inspired by the warm comforting feeling on a snowy winter morning.', 1409, 42, 'women', 'The Rose Gold Snowflake Ring has a snowflake motif worked in with zircons and a curved prong style.   925 Silver AAA+ Quality Zircons Diameter: 16mm+ Adjustable', 8, 16, 'yes', '17113472474426.webp', '17113472471505.webp', '17113472475613.webp', '17113472477199.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `shape`
--

CREATE TABLE `shape` (
  `shape_id` int(11) NOT NULL,
  `shape_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shape`
--

INSERT INTO `shape` (`shape_id`, `shape_name`) VALUES
(4, 'v shape'),
(5, 'Triangle shape'),
(6, 'square shape pendant'),
(7, 'Heart '),
(8, 'half moon '),
(9, 'Golden Butterfly Spin Ring'),
(10, ' Love Ring'),
(11, 'Chain Open Ring'),
(12, 'Silver Glistening Lines Ring'),
(13, 'Silver Modern Minimalism Men R'),
(14, ' Zircon Love '),
(15, 'Fancy Cut Jewellery'),
(16, 'round');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcat_id` int(11) NOT NULL,
  `subcat_name` varchar(30) NOT NULL,
  `subcat_img` varchar(30) NOT NULL,
  `cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcat_id`, `subcat_name`, `subcat_img`, `cat_id`) VALUES
(17, 'Gold Chain', '17098119013967.webp', 2),
(18, 'Silver Chain', '17098119244387.webp', 2),
(19, 'RoseGold Chain', '17098119476663.webp', 2),
(22, 'Silver Bracelet', '17098120423452.webp', 4),
(23, 'RoseGold Bracelet', '17098121075554.webp', 4),
(25, 'Gold Necklace', '17098121959217.webp', 5),
(30, 'Silver Necklace', '17098030713385.webp', 5),
(31, 'RoseGold Necklace', '17098032237870.webp', 5),
(32, 'Gold Bracelet', '17098033883537.webp', 4),
(33, 'Gold Bangles', '17098104485227.webp', 6),
(34, 'Silver Bangles', '17098104773548.webp', 6),
(35, 'RoseGold Bangles', '17098105223086.webp', 6),
(39, 'Gold EarRing', '17098109546206.webp', 7),
(40, 'Silver EarRing', '17098109878526.webp', 7),
(41, 'RoseGold EarRing', '17098110233930.webp', 7),
(44, 'Gold mangalsutra', '17101502638043.webp', 23),
(45, 'Silver Mangalsutra', '17101503073698.webp', 23),
(46, 'RoseGold Mangalsutra', '17101503695449.jpg', 23),
(47, 'Gold NoseRing', '17101505284024.webp', 24),
(48, 'Silver NoseRing', '17101506047109.webp', 24),
(49, 'Gold Ring', '17113448004321.webp', 25),
(50, 'Silver Ring', '17113449212550.jpg', 25),
(51, 'RoseGold Ring ', '17113450108253.webp', 25);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `articles_id` int(11) NOT NULL,
  `title` varchar(40) NOT NULL,
  `discription` text NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `isdisplay` varchar(80) NOT NULL,
  `ref_website_url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`articles_id`, `title`, `discription`, `img_url`, `isdisplay`, `ref_website_url`) VALUES
(5, 'ring', 'best ring for our shope', '17074543147196.jpeg', 'yes', 'https://www.giva.com/'),
(6, 'Bangle', 'Rose Gold Bangle', '17103993571483.webp', 'yes', 'https://www.tanishq.co.in/'),
(7, 'Chain', 'celebrate endless', '17103994432185.webp', 'yes', 'https://www.caratlane.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jewellery_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `address_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(40) NOT NULL,
  `state_id` int(11) NOT NULL,
  `delivery_charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `city_name`, `state_id`, `delivery_charge`) VALUES
(3, 'Surat', 3, 120000),
(4, 'navsari', 3, 50000),
(5, 'Patna', 4, 120000),
(6, 'Thiruvananthapuram', 8, 200000),
(7, 'Andheri - Kurla Road', 6, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `com_id` int(11) NOT NULL,
  `articles_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(80) NOT NULL,
  `comment_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `isdisplay` varchar(50) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`com_id`, `articles_id`, `user_id`, `comment`, `comment_date_time`, `isdisplay`) VALUES
(34, 7, 73, '\"Make a statement with our exquisite jewelry pieces.\"', '2024-04-01 17:07:39.117424', 'yes'),
(35, 7, 73, '\"Indulge in the perfect blend of tradition and innovation.\"', '2024-04-01 17:18:18.680568', 'yes'),
(36, 6, 73, '\"Each piece tells a story of beauty and sophistication.\"', '2024-04-01 17:19:01.140745', 'yes'),
(37, 6, 73, '\"Luxury redefined with every dazzling detail.\"', '2024-04-01 17:23:30.197115', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_details`
--

CREATE TABLE `tbl_details` (
  `details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `jewellery_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_details`
--

INSERT INTO `tbl_details` (`details_id`, `order_id`, `jewellery_id`, `qty`) VALUES
(24, 43, 121, 1),
(25, 44, 121, 2),
(26, 44, 94, 1),
(27, 44, 99, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `questions` varchar(20) NOT NULL,
  `answer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `questions`, `answer`) VALUES
(3, 'which are the intern', 'Australia | Bahrain | Canada | Germany | Italy | K'),
(4, 'What are the benefit', 'You will receive 5% cashback on all purchases, whi'),
(5, 'What is your No Ques', 'We are delighted to offer you a hassle-free shoppi'),
(6, 'What is the refund p', 'We initiate the refunds within 48 hours of us rece'),
(7, 'Do you offer an EMI ', 'Yes, we do offer an EMI (Equated Monthly Installme');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `feedback` varchar(50) NOT NULL,
  `feedback_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`feedback_id`, `name`, `email`, `contact`, `feedback`, `feedback_date_time`) VALUES
(2, 'avadh', 'avadh@gmail.com', 1234567890, 'best work ', '0000-00-00 00:00:00.000000'),
(3, '', '', 0, '', '2024-03-15 12:01:39.247529'),
(4, '', '', 0, '', '2024-03-15 12:03:41.681017'),
(5, '', '', 0, '', '2024-03-15 12:05:13.770213'),
(6, 'akshay', 'roy@gmail.com', 2147483647, 'good', '2024-03-15 12:06:44.795832'),
(7, 'avadh', 'avadh@gmail.com', 2147483647, 'good and ', '2024-03-15 12:25:33.393904'),
(8, 'roy', 'royyyy@gmail.com', 2147483647, 'good and real gold necklace', '2024-03-15 12:36:13.658478'),
(9, 'roy', 'royyyy@gmail.com', 2147483647, 'good and real gold necklace', '2024-03-15 12:37:06.999281'),
(10, 'roy', 'royyyy@gmail.com', 2147483647, 'good and real gold necklace', '2024-03-15 12:37:33.537668'),
(11, 'yash', 'yash@gmail.com', 2147483647, 'good product', '2024-03-15 13:33:05.988609'),
(12, 'yash', 'yash@gmail.com', 2147483647, 'good product', '2024-03-15 13:33:07.400933'),
(13, 'avadh', 'avadh4603@gmail.com', 2147483647, 'hiiiiio', '2024-04-01 12:42:41.287195'),
(14, 'RoyAkshay', 'royakshay4603@gmail.com', 2147483647, 'Great customer experiences strongly reflect the cu', '2024-04-01 17:28:33.314237'),
(15, 'RoyAkshay', 'royakshay4603@gmail.com', 2147483647, 'Great customer experiences strongly reflect the cu', '2024-04-01 17:28:39.728143'),
(16, 'avadh', 'avadh@gmail.com', 2147483647, 'Great customer experiences strongly reflect the cu', '2024-04-01 17:30:36.830585'),
(17, 'avadh', 'avadh@gmail.com', 2147483647, 'Great customer experiences strongly reflect the cu', '2024-04-01 17:31:51.607003'),
(18, 'avadh', 'avadh@gmail.com', 2147483647, 'Great customer experiences strongly reflect the cu', '2024-04-01 17:32:37.271941'),
(19, 'asdg', 'asd@gmail.com', 1234567890, 'Great customer experiences strongly reflect the cu', '2024-04-01 17:33:12.411794');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `img_url` varchar(100) NOT NULL,
  `isdisplay` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `title`, `img_url`, `isdisplay`) VALUES
(3, 'Silver Valley of Vin', '17089136962201.png', 'yes'),
(4, 'Silver Trooper Brace', '17089137564498.png', 'yes'),
(5, 'Rose Gold Drop Wreat', '17089138257247.png', 'yes'),
(6, 'Golden Zig-Zag Red N', '17089138446621.png', 'yes'),
(7, 'Silver Mini Star Hoo', '17089138694051.png', 'yes'),
(8, 'Silver Art Chain', '17113496449883.webp', 'yes'),
(9, 'Silver Royal Blue Se', '17113497168302.webp', 'yes'),
(10, 'Silver Zirconia Ring', '17113497645649.webp', 'yes'),
(11, 'Rose Gold Chain', '17113498376449.jpg', 'yes'),
(12, 'Golden Classic Hexag', '17113498584813.webp', 'yes'),
(13, 'Golden Peacock Earri', '17113499003050.webp', 'yes'),
(14, 'Silver Forever Heart', '17113499342381.webp', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer`
--

CREATE TABLE `tbl_offer` (
  `offer_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `min_amount` int(11) NOT NULL,
  `max_amount` int(11) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `isactive` varchar(30) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_offer`
--

INSERT INTO `tbl_offer` (`offer_id`, `title`, `min_amount`, `max_amount`, `discount`, `isactive`, `code`) VALUES
(2, 'Rose Gold Dressed Like A Flowe', 3099, 7000, 20.00, 'yes', 2147483647),
(3, 'Silver Mini Star Hoop Earrings', 899, 1899, 10.00, 'yes', 9898767),
(4, 'Silver Glossy Round Chain', 2299, 8000, 40.00, 'no', 23454316),
(5, 'Anushka Sharma Silver Leaf Nec', 4000, 10000, 20.00, 'yes', 673248923),
(6, 'Rose Gold Clover Nose Pin', 1000, 4000, 5.00, 'yes', 234567654);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_payment` int(11) NOT NULL,
  `address` varchar(80) NOT NULL,
  `landmark` varchar(11) NOT NULL,
  `pincode` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `t_number` varchar(30) NOT NULL,
  `status` varchar(50) NOT NULL,
  `order_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `delivery_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `offer_id` int(11) DEFAULT NULL,
  `discount` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `user_id`, `total_payment`, `address`, `landmark`, `pincode`, `city_id`, `t_number`, `status`, `order_date_time`, `delivery_date_time`, `offer_id`, `discount`) VALUES
(43, 73, 27999, 'dabholi,charrasta ', 'katargam', 395006, 4, 'pay_NtL9pFGsUMYkIx', 'Done', '2024-04-01 16:54:47.519707', '2024-04-01 16:54:47.519707', 2, '27999.2'),
(44, 73, 52629, 'dabholi,charrasta', 'katargam', 369258, 6, 'pay_NtLI5kNYwP4A4G', 'Done', '2024-04-01 17:01:28.927492', '2024-04-01 17:01:28.927492', 2, '52629.119999999995');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review`
--

CREATE TABLE `tbl_review` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `jewellery_id` int(11) NOT NULL,
  `review_text` text NOT NULL,
  `rating` varchar(50) NOT NULL,
  `isdisplay` varchar(30) NOT NULL DEFAULT 'yes',
  `review_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_review`
--

INSERT INTO `tbl_review` (`review_id`, `user_id`, `jewellery_id`, `review_text`, `rating`, `isdisplay`, `review_date_time`, `img`) VALUES
(52, 73, 121, 'If wisdom and diamonds grew on the same tree, we could soon tell how much men loved wisdom.', '3.5', 'yes', '2024-04-01 16:50:42.326505', '4502.png'),
(53, 73, 121, 'If wisdom and diamonds grew on the same tree, we could soon tell how much men loved wisdom.', '3.5', 'yes', '2024-04-01 16:50:56.094200', '8484.png'),
(54, 73, 127, '\"Luxury redefined with every dazzling detail.\"', '5.0', 'yes', '2024-04-01 17:25:02.915262', '5437.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_state`
--

CREATE TABLE `tbl_state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_state`
--

INSERT INTO `tbl_state` (`state_id`, `state_name`) VALUES
(3, 'gujrat'),
(4, 'Bihar'),
(5, 'Goa'),
(6, 'Mumbai'),
(7, 'Jabalpur'),
(8, 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`) VALUES
(9, 'Engagement ring'),
(10, 'bracelet'),
(11, 'chain'),
(12, 'Earring'),
(13, 'Nose Rings '),
(14, 'Gold Rectangular Diamond Ring'),
(15, 'Gold Lush Leaves Diamond Ring'),
(17, 'Silver Dear Hearts Ring'),
(18, 'Rose Gold Amethyst Ring'),
(20, 'Made with Pure Gold And Lab-Grown Diamonds'),
(21, 'Silver Coeur Pendant with Box Chain'),
(22, 'Silver Interlocked Heart Duo Bracelet'),
(23, 'Gold Classic Glamour Diamond Bracelet'),
(24, 'Gold Melting Hearts Diamond Necklace'),
(25, 'Anushka Sharma Silver Leaf Necklace'),
(26, 'Silver Snowflake Necklace'),
(27, 'Cuts Bangle'),
(28, 'Golden Butterfly Spin Ring'),
(29, ' Love Ring'),
(30, 'Open Ring'),
(31, 'Glistening Lines Men Ring'),
(32, 'Modern Mens Ring'),
(33, 'Oxidised Silver Oasis Of Calm Ring'),
(34, 'Couple Rings'),
(35, 'Snowflake Ring'),
(36, 'Crown Ring'),
(39, 'Necklace'),
(40, 'Bangles'),
(41, 'Mangalsutra'),
(42, 'Ring');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `otp` int(11) NOT NULL,
  `isverify` varchar(30) NOT NULL DEFAULT 'yes',
  `reg_date_time` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `isblock` varchar(30) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `contact`, `email`, `password`, `otp`, `isverify`, `reg_date_time`, `isblock`) VALUES
(73, 'Akshay', '9016063107', 'royakshay4603@gmail.com', 'roy123456', 0, 'yes', '2024-04-01 16:41:38.604890', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `carat`
--
ALTER TABLE `carat`
  ADD PRIMARY KEY (`carat_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `jewellery`
--
ALTER TABLE `jewellery`
  ADD PRIMARY KEY (`jewellery_id`),
  ADD KEY `subcat_id` (`subcat_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `carat_id` (`carat_id`),
  ADD KEY `shape_id` (`shape_id`);

--
-- Indexes for table `shape`
--
ALTER TABLE `shape`
  ADD PRIMARY KEY (`shape_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcat_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`articles_id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `jewellery_id` (`jewellery_id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `articles_id` (`articles_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_details`
--
ALTER TABLE `tbl_details`
  ADD PRIMARY KEY (`details_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `jewellery_id` (`jewellery_id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`);

--
-- Indexes for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `jewellery_id` (`jewellery_id`);

--
-- Indexes for table `tbl_state`
--
ALTER TABLE `tbl_state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carat`
--
ALTER TABLE `carat`
  MODIFY `carat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jewellery`
--
ALTER TABLE `jewellery`
  MODIFY `jewellery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `shape`
--
ALTER TABLE `shape`
  MODIFY `shape_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `articles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `com_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_details`
--
ALTER TABLE `tbl_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_offer`
--
ALTER TABLE `tbl_offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_review`
--
ALTER TABLE `tbl_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `tbl_state`
--
ALTER TABLE `tbl_state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jewellery`
--
ALTER TABLE `jewellery`
  ADD CONSTRAINT `jewellery_ibfk_1` FOREIGN KEY (`subcat_id`) REFERENCES `subcategory` (`subcat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jewellery_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jewellery_ibfk_3` FOREIGN KEY (`carat_id`) REFERENCES `carat` (`carat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jewellery_ibfk_4` FOREIGN KEY (`shape_id`) REFERENCES `shape` (`shape_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`jewellery_id`) REFERENCES `jewellery` (`jewellery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD CONSTRAINT `tbl_city_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `tbl_state` (`state_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `tbl_comments_ibfk_1` FOREIGN KEY (`articles_id`) REFERENCES `tbl_articles` (`articles_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_details`
--
ALTER TABLE `tbl_details`
  ADD CONSTRAINT `tbl_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_details_ibfk_2` FOREIGN KEY (`jewellery_id`) REFERENCES `jewellery` (`jewellery_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_order_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `tbl_city` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_order_ibfk_3` FOREIGN KEY (`offer_id`) REFERENCES `tbl_offer` (`offer_id`);

--
-- Constraints for table `tbl_review`
--
ALTER TABLE `tbl_review`
  ADD CONSTRAINT `tbl_review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_review_ibfk_2` FOREIGN KEY (`jewellery_id`) REFERENCES `jewellery` (`jewellery_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
