-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 05:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booking_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs`
--

CREATE TABLE `bravo_attrs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `display_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hide_in_single` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_attrs`
--

INSERT INTO `bravo_attrs` (`id`, `name`, `slug`, `service`, `create_user`, `update_user`, `created_at`, `updated_at`, `deleted_at`, `display_type`, `hide_in_single`) VALUES
(1, 'Travel Styles', 'travel-styles', 'tour', NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(2, 'Facilities', 'facilities', 'tour', NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(3, 'Space Type', 'space-type', 'space', NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(4, 'Amenities', 'amenities', 'space', NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(5, 'Property type', 'property-type', 'hotel', NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(6, 'Facilities', 'facilities-1', 'hotel', NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(7, 'Hotel Service', 'hotel-service', 'hotel', NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(8, 'Room Amenities', 'room-amenities', 'hotel_room', NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(9, 'Car Type', 'car-type', 'car', NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, NULL, 1),
(10, 'Car Features', 'car-features', 'car', NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, NULL, NULL),
(11, 'Event Type', 'event-type', 'event', NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_attrs_translations`
--

CREATE TABLE `bravo_attrs_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_bookings`
--

CREATE TABLE `bravo_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `currency` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `deposit_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL,
  `commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `buyer_fees` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `paid_vendor` tinyint(4) DEFAULT NULL,
  `object_child_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `pay_now` decimal(10,2) DEFAULT NULL,
  `wallet_credit_used` double DEFAULT NULL,
  `wallet_total_used` double DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL,
  `is_refund_wallet` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_meta`
--

CREATE TABLE `bravo_booking_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_booking_payments`
--

CREATE TABLE `bravo_booking_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `converted_amount` decimal(10,2) DEFAULT NULL,
  `converted_currency` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exchange_rate` decimal(10,2) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `wallet_transaction_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_cars`
--

CREATE TABLE `bravo_cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passenger` tinyint(4) DEFAULT 0,
  `gear` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `baggage` tinyint(4) DEFAULT 0,
  `door` tinyint(4) DEFAULT 0,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_cars`
--

INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`) VALUES
(1, 'BMW-X6-facelift', 'bmw-x6-facelift', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 142, 135, 1, 'Arrondissement de Paris', '21.054831', '105.796077', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '500.00', '197.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 7, 'Auto', 6, 4, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:01', '4.8', NULL),
(2, '2019 Honda Clarity', '2019-honda-clarityt-1', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 1, 'Arrondissement de Paris', '21.039771', '105.777203', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '300.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 10, 4, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:01', '4.5', NULL),
(3, '2019 Honda Clarity', '2019-honda-clarityt', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 143, 135, 3, 'Arrondissement de Paris', '21.031217', '105.773698', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '300.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 4, 'Auto', 3, 4, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:01', '4.3', NULL),
(4, '2019 BMW M6 Gran Coupe', '2019-bmw-m6-gran-coupe', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 144, 135, 1, 'Arrondissement de Paris', '21.020161', '105.789655', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '300.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 5, 'Auto', 5, 4, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:01', '5.0', NULL),
(5, '2019 Audi S3', '2019-audi-s3', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 145, 135, 5, 'Arrondissement de Paris', '21.014873', '105.794117', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '300.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 5, 'Auto', 5, 4, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:01', '4.3', NULL),
(6, 'Vinfast Fadil Plus', 'vinfast-fadil-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 146, 135, 1, 'Arrondissement de Paris', '21.018398', '105.812820', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '400.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 10, 'Auto', 6, 4, 'publish', 1, 6, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 08:28:53', '0.0', NULL),
(7, 'Mercedes Benz', 'mercedes-benz', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 147, 135, 1, 'Arrondissement de Paris', '21.025769', '105.829635', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 4, '200.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 10, 'Auto', 7, 4, 'publish', 1, 4, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 08:17:50', '0.0', NULL),
(8, 'Vinfast Lux SA2.0 Plus', 'vinfast-lux-sa20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 148, 135, 1, 'Arrondissement de Paris', '21.017437', '105.831179', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '600.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 3, 'Auto', 5, 4, 'publish', 1, 4, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 08:11:06', '0.0', NULL),
(9, 'Honda Civic', 'honda-civic', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 149, 135, 6, 'Arrondissement de Paris', '21.047879', '105.809731', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 1, '450.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 8, 'Auto', 9, 4, 'publish', 1, 4, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 08:10:33', '0.0', NULL),
(10, 'Toyota Prius Plus', 'toyota-prius-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 150, 135, 7, 'Arrondissement de Paris', '21.025449', '105.804412', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 5, '199.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 8, 'Auto', 9, 4, 'publish', 1, 6, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 08:03:00', '0.0', NULL);
INSERT INTO `bravo_cars` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `number`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `discount_by_days`, `passenger`, `gear`, `baggage`, `door`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`) VALUES
(11, 'Vinfast Lux V8 (SUV)', 'vinfast-lux-v8-suv', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 151, 135, 8, 'Arrondissement de Paris', '21.020001', '105.836670', 12, 0, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 3, '250.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 6, 'Auto', 4, 4, 'publish', 1, 6, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 07:53:40', '0.0', NULL),
(12, 'Vinfast Lux A2.0 Plus', 'vinfast-lux-a20-plus', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 152, 135, 3, 'Arrondissement de Paris', '21.051244', '105.777988', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '350.00', '0.00', 0, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 9, 'Auto', 7, 4, 'publish', 1, 6, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 07:41:36', '0.0', NULL),
(13, 'Vinfast Fadil Standard', 'vinfast-fadil-standard', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 153, 135, 1, 'Arrondissement de Paris', '21.053326', '105.841475', 12, 1, '154,155,156,157,158,159,160', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"When should I check the transmission fluid?\",\"content\":\"You should check the transmission fluid regularly. Try to check it at least once a month or at the sign of any trouble, for instance if there is any hesitation when you shift gears in an automatic.\"},{\"title\":\"How do I check the transmission fluid?\",\"content\":\"It\\u2019s not hard to check your transmission fluid if the vehicle is an automatic. This link to the Dummies guide to checking your transmission fluid has step-by-step instructions and illustrations that show you where to locate the dipstick. What you want is clear, pink transmission fluid. If it is low, top it up. If it is dark, smells burnt or has bits in it then you need to get it changed by at a reliable auto repair shop.\"},{\"title\":\"Is it really that important to check the transmission fluid?\",\"content\":\"Yes, it can be. Often times the symptoms you\\u2019ll experience from low or dirty transmission fluid will be the same as transmission problems. If you check the fluid levels regularly and refill as necessary then you\\u2019ll know if there are any symptoms of trouble that it\\u2019s not because the fluid levels are low and you need to see a mechanic.\"},{\"title\":\"Are there different types of transmission fluid?\",\"content\":\"How do I know what to buy? Yes, there are many different types of transmission fluid, each designed for a certain transmission. Different vehicles require different transmission fluids and the age of the car can also be a factor because newer transmissions take different types of transmission fluids than older vehicles. Don\\u2019t guess! Find out which type of transmission fluid is required for your vehicle by checking your owner\\u2019s manual.\"},{\"title\":\"What is a transmission flush and should I get one?\",\"content\":\"A transmission flush is used by some auto repair shops with the goal of flushing out debris.  Auto Tech does not do any sort of transmission flush.  Flushing an older transmission can cause harmful sediment to get stuck in the solenoids of the transmission. We heavily favor regular maintenance to lengthen the life of your transmission.  We service the transmission by changing fluid and the filter and do not recommend having your transmission flushed.\"},{\"title\":\"How do I know I have a fluid leak from the transmission?\",\"content\":\"Transmission fluid is slightly pink in color \\u2013 it will appear pink or red, or possibly more brownish if the transmission fluid is dirty and needs to be replaced. When you feel transmission fluid it will be slick and oily on your fingers. It smells much like oil unless it is dirty, in which case it will smell burnt. Usually transmission fluid leaks around the front or middle of your vehicle, so if you find puddles of reddish liquid there it is probably transmission fluid. Another clue is if in addition to the leak your transmission is not working well and you notice changes in the way it sounds when you shift gears, or if shifting gears is not working as well. In this case you likely have a leak of transmission fluid that is impacting how your transmission operates.\"}]', 2, '400.00', '0.00', 1, 1, '[{\"name\":\"Child Toddler Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Infant Child Seat\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"GPS Satellite\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 8, 'Auto', 3, 4, 'publish', 1, 5, 1, NULL, '2022-04-12 06:20:00', '2022-04-12 07:35:03', '0.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_dates`
--

CREATE TABLE `bravo_car_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_term`
--

CREATE TABLE `bravo_car_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_car_term`
--

INSERT INTO `bravo_car_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 63, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(2, 65, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(3, 66, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(4, 67, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(5, 68, 1, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(6, 61, 2, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(7, 63, 2, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(8, 65, 2, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(9, 66, 2, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(10, 67, 2, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(11, 68, 2, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(12, 62, 3, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(13, 63, 3, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(14, 65, 3, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(15, 66, 3, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(16, 67, 3, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(17, 68, 3, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(18, 61, 4, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(19, 65, 4, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(20, 67, 4, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(21, 62, 5, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(22, 64, 5, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(23, 65, 5, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(24, 66, 5, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(25, 67, 5, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(26, 68, 5, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(27, 63, 6, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(28, 64, 6, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(29, 65, 6, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(30, 66, 6, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(31, 68, 6, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(32, 61, 7, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(33, 62, 7, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(34, 65, 7, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(35, 66, 7, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(36, 67, 7, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(37, 68, 7, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(38, 61, 8, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(39, 66, 8, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(40, 67, 8, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(41, 68, 8, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(42, 61, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(43, 62, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(44, 63, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(45, 64, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(46, 65, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(47, 66, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(48, 67, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(49, 68, 9, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(50, 62, 10, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(51, 63, 10, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(52, 64, 10, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(53, 66, 10, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(54, 68, 10, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(55, 61, 11, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(56, 63, 11, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(57, 64, 11, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(58, 65, 11, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(59, 67, 11, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(60, 68, 11, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(61, 61, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(62, 62, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(63, 63, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(64, 64, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(65, 65, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(66, 67, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(67, 68, 12, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(68, 61, 13, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(69, 63, 13, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(70, 65, 13, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(71, 66, 13, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(72, 67, 13, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(73, 69, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(74, 70, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(75, 71, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(76, 72, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(77, 73, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(78, 74, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(79, 69, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(80, 70, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(81, 71, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(82, 72, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(83, 73, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(84, 74, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(85, 69, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(86, 70, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(87, 71, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(88, 72, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(89, 73, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(90, 74, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(91, 69, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(92, 70, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(93, 71, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(94, 72, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(95, 73, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(96, 74, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(97, 69, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(98, 70, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(99, 71, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(100, 72, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(101, 73, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(102, 74, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(103, 69, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(104, 70, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(105, 71, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(106, 72, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(107, 73, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(108, 74, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(109, 69, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(110, 70, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(111, 71, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(112, 72, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(113, 73, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(114, 74, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(115, 69, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(116, 70, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(117, 71, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(118, 72, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(119, 73, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(120, 74, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(121, 69, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(122, 70, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(123, 71, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(124, 72, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(125, 73, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(126, 74, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(127, 69, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(128, 70, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(129, 71, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(130, 72, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(131, 73, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(132, 74, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(133, 69, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(134, 70, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(135, 71, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(136, 72, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(137, 73, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(138, 74, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(139, 69, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(140, 70, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(141, 71, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(142, 72, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(143, 73, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(144, 74, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(145, 69, 13, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(146, 70, 13, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(147, 71, 13, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(148, 72, 13, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(149, 73, 13, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(150, 74, 13, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_car_translations`
--

CREATE TABLE `bravo_car_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_contact`
--

CREATE TABLE `bravo_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_enquiries`
--

CREATE TABLE `bravo_enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_events`
--

CREATE TABLE `bravo_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `start_time` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_events`
--

INSERT INTO `bravo_events` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `ticket_types`, `duration`, `start_time`, `price`, `sale_price`, `is_instant`, `enable_extra_price`, `extra_price`, `review_score`, `ical_import_url`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Andante & Allegro Event Design', 'andante-allegro-event-design', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 162, 180, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '20:00', '2000.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.6', NULL, 'draft', 1, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:23:27'),
(2, 'Painted Desert Event Designs', 'painted-desert-event-designs', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 163, 181, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '19:00', '900.00', '156.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.8', NULL, 'draft', 1, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:23:27'),
(3, 'Bamboo Grove Event Planning', 'bamboo-grove-event-planning', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 164, 182, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '19:00', '1500.00', '692.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '4.8', NULL, 'draft', 1, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:23:27'),
(4, 'Aspen Glade Weddings & Events', 'aspen-glade-weddings-events', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 165, 180, 2, 'New York', '40.707891', '-74.008825', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '17:00', '850.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '5.0', NULL, 'draft', 1, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:23:27'),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 166, 181, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 1, '18:00', '1900.00', '424.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'draft', 1, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:23:27'),
(6, 'Spanish Moss Event Design', 'spanish-moss-event-design', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 167, 182, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 7, '19:00', '600.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'draft', 1, 5, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 08:28:53'),
(7, 'Eastern Discovery', 'eastern-discovery', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 168, 180, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 7, '15:00', '2100.00', '1151.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'publish', 1, 5, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 08:17:50'),
(8, 'Pink Crescent Moon Events', 'pink-crescent-moon-events', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 169, 181, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '21:00', '700.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'publish', 1, 5, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 08:11:06'),
(9, 'Northern Lights Event Planners', 'northern-lights-event-planners', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 170, 182, 4, 'United States', '37.040023', '-95.643144', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 8, '20:00', '800.00', '600.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'publish', 1, 4, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 08:10:33'),
(10, 'Origami Crane Wedding Planners', 'origami-crane-wedding-planners', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 171, 180, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, 0, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 6, '18:00', '400.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'publish', 1, 6, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 08:03:00'),
(11, 'New York – Discover America', 'new-york-discover-america', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 172, 181, 6, 'New Jersey', '40.035329', '-74.417227', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 3, '14:00', '300.00', '0.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'publish', 1, 5, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 07:53:40'),
(12, 'Event of Washington, D.C. Highlights', 'event-of-washington-dc-highlights', '<p>Start and end in San Francisco! With the in-depth cultural event Northern California Summer 2019, you have a 8 day event package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 173, 182, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, 1, '174,175,176,177,178,179', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Can children come to events?\",\"content\":\"Unless otherwise stated, children are always welcome, but please be aware that most of our events are aimed at an adult audience.  Children must be supervised at all times.\"},{\"title\":\"Is there seating at events?\",\"content\":\"Yes, we always provide a variety of seating for all ticketholders unless it\\u2019s a dance event or art show opening.  One of our crew will always be on hand to assist you in finding a seat if you need one.\"},{\"title\":\"Where can I park?\",\"content\":\"There is a wide choice of places to park, however most are not free so please do check before you come on the Southampton City Council website.  We have no onsite parking.\"},{\"title\":\"Are you near public transport?\",\"content\":\"Very.  There is a bus stop a few doors up and the train station is about 7 minutes gentle walk away.\"},{\"title\":\"Is it safe to come at night?\",\"content\":\"To our knowledge, none of our customers has had any bad experience, however we do recommend that if you are worried you stick to the roads rather than walk through the parks.  The roads are well-lit and generally there are a lot of people about at night.\"},{\"title\":\"Can I come on my own?\",\"content\":\"YES!  Many of our customers come alone to events, it\\u2019s never a problem and you will be welcomed warmly.\"}]', '[{\"code\":\"ticket_vip\",\"name\":\"Ticket Vip\",\"name_ja\":\"\\u30c1\\u30b1\\u30c3\\u30c8VIP\",\"name_egy\":null,\"price\":\"1000\",\"number\":\"10\"},{\"code\":\"ticket_group_tickets\",\"name\":\"Group Tickets\",\"name_ja\":\"\\u30b0\\u30eb\\u30fc\\u30d7\\u30c1\\u30b1\\u30c3\\u30c8\",\"name_egy\":null,\"price\":\"500\",\"number\":\"10\"}]', 2, '17:00', '2100.00', '1184.00', 0, 1, '[{\"name\":\"Event service\",\"price\":\"100\",\"type\":\"one_time\"}]', '0.0', NULL, 'publish', 1, 1, 1, NULL, '2022-04-12 06:20:01', '2022-04-12 07:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_event_dates`
--

CREATE TABLE `bravo_event_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `ticket_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_event_term`
--

CREATE TABLE `bravo_event_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_event_term`
--

INSERT INTO `bravo_event_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 75, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(2, 76, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(3, 77, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(4, 78, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(5, 79, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(6, 80, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(7, 81, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(8, 82, 1, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(9, 75, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(10, 76, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(11, 77, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(12, 78, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(13, 79, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(14, 80, 2, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(15, 76, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(16, 77, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(17, 78, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(18, 79, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(19, 81, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(20, 82, 3, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(21, 75, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(22, 76, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(23, 77, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(24, 78, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(25, 79, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(26, 80, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(27, 81, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(28, 82, 4, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(29, 75, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(30, 76, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(31, 79, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(32, 81, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(33, 82, 5, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(34, 75, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(35, 76, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(36, 78, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(37, 79, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(38, 80, 6, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(39, 75, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(40, 76, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(41, 77, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(42, 78, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(43, 79, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(44, 81, 7, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(45, 75, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(46, 76, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(47, 77, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(48, 78, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(49, 80, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(50, 81, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(51, 82, 8, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(52, 75, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(53, 76, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(54, 77, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(55, 78, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(56, 79, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(57, 81, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(58, 82, 9, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(59, 75, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(60, 76, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(61, 77, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(62, 78, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(63, 79, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(64, 81, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(65, 82, 10, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(66, 75, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(67, 76, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(68, 78, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(69, 79, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(70, 80, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(71, 81, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(72, 82, 11, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(73, 75, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(74, 77, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(75, 79, 12, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_event_translations`
--

CREATE TABLE `bravo_event_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotels`
--

CREATE TABLE `bravo_hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star_rate` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `check_in_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `check_out_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_full_day` smallint(6) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotels`
--

INSERT INTO `bravo_hotels` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `policy`, `star_rate`, `price`, `check_in_time`, `check_out_time`, `allow_full_day`, `sale_price`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `enable_extra_price`, `extra_price`, `min_day_before_booking`, `min_day_stays`) VALUES
(1, 'Hotel Stanford', 'hotel-stanford', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 95, 1, 'Arrondissement de Paris', '19.148665', '72.839670', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '300.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:20:00', '4.8', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(2, 'Hotel WBF Hommachi', 'hotel-wbf-homachi', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 96, 1, 'Porte de Vanves', '19.110390', '72.832764', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:20:00', '4.3', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(3, 'Castello Casole Hotel', 'castello-casole-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 94, 1, 'Petit-Montrouge', '19.077946', '72.838255', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '350.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:20:00', '4.7', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(4, 'Redac Gateway Hotel', 'redac-gateway-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 94, 1, 'Petit-Montrouge', '19.031217', '72.851982', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:20:00', '4.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(5, 'Studio Allston Hotel', 'studio-allston-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 96, 5, 'New York', '18.972786', '72.819724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '500.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:20:00', '4.5', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(6, 'EnVision Hotel Boston', 'envision-hotel-biston', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 93, 3, 'New York', '18.873011', '72.975724', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '700.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:28:53', '0.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(7, 'Crowne Plaza Hotel', 'crowne-plaza-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 95, 2, 'New York', '19.001355', '73.111444', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:17:50', '0.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(8, 'Stewart Hotel', 'stewart-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 74, 93, 5, 'New York', '19.080542', '73.010551', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '900.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 6, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:11:12', '0.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(9, 'Parian Holiday Villas', 'parian-holiday-villas', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 75, 94, 1, 'Regal Cinemas Battery Park', '19.161637', '72.997510', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 1, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:10:38', '0.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(10, 'Dylan Hotel', 'dylan-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 95, 2, 'Regal Cinemas Battery', '19.229727', '72.984470', 12, 1, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 5, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 4, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:03:00', '0.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL),
(11, 'The May Fair Hotel', 'the-may-fair-hotel', '<p>Built in 1986, Hotel Stanford is a distinct addition to New York (NY) and a smart choice for travelers. The excitement of the city center is only 0 KM away. No less exceptional is the hotel’s easy access to the city’s myriad attractions and landmarks, such as Toto Music Studio, British Virgin Islands Tourist Board, L’Atelier Du Chocolat. Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 95, 1, 'Paris Cinemas Battery', '19.277696', '72.887009', 12, 0, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '[{\"title\":\"Guarantee Policy\",\"content\":\"- A valid credit card will be required upon booking;\\r\\n- For credit card reservations, the same card(s) must be presented upon check in at the respective hotels;\\r\\n- Management reserves the right to cancel any reservations without notice if we are notified of any fraud or illegal activities associated with the full payments received.\"},{\"title\":\"Children Policy\",\"content\":\"- Child under 5-year old: free of charge.\\r\\n- Child from 5-year old to under 12-year old: surcharge $10\\/person\\/room\\/night.\\r\\n- Child from 12-year old or extra Adult: surcharge $15\\/person\\/room\\/night.\"},{\"title\":\"Cancellation\\/Amendment Policy\",\"content\":\"- If cancellation\\/amendment is made 72 hours prior to your arrival date, no fee will be charged.\\r\\n- If cancellation\\/amendment is made within 72 hours, including reservations made within 72 hours of your arrival, 1st night\\u2019s room rate and tax will be charged\\r\\n- In case of no-show, 100% room rate and tax will be charged.\\r\\n- Early Bird\\/Long Stay\\/Last Min\\/Package Rates are Non - changeable & Non - refundable\"},{\"title\":\"Late check-out policy\",\"content\":\"- Late check-out is subject to room availability\\r\\n- 12:00 to 17:00 check-out: 50% room rate surcharge\\r\\n- After 17:00 check-out: 100% room rate surcharge\"}]', 4, '550.00', '12:00AM', '11:00AM', NULL, NULL, 'publish', 5, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 07:53:40', '0.0', NULL, 1, '[{\"name\":\"Service VIP \",\"price\":\"200\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_rooms`
--

CREATE TABLE `bravo_hotel_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `adults` tinyint(4) DEFAULT NULL,
  `children` tinyint(4) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_rooms`
--

INSERT INTO `bravo_hotel_rooms` (`id`, `title`, `content`, `image_id`, `gallery`, `video`, `price`, `parent_id`, `number`, `beds`, `size`, `adults`, `children`, `status`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `ical_import_url`) VALUES
(1, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 7, 3, 200, 9, 1, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(2, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 5, 4, 200, 8, 3, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(3, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 10, 3, 200, 10, 3, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(4, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 1, 8, 4, 200, 5, 5, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(5, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 10, 3, 200, 10, 1, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(6, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 9, 5, 200, 8, 3, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(7, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 7, 4, 200, 10, 3, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(8, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 2, 6, 2, 200, 5, 5, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(9, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 6, 5, 200, 10, 3, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(10, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 10, 4, 200, 9, 1, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(11, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 7, 2, 200, 5, 5, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(12, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 3, 10, 4, 200, 5, 4, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(13, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 10, 2, 200, 5, 1, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(14, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 9, 4, 200, 9, 3, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(15, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 8, 4, 200, 10, 4, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(16, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 4, 6, 5, 200, 5, 1, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(17, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 9, 5, 200, 5, 3, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(18, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 9, 4, 200, 7, 4, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(19, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 5, 2, 200, 8, 3, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(20, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 5, 7, 2, 200, 10, 1, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(21, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 8, 5, 200, 5, 2, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(22, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 5, 2, 200, 10, 5, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(23, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 7, 3, 200, 7, 1, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(24, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 6, 8, 3, 200, 6, 3, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(25, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 10, 5, 200, 6, 2, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(26, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 9, 4, 200, 9, 4, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(27, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 8, 3, 200, 5, 5, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(28, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 7, 6, 2, 200, 8, 2, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(29, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 9, 4, 200, 9, 1, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(30, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 10, 5, 200, 5, 3, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(31, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 5, 2, 200, 6, 4, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(32, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 8, 5, 2, 200, 6, 4, 'publish', 6, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(33, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 10, 5, 200, 10, 4, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(34, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 6, 5, 200, 6, 2, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(35, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 10, 5, 200, 5, 2, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(36, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 9, 6, 5, 200, 6, 5, 'publish', 1, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(37, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 9, 4, 200, 5, 5, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(38, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 7, 3, 200, 7, 1, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(39, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 6, 2, 200, 8, 5, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(40, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 10, 7, 4, 200, 6, 3, 'publish', 4, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(41, 'Room Kerama Islands', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 67, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 7, 4, 200, 5, 2, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(42, 'Room Sheraton Hotel', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 69, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 9, 4, 200, 7, 5, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(43, 'Double Room With Town View', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 64, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 6, 3, 200, 7, 4, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL),
(44, 'Standard Double Room', 'Room Sheraton comprises of 1 Double Bed or 2 Twin Beds, 2 Bedside Tables, a Desk & Chair. The room is furnished with wall to wall carpeting, trendy furnishings and a balcony.Our ultramodern glass bathroom is equipped with hairdryer, magnifying shaving and make up mirror as well as all the amenities you could possible need during your stay.A Complimentary Bottle of Wine, Fresh Fruit and Mineral Water, are provided on arrival. Electric current: 220 Volts. Smoking rooms & inter-connecting rooms are also available.', 63, '97,98,99,100,101,102', 'https://www.youtube.com/watch?v=bhOiLfkChPo', '350.00', 11, 8, 2, 200, 5, 4, 'publish', 5, NULL, NULL, '2022-04-12 06:19:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_bookings`
--

CREATE TABLE `bravo_hotel_room_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `number` smallint(6) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_dates`
--

CREATE TABLE `bravo_hotel_room_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `number` smallint(6) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_term`
--

CREATE TABLE `bravo_hotel_room_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_room_term`
--

INSERT INTO `bravo_hotel_room_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 56, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(2, 59, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(3, 60, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(4, 56, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(5, 57, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(6, 58, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(7, 59, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(8, 56, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(9, 57, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(10, 58, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(11, 59, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(12, 60, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(13, 57, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(14, 58, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(15, 60, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(16, 56, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(17, 57, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(18, 58, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(19, 59, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(20, 60, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(21, 56, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(22, 57, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(23, 58, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(24, 59, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(25, 60, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(26, 56, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(27, 57, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(28, 58, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(29, 59, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(30, 60, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(31, 57, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(32, 58, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(33, 59, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(34, 60, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(35, 56, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(36, 57, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(37, 58, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(38, 59, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(39, 60, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(40, 56, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(41, 58, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(42, 59, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(43, 58, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(44, 59, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(45, 56, 12, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(46, 57, 12, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(47, 58, 12, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(48, 59, 12, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(49, 60, 12, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(50, 56, 13, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(51, 57, 13, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(52, 59, 13, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(53, 56, 14, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(54, 57, 14, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(55, 59, 14, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(56, 60, 14, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(57, 56, 15, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(58, 57, 15, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(59, 58, 15, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(60, 59, 15, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(61, 60, 15, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(62, 56, 16, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(63, 57, 16, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(64, 58, 16, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(65, 59, 16, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(66, 60, 16, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(67, 56, 17, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(68, 57, 17, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(69, 58, 17, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(70, 59, 17, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(71, 60, 17, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(72, 56, 18, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(73, 57, 18, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(74, 58, 18, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(75, 59, 18, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(76, 56, 19, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(77, 57, 19, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(78, 58, 19, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(79, 59, 19, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(80, 60, 19, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(81, 57, 20, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(82, 58, 20, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(83, 60, 20, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(84, 56, 21, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(85, 57, 21, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(86, 58, 21, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(87, 59, 21, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(88, 60, 21, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(89, 56, 22, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(90, 57, 22, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(91, 58, 22, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(92, 59, 22, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(93, 56, 23, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(94, 57, 23, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(95, 60, 23, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(96, 56, 24, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(97, 57, 24, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(98, 58, 24, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(99, 59, 24, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(100, 60, 24, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(101, 56, 25, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(102, 57, 25, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(103, 58, 25, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(104, 60, 25, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(105, 58, 26, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(106, 60, 26, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(107, 57, 27, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(108, 58, 27, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(109, 59, 27, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(110, 60, 27, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(111, 56, 28, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(112, 57, 28, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(113, 58, 28, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(114, 59, 28, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(115, 60, 28, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(116, 57, 29, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(117, 60, 29, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(118, 56, 30, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(119, 57, 30, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(120, 58, 30, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(121, 59, 30, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(122, 56, 31, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(123, 57, 31, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(124, 58, 31, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(125, 59, 31, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(126, 60, 31, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(127, 56, 32, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(128, 58, 32, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(129, 59, 32, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(130, 60, 32, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(131, 56, 33, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(132, 57, 33, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(133, 58, 33, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(134, 59, 33, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(135, 56, 34, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(136, 57, 34, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(137, 59, 34, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(138, 60, 34, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(139, 56, 35, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(140, 57, 35, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(141, 58, 35, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(142, 59, 35, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(143, 57, 36, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(144, 60, 36, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(145, 57, 37, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(146, 58, 37, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(147, 59, 37, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(148, 60, 37, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(149, 56, 38, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(150, 57, 38, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(151, 56, 39, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(152, 57, 39, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(153, 58, 39, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(154, 59, 39, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(155, 56, 40, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(156, 57, 40, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(157, 58, 40, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(158, 59, 40, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(159, 60, 40, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(160, 56, 41, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(161, 58, 41, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(162, 59, 41, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(163, 60, 41, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(164, 56, 42, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(165, 58, 42, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(166, 59, 42, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(167, 60, 42, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(168, 56, 43, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(169, 58, 43, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(170, 59, 43, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(171, 58, 44, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(172, 60, 44, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_room_translations`
--

CREATE TABLE `bravo_hotel_room_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_term`
--

CREATE TABLE `bravo_hotel_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_hotel_term`
--

INSERT INTO `bravo_hotel_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 43, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(2, 44, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(3, 45, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(4, 47, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(5, 48, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(6, 42, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(7, 43, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(8, 44, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(9, 46, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(10, 47, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(11, 48, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(12, 43, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(13, 44, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(14, 45, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(15, 46, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(16, 47, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(17, 48, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(18, 42, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(19, 43, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(20, 44, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(21, 45, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(22, 46, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(23, 47, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(24, 48, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(25, 42, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(26, 43, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(27, 44, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(28, 45, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(29, 46, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(30, 47, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(31, 48, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(32, 42, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(33, 43, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(34, 44, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(35, 45, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(36, 47, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(37, 48, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(38, 42, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(39, 43, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(40, 45, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(41, 46, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(42, 42, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(43, 43, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(44, 44, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(45, 45, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(46, 46, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(47, 47, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(48, 48, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(49, 42, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(50, 43, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(51, 44, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(52, 45, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(53, 46, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(54, 47, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(55, 48, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(56, 42, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(57, 43, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(58, 44, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(59, 45, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(60, 46, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(61, 47, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(62, 48, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(63, 42, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(64, 44, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(65, 45, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(66, 46, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(67, 47, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(68, 48, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(69, 49, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(70, 51, 1, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(71, 51, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(72, 52, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(73, 53, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(74, 54, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(75, 55, 2, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(76, 49, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(77, 50, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(78, 52, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(79, 53, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(80, 54, 3, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(81, 49, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(82, 50, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(83, 51, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(84, 52, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(85, 54, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(86, 55, 4, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(87, 49, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(88, 53, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(89, 54, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(90, 55, 5, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(91, 49, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(92, 50, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(93, 52, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(94, 53, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(95, 54, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(96, 55, 6, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(97, 50, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(98, 51, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(99, 53, 7, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(100, 50, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(101, 51, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(102, 55, 8, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(103, 51, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(104, 52, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(105, 55, 9, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(106, 49, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(107, 50, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(108, 51, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(109, 52, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(110, 53, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(111, 54, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(112, 55, 10, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(113, 49, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(114, 50, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(115, 52, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(116, 53, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(117, 55, 11, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_hotel_translations`
--

CREATE TABLE `bravo_hotel_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_locations`
--

CREATE TABLE `bravo_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_locations`
--

INSERT INTO `bravo_locations` (`id`, `name`, `content`, `slug`, `image_id`, `map_lat`, `map_lng`, `map_zoom`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `banner_image_id`, `trip_ideas`) VALUES
(1, 'Paris', 'New York, a city that doesnt sleep, as Frank Sinatra sang. The Big Apple is one of the largest cities in the United States and one of the most popular in the whole country and the world. Millions of tourists visit it every year attracted by its various iconic symbols and its wide range of leisure and cultural offer. New York is the birth place of new trends and developments in many fields such as art, gastronomy, technology,...', 'paris', 106, '48.856613', '2.352222', 12, 'publish', 1, 2, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:56', 111, '\"[{\\\"title\\\":\\\"Experiencing the best jazz in Harlem, birthplace of bebop\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"New Orleans might be the home of jazz, but New York City is where many of the genre\\u2019s greats became stars \\u2013 and Harlem was at the heart of it.The neighborhood experienced a rebirth during the...\\\",\\\"image_id\\\":\\\"112\\\"},{\\\"title\\\":\\\"Reflections from the road: transformative \\u2018Big Trip\\u2019 experiences\\\",\\\"link\\\":\\\"#\\\",\\\"content\\\":\\\"Whether it\\u2019s a gap year after finishing school, a well-earned sabbatical from work or an overseas adventure in celebration of your retirement, a big trip is a rite of passage for every traveller, with myriad life lessons to be ...\\\",\\\"image_id\\\":\\\"113\\\"}]\"'),
(2, 'New York, United States', NULL, 'new-york-united-states', 107, '40.712776', '-74.005974', 12, 'publish', 3, 4, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL),
(3, 'California', NULL, 'california', 108, '36.778259', '-119.417931', 12, 'publish', 5, 6, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL),
(4, 'United States', NULL, 'united-states', 109, '37.090240', '-95.712891', 12, 'publish', 7, 8, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL),
(5, 'Los Angeles', NULL, 'los-angeles', 110, '34.052235', '-118.243683', 12, 'publish', 9, 10, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL),
(6, 'New Jersey', NULL, 'new-jersey', 106, '40.058323', '-74.405663', 12, 'publish', 11, 12, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL),
(7, 'San Francisco', NULL, 'san-francisco', 107, '37.774929', '-122.419418', 12, 'publish', 13, 14, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL),
(8, 'Virginia', NULL, 'virginia', 108, '37.431572', '-78.656891', 12, 'publish', 15, 16, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:56', '2022-04-12 06:19:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_location_translations`
--

CREATE TABLE `bravo_location_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trip_ideas` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_payouts`
--

CREATE TABLE `bravo_payouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payout_method` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_vendor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_process_by` int(11) DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review`
--

CREATE TABLE `bravo_review` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_number` int(11) DEFAULT NULL,
  `author_ip` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review`
--

INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(1, 1, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 7, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(2, 1, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(3, 1, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 16, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(4, 2, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 15, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(5, 2, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 15, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(6, 3, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 7, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 6),
(7, 3, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 8, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 6),
(8, 3, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 8, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 6),
(9, 4, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 12, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(10, 4, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 11, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(11, 4, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 1),
(12, 5, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 16, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', 4),
(13, 6, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 10, 1, '2022-04-12 08:28:59', NULL, '2022-04-12 06:19:57', '2022-04-12 08:28:59', 6),
(14, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 7, 1, '2022-04-12 08:28:59', NULL, '2022-04-12 06:19:57', '2022-04-12 08:28:59', 6),
(15, 6, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 14, 1, '2022-04-12 08:28:59', NULL, '2022-04-12 06:19:57', '2022-04-12 08:28:59', 6),
(16, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 7, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:57', '2022-04-12 08:17:57', 4),
(17, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:57', '2022-04-12 08:17:57', 4),
(18, 7, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 8, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:57', '2022-04-12 08:17:57', 4),
(19, 7, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 10, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:57', '2022-04-12 08:17:57', 4),
(20, 8, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 8, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:57', '2022-04-12 08:11:12', 6),
(21, 8, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 14, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:57', '2022-04-12 08:11:12', 6),
(22, 8, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 14, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:57', '2022-04-12 08:11:12', 6),
(23, 9, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 16, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:57', '2022-04-12 08:10:38', 4),
(24, 9, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 11, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:57', '2022-04-12 08:10:38', 4),
(25, 9, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 13, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:57', '2022-04-12 08:10:38', 4),
(26, 9, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 15, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:57', '2022-04-12 08:10:38', 4),
(27, 9, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 15, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:57', '2022-04-12 08:10:38', 4),
(28, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 7, 1, '2022-04-12 08:03:07', NULL, '2022-04-12 06:19:57', '2022-04-12 08:03:07', 6),
(29, 10, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:57', '2022-04-12 08:03:00', 6),
(30, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 16, 1, '2022-04-12 07:54:15', NULL, '2022-04-12 06:19:57', '2022-04-12 07:54:15', 4),
(31, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 8, 1, '2022-04-12 07:54:15', NULL, '2022-04-12 06:19:57', '2022-04-12 07:54:15', 4),
(32, 11, 'tour', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 11, 1, '2022-04-12 07:54:15', NULL, '2022-04-12 06:19:57', '2022-04-12 07:54:15', 4),
(33, 11, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 11, 1, '2022-04-12 07:54:15', NULL, '2022-04-12 06:19:57', '2022-04-12 07:54:15', 4),
(34, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 10, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:19:57', '2022-04-12 07:41:36', 1),
(35, 12, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 13, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:19:57', '2022-04-12 07:41:36', 1),
(36, 13, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 12, 1, '2022-04-12 07:35:03', NULL, '2022-04-12 06:19:57', '2022-04-12 07:35:03', 6),
(37, 14, 'tour', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 10, 1, '2022-04-12 07:30:52', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:52', 1),
(38, 14, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, 1, '2022-04-12 07:30:52', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:52', 1),
(39, 14, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 16, 1, '2022-04-12 07:30:52', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:52', 1),
(40, 15, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, 1, '2022-04-12 07:30:36', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:36', 6),
(41, 15, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 14, 1, '2022-04-12 07:30:36', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:36', 6),
(42, 15, 'tour', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 9, 1, '2022-04-12 07:30:36', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:36', 6),
(43, 15, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 13, 1, '2022-04-12 07:30:35', NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:35', 6),
(44, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 15, 1, '2022-04-12 07:26:49', NULL, '2022-04-12 06:19:57', '2022-04-12 07:26:49', 1),
(45, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 16, 1, '2022-04-12 07:26:49', NULL, '2022-04-12 06:19:57', '2022-04-12 07:26:49', 1),
(46, 16, 'tour', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:57', 11, 1, '2022-04-12 07:26:49', NULL, '2022-04-12 06:19:57', '2022-04-12 07:26:49', 1),
(47, 1, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 15, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(48, 2, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 10, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(49, 2, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(50, 2, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 12, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(51, 3, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(52, 4, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 14, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(53, 4, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 16, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(54, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 14, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(55, 4, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 15, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(56, 5, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 15, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(57, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 15, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(58, 5, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 14, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(59, 5, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 8, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(60, 5, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 12, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 6),
(61, 6, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 11, 1, '2022-04-12 08:28:59', NULL, '2022-04-12 06:19:58', '2022-04-12 08:28:59', 6),
(62, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 8, 1, '2022-04-12 08:28:59', NULL, '2022-04-12 06:19:58', '2022-04-12 08:28:59', 6),
(63, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 8, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:19:58', '2022-04-12 08:28:53', 6),
(64, 6, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 11, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:19:58', '2022-04-12 08:28:53', 6),
(65, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:58', '2022-04-12 08:17:57', 4),
(66, 7, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 16, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:58', '2022-04-12 08:17:57', 4),
(67, 7, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 10, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:58', '2022-04-12 08:17:57', 4),
(68, 7, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, 1, '2022-04-12 08:17:57', NULL, '2022-04-12 06:19:58', '2022-04-12 08:17:57', 4),
(69, 8, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:58', '2022-04-12 08:11:12', 4),
(70, 8, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 10, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:58', '2022-04-12 08:11:12', 4),
(71, 8, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 9, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:58', '2022-04-12 08:11:12', 4),
(72, 8, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 15, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:58', '2022-04-12 08:11:12', 4),
(73, 9, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 16, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:58', '2022-04-12 08:10:38', 6),
(74, 9, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 13, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:58', '2022-04-12 08:10:38', 6),
(75, 9, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 16, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:58', '2022-04-12 08:10:38', 6),
(76, 10, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 13, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:58', '2022-04-12 08:03:00', 1),
(77, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 12, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:58', '2022-04-12 08:03:00', 1),
(78, 10, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 13, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:58', '2022-04-12 08:03:00', 1),
(79, 10, 'space', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 15, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:58', '2022-04-12 08:03:00', 1),
(80, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 10, 1, '2022-04-12 07:54:15', NULL, '2022-04-12 06:19:58', '2022-04-12 07:54:15', 6),
(81, 11, 'space', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 13, 1, '2022-04-12 07:54:15', NULL, '2022-04-12 06:19:58', '2022-04-12 07:54:15', 6),
(82, 11, 'space', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:19:58', '2022-04-12 07:53:40', 6),
(83, 11, 'space', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 16, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:19:58', '2022-04-12 07:53:40', 6),
(84, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 14, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(85, 1, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(86, 1, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 11, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(87, 1, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:58', 7, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', 1),
(88, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(89, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 9, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(90, 2, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 9, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(91, 2, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 11, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(92, 3, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 11, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(93, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(94, 3, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 16, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(95, 4, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 9, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(96, 4, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 12, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(97, 4, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 1),
(98, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 13, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 4),
(99, 5, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 9, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', 4),
(100, 6, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 11, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:19:59', '2022-04-12 08:28:53', 5),
(101, 6, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 10, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:19:59', '2022-04-12 08:28:53', 5),
(102, 7, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 16, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:19:59', '2022-04-12 08:17:50', 6),
(103, 7, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 11, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:19:59', '2022-04-12 08:17:50', 6),
(104, 7, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 16, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:19:59', '2022-04-12 08:17:50', 6),
(105, 7, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 12, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:19:59', '2022-04-12 08:17:50', 6),
(106, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, 1, '2022-04-12 08:11:12', NULL, '2022-04-12 06:19:59', '2022-04-12 08:11:12', 6),
(107, 8, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:19:59', '2022-04-12 08:11:06', 6),
(108, 8, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 11, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:19:59', '2022-04-12 08:11:06', 6),
(109, 9, 'hotel', 'Nothing good this time', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:59', '2022-04-12 08:10:38', 1),
(110, 9, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 14, 1, '2022-04-12 08:10:38', NULL, '2022-04-12 06:19:59', '2022-04-12 08:10:38', 1),
(111, 9, 'hotel', 'Beautiful spot with a lovely view', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 10, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:19:59', '2022-04-12 08:10:33', 1),
(112, 9, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 14, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:19:59', '2022-04-12 08:10:33', 1),
(113, 10, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 10, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:59', '2022-04-12 08:03:00', 4),
(114, 10, 'hotel', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:19:59', '2022-04-12 08:03:00', 4),
(115, 11, 'hotel', 'Good location, quality should be better', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:19:59', 7, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:19:59', '2022-04-12 07:53:40', 5),
(116, 1, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(117, 1, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 11, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(118, 1, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 15, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(119, 1, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 8, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1);
INSERT INTO `bravo_review` (`id`, `object_id`, `object_model`, `title`, `content`, `rate_number`, `author_ip`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `lang`, `created_at`, `updated_at`, `vendor_id`) VALUES
(120, 2, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 13, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(121, 2, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 16, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(122, 2, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 14, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(123, 2, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(124, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 10, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(125, 3, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 7, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(126, 3, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 11, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(127, 4, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 7, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(128, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 8, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(129, 5, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 9, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(130, 5, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 10, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', 1),
(131, 6, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 15, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:20:00', '2022-04-12 08:28:53', 6),
(132, 6, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 16, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:20:00', '2022-04-12 08:28:53', 6),
(133, 6, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 15, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:20:00', '2022-04-12 08:28:53', 6),
(134, 6, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 16, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:20:00', '2022-04-12 08:28:53', 6),
(135, 7, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 13, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:20:00', '2022-04-12 08:17:50', 4),
(136, 7, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:20:00', '2022-04-12 08:17:50', 4),
(137, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 11, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:20:00', '2022-04-12 08:17:50', 4),
(138, 7, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 10, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:20:00', '2022-04-12 08:17:50', 4),
(139, 8, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 9, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:00', '2022-04-12 08:11:06', 4),
(140, 8, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 8, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:00', '2022-04-12 08:11:06', 4),
(141, 8, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 9, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:00', '2022-04-12 08:11:06', 4),
(142, 8, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 9, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:00', '2022-04-12 08:11:06', 4),
(143, 9, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 14, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:00', '2022-04-12 08:10:33', 4),
(144, 9, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 11, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:00', '2022-04-12 08:10:33', 4),
(145, 9, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:00', '2022-04-12 08:10:33', 4),
(146, 9, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:00', '2022-04-12 08:10:33', 4),
(147, 10, 'car', 'Good Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:20:00', '2022-04-12 08:03:00', 6),
(148, 10, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 13, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:20:00', '2022-04-12 08:03:00', 6),
(149, 11, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 9, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:00', '2022-04-12 07:53:40', 6),
(150, 11, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 8, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:00', '2022-04-12 07:53:40', 6),
(151, 11, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 12, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:00', '2022-04-12 07:53:40', 6),
(152, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 8, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:20:00', '2022-04-12 07:41:36', 6),
(153, 12, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 10, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:20:00', '2022-04-12 07:41:36', 6),
(154, 12, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 9, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:20:00', '2022-04-12 07:41:36', 6),
(155, 13, 'car', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 16, 1, '2022-04-12 07:35:03', NULL, '2022-04-12 06:20:00', '2022-04-12 07:35:03', 5),
(156, 13, 'car', 'Car was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 16, 1, '2022-04-12 07:35:03', NULL, '2022-04-12 06:20:00', '2022-04-12 07:35:03', 5),
(157, 13, 'car', 'Great Car', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:00', 13, 1, '2022-04-12 07:35:03', NULL, '2022-04-12 06:20:00', '2022-04-12 07:35:03', 5),
(158, 1, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 16, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(159, 1, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 9, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(160, 1, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 8, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(161, 1, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 7, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(162, 1, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 8, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(163, 2, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 15, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(164, 2, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 12, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(165, 2, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 7, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(166, 2, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 14, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(167, 3, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 5),
(168, 3, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 14, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 5),
(169, 3, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 15, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 5),
(170, 3, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 12, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 5),
(171, 3, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 5),
(172, 4, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(173, 4, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 15, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', 1),
(174, 6, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 11, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:20:01', '2022-04-12 08:28:53', 5),
(175, 6, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 14, 1, '2022-04-12 08:28:53', NULL, '2022-04-12 06:20:01', '2022-04-12 08:28:53', 5),
(176, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:20:01', '2022-04-12 08:17:50', 5),
(177, 7, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 13, 1, '2022-04-12 08:17:50', NULL, '2022-04-12 06:20:01', '2022-04-12 08:17:50', 5),
(178, 8, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 15, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:01', '2022-04-12 08:11:06', 5),
(179, 8, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 8, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:01', '2022-04-12 08:11:06', 5),
(180, 8, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:01', '2022-04-12 08:11:06', 5),
(181, 8, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 7, 1, '2022-04-12 08:11:06', NULL, '2022-04-12 06:20:01', '2022-04-12 08:11:06', 5),
(182, 9, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 8, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:01', '2022-04-12 08:10:33', 4),
(183, 9, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 12, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:01', '2022-04-12 08:10:33', 4),
(184, 9, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 12, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:01', '2022-04-12 08:10:33', 4),
(185, 9, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, 1, '2022-04-12 08:10:33', NULL, '2022-04-12 06:20:01', '2022-04-12 08:10:33', 4),
(186, 10, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 9, 1, '2022-04-12 08:03:00', NULL, '2022-04-12 06:20:01', '2022-04-12 08:03:00', 6),
(187, 11, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 12, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:01', '2022-04-12 07:53:40', 5),
(188, 11, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 7, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:01', '2022-04-12 07:53:40', 5),
(189, 11, 'event', 'Great Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 9, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:01', '2022-04-12 07:53:40', 5),
(190, 11, 'event', 'Good Trip', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 5, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 14, 1, '2022-04-12 07:53:40', NULL, '2022-04-12 06:20:01', '2022-04-12 07:53:40', 5),
(191, 12, 'event', 'Trip was great', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 16, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:20:01', '2022-04-12 07:41:36', 1),
(192, 12, 'event', 'Easy way to discover the city', 'Eum eu sumo albucius perfecto, commodo torquatos consequuntur pro ut, id posse splendide ius. Cu nisl putent omittantur usu, mutat atomorum ex pro, ius nibh nonumy id. Nam at eius dissentias disputando, molestie mnesarchum complectitur per te', 4, '127.0.0.1', 'approved', '2022-04-12 13:20:01', 10, 1, '2022-04-12 07:41:36', NULL, '2022-04-12 06:20:01', '2022-04-12 07:41:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_review_meta`
--

CREATE TABLE `bravo_review_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_id` int(11) DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_review_meta`
--

INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(2, 1, 1, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(3, 1, 1, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(4, 1, 1, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(5, 1, 1, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(6, 2, 1, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(7, 2, 1, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(8, 2, 1, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(9, 2, 1, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(10, 2, 1, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(11, 3, 1, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(12, 3, 1, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(13, 3, 1, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(14, 3, 1, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(15, 3, 1, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(16, 4, 2, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(17, 4, 2, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(18, 4, 2, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(19, 4, 2, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(20, 4, 2, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(21, 5, 2, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(22, 5, 2, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(23, 5, 2, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(24, 5, 2, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(25, 5, 2, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(26, 6, 3, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(27, 6, 3, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(28, 6, 3, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(29, 6, 3, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(30, 6, 3, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(31, 7, 3, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(32, 7, 3, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(33, 7, 3, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(34, 7, 3, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(35, 7, 3, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(36, 8, 3, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(37, 8, 3, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(38, 8, 3, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(39, 8, 3, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(40, 8, 3, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(41, 9, 4, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(42, 9, 4, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(43, 9, 4, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(44, 9, 4, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(45, 9, 4, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(46, 10, 4, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(47, 10, 4, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(48, 10, 4, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(49, 10, 4, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(50, 10, 4, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(51, 11, 4, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(52, 11, 4, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(53, 11, 4, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(54, 11, 4, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(55, 11, 4, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(56, 12, 5, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(57, 12, 5, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(58, 12, 5, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(59, 12, 5, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(60, 12, 5, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(61, 13, 6, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(62, 13, 6, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(63, 13, 6, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(64, 13, 6, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(65, 13, 6, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(66, 14, 6, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(67, 14, 6, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(68, 14, 6, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(69, 14, 6, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(70, 14, 6, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(71, 15, 6, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(72, 15, 6, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(73, 15, 6, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(74, 15, 6, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(75, 15, 6, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(76, 16, 7, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(77, 16, 7, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(78, 16, 7, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(79, 16, 7, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(80, 16, 7, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(81, 17, 7, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(82, 17, 7, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(83, 17, 7, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(84, 17, 7, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(85, 17, 7, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(86, 18, 7, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(87, 18, 7, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(88, 18, 7, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(89, 18, 7, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(90, 18, 7, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(91, 19, 7, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(92, 19, 7, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(93, 19, 7, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(94, 19, 7, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(95, 19, 7, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(96, 20, 8, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(97, 20, 8, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(98, 20, 8, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(99, 20, 8, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(100, 20, 8, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(101, 21, 8, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(102, 21, 8, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(103, 21, 8, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(104, 21, 8, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(105, 21, 8, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(106, 22, 8, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(107, 22, 8, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(108, 22, 8, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(109, 22, 8, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(110, 22, 8, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(111, 23, 9, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(112, 23, 9, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(113, 23, 9, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(114, 23, 9, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(115, 23, 9, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(116, 24, 9, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(117, 24, 9, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(118, 24, 9, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(119, 24, 9, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(120, 24, 9, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(121, 25, 9, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(122, 25, 9, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(123, 25, 9, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(124, 25, 9, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(125, 25, 9, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(126, 26, 9, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(127, 26, 9, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(128, 26, 9, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(129, 26, 9, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(130, 26, 9, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(131, 27, 9, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(132, 27, 9, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(133, 27, 9, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(134, 27, 9, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(135, 27, 9, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(136, 28, 10, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(137, 28, 10, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(138, 28, 10, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(139, 28, 10, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(140, 28, 10, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(141, 29, 10, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(142, 29, 10, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(143, 29, 10, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(144, 29, 10, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(145, 29, 10, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(146, 30, 11, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(147, 30, 11, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(148, 30, 11, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(149, 30, 11, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(150, 30, 11, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(151, 31, 11, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(152, 31, 11, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(153, 31, 11, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(154, 31, 11, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(155, 31, 11, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(156, 32, 11, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(157, 32, 11, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(158, 32, 11, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(159, 32, 11, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(160, 32, 11, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(161, 33, 11, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(162, 33, 11, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(163, 33, 11, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(164, 33, 11, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(165, 33, 11, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(166, 34, 12, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(167, 34, 12, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(168, 34, 12, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(169, 34, 12, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(170, 34, 12, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(171, 35, 12, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(172, 35, 12, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(173, 35, 12, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(174, 35, 12, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(175, 35, 12, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(176, 36, 13, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(177, 36, 13, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(178, 36, 13, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(179, 36, 13, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(180, 36, 13, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(181, 37, 14, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(182, 37, 14, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(183, 37, 14, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(184, 37, 14, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(185, 37, 14, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(186, 38, 14, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(187, 38, 14, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(188, 38, 14, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(189, 38, 14, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(190, 38, 14, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(191, 39, 14, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(192, 39, 14, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(193, 39, 14, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(194, 39, 14, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(195, 39, 14, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(196, 40, 15, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(197, 40, 15, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(198, 40, 15, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(199, 40, 15, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(200, 40, 15, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(201, 41, 15, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(202, 41, 15, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(203, 41, 15, 'tour', 'Friendliness', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(204, 41, 15, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(205, 41, 15, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(206, 42, 15, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(207, 42, 15, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(208, 42, 15, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(209, 42, 15, 'tour', 'Area Expert', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(210, 42, 15, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(211, 43, 15, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(212, 43, 15, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(213, 43, 15, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(214, 43, 15, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(215, 43, 15, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(216, 44, 16, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(217, 44, 16, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(218, 44, 16, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(219, 44, 16, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(220, 44, 16, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(221, 45, 16, 'tour', 'Service', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(222, 45, 16, 'tour', 'Organization', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(223, 45, 16, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(224, 45, 16, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(225, 45, 16, 'tour', 'Safety', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(226, 46, 16, 'tour', 'Service', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(227, 46, 16, 'tour', 'Organization', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(228, 46, 16, 'tour', 'Friendliness', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(229, 46, 16, 'tour', 'Area Expert', '4', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(230, 46, 16, 'tour', 'Safety', '5', 1, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(231, 47, 1, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(232, 47, 1, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(233, 47, 1, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(234, 47, 1, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(235, 47, 1, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(236, 48, 2, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(237, 48, 2, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(238, 48, 2, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(239, 48, 2, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(240, 48, 2, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(241, 49, 2, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(242, 49, 2, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(243, 49, 2, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(244, 49, 2, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(245, 49, 2, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(246, 50, 2, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(247, 50, 2, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(248, 50, 2, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(249, 50, 2, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(250, 50, 2, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(251, 51, 3, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(252, 51, 3, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(253, 51, 3, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(254, 51, 3, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(255, 51, 3, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(256, 52, 4, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(257, 52, 4, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(258, 52, 4, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(259, 52, 4, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(260, 52, 4, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(261, 53, 4, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(262, 53, 4, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(263, 53, 4, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(264, 53, 4, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(265, 53, 4, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(266, 54, 4, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(267, 54, 4, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(268, 54, 4, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(269, 54, 4, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(270, 54, 4, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(271, 55, 4, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(272, 55, 4, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(273, 55, 4, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(274, 55, 4, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(275, 55, 4, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(276, 56, 5, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(277, 56, 5, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(278, 56, 5, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(279, 56, 5, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(280, 56, 5, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(281, 57, 5, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(282, 57, 5, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(283, 57, 5, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(284, 57, 5, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(285, 57, 5, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(286, 58, 5, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(287, 58, 5, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(288, 58, 5, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(289, 58, 5, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(290, 58, 5, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(291, 59, 5, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(292, 59, 5, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(293, 59, 5, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(294, 59, 5, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(295, 59, 5, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(296, 60, 5, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(297, 60, 5, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(298, 60, 5, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(299, 60, 5, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(300, 60, 5, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(301, 61, 6, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(302, 61, 6, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(303, 61, 6, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(304, 61, 6, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(305, 61, 6, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(306, 62, 6, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(307, 62, 6, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(308, 62, 6, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(309, 62, 6, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(310, 62, 6, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(311, 63, 6, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(312, 63, 6, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(313, 63, 6, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(314, 63, 6, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(315, 63, 6, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(316, 64, 6, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(317, 64, 6, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(318, 64, 6, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(319, 64, 6, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(320, 64, 6, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(321, 65, 7, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(322, 65, 7, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(323, 65, 7, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(324, 65, 7, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(325, 65, 7, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(326, 66, 7, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(327, 66, 7, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(328, 66, 7, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(329, 66, 7, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(330, 66, 7, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(331, 67, 7, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(332, 67, 7, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(333, 67, 7, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(334, 67, 7, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(335, 67, 7, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(336, 68, 7, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(337, 68, 7, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(338, 68, 7, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(339, 68, 7, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(340, 68, 7, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(341, 69, 8, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(342, 69, 8, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(343, 69, 8, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(344, 69, 8, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(345, 69, 8, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(346, 70, 8, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(347, 70, 8, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(348, 70, 8, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(349, 70, 8, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(350, 70, 8, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(351, 71, 8, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(352, 71, 8, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(353, 71, 8, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(354, 71, 8, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(355, 71, 8, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(356, 72, 8, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(357, 72, 8, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(358, 72, 8, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(359, 72, 8, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(360, 72, 8, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(361, 73, 9, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(362, 73, 9, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(363, 73, 9, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(364, 73, 9, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(365, 73, 9, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(366, 74, 9, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(367, 74, 9, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(368, 74, 9, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(369, 74, 9, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(370, 74, 9, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(371, 75, 9, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(372, 75, 9, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(373, 75, 9, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(374, 75, 9, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(375, 75, 9, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(376, 76, 10, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(377, 76, 10, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(378, 76, 10, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(379, 76, 10, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(380, 76, 10, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(381, 77, 10, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(382, 77, 10, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(383, 77, 10, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(384, 77, 10, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(385, 77, 10, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(386, 78, 10, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(387, 78, 10, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(388, 78, 10, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(389, 78, 10, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(390, 78, 10, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(391, 79, 10, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(392, 79, 10, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(393, 79, 10, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(394, 79, 10, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(395, 79, 10, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(396, 80, 11, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(397, 80, 11, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(398, 80, 11, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(399, 80, 11, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(400, 80, 11, 'space', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(401, 81, 11, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(402, 81, 11, 'space', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(403, 81, 11, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(404, 81, 11, 'space', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(405, 81, 11, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(406, 82, 11, 'space', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(407, 82, 11, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(408, 82, 11, 'space', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(409, 82, 11, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(410, 82, 11, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(411, 83, 11, 'space', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(412, 83, 11, 'space', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(413, 83, 11, 'space', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(414, 83, 11, 'space', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(415, 83, 11, 'space', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(416, 84, 1, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(417, 84, 1, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(418, 84, 1, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(419, 84, 1, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(420, 84, 1, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(421, 85, 1, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(422, 85, 1, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(423, 85, 1, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(424, 85, 1, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(425, 85, 1, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(426, 86, 1, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(427, 86, 1, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(428, 86, 1, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(429, 86, 1, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(430, 86, 1, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(431, 87, 1, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(432, 87, 1, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(433, 87, 1, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(434, 87, 1, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(435, 87, 1, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(436, 88, 2, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(437, 88, 2, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(438, 88, 2, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(439, 88, 2, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(440, 88, 2, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(441, 89, 2, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(442, 89, 2, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(443, 89, 2, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(444, 89, 2, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(445, 89, 2, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(446, 90, 2, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(447, 90, 2, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(448, 90, 2, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(449, 90, 2, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(450, 90, 2, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(451, 91, 2, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(452, 91, 2, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(453, 91, 2, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(454, 91, 2, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(455, 91, 2, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(456, 92, 3, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(457, 92, 3, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(458, 92, 3, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(459, 92, 3, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(460, 92, 3, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(461, 93, 3, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(462, 93, 3, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(463, 93, 3, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(464, 93, 3, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(465, 93, 3, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(466, 94, 3, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(467, 94, 3, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(468, 94, 3, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(469, 94, 3, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(470, 94, 3, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(471, 95, 4, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(472, 95, 4, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(473, 95, 4, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(474, 95, 4, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(475, 95, 4, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(476, 96, 4, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(477, 96, 4, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(478, 96, 4, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(479, 96, 4, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(480, 96, 4, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(481, 97, 4, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(482, 97, 4, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(483, 97, 4, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(484, 97, 4, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(485, 97, 4, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(486, 98, 5, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(487, 98, 5, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(488, 98, 5, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(489, 98, 5, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(490, 98, 5, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(491, 99, 5, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(492, 99, 5, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(493, 99, 5, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(494, 99, 5, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(495, 99, 5, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(496, 100, 6, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(497, 100, 6, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(498, 100, 6, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(499, 100, 6, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(500, 100, 6, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(501, 101, 6, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(502, 101, 6, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(503, 101, 6, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(504, 101, 6, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(505, 101, 6, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(506, 102, 7, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(507, 102, 7, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(508, 102, 7, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(509, 102, 7, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(510, 102, 7, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(511, 103, 7, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(512, 103, 7, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(513, 103, 7, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(514, 103, 7, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(515, 103, 7, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(516, 104, 7, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(517, 104, 7, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(518, 104, 7, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(519, 104, 7, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(520, 104, 7, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(521, 105, 7, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(522, 105, 7, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(523, 105, 7, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(524, 105, 7, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(525, 105, 7, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(526, 106, 8, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(527, 106, 8, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(528, 106, 8, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(529, 106, 8, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(530, 106, 8, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(531, 107, 8, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(532, 107, 8, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(533, 107, 8, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(534, 107, 8, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(535, 107, 8, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(536, 108, 8, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(537, 108, 8, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(538, 108, 8, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59');
INSERT INTO `bravo_review_meta` (`id`, `review_id`, `object_id`, `object_model`, `name`, `val`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(539, 108, 8, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(540, 108, 8, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(541, 109, 9, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(542, 109, 9, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(543, 109, 9, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(544, 109, 9, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(545, 109, 9, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(546, 110, 9, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(547, 110, 9, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(548, 110, 9, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(549, 110, 9, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(550, 110, 9, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(551, 111, 9, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(552, 111, 9, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(553, 111, 9, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(554, 111, 9, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(555, 111, 9, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(556, 112, 9, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(557, 112, 9, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(558, 112, 9, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(559, 112, 9, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(560, 112, 9, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(561, 113, 10, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(562, 113, 10, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(563, 113, 10, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(564, 113, 10, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(565, 113, 10, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(566, 114, 10, 'hotel', 'Sleep', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(567, 114, 10, 'hotel', 'Location', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(568, 114, 10, 'hotel', 'Service', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(569, 114, 10, 'hotel', 'Clearness', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(570, 114, 10, 'hotel', 'Rooms', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(571, 115, 11, 'hotel', 'Sleep', '5', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(572, 115, 11, 'hotel', 'Location', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(573, 115, 11, 'hotel', 'Service', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(574, 115, 11, 'hotel', 'Clearness', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(575, 115, 11, 'hotel', 'Rooms', '4', 1, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59'),
(576, 116, 1, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(577, 116, 1, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(578, 116, 1, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(579, 116, 1, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(580, 116, 1, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(581, 117, 1, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(582, 117, 1, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(583, 117, 1, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(584, 117, 1, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(585, 117, 1, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(586, 118, 1, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(587, 118, 1, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(588, 118, 1, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(589, 118, 1, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(590, 118, 1, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(591, 119, 1, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(592, 119, 1, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(593, 119, 1, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(594, 119, 1, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(595, 119, 1, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(596, 120, 2, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(597, 120, 2, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(598, 120, 2, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(599, 120, 2, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(600, 120, 2, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(601, 121, 2, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(602, 121, 2, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(603, 121, 2, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(604, 121, 2, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(605, 121, 2, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(606, 122, 2, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(607, 122, 2, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(608, 122, 2, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(609, 122, 2, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(610, 122, 2, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(611, 123, 2, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(612, 123, 2, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(613, 123, 2, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(614, 123, 2, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(615, 123, 2, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(616, 124, 3, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(617, 124, 3, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(618, 124, 3, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(619, 124, 3, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(620, 124, 3, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(621, 125, 3, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(622, 125, 3, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(623, 125, 3, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(624, 125, 3, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(625, 125, 3, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(626, 126, 3, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(627, 126, 3, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(628, 126, 3, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(629, 126, 3, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(630, 126, 3, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(631, 127, 4, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(632, 127, 4, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(633, 127, 4, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(634, 127, 4, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(635, 127, 4, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(636, 128, 5, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(637, 128, 5, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(638, 128, 5, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(639, 128, 5, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(640, 128, 5, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(641, 129, 5, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(642, 129, 5, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(643, 129, 5, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(644, 129, 5, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(645, 129, 5, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(646, 130, 5, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(647, 130, 5, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(648, 130, 5, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(649, 130, 5, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(650, 130, 5, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(651, 131, 6, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(652, 131, 6, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(653, 131, 6, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(654, 131, 6, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(655, 131, 6, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(656, 132, 6, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(657, 132, 6, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(658, 132, 6, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(659, 132, 6, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(660, 132, 6, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(661, 133, 6, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(662, 133, 6, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(663, 133, 6, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(664, 133, 6, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(665, 133, 6, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(666, 134, 6, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(667, 134, 6, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(668, 134, 6, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(669, 134, 6, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(670, 134, 6, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(671, 135, 7, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(672, 135, 7, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(673, 135, 7, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(674, 135, 7, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(675, 135, 7, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(676, 136, 7, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(677, 136, 7, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(678, 136, 7, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(679, 136, 7, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(680, 136, 7, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(681, 137, 7, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(682, 137, 7, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(683, 137, 7, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(684, 137, 7, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(685, 137, 7, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(686, 138, 7, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(687, 138, 7, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(688, 138, 7, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(689, 138, 7, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(690, 138, 7, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(691, 139, 8, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(692, 139, 8, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(693, 139, 8, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(694, 139, 8, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(695, 139, 8, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(696, 140, 8, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(697, 140, 8, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(698, 140, 8, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(699, 140, 8, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(700, 140, 8, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(701, 141, 8, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(702, 141, 8, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(703, 141, 8, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(704, 141, 8, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(705, 141, 8, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(706, 142, 8, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(707, 142, 8, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(708, 142, 8, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(709, 142, 8, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(710, 142, 8, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(711, 143, 9, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(712, 143, 9, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(713, 143, 9, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(714, 143, 9, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(715, 143, 9, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(716, 144, 9, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(717, 144, 9, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(718, 144, 9, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(719, 144, 9, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(720, 144, 9, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(721, 145, 9, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(722, 145, 9, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(723, 145, 9, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(724, 145, 9, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(725, 145, 9, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(726, 146, 9, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(727, 146, 9, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(728, 146, 9, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(729, 146, 9, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(730, 146, 9, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(731, 147, 10, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(732, 147, 10, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(733, 147, 10, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(734, 147, 10, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(735, 147, 10, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(736, 148, 10, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(737, 148, 10, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(738, 148, 10, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(739, 148, 10, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(740, 148, 10, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(741, 149, 11, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(742, 149, 11, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(743, 149, 11, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(744, 149, 11, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(745, 149, 11, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(746, 150, 11, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(747, 150, 11, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(748, 150, 11, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(749, 150, 11, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(750, 150, 11, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(751, 151, 11, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(752, 151, 11, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(753, 151, 11, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(754, 151, 11, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(755, 151, 11, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(756, 152, 12, 'car', 'Equipment', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(757, 152, 12, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(758, 152, 12, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(759, 152, 12, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(760, 152, 12, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(761, 153, 12, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(762, 153, 12, 'car', 'Comfortable', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(763, 153, 12, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(764, 153, 12, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(765, 153, 12, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(766, 154, 12, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(767, 154, 12, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(768, 154, 12, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(769, 154, 12, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(770, 154, 12, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(771, 155, 13, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(772, 155, 13, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(773, 155, 13, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(774, 155, 13, 'car', 'Facility', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(775, 155, 13, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(776, 156, 13, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(777, 156, 13, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(778, 156, 13, 'car', 'Climate Control', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(779, 156, 13, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(780, 156, 13, 'car', 'Aftercare', '4', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(781, 157, 13, 'car', 'Equipment', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(782, 157, 13, 'car', 'Comfortable', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(783, 157, 13, 'car', 'Climate Control', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(784, 157, 13, 'car', 'Facility', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(785, 157, 13, 'car', 'Aftercare', '5', 1, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00'),
(786, 158, 1, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(787, 158, 1, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(788, 158, 1, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(789, 158, 1, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(790, 158, 1, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(791, 159, 1, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(792, 159, 1, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(793, 159, 1, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(794, 159, 1, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(795, 159, 1, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(796, 160, 1, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(797, 160, 1, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(798, 160, 1, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(799, 160, 1, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(800, 160, 1, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(801, 161, 1, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(802, 161, 1, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(803, 161, 1, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(804, 161, 1, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(805, 161, 1, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(806, 162, 1, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(807, 162, 1, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(808, 162, 1, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(809, 162, 1, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(810, 162, 1, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(811, 163, 2, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(812, 163, 2, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(813, 163, 2, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(814, 163, 2, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(815, 163, 2, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(816, 164, 2, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(817, 164, 2, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(818, 164, 2, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(819, 164, 2, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(820, 164, 2, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(821, 165, 2, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(822, 165, 2, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(823, 165, 2, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(824, 165, 2, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(825, 165, 2, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(826, 166, 2, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(827, 166, 2, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(828, 166, 2, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(829, 166, 2, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(830, 166, 2, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(831, 167, 3, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(832, 167, 3, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(833, 167, 3, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(834, 167, 3, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(835, 167, 3, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(836, 168, 3, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(837, 168, 3, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(838, 168, 3, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(839, 168, 3, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(840, 168, 3, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(841, 169, 3, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(842, 169, 3, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(843, 169, 3, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(844, 169, 3, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(845, 169, 3, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(846, 170, 3, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(847, 170, 3, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(848, 170, 3, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(849, 170, 3, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(850, 170, 3, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(851, 171, 3, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(852, 171, 3, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(853, 171, 3, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(854, 171, 3, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(855, 171, 3, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(856, 172, 4, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(857, 172, 4, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(858, 172, 4, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(859, 172, 4, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(860, 172, 4, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(861, 173, 4, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(862, 173, 4, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(863, 173, 4, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(864, 173, 4, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(865, 173, 4, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(866, 174, 6, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(867, 174, 6, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(868, 174, 6, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(869, 174, 6, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(870, 174, 6, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(871, 175, 6, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(872, 175, 6, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(873, 175, 6, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(874, 175, 6, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(875, 175, 6, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(876, 176, 7, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(877, 176, 7, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(878, 176, 7, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(879, 176, 7, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(880, 176, 7, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(881, 177, 7, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(882, 177, 7, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(883, 177, 7, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(884, 177, 7, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(885, 177, 7, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(886, 178, 8, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(887, 178, 8, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(888, 178, 8, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(889, 178, 8, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(890, 178, 8, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(891, 179, 8, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(892, 179, 8, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(893, 179, 8, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(894, 179, 8, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(895, 179, 8, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(896, 180, 8, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(897, 180, 8, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(898, 180, 8, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(899, 180, 8, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(900, 180, 8, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(901, 181, 8, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(902, 181, 8, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(903, 181, 8, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(904, 181, 8, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(905, 181, 8, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(906, 182, 9, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(907, 182, 9, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(908, 182, 9, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(909, 182, 9, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(910, 182, 9, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(911, 183, 9, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(912, 183, 9, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(913, 183, 9, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(914, 183, 9, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(915, 183, 9, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(916, 184, 9, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(917, 184, 9, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(918, 184, 9, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(919, 184, 9, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(920, 184, 9, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(921, 185, 9, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(922, 185, 9, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(923, 185, 9, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(924, 185, 9, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(925, 185, 9, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(926, 186, 10, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(927, 186, 10, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(928, 186, 10, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(929, 186, 10, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(930, 186, 10, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(931, 187, 11, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(932, 187, 11, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(933, 187, 11, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(934, 187, 11, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(935, 187, 11, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(936, 188, 11, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(937, 188, 11, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(938, 188, 11, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(939, 188, 11, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(940, 188, 11, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(941, 189, 11, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(942, 189, 11, 'event', 'Organization', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(943, 189, 11, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(944, 189, 11, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(945, 189, 11, 'event', 'Safety', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(946, 190, 11, 'event', 'Service', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(947, 190, 11, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(948, 190, 11, 'event', 'Friendliness', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(949, 190, 11, 'event', 'Area Expert', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(950, 190, 11, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(951, 191, 12, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(952, 191, 12, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(953, 191, 12, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(954, 191, 12, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(955, 191, 12, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(956, 192, 12, 'event', 'Service', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(957, 192, 12, 'event', 'Organization', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(958, 192, 12, 'event', 'Friendliness', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(959, 192, 12, 'event', 'Area Expert', '4', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01'),
(960, 192, 12, 'event', 'Safety', '5', 1, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_seo`
--

CREATE TABLE `bravo_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_index` tinyint(4) DEFAULT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` int(11) DEFAULT NULL,
  `seo_share` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_seo`
--

INSERT INTO `bravo_seo` (`id`, `object_id`, `object_model`, `seo_index`, `seo_title`, `seo_desc`, `seo_image`, `seo_share`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 16, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 07:14:29', '2022-04-12 07:14:29'),
(2, 15, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2022-04-12 07:23:03', '2022-04-12 07:23:46'),
(3, 14, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2022-04-12 07:34:51', '2022-04-12 07:41:23'),
(4, 13, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 07:40:44', '2022-04-12 07:40:44'),
(5, 12, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 07:48:37', '2022-04-12 07:48:37'),
(6, 11, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 07:53:28', '2022-04-12 07:53:28'),
(7, 10, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:02:47', '2022-04-12 08:02:47'),
(8, 9, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:10:20', '2022-04-12 08:10:20'),
(9, 8, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2022-04-12 08:17:00', '2022-04-12 08:17:32'),
(10, 7, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:24:14', '2022-04-12 08:24:14'),
(11, 6, 'tour', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:28:43', '2022-04-12 08:28:43'),
(12, 8, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:33:13', '2022-04-12 08:33:13'),
(13, 7, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, 1, NULL, NULL, '2022-04-12 08:36:29', '2022-04-12 08:36:54'),
(14, 6, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:38:50', '2022-04-12 08:38:50'),
(15, 5, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:39:53', '2022-04-12 08:39:53'),
(16, 4, 'news', 1, NULL, NULL, NULL, '{\"facebook\":{\"title\":null,\"desc\":null,\"image\":null},\"twitter\":{\"title\":null,\"desc\":null,\"image\":null}}', 1, NULL, NULL, NULL, '2022-04-12 08:40:54', '2022-04-12 08:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_spaces`
--

CREATE TABLE `bravo_spaces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `allow_children` tinyint(4) DEFAULT 0,
  `allow_infant` tinyint(4) DEFAULT 0,
  `max_guests` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `square` int(11) DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_days` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_day_before_booking` int(11) DEFAULT NULL,
  `min_day_stays` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_spaces`
--

INSERT INTO `bravo_spaces` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `faqs`, `price`, `sale_price`, `is_instant`, `allow_children`, `allow_infant`, `max_guests`, `bed`, `bathroom`, `square`, `enable_extra_price`, `extra_price`, `discount_by_days`, `status`, `default_state`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `review_score`, `ical_import_url`, `min_day_before_booking`, `min_day_stays`) VALUES
(1, 'LUXURY STUDIO', 'luxury-studio', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 63, 85, 2, 'Arrondissement de Paris', '51.528564', '-0.203010', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '528.00', 1, 0, 0, 6, 4, 1, 161, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', '4.0', NULL, NULL, NULL),
(2, 'LUXURY APARTMENT', 'luxury-apartment', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 64, 84, 3, 'Porte de Vanves', '51.519592', '-0.226346', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '900.00', '0.00', 0, 0, 0, 9, 4, 5, 171, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', '4.3', NULL, NULL, NULL),
(3, 'BEAUTIFUL LOFT', 'beautiful-loft', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 65, 84, 3, 'Porte de Vanves', '51.461875', '-0.211246', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '650.00', '0.00', 0, 0, 0, 5, 8, 6, 136, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', '4.0', NULL, NULL, NULL),
(4, 'BEST OF WEST VILLAGE', 'best-of-west-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 66, 84, 4, 'Porte de Vanves', '51.427638', '-0.170752', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '800.00', '0.00', 0, 0, 0, 8, 8, 10, 110, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', '5.0', NULL, NULL, NULL),
(5, 'DUPLEX GREENWICH', 'duplex-greenwich', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 67, 85, 1, 'Porte de Vanves', '51.442192', '-0.043778', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '220.00', '0.00', 1, 0, 0, 8, 9, 6, 198, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', '4.2', NULL, NULL, NULL),
(6, 'THE MEATPACKING SUITES', 'the-meatpacking-suites', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 68, 83, 1, 'Porte de Vanves', '51.475135', '0.003592', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '320.00', '0.00', 1, 0, 0, 5, 5, 3, 140, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:28:59', '0.0', NULL, NULL, NULL),
(7, 'EAST VILLAGE', 'east-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 69, 85, 1, 'Porte de Vanves', '51.524292', '-0.022489', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '260.00', 0, 0, 0, 5, 7, 4, 196, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:17:57', '0.0', NULL, NULL, NULL),
(8, 'PARIS GREENWICH VILLA', 'paris-greenwich-villa', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 70, 84, 1, 'Porte de Vanves', '51.556749', '-0.091124', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '500.00', '0.00', 1, 0, 0, 9, 4, 3, 134, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 4, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:11:12', '0.0', NULL, NULL, NULL),
(9, 'LUXURY SINGLE', 'luxury-single', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 71, 85, 1, 'Porte de Vanves', '51.569555', '0.012563', 12, 0, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '400.00', '350.00', 1, 0, 0, 10, 8, 7, 160, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:10:38', '0.0', NULL, NULL, NULL),
(10, 'LILY DALE VILLAGE', 'lily-dale-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 72, 83, 1, 'Porte de Vanves', '51.517883', '-0.134314', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '250.00', '0.00', 0, 0, 0, 5, 4, 6, 164, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 1, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 08:03:00', '0.0', NULL, NULL, NULL),
(11, 'STAY GREENWICH VILLAGE', 'stay-greenwich-village', '<p>Libero sem vitae sed donec conubia integer nisi integer rhoncus imperdiet orci odio libero est integer a integer tincidunt sollicitudin blandit fusce nibh leo vulputate lobortis egestas dapibus faucibus metus conubia maecenas cras potenti cum hac arcu rhoncus nullam eros dictum torquent integer cursus bibendum sem sociis molestie tellus purus</p><p>Quam fusce convallis ipsum malesuada amet velit aliquam urna nullam vehicula fermentum id morbi dis magnis porta sagittis euismod etiam</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 73, 84, 1, 'Porte de Vanves', '51.514892', '-0.176181', 12, 1, '76,77,78,79,80,81,82', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '[{\"title\":\"Check-in time?\",\"content\":\"As a rough guide, the check-in time is after 12 a.m. Let us know your arrival time in case you schedule and early check in we\\u2018ll do our best to have your room available.\"},{\"title\":\"Check-out time?\",\"content\":\"As a rough guide, the check-out time is before 12pm. If you plan a late check out kindly let us know your departure time, we\\u2019ll our best to satisfy your needs.\"},{\"title\":\"Is Reception open 24 hours?\",\"content\":\"Yes, Reception service is available 24 hours.\"},{\"title\":\"Which languages are spoken at Reception?\",\"content\":\"Italian, English, French, German and Spanish.\"},{\"title\":\"Can I leave my luggage?\",\"content\":\"Yes, we can look after your luggage. If at check in your room is not ready yet or in case of early check out after .We will store your luggage free of charge on your check-in and check-out days.\"},{\"title\":\"Internet connection?\",\"content\":\"A wireless internet connection is available throughout the hotel.\\r\\n\\r\\nThe guest rooms feature hi-speed web connectivity (both wireless and cabled).\"}]', '300.00', '150.00', 0, 0, 0, 8, 4, 7, 110, 1, '[{\"name\":\"Lawn garden\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Clearning\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Breakfasts\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, 'publish', 1, 6, 1, NULL, '2022-04-12 06:19:58', '2022-04-12 07:54:15', '0.0', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_dates`
--

CREATE TABLE `bravo_space_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_term`
--

CREATE TABLE `bravo_space_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_space_term`
--

INSERT INTO `bravo_space_term` (`id`, `term_id`, `target_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 26, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(2, 27, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(3, 29, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(4, 31, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(5, 26, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(6, 29, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(7, 30, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(8, 27, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(9, 29, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(10, 30, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(11, 31, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(12, 26, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(13, 28, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(14, 29, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(15, 30, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(16, 31, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(17, 26, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(18, 27, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(19, 28, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(20, 29, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(21, 29, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(22, 30, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(23, 31, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(24, 27, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(25, 28, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(26, 29, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(27, 30, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(28, 28, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(29, 26, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(30, 27, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(31, 28, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(32, 29, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(33, 30, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(34, 26, 10, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(35, 27, 10, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(36, 29, 10, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(37, 30, 10, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(38, 31, 10, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(39, 26, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(40, 27, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(41, 29, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(42, 30, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(43, 31, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_space_translations`
--

CREATE TABLE `bravo_space_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms`
--

CREATE TABLE `bravo_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attr_id` int(11) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_terms`
--

INSERT INTO `bravo_terms` (`id`, `name`, `content`, `attr_id`, `slug`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`, `deleted_at`, `image_id`, `icon`) VALUES
(1, 'Cultural', NULL, 1, 'cultural', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(2, 'Nature & Adventure', NULL, 1, 'nature-adventure', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(3, 'Marine', NULL, 1, 'marine', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(4, 'Independent', NULL, 1, 'independent', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(5, 'Activities', NULL, 1, 'activities', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(6, 'Festival & Events', NULL, 1, 'festival-events', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(7, 'Special Interest', NULL, 1, 'special-interest', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(8, 'Wifi', NULL, 2, 'wifi', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(9, 'Gymnasium', NULL, 2, 'gymnasium', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(10, 'Mountain Bike', NULL, 2, 'mountain-bike', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(11, 'Satellite Office', NULL, 2, 'satellite-office', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(12, 'Staff Lounge', NULL, 2, 'staff-lounge', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(13, 'Golf Cages', NULL, 2, 'golf-cages', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(14, 'Aerobics Room', NULL, 2, 'aerobics-room', NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL, NULL),
(15, 'Auditorium', NULL, 3, 'auditorium', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(16, 'Bar', NULL, 3, 'bar', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(17, 'Cafe', NULL, 3, 'cafe', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(18, 'Ballroom', NULL, 3, 'ballroom', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(19, 'Dance Studio', NULL, 3, 'dance-studio', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(20, 'Office', NULL, 3, 'office', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(21, 'Party Hall', NULL, 3, 'party-hall', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(22, 'Recording Studio', NULL, 3, 'recording-studio', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(23, 'Yoga Studio', NULL, 3, 'yoga-studio', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(24, 'Villa', NULL, 3, 'villa', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(25, 'Warehouse', NULL, 3, 'warehouse', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, NULL, NULL),
(26, 'Air Conditioning', NULL, 4, 'air-conditioning', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, 86, NULL),
(27, 'Breakfast', NULL, 4, 'breakfast', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, 87, NULL),
(28, 'Kitchen', NULL, 4, 'kitchen', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, 88, NULL),
(29, 'Parking', NULL, 4, 'parking', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, 89, NULL),
(30, 'Pool', NULL, 4, 'pool', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, 90, NULL),
(31, 'Wi-Fi Internet', NULL, 4, 'wi-fi-internet', NULL, NULL, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58', NULL, 91, NULL),
(32, 'Apartments', NULL, 5, 'apartments', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(33, 'Hotels', NULL, 5, 'hotels', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(34, 'Homestays', NULL, 5, 'homestays', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(35, 'Villas', NULL, 5, 'villas', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(36, 'Boats', NULL, 5, 'boats', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(37, 'Motels', NULL, 5, 'motels', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(38, 'Resorts', NULL, 5, 'resorts', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(39, 'Lodges', NULL, 5, 'lodges', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(40, 'Holiday homes', NULL, 5, 'holiday-homes', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(41, 'Cruises', NULL, 5, 'cruises', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(42, 'Wake-up call', NULL, 6, 'wake-up-call', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-wall-clock'),
(43, 'Car hire', NULL, 6, 'car-hire', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-car-alt-3'),
(44, 'Bicycle hire', NULL, 6, 'bicycle-hire', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-bicycle-alt-2'),
(45, 'Flat Tv', NULL, 6, 'flat-tv', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-imac'),
(46, 'Laundry and dry cleaning', NULL, 6, 'laundry-and-dry-cleaning', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-recycle-alt'),
(47, 'Internet – Wifi', NULL, 6, 'internet-wifi', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-wifi-alt'),
(48, 'Coffee and tea', NULL, 6, 'coffee-and-tea', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-tea'),
(49, 'Havana Lobby bar', NULL, 7, 'havana-lobby-bar', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(50, 'Fiesta Restaurant', NULL, 7, 'fiesta-restaurant', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(51, 'Hotel transport services', NULL, 7, 'hotel-transport-services', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(52, 'Free luggage deposit', NULL, 7, 'free-luggage-deposit', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(53, 'Laundry Services', NULL, 7, 'laundry-services', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(54, 'Pets welcome', NULL, 7, 'pets-welcome', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(55, 'Tickets', NULL, 7, 'tickets', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, NULL),
(56, 'Wake-up call', NULL, 8, 'wake-up-call-1', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-wall-clock'),
(57, 'Flat Tv', NULL, 8, 'flat-tv-1', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-imac'),
(58, 'Laundry and dry cleaning', NULL, 8, 'laundry-and-dry-cleaning-1', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-recycle-alt'),
(59, 'Internet – Wifi', NULL, 8, 'internet-wifi-1', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-wifi-alt'),
(60, 'Coffee and tea', NULL, 8, 'coffee-and-tea-1', NULL, NULL, NULL, NULL, '2022-04-12 06:19:59', '2022-04-12 06:19:59', NULL, NULL, 'icofont-tea'),
(61, 'Convertibles', NULL, 9, 'convertibles', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 123, NULL),
(62, 'Coupes', NULL, 9, 'coupes', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 124, NULL),
(63, 'Hatchbacks', NULL, 9, 'hatchbacks', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 125, NULL),
(64, 'Minivans', NULL, 9, 'minivans', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 126, NULL),
(65, 'Sedan', NULL, 9, 'sedan', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 127, NULL),
(66, 'SUVs', NULL, 9, 'suvs', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 128, NULL),
(67, 'Trucks', NULL, 9, 'trucks', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 129, NULL),
(68, 'Wagons', NULL, 9, 'wagons', NULL, NULL, NULL, NULL, '2022-04-12 06:20:00', '2022-04-12 06:20:00', NULL, 130, NULL),
(69, 'Airbag', NULL, 10, 'airbag', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, 136, NULL),
(70, 'FM Radio', NULL, 10, 'fm-radio', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, 137, NULL),
(71, 'Power Windows', NULL, 10, 'power-windows', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, 141, NULL),
(72, 'Sensor', NULL, 10, 'sensor', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, 138, NULL),
(73, 'Speed Km', NULL, 10, 'speed-km', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, 139, NULL),
(74, 'Steering Wheel', NULL, 10, 'steering-wheel', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, 140, NULL),
(75, 'Field Day', NULL, 11, 'field-day', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(76, 'Glastonbury', NULL, 11, 'glastonbury', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(77, 'Green Man', NULL, 11, 'green-man', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(78, 'Latitude', NULL, 11, 'latitude', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(79, 'Boomtown', NULL, 11, 'boomtown', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(80, 'Wilderness', NULL, 11, 'wilderness', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(81, 'Exit Festival', NULL, 11, 'exit-festival', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL),
(82, 'Primavera Sound', NULL, 11, 'primavera-sound', NULL, NULL, NULL, NULL, '2022-04-12 06:20:01', '2022-04-12 06:20:01', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_terms_translations`
--

CREATE TABLE `bravo_terms_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tours`
--

CREATE TABLE `bravo_tours` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `banner_image_id` int(11) DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lat` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_lng` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map_zoom` int(11) DEFAULT NULL,
  `is_featured` tinyint(4) DEFAULT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `sale_price` decimal(12,2) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `min_people` int(11) DEFAULT NULL,
  `max_people` int(11) DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `default_state` tinyint(4) DEFAULT 1,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `review_score` decimal(2,1) DEFAULT NULL,
  `ical_import_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tours`
--

INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(1, 'American Parks Trail end Rapid City', 'american-parks-trail', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 21, 44, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 1, 'Arrondissement de Paris', '48.852754', '2.339155', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2000.00', '423.00', 8, 1, 19, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:04:18', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.7', NULL),
(2, 'New York: Museum of Modern Art', 'new-york-museum-of-modern-art', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 22, 45, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'Porte de Vanves', '48.853917', '2.307199', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '900.00', '341.00', 4, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:04:18', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(3, 'Los Angeles to San Francisco Express ', 'los-angeles-to-san-francisco-express', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 23, 46, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'Petit-Montrouge', '48.884900', '2.346377', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1500.00', '771.00', 6, 1, 10, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 6, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:04:18', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(4, 'Paris Vacation Travel ', 'paris-vacation-travel', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 24, 47, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 2, 'New York', '40.707891', '-74.008825', 12, 1, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '850.00', '355.00', 1, 1, 16, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:04:18', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.3', NULL),
(5, 'Southwest States (Ex Los Angeles) ', 'southwest-states', '<p>Start and end in San Francisco! With the in-depth cultural tour Northern California Summer 2019, you have a 8 day tour package taking you through San Francisco, USA and 9 other destinations in USA. Northern California Summer 2019 includes accommodation as well as an expert guide, meals, transport and more.</p><h4>HIGHLIGHTS</h4><ul><li>Visit the Museum of Modern Art in Manhattan</li><li>See amazing works of contemporary art, including Vincent van Gogh\'s The Starry Night</li><li>Check out Campbell\'s Soup Cans by Warhol and The Dance (I) by Matisse</li><li>Behold masterpieces by Gauguin, Dali, Picasso, and Pollock</li><li>Enjoy free audio guides available in English, French, German, Italian, Spanish, Portuguese</li></ul>', 25, 48, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Regal Cinemas Battery Park 11', '40.714578', '-73.983888', 12, 0, '37,38,39,40,41,42,43', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '1900.00', '966.00', 1, 1, 17, '[{\"title\":\"When and where does the tour end?\",\"content\":\"Your tour will conclude in San Francisco on Day 8 of the trip. There are no activities planned for this day so you\'re free to depart at any time. We highly recommend booking post-accommodation to give yourself time to fully experience the wonders of this iconic city!\"},{\"title\":\"When and where does the tour start?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},{\"title\":\"Do you arrange airport transfers?\",\"content\":\"Airport transfers are not included in the price of this tour, however you can book for an arrival transfer in advance. In this case a tour operator representative will be at the airport to greet you. To arrange this please contact our customer service team once you have a confirmed booking.\"},{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}]', 'draft', NULL, 4, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:04:18', 1, '[{\"title\":\"Specialized bilingual guide\"},{\"title\":\"Private Transport\"},{\"title\":\"Entrance fees (Cable and car and Moon Valley)\"},{\"title\":\"Box lunch water, banana apple and chocolate\"}]', '[{\"title\":\"Additional Services\"},{\"title\":\"Insurance\"},{\"title\":\"Drink\"},{\"title\":\"Tickets\"}]', '[{\"image_id\":\"110\",\"title\":\"Day 1\",\"desc\":\"Los Angeles\",\"content\":\"There are no activities planned until an evening welcome meeting. Additional Notes: We highly recommend booking pre-tour accommodation to fully experience this crazy city.\"},{\"image_id\":\"109\",\"title\":\"Day 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Pack up the van in the morning and check out the stars on the most famous sidewalk in Hollywood on an orientation tour\"},{\"image_id\":\"108\",\"title\":\"Day 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Travel to one of the country\'s most rugged landscapes \\u2014 the legendary Death Valley, California. Soak in the dramatic landscape. In the afternoon, continue on to Bakersfield for the night.\"},{\"image_id\":\"107\",\"title\":\"Day 4\",\"desc\":\"San Francisco\",\"content\":\"We highly recommend booking post-accommodation to fully experience this famous city.\"}]', '4.0', NULL),
(6, 'Tur Jalan Kaki Hantu dan Roh New Orleans', 'eastern-discovery-start-new-orleans', '<p>Benamkan diri Anda di sisi mengerikan New Orleans dalam tur jalan kaki hantu dan arwah yang menyeramkan ini. Telusuri koridor gelap French Quarter dan dengarkan kisah hantu terkenal dari pemandu lokal Anda. Anda akan mengunjungi lokasi terkenal dan menakutkan seperti Jackson Brewery dan Bourbon Orleans Hotel. Pada akhirnya, Anda akan mengerti mengapa New Orleans yang angker adalah hotspot bagi penyelidik paranormal dan videografer sejarah.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Tur jalan kaki hantu dan roh di New Orleans</li>\r\n<li>Lihat beberapa situs berhantu di French Quarter</li>\r\n<li>Dengarkan pemandu Anda menceritakan kisah yang ditampilkan di History Channel dan Discovery Channel</li>\r\n<li>Berjalanlah dengan santai melewati distrik tertua di kota</li>\r\n</ul>', 230, 231, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 2, 'Prince St Station', '40.720161', '-74.009628', 12, 1, '232,231,230,229,', 'https://youtu.be/TIyanAWGa3E', '2100.00', '979.00', 1, 1, 10, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Kegiatan ini akan berakhir tepat di tempat dimulainya.\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"Woldenberg Park, Woldenberg Park, 400 Toulouse St, New Orleans, LA 70130, USA at 05:00 pm\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"12-70 tahun\"}}', 'publish', NULL, 6, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:28:59', 1, '[{\"title\":\"Pemandu lokal\"},{\"title\":\"pajak daerah\"}]', '[{\"title\":\"Gratifikasi\"}]', NULL, '0.0', NULL),
(7, 'Kota New York: Tur Helikopter Pulau Manhattan', 'eastern-discovery', '<p>Landmark ikonik New York, sungai besar, dan pulau-pulau bahkan lebih mengesankan dari udara. Dalam tur ini, terbanglah di atas pemandangan paling terkenal di Manhattan dengan helikopter dan nikmati pemandangan Big Apple dari udara. Ada banyak waktu untuk melihat Pulau Liberty, Gedung Empire State, dan Pulau Gubernur.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>T</li>\r\n<li>Rasakan keindahan Central Park, Brooklyn Bridge, Hudson River, Patung Liberty, Intrepid Air and Space Museum, dan masih banyak lagi</li>\r\n<li>Temukan yang terbaik dari Kota New York dengan narasi tur dari pilot yang sangat terlatih</li>\r\n<li>Nikmati pemandangan menakjubkan dari atas</li>\r\n<li>Pilih dari 3 opsi untuk fokus pada sorotan utama NYC atau jelajahi lebih jauh dari pusat</li>\r\n</ul>', 227, 226, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 2, 'Pier 36 New York', '40.708581', '-73.998817', 12, NULL, '228,227,226,225,', 'https://youtu.be/XUE5xPiLY8U', '2100.00', '1593.00', 1, 1, 6, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Kegiatan ini akan berakhir tepat di tempat dimulainya.\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"6 Dermaga Sungai Timur, 6 Dermaga Sungai Timur, New York, NY 10004, AS\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"12-70 tahun\"}}', 'publish', NULL, 4, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:24:14', 1, '[{\"title\":\"Penerbangan helikopter\"},{\"title\":\"Semua biaya heliport\"},{\"title\":\"Pilot\"},{\"title\":\"Komentar dalam penerbangan\"},{\"title\":\"Headset Bose peredam bising\"},{\"title\":\"loker\"}]', '[{\"title\":\"Foto (tersedia untuk pembelian)\"},{\"title\":\"Tips\"}]', NULL, '0.0', NULL),
(8, 'Lembah Napa: Tur Anggur Terpandu dengan Makan Siang Piknik', 'pure-luxe-in-punta-mita', '<p>Jelajahi Lembah Napa yang indah, kawasan anggur paling terkenal di Amerika Utara, dalam tur anggur kelompok kecil berpemandu. Temukan anggur yang terkenal di dunia dan pemandangannya yang unik. Kunjungi kilang anggur butik yang dipilih langsung oleh pemandu wisata Anda.</p>\r\n<p>&nbsp;</p>\r\n<p>Nikmati cerita dan informasi pemandu Anda tentang proses pembuatan anggur. Kagumi pemandangan Lembah Napa yang luar biasa. Makan siang piknik lezat yang disajikan di kilang anggur. Cicipi anggur yang lezat (belum termasuk biaya mencicipi), berjalan-jalan di kilang anggur dan nikmati hari yang sempurna di Napa Valley.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Temukan anggur terkenal di dunia dan pemandangan indah dalam tur anggur Napa Valley yang dipandu</li>\r\n<li>Kunjungi tiga kilang anggur kecil yang dipilih langsung oleh pemandu Anda</li>\r\n<li>Pelajari tentang proses pembuatan wine dari pemandu wisata Anda yang berpengetahuan luas</li>\r\n<li>Nikmati makan siang piknik lezat yang disajikan di kilang anggur</li>\r\n<li>Nikmati pemandangan Lembah Napa yang indah dan tak terlupakan</li>\r\n</ul>', 224, 221, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 3, 'Trimmer Springs Rd, Sanger', '36.822484', '-119.365266', 12, NULL, '224,223,222,221,', 'https://youtu.be/P5jgGwDcWhs', '2100.00', '1167.00', 6, 1, 12, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir dan dimulai?\",\"content\":\"Penjemputan dan pengantaran dari hotel atau penginapan Anda atau hampir semua lokasi di Lembah Napa di dalam kota American Canyon, Napa, Yountville, atau St. Helena\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"minimal 21 tahun\"}}', 'publish', NULL, 6, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:17:00', 1, '[{\"title\":\"Pemandu wisata\"},{\"title\":\"Penjemputan dan pengantaran di akomodasi Anda di area Lembah Napa (American Canyon, Napa, Yountville, atau St. Helena)\"},{\"title\":\"Makan siang kotak piknik\"},{\"title\":\"Air botol\"}]', '[{\"title\":null},{\"title\":\"Tips\"}]', NULL, '0.0', NULL),
(9, 'SoHo, Little Italy, dan Chinatown Walking Tour di New York', 'tastes-and-sounds-of-the-south-2019', '<p>Kemas sorotan lingkungan paling menarik di Kota New York&mdash;SoHo, Little Italy, dan Chinatown&mdash;semuanya dalam satu hari dengan tur jalan kaki ini. Di SoHo, kunjungi Distrik Bersejarah Besi Cor dan pelajari tentang arsitektur abad ke-19. Di Little Italy, lihat situs mafia dan dengar tentang John Gotti, seorang mafia Amerika. Di Chinatown, nikmati pemandangan, bau, dan suara lingkungan sekitar.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Pengantar yang bagus untuk lingkungan SoHo, Little Italy, dan Chinatown NYC</li>\r\n<li>Pelajari tentang hari-hari awal imigrasi dan kekerasan geng Kota New York</li>\r\n<li>Seorang pemandu tahu cara terbaik berkeliling kota untuk melihat lebih banyak dalam waktu yang lebih singkat</li>\r\n<li>Waktu mulai siang hari membebaskan pagi dan sore hari untuk rencana lain</li>\r\n</ul>', 218, 219, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 4, 'United States', '37.040023', '-95.643144', 12, NULL, '220,219,218,217,216,', 'https://youtu.be/rV1tIg1Zhi0', '2100.00', '1780.00', 1, 1, 13, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Spring Street Park, Spring St, New York, NY 10013, USA, Silakan bertemu di sudut SW Spring Street dan 6th Avenue di Spring Street Park. Ini adalah sudut di seberang Aqua Grill. Pemandu akan berada di sana 15 menit sebelum tur dimulai dan mereka akan memegang bendera oranye.\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"Day 1 of this tour is an arrivals day, which gives you a chance to settle into your hotel and explore Los Angeles. The only planned activity for this day is an evening welcome meeting at 7pm, where you can get to know your guides and fellow travellers. Please be aware that the meeting point is subject to change until your final documents are released.\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"Tidak ada batasan usia\"}}', 'publish', NULL, 4, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:10:38', 1, '[{\"title\":\"Pemandu lokal profesional, menghibur,\"},{\"title\":\"Jelajahi lingkungan Soho, Little Italy, dan Chinatown\"}]', '[{\"title\":\"Biaya makanan\"},{\"title\":\"Gratifikasi\"}]', '[{\"image_id\":\"218\",\"title\":null,\"desc\":\"Soho\",\"content\":null},{\"image_id\":\"216\",\"title\":null,\"desc\":\"Little Italy\",\"content\":null},{\"image_id\":\"217\",\"title\":null,\"desc\":\"Chinatown\",\"content\":null}]', '0.0', NULL),
(10, 'Grup kecil Giverny Half-Day Trip dari Paris dengan Monet\'s Gardens & Gravesite', 'giverny-and-versailles-small-group-day-trip', '<p>Jika Anda penggemar Claude Monet, maka tur berpemandu dari Paris ke kebunnya di Giverny ini adalah aktivitas yang wajib dilakukan. Lihat tempat tinggal seniman impresionis hebat selama 40 tahun, dan nikmati pemandangan yang sudah dikenal saat Anda berjalan-jalan di Taman Jepang dan melihat bunga lili air. Belajarlah dari panduan informatif tentang pekerjaan hidup Monet dan keluarganya. Tur kelompok kecil ini dibatasi hanya untuk delapan orang, memastikan perhatian yang dipersonalisasi.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Tur kelompok kecil terbatas untuk delapan orang memastikan pengalaman yang lebih berkesan</li>\r\n<li>Kagumi dalam kehidupan nyata pemandangan yang sama yang digambarkan Monet di lebih dari 250 lukisannya</li>\r\n<li>Dapatkan wawasan tentang inspirasi dan kehidupan pribadi artis</li>\r\n<li>Panduan audio dan transportasi pulang-pergi dengan minivan yang nyaman dari Paris sudah termasuk</li>\r\n</ul>', 213, 215, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 5, 'Washington, DC, USA', '34.049345', '-118.248479', 12, NULL, '215,214,213,212,211,210,', 'https://youtu.be/Sc_NOZrsF9c', '2100.00', '1023.00', 12, 1, 18, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Kegiatan ini akan berakhir tepat di tempat dimulainya.\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"La Flamme, 6 Av. de Wagram, 75008 Paris, France, Harap berada di sana setidaknya 15 menit sebelum waktu keberangkatan resmi! Tur selalu dimulai tepat pada waktu mulai yang ditentukan. Untuk tur ini, Anda mutlak harus tiba sebelum tur dimulai karena tidak ada cara untuk mengejar grup setelah tur dimulai.\"},\"3\":{\"title\":\"What is the age range\",\"content\":\"This tour has an age range of 12-70 years old, this means children under the age of 12 will not be eligible to participate in this tour. However, if you are over 70 years please contact us as you may be eligible to join the tour if you fill out G Adventures self-assessment form.\"}}', 'publish', NULL, 6, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:03:07', 1, '[{\"title\":\"Tur Grup Kecil terbatas untuk 8 orang\"},{\"title\":\"Panduan Ahli dan Sopir\"},{\"title\":\"Transportasi dengan minivan ber-AC\"},{\"title\":\"Prioritas masuk ke Estate of Claude Monet.\"},{\"title\":\"Waktu yang tenang dan tenang selama kunjungan Anda ke kota yang sibuk!\"}]', '[{\"title\":\"Tip alias Gratifikasi untuk kunjungan terpandu dilakukan dengan baik.\"},{\"title\":\"Makanan atau minuman. Tur berakhir di sebelah Champs Elys\\u00e9es dan selusin tempat makan yang enak.\"}]', '[{\"image_id\":\"212\",\"title\":null,\"desc\":\"Giverny\",\"content\":\"Prioritas Masuk dijamin! Kami bekerja dengan Yayasan Claude Monet dan memiliki hak untuk melewati jalur masuk yang panjang dan langsung menuju ke dalam taman melalui pintu masuk khusus. Nikmati setidaknya 30 menit lebih banyak waktu di dalam taman, daripada inline, jika Anda bergabung dengan tur kelompok kecil kami.\"},{\"image_id\":\"211\",\"title\":null,\"desc\":\"the Clos Normand - Fondation Claude Monet\",\"content\":\"Ada dua taman berbeda di properti Claude Monet. Clos Normand yang cantik memiliki ratusan jenis bunga yang mekar sepanjang musim semi, musim panas, dan musim gugur. Anda pasti akan mengenali jalur berjajar Iris ungu yang berani dan Capucines pedas, oranye, dan kuning yang memanjat lengkungan tepat di depan rumah merah mudanya dengan daun jendela hijau.\"}]', '0.0', NULL),
(11, 'New York dalam Tur Tamasya Berpemandu Satu Hari', 'trip-of-new-york-discover-america', '<p>Manfaatkan waktu Anda sebaik mungkin di kota yang tidak pernah tidur dengan tur berpemandu ke tempat-tempat wisata utama NYC. Bepergianlah dengan Staten Island Ferry dan bus saat Anda melewati 9/11 Memorial, Central Park, Rockefeller Center, dan banyak lagi. Kemudian naik kapal mewah untuk pesiar wisata melewati Patung Liberty dan Pulau Ellis, lengkap dengan pemandangan cakrawala yang terkenal di dunia dan Jembatan Brooklyn.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Lihat sorotan kota New York dengan tur berpemandu</li>\r\n<li>Dengarkan komentar informatif tentang sejarah dan orang-orang yang membentuk NYC</li>\r\n<li>Ambil foto Lady Liberty, Pulau Ellis, dan cakrawala kota dari kapal pesiar</li>\r\n<li>Lihat Peringatan 9/11 di bekas situs World Trade Center</li>\r\n</ul>', 31, 208, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 6, 'New Jersey', '40.035329', '-74.417227', 12, NULL, '209,208,207,206,', 'https://youtu.be/_I1cH4oe4ok', '2100.00', '166.00', 24, 1, 10, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"7th Avenue, between 50th & 51st Streets (middle of the block) in Manhattan\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"770 7th Ave, 770 7th Ave, New York, NY 10019, USA\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"tidak ada\"}}', 'publish', NULL, 4, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:54:15', 1, NULL, NULL, NULL, '0.0', NULL),
(12, 'Tur Segway Tamasya Terpandu \"See the City\" di Washington DC', 'segway-tour-of-washington-dc-highlights', '<p>Rasakan sejarah dan skala monumen, museum, dan tugu peringatan Washington, DC dalam tur Segway dengan banyak kesempatan berfoto. Hindari berjam-jam berjalan di antara tujuan, dan lihat lebih banyak kota dengan tur berpemandu. Headset memastikan Anda dapat mendengar komentar penuh wawasan pemandu Anda saat Anda melesat melewati gedung-gedung terkemuka dan tempat-tempat bersejarah. Tur ini sangat ideal bagi pengunjung yang ingin mendapatkan gambaran kota yang baik, untuk mengetahui tempat yang akan dijelajahi secara lebih mendalam nantinya.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Jelajahi DC di Segway dan hindari berjalan berjam-jam dari satu tempat ke tempat lain</li>\r\n<li>Lihat 25 landmark dan monumen utama dari sudut pandang yang unik</li>\r\n<li>Lihat Gedung Putih, Lincoln Memorial, Gedung FBI, dan lainnya</li>\r\n<li>Dapatkan ikhtisar kota dengan wawasan dan cerita orang dalam</li>\r\n</ul>', 204, 205, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 3, 7, 'Francisco Parnassus Campus', '37.782668', '-122.425058', 12, NULL, '205,204,203,202,201,', 'https://youtu.be/LA5BEvE6e8A', '2100.00', '1027.00', 24, 1, 11, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Kegiatan ini akan berakhir tepat di tempat dimulainya.\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"818 Connecticut Ave NW, 818 Connecticut Ave NW, Washington, DC 20006, USA\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"Sekitar 12-69 tahun\"}}', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:48:37', 1, '[{\"title\":\"Tur Segway Tamasya Berpemandu di Washington DC Segway dan Helm Pribadi\"},{\"title\":\"Headset untuk mendengar pemandu wisata Anda dengan jela\"},{\"title\":\"Lihat lebih dari 25+ atraksi DC terbaik termasuk Gedung Putih, US Capitol, Lincoln Memorial, dan banyak lagi!\"},{\"title\":\"Banyak kesempatan untuk berhenti untuk foto\"},{\"title\":\"Sesi pelatihan 30 menit di Segway dengan video dan bantuan satu lawan satu dari pemandu\"},{\"title\":\"Panduan Profesional\"}]', '[{\"title\":\"Gratifikasi\"}]', '[{\"image_id\":\"203\",\"title\":null,\"desc\":\"Gedung Putih\",\"content\":null},{\"image_id\":\"202\",\"title\":null,\"desc\":\"US Capitol\",\"content\":null},{\"image_id\":\"201\",\"title\":null,\"desc\":\"Lincoln Memorial\",\"content\":null}]', '0.0', NULL),
(13, 'Los Angeles: Tur Mendaki Resmi Hollywood Sign', 'hollywood-sign-small-group-tour-in-luxury-van', '<p>Lihat bagian depan dan belakang Hollywood Sign pada pengalaman unik ini serta pemandangan 360&deg; Los Angeles dari Lembah San Fernando hingga Pulau Catalina. Dengan banyak kesempatan untuk foto-foto fantastis, Anda juga akan belajar tentang Sejarah Hollywood orang dalam dari pemandu lokal Anda. Nikmati pemandangan studio film Disney, Warner Bros., Paramount, dan Dreamworks. Plus, lihat sekilas Forest Lawn Mausoleum, tempat peristirahatan terakhir bagi banyak selebritas. Pemandu Anda akan menghibur Anda dengan sejarah Hollywood sambil memastikan pendakian yang aman dan mengasyikkan.</p>\r\n<p>&nbsp;</p>\r\n<p>Setelah Anda mendaki ke Hollywood Sign, Anda akan tiba di pemandangan yang indah dengan beberapa pemandangan terbaik dari tanda di seluruh Los Angeles. Setelah Anda mengambil beberapa foto yang bagus dengan Hollywood Sign dan menikmati pemandangan LA yang menakjubkan, turunlah ke depan sign untuk mendapatkan kesempatan foto yang lebih luar biasa. Pengalaman ini akan memakan waktu sekitar 2,5 jam dan cocok untuk tamu yang mencari petualangan luar ruangan yang menantang.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Lebih dekat dengan Hollywood Sign</li>\r\n<li>Dapatkan perbaikan lengkap sejarah LA orang dalam dari pemandu lokal Anda</li>\r\n<li>Ambil foto-foto menakjubkan dari Hollywood Sign</li>\r\n<li>Temukan bagian lain LA termasuk Historic Burbank, Lake Hollywood, dan Beverly Hills</li>\r\n<li>Kagumi Universal Studios, Warner Bros. Studios, dan banyak institusi Hollywood lainnya</li>\r\n</ul>', 33, 197, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 4, 8, 'Virginia', '37.445688', '-78.673668', 12, NULL, '200,199,198,197,', 'https://www.youtube.com/watch?v=c6cahPMZmdQ', '2100.00', '352.00', 9, 1, 19, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Di papan Holywood\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"Harap tunggu di jalan di luar alamat ini. Selalu ada lalu lintas di LA, jadi luangkan cukup waktu untuk melakukan perjalanan ke titik pertemuan. Ada jalan parkir yang tersedia (harap baca semua tanda dengan seksama). Jika Anda tidak mengemudi, Anda disarankan menggunakan layanan berbagi tumpangan seperti Uber atau Lyft (sekitar $5 dari pusat Hollywood) untuk menuju dan dari lokasi titik pertemuan. Tidak ada toilet di trailhead, harap gunakan toilet sebelum keberangkatan.\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"dianjurkan untuk umur 15 tahun samapi 70 tahun\"}}', 'publish', NULL, 6, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:40:44', 1, '[{\"title\":\"Pemandu wisata langsung\"},{\"title\":\"Air minum\"}]', NULL, NULL, '0.0', NULL),
(14, 'San Francisco Express Tidak Pernah Berhenti', 'san-francisco-express', '<p>Mulai dan akhiri di San Francisco! Dengan tur budaya mendalam California Utara Musim Panas 2019, Anda memiliki paket tur 8 hari yang membawa Anda melewati San Francisco, AS, dan 9 tujuan lain di AS. Musim Panas California Utara 2019 mencakup akomodasi serta panduan ahli, makanan, transportasi, dan banyak lagi.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Kunjungi Museum Seni Modern di Manhattan</li>\r\n<li>Lihat karya seni kontemporer yang menakjubkan, termasuk The Starry Night karya Vincent van Gogh</li>\r\n<li>Lihat Kaleng Sup Campbell oleh Warhol dan The Dance (I) oleh Matisse</li>\r\n<li>Lihatlah mahakarya Gauguin, Dali, Picasso, dan Pollock</li>\r\n<li>Nikmati panduan audio gratis yang tersedia dalam bahasa Inggris, Prancis, Jerman, Italia, Spanyol, Portugis</li>\r\n</ul>', 34, 42, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 7, 'Comprehensive Cancer Center', '37.757522', '-122.447984', 12, NULL, '39,40,41,42,43,44,', 'https://youtu.be/nbPWMcqXqB0', '2100.00', '617.00', 7, 1, 16, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Tur Anda akan berakhir di San Francisco pada Hari ke-8 perjalanan. Tidak ada kegiatan yang direncanakan untuk hari ini sehingga Anda bebas untuk berangkat kapan saja. Kami sangat merekomendasikan memesan pasca-akomodasi untuk memberi diri Anda waktu untuk sepenuhnya mengalami keajaiban kota ikonik ini!\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"Hari 1 dari tur ini adalah hari kedatangan, yang memberi Anda kesempatan untuk menetap di hotel Anda dan menjelajahi Los Angeles. Satu-satunya kegiatan yang direncanakan untuk hari ini adalah pertemuan penyambutan malam hari pada pukul 19:00, di mana Anda dapat mengenal pemandu dan sesama pelancong. Perlu diketahui bahwa titik pertemuan dapat berubah hingga dokumen akhir Anda dirilis.\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"Tur ini memiliki rentang usia 12-70 tahun, ini berarti anak-anak di bawah usia 12 tahun tidak dapat mengikuti tur ini. Namun, jika Anda berusia di atas 70 tahun, harap hubungi kami karena Anda mungkin memenuhi syarat untuk mengikuti tur jika Anda mengisi formulir penilaian mandiri G Adventures.\"}}', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:41:23', 1, '[{\"title\":\"Pemandu dwibahasa khusus\"},{\"title\":\"Transportasi Pribadi\"},{\"title\":\"Biaya masuk (Kabel dan mobil dan Lembah Bulan)\"},{\"title\":\"Kotak makan siang air, apel pisang dan coklat\"}]', '[{\"title\":\"Layanan tambahan\"},{\"title\":\"Pertanggungan\"},{\"title\":\"Minum\"},{\"title\":\"Tiket\"}]', '[{\"image_id\":\"110\",\"title\":\"Hari 1\",\"desc\":\"Los Angeles\",\"content\":\"Tidak ada kegiatan yang direncanakan sampai pertemuan penyambutan malam hari. Catatan Tambahan: Kami sangat merekomendasikan memesan akomodasi pra-tur untuk sepenuhnya menikmati kota yang gila ini.\"},{\"image_id\":\"109\",\"title\":\"Hari 2\",\"desc\":\"Lake Havasu City\",\"content\":\"Kemasi van di pagi hari dan lihat bintang-bintang di trotoar paling terkenal di Hollywood dalam tur orientasi\"},{\"image_id\":\"108\",\"title\":\"Hari 3\",\"desc\":\"Las Vegas\\/Bakersfield\",\"content\":\"Bepergian ke salah satu lanskap paling terjal di negara ini \\u2014 Death Valley yang legendaris, California. Tenggelam dalam pemandangan yang dramatis. Sore hari, lanjutkan perjalanan ke Bakersfield untuk bermalam.\"},{\"image_id\":\"107\",\"title\":\"Hari 4\",\"desc\":\"San Francisco\",\"content\":\"Kami sangat merekomendasikan memesan pasca-akomodasi untuk sepenuhnya menikmati kota yang terkenal ini.\"}]', '0.0', NULL),
(15, 'Tur Cannes dan Antibes', 'cannes-and-antibes-night-tour', '<p>Nikmati kemewahan dan kemewahan Cannes, bintang French Riviera yang bertabur selebritas, dalam tur 4 jam dari Nice ini. Berjalan-jalan di bulevar perbelanjaan mewah La Croisette; lihat Istana Festival, tempat Festival Film Cannes yang ikonik berlangsung; dan ikuti jejak aktor favorit Anda di Walk of Fame yang legendaris. Bukan itu saja: Anda juga akan melihat Billionaires\' Quay yang mengesankan di Antibes dan mengunjungi Saint-Paul-de-Vence yang menawan, yang terkenal karena hubungannya dengan seniman seperti Matisse dan Picasso.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Tur 4 jam Cannes, Antibes, dan Saint-Paul-de-Vence dari Nice</li>\r\n<li>Lihat Istana Festival, Walk of Fame, dan Boulevard La Croisette di Cannes</li>\r\n<li>Kagumi yacht mewah Billionaires Quay di Antibes</li>\r\n<li>Kunjungi toko-toko dan galeri seni yang menawan di Saint-Paul-de-Vence</li>\r\n<li>Bepergian dengan minivan ber-AC</li>\r\n<li>Pengenalan yang ideal ke French Riviera untuk pengunjung pertama kali</li>\r\n<li>Tur kelompok kecil memastikan pengalaman yang dipersonalisasi</li>\r\n</ul>', 196, 190, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 1, 1, 'UCSF Helen Diller Family', '36.201066', '-88.112292', 12, NULL, '196,195,194,193,192,191,190,', 'https://youtu.be/z8MjKvtxzKw', '2100.00', '950.00', 24, 1, 14, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Ambil kesempatan untuk berjalan di karpet merah terkenal yang menutupi tangga Palais des Festivals yang terkenal di dunia - di mana semuanya terjadi pada bulan Mei - Anda mungkin merasa ingin menaiki \'24 langkah kejayaan\' dan mungkin berpose paling anggun di karpet merah. Lihat juga Walk of Fame lokal dengan cetakan tangan selebritasnya sebelum Anda pergi.\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"Setelah dijemput di hotel Anda oleh pemandu wisata berbahasa Inggris kami, Anda akan menuju jalan raya (speedway) dan berangkat dari sana ke kota Cannes yang gemilang. Jelajahi kota dan temukan istananya yang megah di sepanjang jalan raya Croisette: Carlton, Majestic, atau Martinez tempat para bintang menginap selama Festival Film.\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"12-70 tahun\"}}', 'publish', NULL, 6, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:30:36', 1, '[{\"title\":\"Panduan profesional\"},{\"title\":\"Penjemputan dan pengantaran hotel\\/pelabuhan\"},{\"title\":\"Transportasi dengan minivan ber-AC\"}]', '[{\"title\":\"Gratifikasi\"},{\"title\":\"Gratifikasi Makanan dan minuman, kecuali yang ditentukan\"}]', '[{\"image_id\":\"191\",\"title\":null,\"desc\":\"La Croisette\",\"content\":\"Setelah dijemput di hotel Anda oleh pemandu wisata berbahasa Inggris kami, Anda akan menuju jalan raya (speedway) dan berangkat dari sana ke kota Cannes yang gemilang. Jelajahi kota dan temukan istananya yang megah di sepanjang jalan raya Croisette: Carlton, Majestic, atau Martinez tempat para bintang menginap selama Festival Film.\"},{\"image_id\":\"192\",\"title\":null,\"desc\":\"Palais des Festivals et des Congres of Cannes\",\"content\":\"Ambil kesempatan untuk berjalan di karpet merah terkenal yang menutupi tangga Palais des Festivals yang terkenal di dunia - di mana semuanya terjadi pada bulan Mei - Anda mungkin merasa ingin menaiki \'24 langkah kejayaan\' dan mungkin berpose paling anggun di karpet merah. Lihat juga Walk of Fame lokal dengan cetakan tangan selebritasnya sebelum Anda pergi.\"}]', '0.0', NULL);
INSERT INTO `bravo_tours` (`id`, `title`, `slug`, `content`, `image_id`, `banner_image_id`, `short_desc`, `category_id`, `location_id`, `address`, `map_lat`, `map_lng`, `map_zoom`, `is_featured`, `gallery`, `video`, `price`, `sale_price`, `duration`, `min_people`, `max_people`, `faqs`, `status`, `publish_date`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`, `default_state`, `include`, `exclude`, `itinerary`, `review_score`, `ical_import_url`) VALUES
(16, 'Tur Pesiar Sungai di Seine', 'river-cruise-tour-on-the-seine', '<p>Lihat pemandangan utama Paris dari air dengan kapal pesiar Seine naik turun. Dengan tiket 1 atau 2 hari, meluncurlah dengan santai di sepanjang sungai, melompat-lompat ketika Anda ingin mengunjungi atraksi yang paling menarik bagi Anda, seperti Mus&eacute;e d\'Orsay dan Louvre. Atau tetap di kapal untuk mengagumi tepian sungai yang terdaftar sebagai Warisan Dunia di Paris.</p>\r\n<h4>HIGHLIGHTS</h4>\r\n<ul>\r\n<li>Tamasya naik turun kapal pesiar</li>\r\n<li>pelayaran Paris Berlayar di sepanjang Sungai Seine, mengagumi monumen yang berjajar di tepiannya yang terdaftar di UNESCO</li>\r\n<li>Turun di salah satu pemberhentian di sepanjang Sungai Seine</li>\r\n<li>Pilih dari tiket tamasya 1 atau 2 hari</li>\r\n</ul>', 185, 184, 'From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of \'The City\'. Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 2, 1, 'Nevada, US', '36.401066', '-88.312292', 12, NULL, '189,188,187,186,', 'https://www.youtube.com/watch?v=UfEiKK-iX70', '2100.00', '949.00', 2, 1, 12, '{\"0\":{\"title\":\"Kapan dan di mana tur berakhir?\",\"content\":\"Keberangkatan pertama pukul 11.40 pagi Keberangkatan terakhir pukul 18.30 Kapal setiap 25 hingga 30 menit Pass kami memungkinkan Anda naik dan turun dari kapal: - di mana pun Anda mau - kapan pun Anda mau - sesering yang Anda inginkan\"},\"1\":{\"title\":\"Kapan dan di mana tur dimulai?\",\"content\":\"Keberangkatan pertama pukul 11.40 pagi Keberangkatan terakhir pukul 18.30 Kapal setiap 25 hingga 30 menit Pass kami memungkinkan Anda naik dan turun dari kapal: - di mana pun Anda mau - kapan pun Anda mau - sesering yang Anda inginkan\"},\"3\":{\"title\":\"Berapa rentang usianya?\",\"content\":\"dianjurkan 12-70\"}}', 'publish', NULL, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:26:49', 1, '[{\"title\":\"Kapal pesiar hop-on hop-off\"},{\"title\":\"Dek belakang terbuka\"},{\"title\":\"Dipanaskan di musim dingin & atap terbuka di musim panas\"}]', '[{\"title\":\"Komentar\"},{\"title\":\"Gratifikasi\"},{\"title\":\"Makanan dan minuman\"},{\"title\":\"Penjemputan dan pengantaran hotel\"}]', NULL, '0.0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category`
--

CREATE TABLE `bravo_tour_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_category`
--

INSERT INTO `bravo_tour_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'City trips', '', 'city-trips', 'publish', 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(2, 'Ecotourism', '', 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(3, 'Escorted tour', '', 'escorted-tour', 'publish', 5, 6, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(4, 'Ligula', '', 'ligula', 'publish', 7, 8, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_category_translations`
--

CREATE TABLE `bravo_tour_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_dates`
--

CREATE TABLE `bravo_tour_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `price` decimal(12,2) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_guests` tinyint(4) DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `note_to_customer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note_to_admin` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_instant` tinyint(4) DEFAULT 0,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_meta`
--

CREATE TABLE `bravo_tour_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `enable_person_types` tinyint(4) DEFAULT NULL,
  `person_types` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_extra_price` tinyint(4) DEFAULT NULL,
  `extra_price` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_by_people` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_open_hours` tinyint(4) DEFAULT NULL,
  `open_hours` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_meta`
--

INSERT INTO `bravo_tour_meta` (`id`, `tour_id`, `enable_person_types`, `person_types`, `enable_extra_price`, `extra_price`, `discount_by_people`, `enable_open_hours`, `open_hours`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 3, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 4, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 5, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 6, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 08:28:43'),
(7, 7, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 08:24:14'),
(8, 8, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, 1, NULL, '2022-04-12 08:17:32'),
(9, 9, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 08:10:20'),
(10, 10, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 08:02:47'),
(11, 11, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 07:53:28'),
(12, 12, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 07:48:37'),
(13, 13, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 07:40:44'),
(14, 14, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, 1, NULL, '2022-04-12 07:41:23'),
(15, 15, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, 1, NULL, '2022-04-12 07:23:46'),
(16, 16, 1, '[{\"name\":\"Adult\",\"desc\":\"Age 18+\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"1\",\"max\":\"10\",\"price\":\"1000\"},{\"name\":\"Child\",\"desc\":\"Age 6-17\",\"name_ja\":null,\"desc_ja\":null,\"name_egy\":null,\"desc_egy\":null,\"min\":\"0\",\"max\":\"10\",\"price\":\"300\"}]', 1, '[{\"name\":\"Clean\",\"name_ja\":null,\"name_egy\":null,\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, '{\"1\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"2\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"3\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"4\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"5\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"6\":{\"from\":\"00:00\",\"to\":\"00:00\"},\"7\":{\"from\":\"00:00\",\"to\":\"00:00\"}}', 1, NULL, NULL, '2022-04-12 07:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_term`
--

CREATE TABLE `bravo_tour_term` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `term_id` int(11) DEFAULT NULL,
  `tour_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bravo_tour_term`
--

INSERT INTO `bravo_tour_term` (`id`, `term_id`, `tour_id`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(2, 2, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(3, 3, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(4, 4, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(5, 6, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(6, 7, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(7, 1, 2, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(8, 2, 2, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(9, 3, 2, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(10, 4, 2, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(11, 6, 2, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(12, 7, 2, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(13, 1, 3, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(14, 2, 3, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(15, 4, 3, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(16, 5, 3, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(17, 6, 3, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(18, 7, 3, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(19, 1, 4, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(20, 3, 4, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(21, 4, 4, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(22, 5, 4, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(23, 6, 4, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(24, 7, 4, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(25, 1, 5, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(26, 2, 5, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(27, 3, 5, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(28, 5, 5, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(29, 6, 5, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(30, 1, 6, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(31, 2, 6, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(32, 3, 6, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(33, 6, 6, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(34, 7, 6, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(35, 1, 7, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(36, 3, 7, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(37, 4, 7, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(38, 1, 8, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(39, 2, 8, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(40, 4, 8, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(41, 5, 8, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(42, 7, 8, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(43, 2, 9, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(44, 3, 9, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(45, 4, 9, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(46, 5, 9, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(47, 6, 9, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(48, 1, 10, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(49, 2, 10, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(50, 6, 10, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(51, 7, 10, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(52, 1, 11, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(53, 2, 11, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(54, 4, 11, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(55, 7, 11, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(56, 2, 12, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(57, 3, 12, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(58, 4, 12, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(59, 5, 12, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(60, 6, 12, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(61, 7, 12, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(62, 1, 13, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(63, 4, 13, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(64, 5, 13, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(65, 6, 13, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(66, 7, 13, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(67, 3, 14, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(68, 4, 14, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(69, 5, 14, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(70, 7, 14, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(71, 1, 15, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(72, 2, 15, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(73, 4, 15, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(74, 1, 16, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(75, 2, 16, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(76, 3, 16, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(77, 5, 16, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(78, 7, 16, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(79, 8, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(80, 9, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(81, 10, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(82, 11, 1, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(83, 12, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(84, 14, 1, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(85, 8, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(86, 10, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(87, 12, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(88, 13, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(89, 14, 2, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(90, 8, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(91, 9, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(92, 12, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(93, 13, 3, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(94, 8, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(95, 9, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(96, 10, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(97, 11, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(98, 12, 4, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(99, 9, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(100, 10, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(101, 11, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(102, 12, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(103, 13, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(104, 14, 5, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(105, 9, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(106, 10, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(107, 11, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(108, 12, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(109, 13, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(110, 14, 6, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(111, 8, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(112, 9, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(113, 10, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(114, 12, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(115, 14, 7, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(116, 9, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(117, 10, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(118, 11, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(119, 12, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(120, 13, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(121, 14, 8, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(122, 8, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(123, 9, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(124, 10, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(125, 11, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(126, 12, 9, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(127, 8, 10, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(128, 8, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(129, 9, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(130, 10, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(131, 11, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(132, 12, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(133, 13, 11, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(134, 9, 12, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(135, 10, 12, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(136, 12, 12, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(137, 13, 12, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(138, 14, 12, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(139, 8, 13, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(140, 9, 13, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(141, 13, 13, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(142, 14, 13, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(143, 10, 14, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(144, 11, 14, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(145, 12, 14, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(146, 14, 14, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(147, 8, 15, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(148, 10, 15, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(149, 11, 15, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(150, 12, 15, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(151, 13, 15, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(152, 14, 15, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(153, 9, 16, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(154, 10, 16, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58'),
(155, 12, 16, NULL, NULL, '2022-04-12 06:19:58', '2022-04-12 06:19:58');

-- --------------------------------------------------------

--
-- Table structure for table `bravo_tour_translations`
--

CREATE TABLE `bravo_tour_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `faqs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `include` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exclude` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `itinerary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox`
--

CREATE TABLE `core_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `object_id` bigint(20) DEFAULT NULL,
  `object_model` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_inbox_messages`
--

CREATE TABLE `core_inbox_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inbox_id` bigint(20) DEFAULT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT 0,
  `is_read` tinyint(4) DEFAULT 0,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_languages`
--

CREATE TABLE `core_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_languages`
--

INSERT INTO `core_languages` (`id`, `locale`, `name`, `flag`, `status`, `create_user`, `update_user`, `last_build_at`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'gb', 'publish', 1, NULL, NULL, NULL, '2022-04-12 06:19:54', '2022-04-12 06:19:54'),
(2, 'ja', 'Japanese', 'jp', 'publish', 1, NULL, NULL, NULL, '2022-04-12 06:19:54', '2022-04-12 06:19:54'),
(3, 'egy', 'Egyptian', 'eg', 'publish', 1, NULL, NULL, NULL, '2022-04-12 06:19:54', '2022-04-12 06:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `core_menus`
--

CREATE TABLE `core_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menus`
--

INSERT INTO `core_menus` (`id`, `name`, `items`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Main Menu', '[{\"name\":\"Home\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]}]},{\"name\":\"News List\",\"url\":\"\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]},{\"name\":\"Contact\",\"url\":\"\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"is_removed\":true,\"_open\":false,\"children\":[]}]', 1, 1, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 08:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `core_menu_translations`
--

CREATE TABLE `core_menu_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_menu_translations`
--

INSERT INTO `core_menu_translations` (`id`, `origin_id`, `locale`, `items`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', '[{\"name\":\"\\u30db\\u30fc\\u30e0\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30fc\\u30e0\\u30da\\u30fc\\u30b8\",\"url\":\"\\/ja\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0 \\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/page\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30fc\\u30e0\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/page\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30db\\u30c6\\u30eb\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30db\\u30c6\\u30eb\\u4e00\\u89a7\",\"url\":\"\\/ja\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30db\\u30c6\\u30eb\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30c4\\u30a2\\u30fc\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u30de\\u30c3\\u30d7\",\"url\":\"\\/ja\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30c4\\u30a2\\u30fc\\u8a73\\u7d30\",\"url\":\"\\/ja\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u30ea\\u30b9\\u30c8\",\"url\":\"\\/ja\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"\\u30da\\u30fc\\u30b8\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u4e00\\u89a7\",\"url\":\"\\/ja\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u30cb\\u30e5\\u30fc\\u30b9\\u8a73\\u7d30\",\"url\":\"\\/ja\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"\\u5834\\u6240\\u306e\\u8a73\\u7d30\",\"url\":\"\\/ja\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"\\u30d9\\u30f3\\u30c0\\u30fc\\u306b\\u306a\\u308b\",\"url\":\"\\/ja\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"\\u63a5\\u89e6\",\"url\":\"\\/ja\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2022-04-12 06:19:55', NULL),
(2, 1, 'egy', '[{\"name\":\"Home\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Home Page\",\"url\":\"\\/egy\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Hotel\",\"url\":\"\\/egy\\/page\\/hotel\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Tour\",\"url\":\"\\/egy\\/page\\/tour\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Space\",\"url\":\"\\/egy\\/page\\/space\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Home Car\",\"url\":\"\\/egy\\/page\\/car\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Hotel\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Hotel List\",\"url\":\"\\/egy\\/hotel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Map\",\"url\":\"\\/egy\\/hotel?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Hotel Detail\",\"url\":\"\\/egy\\/hotel\\/parian-holiday-villas\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Tours\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Tour List\",\"url\":\"\\/egy\\/tour\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Map\",\"url\":\"\\/egy\\/tour?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Tour Detail\",\"url\":\"\\/egy\\/tour\\/paris-vacation-travel\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Space\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Space List\",\"url\":\"\\/egy\\/space\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Map\",\"url\":\"\\/egy\\/space?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Space Detail\",\"url\":\"\\/egy\\/space\\/stay-greenwich-village\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Car\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"Car List\",\"url\":\"\\/egy\\/car\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Map\",\"url\":\"\\/egy\\/car?_layout=map\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Car Detail\",\"url\":\"\\/egy\\/car\\/vinfast-lux-a20-plus\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]},{\"name\":\"Pages\",\"url\":\"#\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[{\"name\":\"News List\",\"url\":\"\\/egy\\/news\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"News Detail\",\"url\":\"\\/egy\\/news\\/morning-in-the-northern-sea\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]},{\"name\":\"Location Detail\",\"url\":\"\\/egy\\/location\\/paris\",\"item_model\":\"custom\",\"children\":[]},{\"name\":\"Become a vendor\",\"url\":\"\\/egy\\/page\\/become-a-vendor\",\"item_model\":\"custom\",\"children\":[]}]},{\"name\":\"Contact\",\"url\":\"\\/egy\\/contact\",\"item_model\":\"custom\",\"model_name\":\"Custom\",\"children\":[]}]', 1, NULL, '2022-04-12 06:19:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_permissions`
--

CREATE TABLE `core_model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_model_has_roles`
--

CREATE TABLE `core_model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_model_has_roles`
--

INSERT INTO `core_model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 2),
(1, 'App\\User', 4),
(1, 'App\\User', 5),
(1, 'App\\User', 6),
(2, 'App\\User', 3),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 16),
(2, 'App\\User', 17),
(2, 'App\\User', 18),
(3, 'App\\User', 1),
(3, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `core_news`
--

CREATE TABLE `core_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news`
--

INSERT INTO `core_news` (`id`, `title`, `content`, `slug`, `status`, `cat_id`, `image_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'The day on Paris', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'the-day-on-paris', 'draft', 4, 114, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:03:43'),
(2, 'Pure Luxe in Punta Mita', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'pure-luxe-in-punta-mita', 'draft', 2, 115, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:03:43'),
(3, 'All Aboard the Rocky Mountaineer', ' From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception  From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception <br/>From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception<br/>\r\n    From the iconic to the unexpected, the city of San Francisco never ceases to surprise. Kick-start your effortlessly delivered Northern California holiday in the cosmopolitan hills of  The City . Join your Travel Director and fellow travellers for a Welcome Reception at your hotel.Welcome Reception', 'all-aboard-the-rocky-mountaineer', 'draft', 2, 116, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 07:03:43'),
(4, 'Sorotan Kota: Philadelphia', '<p>Philadelphia adalah kota terbesar di Persemakmuran Pennsylvania dan kota terpadat kelima di Amerika Serikat, dengan perkiraan populasi 1.567.442 dan lebih dari 6 juta di wilayah statistik metropolitan terbesar ketujuh, pada 2015. Philadelphia adalah ekonomi dan jangkar budaya Lembah Delaware&mdash;wilayah yang terletak di Timur Laut Amerika Serikat pada pertemuan sungai Delaware dan Schuylkill dengan 7,2 juta orang yang tinggal di wilayah statistik gabungan terbesar kedelapan di Amerika Serikat.</p>\r\n<p>&nbsp;</p>\r\n<p>Pada 1682, William Penn mendirikan kota untuk dijadikan ibu kota Koloni Pennsylvania. Philadelphia memainkan peran penting dalam Revolusi Amerika sebagai tempat pertemuan para Founding Fathers Amerika Serikat, yang menandatangani Deklarasi Kemerdekaan pada tahun 1776 dan Konstitusi pada tahun 1787. Philadelphia adalah salah satu ibu kota negara dalam Perang Revolusi, dan melayani sebagai ibu kota AS sementara sementara Washington, D.C., sedang dibangun. Pada abad ke-19, Philadelphia menjadi pusat industri utama dan pusat kereta api yang tumbuh dari masuknya imigran Eropa. Ini menjadi tujuan utama bagi orang Afrika-Amerika dalam Migrasi Besar dan melampaui dua juta penghuni pada tahun 1950.</p>\r\n<p>&nbsp;</p>\r\n<p>Banyaknya universitas dan perguruan tinggi di daerah ini menjadikan Philadelphia sebagai tujuan studi internasional terbaik, karena kota ini telah berkembang menjadi pusat pendidikan dan ekonomi. Dengan produk domestik bruto sebesar $ 388 miliar, Philadelphia menempati urutan kesembilan di antara kota-kota dunia dan keempat di negara ini. Philadelphia adalah pusat kegiatan ekonomi di Pennsylvania dan merupakan rumah bagi tujuh perusahaan Fortune 1000. Cakrawala Philadelphia berkembang, dengan pasar hampir 81.900 properti komersial pada tahun 2016 termasuk beberapa gedung pencakar langit terkemuka secara nasional. Kota ini terkenal dengan seni, budaya, dan sejarahnya, menarik lebih dari 39 juta turis domestik pada tahun 2013. Philadelphia memiliki lebih banyak patung dan mural luar ruangan daripada kota Amerika lainnya. Fairmount Park, jika digabungkan dengan Taman Lembah Wissahickon yang berdekatan di daerah aliran sungai yang sama, adalah salah satu area taman kota terbesar di Amerika Serikat. 67 Landmark Bersejarah Nasional di kota itu membantu menyumbang $ 10 miliar yang dihasilkan oleh pariwisata. Philadelphia adalah tempat kelahiran Korps Marinir Amerika Serikat, dan juga merupakan rumah bagi banyak orang pertama di AS, termasuk perpustakaan pertama (1731), rumah sakit pertama (1751) dan sekolah kedokteran (1765), Capitol pertama (1777), bursa saham pertama (1790), kebun binatang pertama (1874), dan sekolah bisnis pertama (1881). Philadelphia adalah satu-satunya Kota Warisan Dunia di Amerika Serikat.</p>', 'city-spotlight-philadelphia', 'publish', 5, 236, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:40:54'),
(5, 'Berjingkat-jingkat melewati Tulips of Washington', '<p>Pada tab Sisipkan, galeri menyertakan item yang dirancang untuk berkoordinasi dengan tampilan keseluruhan dokumen Anda. Anda dapat menggunakan galeri ini untuk menyisipkan tabel, header, footer, daftar, halaman sampul, dan blok penyusun dokumen lainnya. Saat Anda membuat gambar, bagan, atau diagram, mereka juga berkoordinasi dengan tampilan dokumen Anda saat ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Anda dapat dengan mudah mengubah pemformatan teks yang dipilih dalam teks dokumen dengan memilih tampilan teks yang dipilih dari galeri Gaya Cepat pada tab Beranda. Anda juga dapat memformat teks secara langsung dengan menggunakan kontrol lain di tab Beranda. Sebagian besar kontrol menawarkan pilihan untuk menggunakan tampilan dari tema saat ini atau menggunakan format yang Anda tentukan secara langsung.</p>\r\n<p>&nbsp;</p>\r\n<p>Untuk mengubah keseluruhan tampilan dokumen Anda, pilih elemen Tema baru pada tab Tata Letak Halaman. Untuk mengubah tampilan yang tersedia di galeri Quick Style, gunakan perintah Change Current Quick Style Set. Galeri Tema dan galeri Gaya Cepat menyediakan perintah reset sehingga Anda selalu dapat mengembalikan tampilan dokumen Anda ke aslinya yang terdapat dalam template Anda saat ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Pada tab Sisipkan, galeri menyertakan item yang dirancang untuk berkoordinasi dengan tampilan keseluruhan dokumen Anda. Anda dapat menggunakan galeri ini untuk menyisipkan tabel, header, footer, daftar, halaman sampul, dan blok penyusun dokumen lainnya. Saat Anda membuat gambar, bagan, atau diagram, mereka juga berkoordinasi dengan tampilan dokumen Anda saat ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Anda dapat dengan mudah mengubah pemformatan teks yang dipilih dalam teks dokumen dengan memilih tampilan teks yang dipilih dari galeri Gaya Cepat pada tab Beranda. Anda juga dapat memformat teks secara langsung dengan menggunakan kontrol lain di tab Beranda. Sebagian besar kontrol menawarkan pilihan untuk menggunakan tampilan dari tema saat ini atau menggunakan format yang Anda tentukan secara langsung.</p>\r\n<p>&nbsp;</p>\r\n<p>Untuk mengubah keseluruhan tampilan dokumen Anda, pilih elemen Tema baru pada tab Tata Letak Halaman. Untuk mengubah tampilan yang tersedia di galeri Quick Style, gunakan perintah Change Current Quick Style Set. Galeri Tema dan galeri Gaya Cepat menyediakan perintah reset sehingga Anda selalu dapat mengembalikan tampilan dokumen Anda ke aslinya yang terdapat dalam template Anda saat ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Pada tab Sisipkan, galeri menyertakan item yang dirancang untuk berkoordinasi dengan tampilan keseluruhan dokumen Anda. Anda dapat menggunakan galeri ini untuk menyisipkan tabel, header, footer, daftar, halaman sampul, dan blok penyusun dokumen lainnya. Saat Anda membuat gambar, bagan, atau diagram, mereka juga berkoordinasi dengan tampilan dokumen Anda saat ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Anda dapat dengan mudah mengubah pemformatan teks yang dipilih dalam teks dokumen dengan memilih tampilan teks yang dipilih dari galeri Gaya Cepat pada tab Beranda. Anda juga dapat memformat teks secara langsung dengan menggunakan kontrol lain di tab Beranda. Sebagian besar kontrol menawarkan pilihan untuk menggunakan tampilan dari tema saat ini atau menggunakan format yang Anda tentukan secara langsung.</p>\r\n<p>&nbsp;</p>\r\n<p>Untuk mengubah keseluruhan tampilan dokumen Anda, pilih elemen Tema baru pada tab Tata Letak Halaman. Untuk mengubah tampilan yang tersedia di galeri Quick Style, gunakan perintah Change Current Quick Style Set. Galeri Tema dan galeri Gaya Cepat menyediakan perintah reset sehingga Anda selalu dapat mengembalikan tampilan dokumen Anda ke aslinya yang terdapat dalam template Anda saat ini.</p>', 'tiptoe-through-the-tulips-of-washington', 'publish', 1, 235, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:39:53'),
(6, 'Reset Tepi Laut di Pantai Laguna', '<p>Montage Laguna Beach memanjakan Anda dengan pemandangan Samudra Pasifik yang tak tertandingi dalam suasana yang mewah. Setiap kamar tamu, suite, dan vila terbuka ke laut untuk memberi Anda pengalaman bersantai dan meremajakan yang sulit ditemukan di tempat lain. Istirahatkan tubuh dan jiwa Anda di spa atau nikmati sinar matahari di Mosaic Pool.</p>\r\n<p>&nbsp;</p>\r\n<p>Ini adalah pilihan populer untuk keluarga karena program anak-anak yang diawasi dan kuat (yang selalu dinikmati putri saya). Resor ini menawarkan para tamu kesempatan untuk mengalami kekayaan budaya Pantai Laguna dan mempelajari mengapa begitu banyak orang menganggap kehidupan pesisir California begitu menarik</p>', 'a-seaside-reset-in-laguna-beach', 'publish', 4, 234, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:38:50'),
(7, '3 Hari di Taman Nasional Pegunungan Great Smoky', '<p>Taman Nasional Pegunungan Great Smoky adalah Taman Nasional yang paling banyak dikunjungi karena alasan yang baik. Dekat dengan pusat populasi dengan akses otomatis yang mudah. Ada banyak penarikan untuk melihat pemandangan yang indah, termasuk kabut biru yang memberi nama taman itu. Meninggalkan mobil di belakang dan berjalan kaki, kerumunan mulai memudar dan keindahan hutan menjadi pusat perhatian.</p>\r\n<p>&nbsp;</p>\r\n<p>Bergabunglah dengan kami dalam kunjungan tiga hari kami di Taman Nasional Pegunungan Great Smoky.</p>\r\n<p>&nbsp;</p>\r\n<p>Tidak seperti banyak Taman Nasional di barat, orang-orang tinggal di Taman Nasional Great Smoky jauh sebelum menjadi Taman Nasional pada tahun 1934. Ada banyak bangunan bersejarah, kincir air, gereja, dan kuburan yang menghubungkan Anda kembali dengan kehidupan beberapa waktu lalu.</p>\r\n<p>&nbsp;</p>\r\n<p>Mendaki jalan Newfound Gap, pemandangan menjadi lebih dramatis dan kabut asap yang bernama sama lebih terlihat. Adegan surealis ini mengingatkan saya pada Shangri-La, gunung surgawi fiksi di barat daya China yang digambarkan dalam gambar dan buku. Shangri-La adalah tempat yang damai di mana para biksu merenungkan makna hidup. Pegunungan Great Smoky, dengan kabut biru khasnya, memunculkan gambaran yang sama dan benar-benar memberi isyarat kepada seseorang untuk merenungkan kehidupan, tetapi di mana kesendirian yang dibutuhkan?</p>\r\n<p>&nbsp;</p>\r\n<p>Daerah Oconaluftee</p>\r\n<p>Great-Smoky-Mountains-85 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Museum Pertanian Gunung</p>\r\n<p>Kami mencapai Taman Nasional Pegunungan Great Smoky dari sisi timur (Carolina Utara) setelah beberapa jam berkendara di tengah hujan. Ini akan menarik, pikirku, karena ramalan hujan selama tiga hari yang kami rencanakan di sini.</p>\r\n<p>&nbsp;</p>\r\n<p>Pusat Pengunjung Oconaluftee menyambut kami dan kami melakukan bisnis taman kami (cap, berbicara dengan ranger, mendapatkan brosur). Kami sepenuhnya bermaksud untuk berjalan di Jalur Sungai sepanjang 1,5 mil untuk meregangkan kaki kami.</p>\r\n<p>&nbsp;</p>\r\n<p>Great-Smoky-Mountains-84 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Rusa di sungai</p>\r\n<p>Hujan berhenti saat kami melewati Museum Pertanian Gunung tepat di belakang pusat pengunjung. Ini adalah kumpulan bangunan pertanian yang ditemukan di taman tetapi dipindahkan ke lokasi saat ini untuk menggambarkan kehidupan di tahun 1800-an. Mereka terpelihara dengan baik dan menarik untuk dilihat.</p>\r\n<p>&nbsp;</p>\r\n<p>Great-Smoky-Mountais-82 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Rusa di hutan</p>\r\n<p>Saat kami berjalan sedikit lebih jauh di jalan setapak di tepi sungai, kami melihat kerumunan yang hening. Ini adalah tanda pasti untuk satwa liar dan tentu saja, ada beberapa rusa di jalan setapak dan di sungai. Kami menyaksikan rusa merumput dan terompet selama sekitar 20 menit, dan menikmati setiap menitnya.</p>\r\n<p>&nbsp;</p>\r\n<p>Great-Smoky-Mountais-109 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Rusa di padang rumput</p>\r\n<p>Rusa itu terlalu dekat dengan jalan setapak untuk kami lewati, jadi kami berbalik dan kembali ke pusat pengunjung. Saat kami melewati Museum Pertanian Gunung, kami mendengar rusa itu sedang terompet. Jalan-jalan yang kami rencanakan tidak terjadi, tetapi kami sangat senang melihat rusa itu dari dekat. Itu lebih dari sekadar menebus rencana yang terputus. Awal yang baik untuk kunjungan kami!</p>\r\n<p>&nbsp;</p>\r\n<p>Great-Smoky-Mountains-98 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Mingus Mill</p>\r\n<p>Perhentian berikutnya ada di ujung jalan, di Mingus Mill. Ini adalah pabrik yang \"berfungsi\" dengan air yang dialihkan dari sungai untuk memutar roda untuk menggiling jagung. Tepung jagung yang dihasilkan dapat dibeli di sini.</p>\r\n<p>&nbsp;</p>\r\n<p>Titik Tertinggi di Taman</p>\r\n<p>Perhentian kami berikutnya adalah Clingman\'s Dome, puncak tertinggi di taman dengan ketinggian 6.643 kaki, dan hanya dilampaui oleh Gunung Mitchel (6.684 kaki) dan Gunung Craig (6.647 kaki) sebagai puncak tertinggi di timur Mississippi. Hari itu hujan dengan awan rendah dan kami mengharapkan yang terburuk &ndash; dan kami mendapatkannya. Saat kami berbelok dari Newfound Gap Road menuju Clingmans Dome Road, kami berada di awan.</p>\r\n<p>&nbsp;</p>\r\n<p>Great-Smoky-Mountains-114-2 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Clingmans Dome Mist &ndash; Jalan menuju menara observasi</p>\r\n<p>Kami memiliki pemandangan &mdash; kabut. Semuanya putih dan seperti Shangri-La, tapi jelas BUKAN pemandangan pegunungan yang indah. Kami mampir ke stasiun ranger, mendapat cap. Tidak ada gunanya pergi ke menara observasi dan kami memutuskan untuk tidak melakukannya.</p>\r\n<p>&nbsp;</p>\r\n<p>Jalan beraspal ke menara observasi sangat sulit karena kecuramannya, naik 334 kaki dalam setengah mil. Untungnya, ada banyak bangku untuk istirahat. Pemandangannya bisa dramatis pada hari yang cerah, tetapi seperti yang sering terjadi, Anda hanya dapat melihat kabut putih saat pegunungan tertutup kabut.</p>\r\n<p>&nbsp;</p>\r\n<p>Clingmans Dome adalah pemandangan \"jangan lewatkan\" pada hari yang cerah.</p>\r\n<p>&nbsp;</p>\r\n<p>Air Terjun Katarak</p>\r\n<p>Great-Smoky-Mountains-119-2 3 Hari di Taman Nasional Pegunungan Great Smoky</p>\r\n<p>Air Terjun Katarak</p>\r\n<p>Sugarlands adalah pusat pengunjung utama di sisi barat (Tennessee) taman. Nature Trail adalah jalan beraspal pendek ke Cataract Falls dan Fighting Creek. Cataract Falls tidak terlalu tinggi atau kuat, tetapi jalannya pendek dan jalan yang bagus untuk meregangkan kaki.</p>\r\n<p>&nbsp;</p>\r\n<p>Jejak Alam Motor Roaring Fork</p>\r\n<p>Hari 2 kunjungan kami sebagian besar tentang tur otomatis dan frustrasi. Kami mulai di Roaring Fork Motor Nature Trail, yang merupakan lintasan satu arah sepanjang 5,5 mil di dekat Gatlinburg. Trailhead untuk Rainbow Falls dan Grotto Falls berada di jalan ini.</p>\r\n<p>&nbsp;</p>\r\n<p>Drive itu sendiri sangat fantastis! Ini adalah drive favorit saya</p>', 'america-national-parks-with-denver', 'publish', 1, 233, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:36:54'),
(8, 'Pagi di Laut Utara', '<p>Lokasi yang indah di area laut, yang membuat pagi hari begitu indah dengan angin laut yang segar. Sarapan yang lezat di tepi laut juga membuat pagi Anda lebih indah dan Anda akan merasakan keindahan alam. Juga, nikmati perjalanan di atas ombak laut. Untuk tujuan bisnis ada ruang konferensi.</p>\r\n<p>&nbsp;</p>\r\n<p>Juga, nikmati perjalanan di atas ombak laut. Untuk tujuan bisnis ada ruang konferensi.</p>\r\n<p>Sarapan yang lezat di tepi laut juga membuat pagi Anda lebih indah dan Anda akan merasakan keindahan alam.</p>\r\n<p>Juga, nikmati perjalanan di atas ombak laut. Untuk tujuan bisnis ada ruang konferensi.</p>\r\n<p>Sarapan yang lezat di tepi laut juga membuat pagi Anda lebih indah dan Anda akan merasakan keindahan alam.</p>\r\n<p>Lokasi yang indah di area laut, yang membuat pagi hari begitu indah dengan angin laut yang segar. Sarapan yang lezat di tepi laut juga membuat pagi Anda lebih indah dan Anda akan merasakan keindahan alam. Juga, nikmati perjalanan di atas ombak laut. Untuk tujuan bisnis ada ruang konferensi.</p>\r\n<p>&nbsp;</p>\r\n<p>Lokasi yang indah di area laut, yang membuat pagi hari begitu indah dengan angin laut yang segar. Sarapan yang lezat di tepi laut juga membuat pagi Anda lebih indah dan Anda akan merasakan keindahan alam. Juga, nikmati perjalanan di atas ombak laut. Untuk tujuan bisnis ada ruang konferensi.</p>', 'morning-in-the-northern-sea', 'publish', 2, 115, 1, 1, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 08:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category`
--

CREATE TABLE `core_news_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_news_category`
--

INSERT INTO `core_news_category` (`id`, `name`, `content`, `slug`, `status`, `_lft`, `_rgt`, `parent_id`, `create_user`, `update_user`, `deleted_at`, `created_at`, `updated_at`, `origin_id`, `lang`) VALUES
(1, 'Adventure Travel', NULL, 'adventure-travel', 'publish', 1, 2, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL),
(2, 'Ecotourism', NULL, 'ecotourism', 'publish', 3, 4, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL),
(3, 'Sea Travel ', NULL, 'sea-travel', 'publish', 5, 6, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL),
(4, 'Hosted Tour', NULL, 'hosted-tour', 'publish', 7, 8, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL),
(5, 'City trips ', NULL, 'city-trips', 'publish', 9, 10, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL),
(6, 'Escorted Tour ', NULL, 'escorted-tour', 'publish', 11, 12, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_news_category_translations`
--

CREATE TABLE `core_news_category_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_tag`
--

CREATE TABLE `core_news_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_news_translations`
--

CREATE TABLE `core_news_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_notifications`
--

CREATE TABLE `core_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `is_read` tinyint(4) DEFAULT 0,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint(20) DEFAULT NULL,
  `target_parent_id` bigint(20) DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_pages`
--

CREATE TABLE `core_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `template_id` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_pages`
--

INSERT INTO `core_pages` (`id`, `slug`, `title`, `content`, `short_desc`, `status`, `publish_date`, `image_id`, `template_id`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'home-page', 'Home Page', NULL, NULL, 'publish', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL),
(2, 'tour', 'Home Tour', NULL, NULL, 'publish', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL),
(3, 'space', 'Home Space', NULL, NULL, 'draft', NULL, NULL, 3, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 06:26:58'),
(4, 'hotel', 'Home Hotel', NULL, NULL, 'draft', NULL, NULL, 4, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 06:26:58'),
(5, 'become-a-vendor', 'Become a vendor', NULL, NULL, 'publish', NULL, NULL, 5, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 06:50:18'),
(6, 'car', 'Home Car', NULL, NULL, 'draft', NULL, NULL, 6, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 06:26:58'),
(7, 'privacy-policy', 'Privacy policy', '<h1>Privacy policy</h1>\r\n<p> This privacy policy (\"Policy\") describes how the personally identifiable information (\"Personal Information\") you may provide on the <a target=\"_blank\" href=\"http://dev.bookingcore.org\" rel=\"noreferrer noopener\">dev.bookingcore.org</a> website (\"Website\" or \"Service\") and any of its related products and services (collectively, \"Services\") is collected, protected and used. It also describes the choices available to you regarding our use of your Personal Information and how you can access and update this information. This Policy is a legally binding agreement between you (\"User\", \"you\" or \"your\") and this Website operator (\"Operator\", \"we\", \"us\" or \"our\"). By accessing and using the Website and Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement. This Policy does not apply to the practices of companies that we do not own or control, or to individuals that we do not employ or manage.</p>\r\n<h2>Automatic collection of information</h2>\r\n<p>When you open the Website, our servers automatically record information that your browser sends. This data may include information such as your device\'s IP address, browser type and version, operating system type and version, language preferences or the webpage you were visiting before you came to the Website and Services, pages of the Website and Services that you visit, the time spent on those pages, information you search for on the Website, access times and dates, and other statistics.</p>\r\n<p>Information collected automatically is used only to identify potential cases of abuse and establish statistical information regarding the usage and traffic of the Website and Services. This statistical information is not otherwise aggregated in such a way that would identify any particular user of the system.</p>\r\n<h2>Collection of personal information</h2>\r\n<p>You can access and use the Website and Services without telling us who you are or revealing any information by which someone could identify you as a specific, identifiable individual. If, however, you wish to use some of the features on the Website, you may be asked to provide certain Personal Information (for example, your name and e-mail address). We receive and store any information you knowingly provide to us when you create an account, publish content,  or fill any online forms on the Website. When required, this information may include the following:</p>\r\n<ul>\r\n<li>Personal details such as name, country of residence, etc.</li>\r\n<li>Contact information such as email address, address, etc.</li>\r\n<li>Account details such as user name, unique user ID, password, etc.</li>\r\n<li>Information about other individuals such as your family members, friends, etc.</li>\r\n</ul>\r\n<p>Some of the information we collect is directly from you via the Website and Services. However, we may also collect Personal Information about you from other sources such as public databases and our joint marketing partners. You can choose not to provide us with your Personal Information, but then you may not be able to take advantage of some of the features on the Website. Users who are uncertain about what information is mandatory are welcome to contact us.</p>\r\n<h2>Use and processing of collected information</h2>\r\n<p>In order to make the Website and Services available to you, or to meet a legal obligation, we need to collect and use certain Personal Information. If you do not provide the information that we request, we may not be able to provide you with the requested products or services. Any of the information we collect from you may be used for the following purposes:</p>\r\n<ul>\r\n<li>Create and manage user accounts</li>\r\n<li>Send administrative information</li>\r\n<li>Request user feedback</li>\r\n<li>Improve user experience</li>\r\n<li>Enforce terms and conditions and policies</li>\r\n<li>Run and operate the Website and Services</li>\r\n</ul>\r\n<p>Processing your Personal Information depends on how you interact with the Website and Services, where you are located in the world and if one of the following applies: (i) you have given your consent for one or more specific purposes; this, however, does not apply, whenever the processing of Personal Information is subject to European data protection law; (ii) provision of information is necessary for the performance of an agreement with you and/or for any pre-contractual obligations thereof; (iii) processing is necessary for compliance with a legal obligation to which you are subject; (iv) processing is related to a task that is carried out in the public interest or in the exercise of official authority vested in us; (v) processing is necessary for the purposes of the legitimate interests pursued by us or by a third party.</p>\r\n<p> Note that under some legislations we may be allowed to process information until you object to such processing (by opting out), without having to rely on consent or any other of the following legal bases below. In any case, we will be happy to clarify the specific legal basis that applies to the processing, and in particular whether the provision of Personal Information is a statutory or contractual requirement, or a requirement necessary to enter into a contract.</p>\r\n<h2>Managing information</h2>\r\n<p>You are able to delete certain Personal Information we have about you. The Personal Information you can delete may change as the Website and Services change. When you delete Personal Information, however, we may maintain a copy of the unrevised Personal Information in our records for the duration necessary to comply with our obligations to our affiliates and partners, and for the purposes described below. If you would like to delete your Personal Information or permanently delete your account, you can do so by contacting us.</p>\r\n<h2>Disclosure of information</h2>\r\n<p> Depending on the requested Services or as necessary to complete any transaction or provide any service you have requested, we may share your information with your consent with our trusted third parties that work with us, any other affiliates and subsidiaries we rely upon to assist in the operation of the Website and Services available to you. We do not share Personal Information with unaffiliated third parties. These service providers are not authorized to use or disclose your information except as necessary to perform services on our behalf or comply with legal requirements. We may share your Personal Information for these purposes only with third parties whose privacy policies are consistent with ours or who agree to abide by our policies with respect to Personal Information. These third parties are given Personal Information they need only in order to perform their designated functions, and we do not authorize them to use or disclose Personal Information for their own marketing or other purposes.</p>\r\n<p>We will disclose any Personal Information we collect, use or receive if required or permitted by law, such as to comply with a subpoena, or similar legal process, and when we believe in good faith that disclosure is necessary to protect our rights, protect your safety or the safety of others, investigate fraud, or respond to a government request.</p>\r\n<h2>Retention of information</h2>\r\n<p>We will retain and use your Personal Information for the period necessary to comply with our legal obligations, resolve disputes, and enforce our agreements unless a longer retention period is required or permitted by law. We may use any aggregated data derived from or incorporating your Personal Information after you update or delete it, but not in a manner that would identify you personally. Once the retention period expires, Personal Information shall be deleted. Therefore, the right to access, the right to erasure, the right to rectification and the right to data portability cannot be enforced after the expiration of the retention period.</p>\r\n<h2>The rights of users</h2>\r\n<p>You may exercise certain rights regarding your information processed by us. In particular, you have the right to do the following: (i) you have the right to withdraw consent where you have previously given your consent to the processing of your information; (ii) you have the right to object to the processing of your information if the processing is carried out on a legal basis other than consent; (iii) you have the right to learn if information is being processed by us, obtain disclosure regarding certain aspects of the processing and obtain a copy of the information undergoing processing; (iv) you have the right to verify the accuracy of your information and ask for it to be updated or corrected; (v) you have the right, under certain circumstances, to restrict the processing of your information, in which case, we will not process your information for any purpose other than storing it; (vi) you have the right, under certain circumstances, to obtain the erasure of your Personal Information from us; (vii) you have the right to receive your information in a structured, commonly used and machine readable format and, if technically feasible, to have it transmitted to another controller without any hindrance. This provision is applicable provided that your information is processed by automated means and that the processing is based on your consent, on a contract which you are part of or on pre-contractual obligations thereof.</p>\r\n<h2>Privacy of children</h2>\r\n<p>We do not knowingly collect any Personal Information from children under the age of 18. If you are under the age of 18, please do not submit any Personal Information through the Website and Services. We encourage parents and legal guardians to monitor their children\'s Internet usage and to help enforce this Policy by instructing their children never to provide Personal Information through the Website and Services without their permission. If you have reason to believe that a child under the age of 18 has provided Personal Information to us through the Website and Services, please contact us. You must also be old enough to consent to the processing of your Personal Information in your country (in some countries we may allow your parent or guardian to do so on your behalf).</p>\r\n<h2>Cookies</h2>\r\n<p>The Website and Services use \"cookies\" to help personalize your online experience. A cookie is a text file that is placed on your hard disk by a web page server. Cookies cannot be used to run programs or deliver viruses to your computer. Cookies are uniquely assigned to you, and can only be read by a web server in the domain that issued the cookie to you.</p>\r\n<p>We may use cookies to collect, store, and track information for statistical purposes to operate the Website and Services. You have the ability to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. To learn more about cookies and how to manage them, visit <a target=\"_blank\" href=\"https://www.internetcookies.org\" rel=\"noreferrer noopener\">internetcookies.org</a></p>\r\n<h2>Do Not Track signals</h2>\r\n<p>Some browsers incorporate a Do Not Track feature that signals to websites you visit that you do not want to have your online activity tracked. Tracking is not the same as using or collecting information in connection with a website. For these purposes, tracking refers to collecting personally identifiable information from consumers who use or visit a website or online service as they move across different websites over time. How browsers communicate the Do Not Track signal is not yet uniform. As a result, the Website and Services are not yet set up to interpret or respond to Do Not Track signals communicated by your browser. Even so, as described in more detail throughout this Policy, we limit our use and collection of your personal information.</p>\r\n<h2>Email marketing</h2>\r\n<p>We offer electronic newsletters to which you may voluntarily subscribe at any time. We are committed to keeping your e-mail address confidential and will not disclose your email address to any third parties except as allowed in the information use and processing section or for the purposes of utilizing a third party provider to send such emails. We will maintain the information sent via e-mail in accordance with applicable laws and regulations.</p>\r\n<p>In compliance with the CAN-SPAM Act, all e-mails sent from us will clearly state who the e-mail is from and provide clear information on how to contact the sender. You may choose to stop receiving our newsletter or marketing emails by following the unsubscribe instructions included in these emails or by contacting us. However, you will continue to receive essential transactional emails.</p>\r\n<h2>Links to other resources</h2>\r\n<p>The Website and Services contain links to other resources that are not owned or controlled by us. Please be aware that we are not responsible for the privacy practices of such other resources or third parties. We encourage you to be aware when you leave the Website and Services and to read the privacy statements of each and every resource that may collect Personal Information.</p>\r\n<h2>Information security</h2>\r\n<p>We secure information you provide on computer servers in a controlled, secure environment, protected from unauthorized access, use, or disclosure. We maintain reasonable administrative, technical, and physical safeguards in an effort to protect against unauthorized access, use, modification, and disclosure of Personal Information in its control and custody. However, no data transmission over the Internet or wireless network can be guaranteed. Therefore, while we strive to protect your Personal Information, you acknowledge that (i) there are security and privacy limitations of the Internet which are beyond our control; (ii) the security, integrity, and privacy of any and all information and data exchanged between you and the Website and Services cannot be guaranteed; and (iii) any such information and data may be viewed or tampered with in transit by a third party, despite best efforts.</p>\r\n<h2>Data breach</h2>\r\n<p>In the event we become aware that the security of the Website and Services has been compromised or users Personal Information has been disclosed to unrelated third parties as a result of external activity, including, but not limited to, security attacks or fraud, we reserve the right to take reasonably appropriate measures, including, but not limited to, investigation and reporting, as well as notification to and cooperation with law enforcement authorities. In the event of a data breach, we will make reasonable efforts to notify affected individuals if we believe that there is a reasonable risk of harm to the user as a result of the breach or if notice is otherwise required by law. When we do, we will post a notice on the Website, send you an email.</p>\r\n<h2>Changes and amendments</h2>\r\n<p>We reserve the right to modify this Policy or its terms relating to the Website and Services from time to time in our discretion and will notify you of any material changes to the way in which we treat Personal Information. When we do, we will post a notification on the main page of the Website. We may also provide notice to you in other ways in our discretion, such as through contact information you have provided. Any updated version of this Policy will be effective immediately upon the posting of the revised Policy unless otherwise specified. Your continued use of the Website and Services after the effective date of the revised Policy (or such other act specified at that time) will constitute your consent to those changes. However, we will not, without your consent, use your Personal Information in a manner materially different than what was stated at the time your Personal Information was collected. Policy was created with <a style=\"color:inherit;\" target=\"_blank\" href=\"https://www.websitepolicies.com/privacy-policy-generator\" rel=\"noreferrer noopener\">WebsitePolicies</a>.</p>\r\n<h2>Acceptance of this policy</h2>\r\n<p>You acknowledge that you have read this Policy and agree to all its terms and conditions. By accessing and using the Website and Services you agree to be bound by this Policy. If you do not agree to abide by the terms of this Policy, you are not authorized to access or use the Website and Services.</p>\r\n<h2>Contacting us</h2>\r\n<p>If you would like to contact us to understand more about this Policy or wish to contact us concerning any matter relating to individual rights and your Personal Information, you may do so via the <a target=\"_blank\" href=\"http://dev.bookingcore.org/contact\" rel=\"noreferrer noopener\">contact form</a></p>\r\n<p>This document was last updated on October 6, 2020</p>', NULL, 'publish', NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 06:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `core_page_translations`
--

CREATE TABLE `core_page_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_permissions`
--

CREATE TABLE `core_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_permissions`
--

INSERT INTO `core_permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'report_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(2, 'contact_manage', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(3, 'newsletter_manage', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(4, 'language_manage', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(5, 'language_translation', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(6, 'booking_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(7, 'booking_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(8, 'booking_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(9, 'enquiry_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(10, 'enquiry_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(11, 'enquiry_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(12, 'template_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(13, 'template_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(14, 'template_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(15, 'template_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(16, 'news_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(17, 'news_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(18, 'news_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(19, 'news_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(20, 'news_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(21, 'role_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(22, 'role_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(23, 'role_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(24, 'role_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(25, 'permission_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(26, 'permission_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(27, 'permission_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(28, 'permission_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(29, 'dashboard_access', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(30, 'dashboard_vendor_access', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(31, 'setting_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(32, 'menu_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(33, 'menu_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(34, 'menu_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(35, 'menu_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(36, 'user_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(37, 'user_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(38, 'user_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(39, 'user_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(40, 'page_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(41, 'page_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(42, 'page_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(43, 'page_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(44, 'page_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(45, 'setting_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(46, 'media_upload', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(47, 'media_manage', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(48, 'tour_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(49, 'tour_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(50, 'tour_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(51, 'tour_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(52, 'tour_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(53, 'tour_manage_attributes', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(54, 'location_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(55, 'location_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(56, 'location_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(57, 'location_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(58, 'location_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(59, 'review_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(60, 'system_log_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(61, 'space_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(62, 'space_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(63, 'space_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(64, 'space_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(65, 'space_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(66, 'space_manage_attributes', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(67, 'hotel_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(68, 'hotel_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(69, 'hotel_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(70, 'hotel_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(71, 'hotel_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(72, 'hotel_manage_attributes', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(73, 'car_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(74, 'car_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(75, 'car_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(76, 'car_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(77, 'car_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(78, 'car_manage_attributes', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(79, 'event_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(80, 'event_create', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(81, 'event_update', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(82, 'event_delete', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(83, 'event_manage_others', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(84, 'event_manage_attributes', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(85, 'social_manage_forum', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(86, 'plugin_manage', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(87, 'vendor_payout_view', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(88, 'vendor_payout_manage', 'web', '2022-04-12 06:19:53', '2022-04-12 06:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `core_roles`
--

CREATE TABLE `core_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_roles`
--

INSERT INTO `core_roles` (`id`, `name`, `guard_name`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'vendor', 'web', NULL, NULL, '2022-04-12 06:19:53', '2022-04-12 06:19:53'),
(2, 'customer', 'web', NULL, NULL, '2022-04-12 06:19:54', '2022-04-12 06:19:54'),
(3, 'administrator', 'web', NULL, NULL, '2022-04-12 06:19:54', '2022-04-12 06:19:54');

-- --------------------------------------------------------

--
-- Table structure for table `core_role_has_permissions`
--

CREATE TABLE `core_role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_role_has_permissions`
--

INSERT INTO `core_role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 1),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 1),
(46, 3),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 3),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 3),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3),
(76, 1),
(76, 3),
(77, 3),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3);

-- --------------------------------------------------------

--
-- Table structure for table `core_settings`
--

CREATE TABLE `core_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `autoload` tinyint(4) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_settings`
--

INSERT INTO `core_settings` (`id`, `name`, `group`, `val`, `autoload`, `create_user`, `update_user`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'site_locale', 'general', 'en', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(2, 'site_enable_multi_lang', 'general', '1', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(3, 'enable_rtl_egy', 'general', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'menu_locations', 'general', '{\"primary\":1}', NULL, 1, 1, NULL, NULL, '2022-04-12 06:30:22'),
(5, 'admin_email', 'general', 'HOFF@gmail.com', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(6, 'email_from_name', 'general', 'HOliday For Fun', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(7, 'email_from_address', 'general', 'contactHOFF@gmail.com', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(8, 'logo_id', 'general', '183', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(9, 'site_favicon', 'general', '183', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(10, 'topbar_left_text', 'general', '<div class=\"socials\">\r\n<a href=\"#\"><i class=\"fa fa-facebook\"></i></a>\r\n<a href=\"#\"><i class=\"fa fa-linkedin\"></i></a>\r\n<a href=\"#\"><i class=\"fa fa-google-plus\"></i></a>\r\n</div>\r\n<span class=\"line\"></span>\r\n<a href=\"mailto:HOFF@gmail.com\">HOFF@gmail.com</a>', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(11, 'footer_text_left', 'general', '', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(12, 'footer_text_right', 'general', '', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(13, 'list_widget_footer', 'general', '[{\"title\":\"NEED HELP?\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Call Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            +62 858 1725 9111\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Email for Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@gmail.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            Follow Us\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n               <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"COMPANY\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">About Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Community Blog<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Rewards<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Work with Us<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Meet the Team<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SUPPORT\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">Account<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Legal<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Contact<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Affiliate Program<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">Privacy Policy<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"SETTINGS\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">Setting 1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">Setting 2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(14, 'list_widget_footer_ja', 'general', '[{\"title\":\"\\u52a9\\u3051\\u304c\\u5fc5\\u8981\\uff1f\",\"size\":\"3\",\"content\":\"<div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u304a\\u96fb\\u8a71\\u304f\\u3060\\u3055\\u3044\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            + 00 222 44 5678\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u90f5\\u4fbf\\u7269\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            hello@yoursite.com\\r\\n        <\\/div>\\r\\n    <\\/div>\\r\\n    <div class=\\\"contact\\\">\\r\\n        <div class=\\\"c-title\\\">\\r\\n            \\u30d5\\u30a9\\u30ed\\u30fc\\u3059\\u308b\\r\\n        <\\/div>\\r\\n        <div class=\\\"sub\\\">\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-facebook\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-twitter\\\"><\\/i>\\r\\n            <\\/a>\\r\\n            <a href=\\\"#\\\">\\r\\n                <i class=\\\"icofont-youtube-play\\\"><\\/i>\\r\\n            <\\/a>\\r\\n        <\\/div>\\r\\n    <\\/div>\"},{\"title\":\"\\u4f1a\\u793e\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u7d04, \\u7565<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30b3\\u30df\\u30e5\\u30cb\\u30c6\\u30a3\\u30d6\\u30ed\\u30b0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u5831\\u916c<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u3068\\u9023\\u643a<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30c1\\u30fc\\u30e0\\u306b\\u4f1a\\u3046<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u30b5\\u30dd\\u30fc\\u30c8\",\"size\":\"3\",\"content\":\"<ul>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30ab\\u30a6\\u30f3\\u30c8<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u6cd5\\u7684<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u63a5\\u89e6<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u30a2\\u30d5\\u30a3\\u30ea\\u30a8\\u30a4\\u30c8\\u30d7\\u30ed\\u30b0\\u30e9\\u30e0<\\/a><\\/li>\\r\\n    <li><a href=\\\"#\\\">\\u500b\\u4eba\\u60c5\\u5831\\u4fdd\\u8b77\\u65b9\\u91dd<\\/a><\\/li>\\r\\n<\\/ul>\"},{\"title\":\"\\u8a2d\\u5b9a\",\"size\":\"3\",\"content\":\"<ul>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a1<\\/a><\\/li>\\r\\n<li><a href=\\\"#\\\">\\u8a2d\\u5b9a2<\\/a><\\/li>\\r\\n<\\/ul>\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'page_contact_title', 'general', 'Kamu menunggu kritik dan saran anda', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(16, 'page_contact_sub_title', 'general', 'Silahkan hubungi kami, kami akan segera membalasnya', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(17, 'page_contact_desc', 'general', '<h3>HOFF</h3>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tell. +62 858 1275 9111</p>\r\n<p>Email. hello@gmail.com</p>\r\n<p>Jalan Perintis Kemerdekaan no 13, Jakarta, Indonesia</p>', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:44'),
(18, 'page_contact_image', 'general', '9', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:44'),
(19, 'home_page_id', 'general', '1', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(20, 'page_contact_title', 'general', 'We\'d love to hear from you', NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'page_contact_title_ja', 'general', 'あなたからの御一報をお待ち', NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'page_contact_sub_title', 'general', 'Send us a message and we\'ll respond as soon as possible', NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'page_contact_sub_title_ja', 'general', '私たちにメッセージを送ってください、私たちはできるだ', NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'page_contact_desc', 'general', '<!DOCTYPE html><html><head></head><body><h3>Booking Core</h3><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p><p>Tell. + 00 222 444 33</p><p>Email. hello@yoursite.com</p><p>1355 Market St, Suite 900San, Francisco, CA 94103 United States</p></body></html>', NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'page_contact_image', 'general', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'currency_main', 'payment', 'usd', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'currency_format', 'payment', 'left', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'currency_decimal', 'payment', ',', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'currency_thousand', 'payment', '.', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'currency_no_decimal', 'payment', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'extra_currency', 'payment', '[{\"currency_main\":\"eur\",\"currency_format\":\"left\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"2\",\"rate\":\"0.902807\"},{\"currency_main\":\"jpy\",\"currency_format\":\"right_space\",\"currency_thousand\":\".\",\"currency_decimal\":\",\",\"currency_no_decimal\":\"0\",\"rate\":\"0.00917113\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'map_provider', 'advance', 'gmap', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:23:09'),
(33, 'map_gmap_key', 'advance', '', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:23:09'),
(34, 'g_offline_payment_enable', 'payment', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'g_offline_payment_name', 'payment', 'Offline Payment', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'date_format', 'general', 'm/d/Y', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(37, 'site_title', 'general', 'HOFF', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(38, 'site_timezone', 'general', 'UTC', NULL, 1, 1, NULL, NULL, '2022-04-12 06:47:43'),
(39, 'site_title', 'general', 'Booking Core', NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'email_header', 'general', '', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:56:11'),
(41, 'email_footer', 'general', '', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:56:11'),
(42, 'enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'user_content_email_registered', 'user', '<h1 style=\"text-align: center\">Welcome!</h1>\n                    <h3>Hello [first_name] [last_name]</h3>\n                    <p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\n                    <p>Regards,</p>\n                    <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'admin_enable_mail_user_registered', 'user', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'admin_content_email_user_registered', 'user', '<h3>Hello Administrator</h3>\n                    <p>We have new registration</p>\n                    <p>Full name: [first_name] [last_name]</p>\n                    <p>Email: [email]</p>\n                    <p>Regards,</p>\n                    <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'user_content_email_forget_password', 'user', '<h1>Hello!</h1>\n                    <p>You are receiving this email because we received a password reset request for your account.</p>\n                    <p style=\"text-align: center\">[button_reset_password]</p>\n                    <p>This password reset link expire in 60 minutes.</p>\n                    <p>If you did not request a password reset, no further action is required.\n                    </p>\n                    <p>Regards,</p>\n                    <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'email_driver', 'email', 'log', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'email_host', 'email', 'smtp.mailgun.org', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'email_port', 'email', '587', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'email_encryption', 'email', 'tls', NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'email_username', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'email_password', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'email_mailgun_domain', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'email_mailgun_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'email_mailgun_endpoint', 'email', 'api.mailgun.net', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'email_postmark_token', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'email_ses_key', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'email_ses_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'email_ses_region', 'email', 'us-east-1', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'email_sparkpost_secret', 'email', '', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'booking_enquiry_for_hotel', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'booking_enquiry_for_tour', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'booking_enquiry_for_space', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'booking_enquiry_for_car', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'booking_enquiry_for_event', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'booking_enquiry_type', 'enquiry', 'booking_and_enquiry', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'booking_enquiry_enable_mail_to_vendor', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'booking_enquiry_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\n                            <p>You get new inquiry request from [email]</p>\n                            <p>Name :[name]</p>\n                            <p>Emai:[email]</p>\n                            <p>Phone:[phone]</p>\n                            <p>Content:[note]</p>\n                            <p>Service:[service_link]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'booking_enquiry_enable_mail_to_admin', 'enquiry', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'booking_enquiry_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\n                            <p>You get new inquiry request from [email]</p>\n                            <p>Name :[name]</p>\n                            <p>Emai:[email]</p>\n                            <p>Phone:[phone]</p>\n                            <p>Content:[note]</p>\n                            <p>Service:[service_link]</p>\n                            <p>Vendor:[vendor_link]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'vendor_enable', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'vendor_commission_type', 'vendor', 'percent', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'vendor_commission_amount', 'vendor', '10', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'vendor_role', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'role_verify_fields', 'vendor', '{\"phone\":{\"name\":\"Phone\",\"type\":\"text\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":null,\"order\":null,\"icon\":\"fa fa-phone\"},\"id_card\":{\"name\":\"ID Card\",\"type\":\"file\",\"roles\":[\"1\",\"2\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-id-card\"},\"trade_license\":{\"name\":\"Trade License\",\"type\":\"multi_files\",\"roles\":[\"1\",\"3\"],\"required\":\"1\",\"order\":\"0\",\"icon\":\"fa fa-copyright\"}}', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'vendor_content_email_registered', 'vendor', '<h1 style=\"text-align: center;\">Welcome!</h1>\n                            <h3>Hello [first_name] [last_name]</h3>\n                            <p>Thank you for signing up with Booking Core! We hope you enjoy your time with us.</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'admin_enable_mail_vendor_registered', 'vendor', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'admin_content_email_vendor_registered', 'vendor', '<h3>Hello Administrator</h3>\n                            <p>An user has been registered as Vendor. Please check the information bellow:</p>\n                            <p>Full name: [first_name] [last_name]</p>\n                            <p>Email: [email]</p>\n                            <p>Registration date: [created_at]</p>\n                            <p>You can approved the request here: [link_approved]</p>\n                            <p>Regards,</p>\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'cookie_agreement_enable', 'advance', '1', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:23:09'),
(81, 'cookie_agreement_button_text', 'advance', 'Got it', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:23:09'),
(82, 'cookie_agreement_content', 'advance', '<p>This website requires cookies to provide all of its features. By using our website, you agree to our use of cookies. <a href=\"#\">More info</a></p>', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:23:09'),
(83, 'logo_invoice_id', 'booking', '183', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:56:11'),
(84, 'invoice_company_info', 'booking', '<p><span style=\"font-size: 14pt;\"><strong>HOFF</strong></span></p>\r\n<p>Ha Noi, Viet Nam</p>\r\n<p>www.HOFF.org</p>', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:56:11'),
(85, 'news_page_list_title', 'news', 'News', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'news_page_list_banner', 'news', '121', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'news_sidebar', 'news', '[{\"title\":null,\"content\":null,\"type\":\"search_form\"},{\"title\":\"About Us\",\"content\":\"Nam dapibus nisl vitae elit fringilla rutrum. Aenean sollicitudin, erat a elementum rutrum, neque sem pretium metus, quis mollis nisl nunc et massa\",\"type\":\"content_text\"},{\"title\":\"Recent News\",\"content\":null,\"type\":\"recent_news\"},{\"title\":\"Categories\",\"content\":null,\"type\":\"category\"},{\"title\":\"Tags\",\"content\":null,\"type\":\"tag\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'tour_page_search_title', 'tour', 'Search for tour', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'tour_page_limit_item', 'tour', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'tour_page_search_banner', 'tour', '20', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'tour_layout_search', 'tour', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'tour_enable_review', 'tour', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'tour_review_approved', 'tour', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'tour_review_stats', 'tour', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'tour_booking_buyer_fees', 'tour', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'tour_map_search_fields', 'tour', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'tour_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'space_page_search_title', 'space', 'Search for space', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'space_page_limit_item', 'space', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'space_page_search_banner', 'space', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'space_layout_search', 'space', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'space_enable_review', 'space', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'space_review_approved', 'space', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'space_review_stats', 'space', '[{\"title\":\"Sleep\"},{\"title\":\"Location\"},{\"title\":\"Service\"},{\"title\":\"Clearness\"},{\"title\":\"Rooms\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'space_booking_buyer_fees', 'space', '[{\"name\":\"Cleaning fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'space_map_search_fields', 'space', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"3\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'space_search_fields', 'tour', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'hotel_page_search_title', 'hotel', 'Search for hotel', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'hotel_page_limit_item', 'hotel', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'hotel_page_search_banner', 'hotel', '92', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'hotel_layout_item_search', 'hotel', 'list', NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'hotel_attribute_show_in_listing_page', 'hotel', '6', NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'hotel_layout_search', 'hotel', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'hotel_enable_review', 'hotel', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'hotel_review_approved', 'hotel', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'hotel_review_stats', 'hotel', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'hotel_booking_buyer_fees', 'hotel', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'hotel_map_search_fields', 'hotel', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"7\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'hotel_search_fields', 'hotel', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"4\",\"position\":\"1\"},{\"title\":\"Check In - Out\",\"field\":\"date\",\"size\":\"4\",\"position\":\"2\"},{\"title\":\"Guests\",\"field\":\"guests\",\"size\":\"4\",\"position\":\"3\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'car_page_search_title', 'car', 'Search for car', NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'car_page_limit_item', 'car', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'car_page_search_banner', 'car', '62', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'car_layout_search', 'car', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'car_enable_review', 'car', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'car_review_approved', 'car', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'car_review_stats', 'car', '[{\"title\":\"Equipment\"},{\"title\":\"Comfortable\"},{\"title\":\"Climate Control\"},{\"title\":\"Facility\"},{\"title\":\"Aftercare\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'car_booking_buyer_fees', 'car', '[{\"name\":\"Equipment fee\",\"desc\":\"One-time fee charged by host to cover the cost of cleaning their space.\",\"name_ja\":\"\\u30af\\u30ea\\u30fc\\u30cb\\u30f3\\u30b0\\u4ee3\",\"desc_ja\":\"\\u30b9\\u30da\\u30fc\\u30b9\\u3092\\u6383\\u9664\\u3059\\u308b\\u8cbb\\u7528\\u3092\\u30db\\u30b9\\u30c8\\u304c\\u8acb\\u6c42\\u3059\\u308b1\\u56de\\u9650\\u308a\\u306e\\u6599\\u91d1\\u3002\",\"price\":\"100\",\"type\":\"one_time\"},{\"name\":\"Facility fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"200\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'car_map_search_fields', 'car', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"attr\",\"attr\":\"9\",\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'car_search_fields', 'car', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'event_page_search_title', 'event', 'Search for event', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'event_page_limit_item', 'event', '9', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'event_page_search_banner', 'event', '161', NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'event_layout_search', 'event', 'normal', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'event_enable_review', 'event', '1', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'event_review_approved', 'event', '0', NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'event_review_stats', 'event', '[{\"title\":\"Service\"},{\"title\":\"Organization\"},{\"title\":\"Friendliness\"},{\"title\":\"Area Expert\"},{\"title\":\"Safety\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'event_booking_buyer_fees', 'event', '[{\"name\":\"Service fee\",\"desc\":\"This helps us run our platform and offer services like 24\\/7 support on your trip.\",\"name_ja\":\"\\u30b5\\u30fc\\u30d3\\u30b9\\u6599\",\"desc_ja\":\"\\u3053\\u308c\\u306b\\u3088\\u308a\\u3001\\u5f53\\u793e\\u306e\\u30d7\\u30e9\\u30c3\\u30c8\\u30d5\\u30a9\\u30fc\\u30e0\\u3092\\u5b9f\\u884c\\u3057\\u3001\\u65c5\\u884c\\u4e2d\\u306b\",\"price\":\"100\",\"type\":\"one_time\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'event_map_search_fields', 'event', '[{\"field\":\"location\",\"attr\":null,\"position\":\"1\"},{\"field\":\"category\",\"attr\":null,\"position\":\"2\"},{\"field\":\"date\",\"attr\":null,\"position\":\"3\"},{\"field\":\"price\",\"attr\":null,\"position\":\"4\"},{\"field\":\"advance\",\"attr\":null,\"position\":\"5\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'event_search_fields', 'event', '[{\"title\":\"Location\",\"field\":\"location\",\"size\":\"6\",\"position\":\"1\"},{\"title\":\"From - To\",\"field\":\"date\",\"size\":\"6\",\"position\":\"2\"}]', NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'update_to_110', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:03', '2022-04-12 06:20:03'),
(141, 'update_to_120', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:03', '2022-04-12 06:20:03'),
(142, 'update_to_130', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:03', '2022-04-12 06:20:03'),
(143, 'update_to_140', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:03', '2022-04-12 06:20:03'),
(144, 'update_to_150', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(145, 'update_to_151', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(146, 'update_to_160', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(147, 'booking_enquiry_enable_mail_to_vendor_content', 'enquiry', '<h3>Hello [vendor_name]</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>\r\n                            </div>', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'booking_enquiry_enable_mail_to_admin_content', 'enquiry', '<h3>Hello Administrator</h3>\r\n                            <p>You get new inquiry request from [email]</p>\r\n                            <p>Name :[name]</p>\r\n                            <p>Emai:[email]</p>\r\n                            <p>Phone:[phone]</p>\r\n                            <p>Content:[note]</p>\r\n                            <p>Service:[service_link]</p>\r\n                            <p>Vendor:[vendor_link]</p>\r\n                            <p>Regards,</p>\r\n                            <p>Booking Core</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'update_to_170', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(150, 'check_db_engine', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(151, 'wallet_credit_exchange_rate', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(152, 'wallet_deposit_rate', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(153, 'wallet_deposit_type', NULL, 'list', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(154, 'wallet_deposit_lists', NULL, '[{\"name\":\"100$\",\"amount\":100,\"credit\":100},{\"name\":\"Bonus 10%\",\"amount\":500,\"credit\":550},{\"name\":\"Bonus 15%\",\"amount\":1000,\"credit\":1150}]', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(155, 'wallet_new_deposit_admin_subject', NULL, 'New credit purchase', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(156, 'wallet_new_deposit_admin_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>New order has been made:</p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(157, 'wallet_new_deposit_customer_subject', NULL, 'Thank you for your purchasing', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(158, 'wallet_new_deposit_customer_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>New order has been made:</p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(159, 'wallet_update_deposit_admin_subject', NULL, 'Credit purchase updated', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(160, 'wallet_update_deposit_admin_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>Order has been updated:</p>\n            <p>Order Status: <strong>[status_name]</strong></p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(161, 'wallet_update_deposit_customer_subject', NULL, 'Your credit purchase updated', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(162, 'wallet_update_deposit_customer_content', NULL, '\n            <h1>Hello [first_name]!</h1>\n            <p>Order has been updated:</p>\n            <p>Order Status: <strong>[status_name]</strong></p>\n            <p>User ID: [create_user]</p>\n            <p>Amount: [amount]</p>\n            <p>Credit: [credit]</p>\n            <p>Gateway: [payment_gateway]</p>\n            <p>Regards,<br>Booking Core</p>', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(163, 'update_to_181', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(164, 'update_to_182', NULL, '1', NULL, NULL, NULL, NULL, '2022-04-12 06:20:04', '2022-04-12 06:20:04'),
(165, 'google_client_secret', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(166, 'google_client_id', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(167, 'google_enable', 'advance', '1', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(168, 'facebook_client_secret', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(169, 'facebook_client_id', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(170, 'facebook_enable', 'advance', '1', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(171, 'twitter_enable', 'advance', '1', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(172, 'twitter_client_id', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(173, 'twitter_client_secret', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(174, 'recaptcha_enable', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(175, 'recaptcha_api_key', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(176, 'recaptcha_api_secret', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(177, 'head_scripts', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(178, 'body_scripts', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(179, 'footer_scripts', 'advance', '', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(180, 'size_unit', 'advance', 'm2', NULL, 1, NULL, NULL, '2022-04-12 06:23:09', '2022-04-12 06:23:09'),
(181, 'site_desc', 'general', '', NULL, 1, 1, NULL, '2022-04-12 06:43:17', '2022-04-12 06:47:43'),
(182, 'site_first_day_of_the_weekin_calendar', 'general', '1', NULL, 1, 1, NULL, '2022-04-12 06:43:17', '2022-04-12 06:47:43'),
(183, 'enable_rtl', 'general', '', NULL, 1, 1, NULL, '2022-04-12 06:43:17', '2022-04-12 06:47:43'),
(184, 'booking_enable_recaptcha', 'booking', '', NULL, 1, NULL, NULL, '2022-04-12 06:56:11', '2022-04-12 06:56:11'),
(185, 'booking_term_conditions', 'booking', '', NULL, 1, NULL, NULL, '2022-04-12 06:56:11', '2022-04-12 06:56:11'),
(186, 'booking_guest_checkout', 'booking', '', NULL, 1, NULL, NULL, '2022-04-12 06:56:11', '2022-04-12 06:56:11');

-- --------------------------------------------------------

--
-- Table structure for table `core_subscribers`
--

CREATE TABLE `core_subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_tags`
--

CREATE TABLE `core_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `update_user` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_tags`
--

INSERT INTO `core_tags` (`id`, `name`, `slug`, `content`, `create_user`, `update_user`, `deleted_at`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'park', 'park', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(2, 'National park', 'national-park', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(3, 'Moutain', 'moutain', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(4, 'Travel', 'travel', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(5, 'Summer', 'summer', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57'),
(6, 'Walking', 'walking', NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 06:19:57', '2022-04-12 06:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `core_tag_translations`
--

CREATE TABLE `core_tag_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_templates`
--

CREATE TABLE `core_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `origin_id` bigint(20) DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_templates`
--

INSERT INTO `core_templates` (`id`, `title`, `content`, `type_id`, `create_user`, `update_user`, `origin_id`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"tour\",\"event\"],\"title\":\"Mau liburan kemana hari ini ?\",\"sub_title\":\"Nikmati hidupmu nikmati liburanmu\",\"bg_image\":16,\"title_for_car\":\"\",\"title_for_event\":\"\",\"title_for_hotel\":\"\",\"title_for_space\":\"\",\"title_for_tour\":\"\",\"hide_form_search\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Harga Spesial\",\"desc\":\"Temukan tempat wisata impianmu </br>\\ndengan harga mirinh\",\"background_image\":17,\"link_title\":\"See Deals\",\"link_more\":\"#\",\"featured_text\":\"HOLIDAY SALE\"},{\"_active\":true,\"title\":\"New User\",\"desc\":\"Belum punya akun ? <br>\\nRegistrasi sekarang<br>\",\"background_image\":18,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"Travel Tips\",\"desc\":\"Tips & Trick berpergian\",\"background_image\":19,\"link_title\":\"Sign Up\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"tour\",\"event\"],\"title\":\"Top Destinations\",\"desc\":\"\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\",\"custom_ids\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Our best promotion tours\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"Most popular destinations\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_event\",\"name\":\"Event: List Items\",\"model\":{\"title\":\"Event Music\",\"desc\":\"\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_news\",\"name\":\"News: List Items\",\"model\":{\"title\":\"Blog terakhir di upload\",\"desc\":\"Contrary to popular belief\",\"number\":6,\"category_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Bosan dengan liburan mu?\",\"sub_title\":\"Join dan nikmati keseruan liburan yang belum pernah kamu rasdakan\",\"link_title\":\"\",\"link_more\":\"#\",\"bg_color\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Aplikasi yang sangat berguna dan memiliki pelayanan terbaik\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Harga yang ditawarkan merupakan yang termurah di saingannya\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"100% trusted, terpercaya dan cepat\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, 1, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 06:38:57'),
(2, 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"Love where you\'re going\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"1,000+ local guides\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":5},{\"_active\":false,\"title\":\"Handcrafted experiences\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":4},{\"_active\":false,\"title\":\"96% happy travelers\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Trending Tours\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"Top Destinations\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"Local Experiences You’ll Love\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"Our happy clients\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui. \",\"number_star\":6,\"avatar\":2},{\"_active\":false,\"name\":\"Charlie Harrington\",\"desc\":\"Faucibus tristique felis potenti ultrices ornare rhoncus semper hac facilisi Rutrum tellus lorem sem velit nisi non pharetra in dui.\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL),
(3, 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"Find your next rental\",\"sub_title\":\"Book incredible things to do around the world.\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"Recommended Homes\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"Homes highly rated for thoughtful design\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"Find a Home Type\",\"desc\":\"It is a long established fact that a reader\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"Top Destinations\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"It is a long established fact that a reader\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\" Rental Listing\",\"desc\":\"Homes highly rated for thoughtful design\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"Know your city?\",\"sub_title\":\"Join 2000+ locals & 1200+ contributors from 3000 cities\",\"link_title\":\"Become Local Expert\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL),
(4, 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"Find Your Perfect Hotels\",\"sub_title\":\"Get the best prices on 20,000+ properties\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000+ properties\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"Trust & Safety\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"Best Price Guarantee\",\"sub_title\":\"Morbi semper fames lobortis ac hac penatibus\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Last Minute Deals\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"Top Destinations\",\"desc\":\"It is a long established fact that a reader\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">Why be a Local Expert</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">Varius massa maecenas et id dictumst mattis</span></div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"Earn an additional income\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"Open your network\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"Practice your language\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"Bestseller Listing\",\"desc\":\"Hotel highly rated for thoughtful design\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL),
(5, 'Become a vendor', '[{\"type\":\"vendor_register_form\",\"name\":\"Vendor Register Form\",\"model\":{\"title\":\"Become a vendor\",\"desc\":\"Bergabung bersama kami dan jadilah salah satu pekerja sukses\",\"youtube\":\"https://www.youtube.com/watch?v=AmZ0WrEaf34\",\"bg_image\":11},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"video_player\",\"name\":\"Video Player\",\"model\":{\"title\":\"Share the beauty of your city\",\"youtube\":\"https://www.youtube.com/watch?v=hHUbLv4ThOo\",\"bg_image\":12},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h3><strong>Kenapa harus bersama kami</strong></h3>\",\"class\":\"text-center ptb60\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Dapatkan penghasilan tambahan\",\"sub_title\":\"\",\"icon_image\":15,\"order\":null},{\"_active\":true,\"title\":\"Perbanyak jaringan anda\",\"sub_title\":\"\",\"icon_image\":14,\"order\":null},{\"_active\":true,\"title\":\"Latih bahasamu\",\"sub_title\":\"\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, 1, NULL, NULL, '2022-04-12 06:19:55', '2022-04-12 07:02:54'),
(6, 'Home Car', '[{\"type\":\"form_search_car\",\"name\":\"Car: Form Search\",\"model\":{\"title\":\"Search Rental Car Deals\",\"sub_title\":\"Book better cars from local hosts across the US and around the world.\",\"bg_image\":122},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"Free Cancellation\",\"sub_title\":\"Morbi semper fames lobortis ac\",\"icon_image\":103,\"order\":null},{\"_active\":true,\"title\":\"No Hidden Costs\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":104,\"order\":null},{\"_active\":true,\"title\":\"24/7 Customer Care\",\"sub_title\":\"Morbi semper fames lobortis\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"car_term_featured_box\",\"name\":\"Car: Term Featured Box\",\"model\":{\"title\":\"Browse by categories\",\"desc\":\"Book incredible things to do around the world.\",\"term_car\":[\"68\",\"67\",\"66\",\"65\",\"64\",\"63\",\"62\",\"61\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Trending used cars\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"how_it_works\",\"name\":\"How It Works\",\"model\":{\"title\":\"How does it work?\",\"list_item\":[{\"_active\":false,\"title\":\"Find The Car\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":132,\"order\":null},{\"_active\":false,\"title\":\"Book It\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":133,\"order\":null},{\"_active\":false,\"title\":\"Grab And Go\",\"sub_title\":\"Lorem Ipsum is simply dummy text of the printing\",\"icon_image\":134,\"order\":null}],\"background_image\":131},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"car\"],\"title\":\"Top destinations\",\"desc\":\"Lorem Ipsum is simply dummy text of the printing\",\"number\":6,\"layout\":\"style_2\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', NULL, 1, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_template_translations`
--

CREATE TABLE `core_template_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `origin_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `core_template_translations`
--

INSERT INTO `core_template_translations` (`id`, `origin_id`, `locale`, `title`, `content`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 1, 'ja', 'Home Page', '[{\"type\":\"form_search_all_service\",\"name\":\"Form Search All Service\",\"model\":{\"service_types\":[\"hotel\",\"space\",\"tour\",\"car\"],\"title\":\"こんにちは！\",\"sub_title\":\"どこに行きたい？\",\"bg_image\":16},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"offer_block\",\"name\":\"Offer Block\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"特別オファー\",\"desc\":\"最適なホテルを探す<br>\\n20,000以上の物件の価格<br>\\n上の最高の価格\",\"background_image\":17,\"link_title\":\"取引\",\"link_more\":\"#\",\"featured_text\":\"ホリデーセール\"},{\"_active\":true,\"title\":\"ニュースレター\",\"desc\":\"無料で参加して取得 <br>\\nに合わせたニュースレター<br>\\nホット旅行情報。\",\"background_image\":18,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_icon\":\"icofont-email\"},{\"_active\":true,\"title\":\"旅行のヒント\",\"desc\":\"旅行の専門家からのヒント <br>\\nあなたの次の<br>\\nより良い。\",\"background_image\":19,\"link_title\":\"サインアップ\",\"link_more\":\"/register\",\"featured_text\":null,\"featured_icon\":\"icofont-island-alt\"}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":[\"space\",\"hotel\",\"tour\"],\"title\":\"人気の目的地\",\"desc\":\"読者が\",\"number\":6,\"layout\":\"style_4\",\"order\":\"id\",\"order_by\":\"asc\",\"to_location_detail\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"最高のプロモーションツアー\",\"number\":6,\"style\":\"box_shadow\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\",\"desc\":\"最も人気のある目的地\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_car\",\"name\":\"Car: List Items\",\"model\":{\"title\":\"Car Trending\",\"desc\":\"Book incredible things to do around the world.\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true},{\"type\": \"list_news\", \"name\": \"News: List Items\", \"model\": {\"title\": \"Read the latest from blog\", \"desc\": \"Contrary to popular belief\", \"number\": 6, \"category_id\": null, \"order\": \"id\", \"order_by\": \"asc\"}, \"component\": \"RegularBlock\", \"open\": true, \"is_container\": false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"あなたの街を知？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2022-04-12 06:19:55', NULL),
(2, 2, 'ja', 'Home Tour', '[{\"type\":\"form_search_tour\",\"name\":\"Tour: Form Search\",\"model\":{\"title\":\"どこへ行くのが大好き\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":20},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":true,\"title\":\"1,000+ ローカルガイド\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":5},{\"_active\":true,\"title\":\"手作りの体験\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":4},{\"_active\":true,\"title\":\"96% 幸せな旅行者\",\"sub_title\":\"プロのツアーガイドとーガイドとーガイドと 験。 光の\",\"icon_image\":6}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"トレンドツアー\",\"number\":5,\"style\":\"carousel\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"title\":\"人気の目的地\",\"number\":5,\"order\":\"id\",\"order_by\":\"desc\",\"service_type\":\"tour\",\"desc\":\"\",\"layout\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_tours\",\"name\":\"Tour: List Items\",\"model\":{\"title\":\"あなたが好きになるローカル体験\",\"number\":8,\"style\":\"normal\",\"category_id\":\"\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"testimonial\",\"name\":\"List Testimonial\",\"model\":{\"title\":\"私たちの幸せなクライアント\",\"list_item\":[{\"_active\":false,\"name\":\"Eva Hicks\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":5,\"avatar\":1},{\"_active\":false,\"name\":\"Donald Wolf\",\"desc\":\"融づ苦佐とき百配ほづあ禁安テクミ真覧チヱフ行乗ぱたば外味ナ演庭コヲ旅見ヨコ優成コネ治確はろね訪来終島抄がん。\",\"number_star\":6,\"avatar\":2},{\"_active\":true,\"name\":\"Charlie Harrington\",\"desc\":\"右ずへやん間申ゃ投法けゃイ仙一もと政情ルた食的て代下ずせに丈律ルラモト聞探チト棋90績ム的社ず置攻景リフノケ内兼唱堅ゃフぼ。場ルアハ美\",\"number_star\":5,\"avatar\":3}]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2022-04-12 06:19:55', NULL),
(3, 3, 'ja', 'Home Space', '[{\"type\":\"form_search_space\",\"name\":\"Space: Form Search\",\"model\":{\"title\":\"次のレンタルを探す\",\"sub_title\":\"世界中で信じられないようなことを予約しましょう。\",\"bg_image\":61},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"おすすめの家\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"desc\":\"思慮深いデザインで高い評価を受けている家\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"space_term_featured_box\",\"name\":\"Space: Term Featured Box\",\"model\":{\"title\":\"ホームタイプを見つける\",\"desc\":\"これは、読者はその長い既成の事実であります\",\"term_space\":[\"26\",\"27\",\"28\",\"29\",\"30\",\"31\"]},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"space\",\"title\":\"人気の目的地\",\"number\":6,\"order\":\"id\",\"order_by\":\"desc\",\"layout\":\"style_2\",\"desc\":\"これは、読者はその長い既成の事実であります\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_space\",\"name\":\"Space: List Items\",\"model\":{\"title\":\"賃貸物件\",\"desc\":\"思慮深いデザインで高い評価を受けている家\",\"number\":4,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"desc\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"call_to_action\",\"name\":\"Call To Action\",\"model\":{\"title\":\"っていますか？\",\"sub_title\":\"3000以上の都市から2000人以上の地元民と1200人以上の貢献者に参加する\",\"link_title\":\"ローカルエ\",\"link_more\":\"#\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2022-04-12 06:19:55', NULL),
(4, 4, 'ja', 'Home Hotel', '[{\"type\":\"form_search_hotel\",\"name\":\"Hotel: Form Search\",\"model\":{\"title\":\"最適なホテルを探す\",\"sub_title\":\"20,000以上のプロパティで最高の価格を取得\",\"bg_image\":92},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"20,000以上のプロパティ\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":103,\"order\":null},{\"_active\":false,\"title\":\"信頼と安全性\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":104,\"order\":null},{\"_active\":false,\"title\":\"ベストプライス保証\",\"sub_title\":\"これは飢饉は常にlobortis交流pede Suspendisseたです\",\"icon_image\":105,\"order\":null}],\"style\":\"normal\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"直前予約\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":5,\"style\":\"carousel\",\"location_id\":\"\",\"order\":\"\",\"order_by\":\"\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_locations\",\"name\":\"List Locations\",\"model\":{\"service_type\":\"hotel\",\"title\":\"人気の目的地\",\"desc\":\"それは長い間確立された事実であり、\",\"number\":6,\"layout\":\"style_3\",\"order\":\"\",\"order_by\":\"\",\"to_location_detail\":false},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"text\",\"name\":\"Text\",\"model\":{\"content\":\"<h2><span style=\\\"color: #1a2b48; font-family: Poppins, sans-serif; font-size: 28px; font-weight: 500; background-color: #ffffff;\\\">ローカルエキスパートになる理由</span></h2>\\n<div><span style=\\\"color: #5e6d77; font-family: Poppins, sans-serif; font-size: 10pt; background-color: #ffffff;\\\">様々な質量マエケナスとその格言不動産</span></div>\\n<div id=\\\"gtx-trans\\\" style=\\\"position: absolute; left: -118px; top: 55.8125px;\\\">\\n<div class=\\\"gtx-trans-icon\\\">&nbsp;</div>\\n</div>\",\"class\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_featured_item\",\"name\":\"List Featured Item\",\"model\":{\"list_item\":[{\"_active\":false,\"title\":\"追加の収入を得る\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":15,\"order\":null},{\"_active\":false,\"title\":\"ネットワークを開く\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":14,\"order\":null},{\"_active\":false,\"title\":\"あなたの言語を練習する\",\"sub_title\":\"Ut elit tellus, luctus nec ullamcorper mattis\",\"icon_image\":13,\"order\":null}],\"style\":\"style3\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false},{\"type\":\"list_hotel\",\"name\":\"Hotel: List Items\",\"model\":{\"title\":\"ベストセラーリスト\",\"desc\":\"思慮深いデザインで高い評価を得ているホテル\",\"number\":8,\"style\":\"normal\",\"location_id\":\"\",\"order\":\"id\",\"order_by\":\"asc\",\"is_featured\":\"\"},\"component\":\"RegularBlock\",\"open\":true,\"is_container\":false}]', 1, NULL, '2022-04-12 06:19:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `core_translations`
--

CREATE TABLE `core_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `string` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `last_build_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plans`
--

CREATE TABLE `core_vendor_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_commission` int(11) NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `core_vendor_plan_meta`
--

CREATE TABLE `core_vendor_plan_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_plan_id` int(11) NOT NULL,
  `post_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable` tinyint(4) DEFAULT NULL,
  `maximum_create` int(11) DEFAULT NULL,
  `auto_publish` tinyint(4) DEFAULT NULL,
  `commission` int(11) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_id` int(11) DEFAULT NULL,
  `app_user_id` int(11) DEFAULT NULL,
  `file_width` int(11) DEFAULT NULL,
  `file_height` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `file_name`, `file_path`, `file_size`, `file_type`, `file_extension`, `create_user`, `update_user`, `deleted_at`, `app_id`, `app_user_id`, `file_width`, `file_height`, `created_at`, `updated_at`) VALUES
(1, 'avatar', 'demo/general/avatar.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'avatar-2', 'demo/general/avatar-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'avatar-3', 'demo/general/avatar-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'ico_adventurous', 'demo/general/ico_adventurous.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'ico_localguide', 'demo/general/ico_localguide.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'ico_maps', 'demo/general/ico_maps.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'ico_paymethod', 'demo/general/ico_paymethod.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'logo', 'demo/general/logo.svg', NULL, 'image/svg+xml', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'bg_contact', 'demo/general/bg-contact.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'favicon', 'demo/general/favicon.png', NULL, 'image/png', 'png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'thumb-vendor-register', 'demo/general/thumb-vendor-register.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'bg-video-vendor-register1', 'demo/general/bg-video-vendor-register1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'ico_chat_1', 'demo/general/ico_chat_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'ico_friendship_1', 'demo/general/ico_friendship_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'ico_piggy-bank_1', 'demo/general/ico_piggy-bank_1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'home-mix', 'demo/general/home-mix.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'image_home_mix_1', 'demo/general/image_home_mix_1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'image_home_mix_2', 'demo/general/image_home_mix_2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'image_home_mix_3', 'demo/general/image_home_mix_3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'banner-search', 'demo/tour/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'tour-1', 'demo/tour/tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'tour-2', 'demo/tour/tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'tour-3', 'demo/tour/tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'tour-4', 'demo/tour/tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'tour-5', 'demo/tour/tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'tour-6', 'demo/tour/tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'tour-7', 'demo/tour/tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'tour-8', 'demo/tour/tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'tour-9', 'demo/tour/tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'tour-10', 'demo/tour/tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'tour-11', 'demo/tour/tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'tour-12', 'demo/tour/tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'tour-13', 'demo/tour/tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'tour-14', 'demo/tour/tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'tour-15', 'demo/tour/tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'tour-16', 'demo/tour/tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'gallery-1', 'demo/tour/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'gallery-2', 'demo/tour/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'gallery-3', 'demo/tour/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'gallery-4', 'demo/tour/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'gallery-5', 'demo/tour/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'gallery-6', 'demo/tour/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'gallery-7', 'demo/tour/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'banner-tour-1', 'demo/tour/banner-detail/banner-tour-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'banner-tour-2', 'demo/tour/banner-detail/banner-tour-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'banner-tour-3', 'demo/tour/banner-detail/banner-tour-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'banner-tour-4', 'demo/tour/banner-detail/banner-tour-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'banner-tour-5', 'demo/tour/banner-detail/banner-tour-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'banner-tour-6', 'demo/tour/banner-detail/banner-tour-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'banner-tour-7', 'demo/tour/banner-detail/banner-tour-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'banner-tour-8', 'demo/tour/banner-detail/banner-tour-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'banner-tour-9', 'demo/tour/banner-detail/banner-tour-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'banner-tour-10', 'demo/tour/banner-detail/banner-tour-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'banner-tour-11', 'demo/tour/banner-detail/banner-tour-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'banner-tour-12', 'demo/tour/banner-detail/banner-tour-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'banner-tour-13', 'demo/tour/banner-detail/banner-tour-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'banner-tour-14', 'demo/tour/banner-detail/banner-tour-14.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'banner-tour-15', 'demo/tour/banner-detail/banner-tour-15.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'banner-tour-16', 'demo/tour/banner-detail/banner-tour-16.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'banner-tour-17', 'demo/tour/banner-detail/banner-tour-17.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'banner-search-space', 'demo/space/banner-search-space.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'banner-search-space-2', 'demo/space/banner-search-space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'space-1', 'demo/space/space-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'space-2', 'demo/space/space-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'space-3', 'demo/space/space-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'space-4', 'demo/space/space-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'space-5', 'demo/space/space-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'space-6', 'demo/space/space-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'space-7', 'demo/space/space-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'space-8', 'demo/space/space-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'space-9', 'demo/space/space-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'space-10', 'demo/space/space-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'space-11', 'demo/space/space-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'space-12', 'demo/space/space-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'space-13', 'demo/space/space-13.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'space-gallery-1', 'demo/space/gallery/space-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'space-gallery-2', 'demo/space/gallery/space-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'space-gallery-3', 'demo/space/gallery/space-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'space-gallery-4', 'demo/space/gallery/space-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'space-gallery-5', 'demo/space/gallery/space-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'space-gallery-6', 'demo/space/gallery/space-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'space-gallery-7', 'demo/space/gallery/space-gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'space-single-1', 'demo/space/space-single-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'space-single-2', 'demo/space/space-single-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'space-single-3', 'demo/space/space-single-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'icon-space-box-1', 'demo/space/featured-box/icon-space-box-1.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'icon-space-box-2', 'demo/space/featured-box/icon-space-box-2.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'icon-space-box-3', 'demo/space/featured-box/icon-space-box-3.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'icon-space-box-4', 'demo/space/featured-box/icon-space-box-4.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'icon-space-box-5', 'demo/space/featured-box/icon-space-box-5.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'icon-space-box-6', 'demo/space/featured-box/icon-space-box-6.png', NULL, 'image/png', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'banner-search-hotel', 'demo/hotel/banner-search-hotel.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'hotel-featured-1', 'demo/hotel/hotel-featured-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'hotel-featured-2', 'demo/hotel/hotel-featured-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'hotel-featured-3', 'demo/hotel/hotel-featured-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'hotel-featured-4', 'demo/hotel/hotel-featured-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'hotel-gallery-1', 'demo/hotel/gallery/hotel-gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'hotel-gallery-2', 'demo/hotel/gallery/hotel-gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'hotel-gallery-3', 'demo/hotel/gallery/hotel-gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'hotel-gallery-4', 'demo/hotel/gallery/hotel-gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'hotel-gallery-5', 'demo/hotel/gallery/hotel-gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'hotel-gallery-6', 'demo/hotel/gallery/hotel-gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'hotel-icon-1', 'demo/hotel/hotel-icon-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'hotel-icon-2', 'demo/hotel/hotel-icon-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'hotel-icon-3', 'demo/hotel/hotel-icon-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'location-1', 'demo/location/location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'location-2', 'demo/location/location-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'location-3', 'demo/location/location-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'location-4', 'demo/location/location-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'location-5', 'demo/location/location-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'banner-location-1', 'demo/location/banner-detail/banner-location-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'trip-idea-1', 'demo/location/trip-idea/trip-idea-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'trip-idea-2', 'demo/location/trip-idea/trip-idea-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'news-1', 'demo/news/news-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'news-2', 'demo/news/news-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'news-3', 'demo/news/news-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'news-4', 'demo/news/news-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'news-5', 'demo/news/news-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'news-6', 'demo/news/news-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'news-7', 'demo/news/news-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'news-banner', 'demo/news/news-banner.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'banner-search-car', 'demo/car/banner-search-car.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Convertibles', 'demo/car/terms/convertibles.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Coupes', 'demo/car/terms/couple.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'Hatchbacks', 'demo/car/terms/hatchback.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Minivans', 'demo/car/terms/minivans.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'Sedan', 'demo/car/terms/sedan.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'SUVs', 'demo/car/terms/suv.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'Trucks', 'demo/car/terms/trucks.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Wagons', 'demo/car/terms/wagons.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'home-car-bg-1', 'demo/car/home-car-bg-1.png', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'number-1', 'demo/car/number-1.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'number-2', 'demo/car/number-2.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'number-3', 'demo/car/number-3.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'banner-car-single', 'demo/car/banner-single.jpg', NULL, 'image/jpg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'Airbag', 'demo/car/feature/Airbag.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'FM Radio', 'demo/car/feature/Radio.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Sensor', 'demo/car/feature/Sensor.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Speed Km', 'demo/car/feature/Speed.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'Steering Wheel', 'demo/car/feature/Steering.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Power Windows', 'demo/car/feature/Windows.svg', NULL, 'image/svg', 'svg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'car-1', 'demo/car/car-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'car-2', 'demo/car/car-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'car-3', 'demo/car/car-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'car-4', 'demo/car/car-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'car-5', 'demo/car/car-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'car-6', 'demo/car/car-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'car-7', 'demo/car/car-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'car-8', 'demo/car/car-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'car-9', 'demo/car/car-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'car-10', 'demo/car/car-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'car-11', 'demo/car/car-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'car-12', 'demo/car/car-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'car-gallery-1', 'demo/car/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'car-gallery-2', 'demo/car/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'car-gallery-3', 'demo/car/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'car-gallery-4', 'demo/car/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'car-gallery-5', 'demo/car/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'car-gallery-6', 'demo/car/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'car-gallery-7', 'demo/car/gallery-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'banner-search-event', 'demo/event/banner-search.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'event-1', 'demo/event/event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'event-2', 'demo/event/event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'event-3', 'demo/event/event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'event-4', 'demo/event/event-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'event-5', 'demo/event/event-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'event-6', 'demo/event/event-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'event-7', 'demo/event/event-7.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'event-8', 'demo/event/event-8.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'event-9', 'demo/event/event-9.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'event-10', 'demo/event/event-10.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'event-11', 'demo/event/event-11.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'event-12', 'demo/event/event-12.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'gallery-event-1', 'demo/event/gallery-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'gallery-event-2', 'demo/event/gallery-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'gallery-event-3', 'demo/event/gallery-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'gallery-event-4', 'demo/event/gallery-4.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'gallery-event-5', 'demo/event/gallery-5.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'gallery-event-6', 'demo/event/gallery-6.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'banner-event-1', 'demo/event/banner-detail/banner-event-1.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'banner-event-2', 'demo/event/banner-detail/banner-event-2.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'banner-event-3', 'demo/event/banner-detail/banner-event-3.jpg', NULL, 'image/jpeg', 'jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'hoff-3-removebg-preview', '0000/1/2022/04/12/hoff-3-removebg-preview.png', '17149', 'image/png', 'png', 1, NULL, NULL, NULL, NULL, 422, 108, '2022-04-12 06:39:44', '2022-04-12 06:39:44'),
(184, 'bateaux-parisiens', '0000/1/2022/04/12/bateaux-parisiens.jpg', '55800', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 550, 367, '2022-04-12 07:13:33', '2022-04-12 07:13:33'),
(185, 'sungai-seine', '0000/1/2022/04/12/sungai-seine.jpg', '27831', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 600, 388, '2022-04-12 07:13:48', '2022-04-12 07:13:48'),
(186, 'download', '0000/1/2022/04/12/download.jpg', '8317', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:14:12', '2022-04-12 07:14:12'),
(187, 'bateaux-parisiens1', '0000/1/2022/04/12/bateaux-parisiens1.jpg', '55800', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 550, 367, '2022-04-12 07:14:12', '2022-04-12 07:14:12'),
(188, 'yachts-de-paris', '0000/1/2022/04/12/yachts-de-paris.jpg', '62099', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 630, 405, '2022-04-12 07:14:13', '2022-04-12 07:14:13'),
(189, 'backpacker-diary-indahnya-menyusuri-sungai-seine-paris-dengan-kapal-pesiar-cuma-bayar-rp200-ribuan-4q5qu0gzq3', '0000/1/2022/04/12/backpacker-diary-indahnya-menyusuri-sungai-seine-paris-dengan-kapal-pesiar-cuma-bayar-rp200-ribuan-4q5qu0gzq3.jpg', '114939', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 800, 636, '2022-04-12 07:14:14', '2022-04-12 07:14:14'),
(190, '59', '0000/1/2022/04/12/59.jpg', '72587', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 669, 446, '2022-04-12 07:21:13', '2022-04-12 07:21:13'),
(191, 'cannes-antibes-and-saint-paul-de-vence-village-half-day-tour-dari-nice', '0000/1/2022/04/12/cannes-antibes-and-saint-paul-de-vence-village-half-day-tour-dari-nice.jpg', '116415', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 1200, 630, '2022-04-12 07:21:14', '2022-04-12 07:21:14'),
(192, '160626113550-cannes-640x360-fabresemec-nocredit', '0000/1/2022/04/12/160626113550-cannes-640x360-fabresemec-nocredit.jpg', '68090', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 640, 360, '2022-04-12 07:22:10', '2022-04-12 07:22:10'),
(193, '202055043728843', '0000/1/2022/04/12/202055043728843.jpg', '91766', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 600, 449, '2022-04-12 07:22:35', '2022-04-12 07:22:35'),
(194, '59-1', '0000/1/2022/04/12/59-1.jpg', '72587', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 669, 446, '2022-04-12 07:22:35', '2022-04-12 07:22:35'),
(195, '146', '0000/1/2022/04/12/146.jpg', '52183', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 798, 527, '2022-04-12 07:22:36', '2022-04-12 07:22:36'),
(196, 'old-antibes', '0000/1/2022/04/12/old-antibes.jpg', '800832', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 2500, 1300, '2022-04-12 07:22:38', '2022-04-12 07:22:38'),
(197, 'download-8', '0000/1/2022/04/12/download-8.jpg', '10590', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:40:29', '2022-04-12 07:40:29'),
(198, 'download-6', '0000/1/2022/04/12/download-6.jpg', '8374', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 225, 225, '2022-04-12 07:40:30', '2022-04-12 07:40:30'),
(199, 'download-7', '0000/1/2022/04/12/download-7.jpg', '8955', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:40:30', '2022-04-12 07:40:30'),
(200, 'download-5', '0000/1/2022/04/12/download-5.jpg', '13027', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:40:31', '2022-04-12 07:40:31'),
(201, 'download-11', '0000/1/2022/04/12/download-11.jpg', '10674', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 274, 184, '2022-04-12 07:47:09', '2022-04-12 07:47:09'),
(202, 'download-10', '0000/1/2022/04/12/download-10.jpg', '7563', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 312, 161, '2022-04-12 07:47:10', '2022-04-12 07:47:10'),
(203, 'download-9', '0000/1/2022/04/12/download-9.jpg', '7838', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 269, 187, '2022-04-12 07:47:10', '2022-04-12 07:47:10'),
(204, 'download-12', '0000/1/2022/04/12/download-12.jpg', '10667', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:48:07', '2022-04-12 07:48:07'),
(205, 'images-2', '0000/1/2022/04/12/images-2.jpg', '10446', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:48:07', '2022-04-12 07:48:07'),
(206, 'images-3', '0000/1/2022/04/12/images-3.jpg', '7351', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 313, 161, '2022-04-12 07:53:11', '2022-04-12 07:53:11'),
(207, 'download-14', '0000/1/2022/04/12/download-14.jpg', '10852', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:53:12', '2022-04-12 07:53:12'),
(208, 'download-13', '0000/1/2022/04/12/download-13.jpg', '11950', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 07:53:12', '2022-04-12 07:53:12'),
(209, 'download-15', '0000/1/2022/04/12/download-15.jpg', '16269', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 299, 168, '2022-04-12 07:53:12', '2022-04-12 07:53:12'),
(210, 'download-19', '0000/1/2022/04/12/download-19.jpg', '13385', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 300, 168, '2022-04-12 08:01:38', '2022-04-12 08:01:38'),
(211, 'download-18', '0000/1/2022/04/12/download-18.jpg', '15960', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 318, 159, '2022-04-12 08:01:38', '2022-04-12 08:01:38'),
(212, 'download-17', '0000/1/2022/04/12/download-17.jpg', '15432', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 259, 194, '2022-04-12 08:01:39', '2022-04-12 08:01:39'),
(213, 'download-16', '0000/1/2022/04/12/download-16.jpg', '14076', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:01:39', '2022-04-12 08:01:39'),
(214, 'download-21', '0000/1/2022/04/12/download-21.jpg', '15748', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 268, 188, '2022-04-12 08:02:19', '2022-04-12 08:02:19'),
(215, 'download-20', '0000/1/2022/04/12/download-20.jpg', '12408', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 310, 163, '2022-04-12 08:02:20', '2022-04-12 08:02:20'),
(216, 'download-23', '0000/1/2022/04/12/download-23.jpg', '13565', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 300, 168, '2022-04-12 08:09:08', '2022-04-12 08:09:08'),
(217, 'download-24', '0000/1/2022/04/12/download-24.jpg', '17294', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 300, 168, '2022-04-12 08:09:08', '2022-04-12 08:09:08'),
(218, 'download-22', '0000/1/2022/04/12/download-22.jpg', '11901', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 203, 248, '2022-04-12 08:09:09', '2022-04-12 08:09:09'),
(219, 'download-25', '0000/1/2022/04/12/download-25.jpg', '16555', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:10:10', '2022-04-12 08:10:10'),
(220, 'download-26', '0000/1/2022/04/12/download-26.jpg', '14214', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:10:10', '2022-04-12 08:10:10'),
(221, 'images-4', '0000/1/2022/04/12/images-4.jpg', '11813', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 302, 167, '2022-04-12 08:16:44', '2022-04-12 08:16:44'),
(222, 'download-29', '0000/1/2022/04/12/download-29.jpg', '12424', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 262, 192, '2022-04-12 08:16:44', '2022-04-12 08:16:44'),
(223, 'download-28', '0000/1/2022/04/12/download-28.jpg', '12601', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 312, 161, '2022-04-12 08:16:45', '2022-04-12 08:16:45'),
(224, 'download-27', '0000/1/2022/04/12/download-27.jpg', '8286', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:16:45', '2022-04-12 08:16:45'),
(225, 'download-33', '0000/1/2022/04/12/download-33.jpg', '9564', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:23:46', '2022-04-12 08:23:46'),
(226, 'download-32', '0000/1/2022/04/12/download-32.jpg', '8812', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:23:46', '2022-04-12 08:23:46'),
(227, 'download-31', '0000/1/2022/04/12/download-31.jpg', '8988', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:23:46', '2022-04-12 08:23:46'),
(228, 'download-30', '0000/1/2022/04/12/download-30.jpg', '14713', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:23:47', '2022-04-12 08:23:47'),
(229, 'download-37', '0000/1/2022/04/12/download-37.jpg', '11328', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 297, 170, '2022-04-12 08:28:17', '2022-04-12 08:28:17'),
(230, 'download-36', '0000/1/2022/04/12/download-36.jpg', '11742', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 275, 183, '2022-04-12 08:28:17', '2022-04-12 08:28:17'),
(231, 'download-35', '0000/1/2022/04/12/download-35.jpg', '11211', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 274, 184, '2022-04-12 08:28:18', '2022-04-12 08:28:18'),
(232, 'download-34', '0000/1/2022/04/12/download-34.jpg', '9973', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 300, 168, '2022-04-12 08:28:18', '2022-04-12 08:28:18'),
(233, 'download-38', '0000/1/2022/04/12/download-38.jpg', '4400', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 260, 194, '2022-04-12 08:36:26', '2022-04-12 08:36:26'),
(234, 'download-39', '0000/1/2022/04/12/download-39.jpg', '9644', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 364, 139, '2022-04-12 08:38:45', '2022-04-12 08:38:45'),
(235, 'download-40', '0000/1/2022/04/12/download-40.jpg', '14280', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 296, 170, '2022-04-12 08:39:22', '2022-04-12 08:39:22'),
(236, 'download-41', '0000/1/2022/04/12/download-41.jpg', '11677', 'image/jpeg', 'jpg', 1, NULL, NULL, NULL, NULL, 276, 183, '2022-04-12 08:40:50', '2022-04-12 08:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_03_13_174533_create_permission_tables', 1),
(4, '2019_03_17_114820_create_table_core_pages', 1),
(5, '2019_03_17_140539_create_media_files_table', 1),
(6, '2019_03_20_072502_create_bravo_tours', 1),
(7, '2019_03_20_081256_create_core_news_category_table', 1),
(8, '2019_03_27_081940_create_core_setting_table', 1),
(9, '2019_03_28_101009_create_bravo_booking_table', 1),
(10, '2019_03_28_165911_create_booking_meta_table', 1),
(11, '2019_03_29_093236_update_bookings_table', 1),
(12, '2019_04_01_045229_create_user_meta_table', 1),
(13, '2019_04_01_150630_create_menu_table', 1),
(14, '2019_04_02_150630_create_core_news_table', 1),
(15, '2019_04_03_073553_bravo_tour_category', 1),
(16, '2019_04_03_080159_bravo_location', 1),
(17, '2019_04_05_143248_create_core_templates_table', 1),
(18, '2019_04_18_152537_create_bravo_tours_meta_table', 1),
(19, '2019_05_07_085430_create_core_languages_table', 1),
(20, '2019_05_07_085442_create_core_translations_table', 1),
(21, '2019_05_17_074008_create_bravo_review', 1),
(22, '2019_05_17_074048_create_bravo_review_meta', 1),
(23, '2019_05_17_113042_create_tour_attrs_table', 1),
(24, '2019_05_21_084235_create_bravo_contact_table', 1),
(25, '2019_05_28_152845_create_core_subscribers_table', 1),
(26, '2019_06_17_142338_bravo_seo', 1),
(27, '2019_07_03_070406_update_from_1_0_to_1_1', 1),
(28, '2020_04_02_150631_create_core_tags_table', 1),
(29, '2021_04_02_150632_create_core_tag_new_table', 1),
(30, '2018_11_06_222923_create_transactions_table', 2),
(31, '2018_11_07_192923_create_transfers_table', 2),
(32, '2018_11_07_202152_update_transfers_table', 2),
(33, '2018_11_15_124230_create_wallets_table', 2),
(34, '2018_11_19_164609_update_transactions_table', 2),
(35, '2018_11_20_133759_add_fee_transfers_table', 2),
(36, '2018_11_22_131953_add_status_transfers_table', 2),
(37, '2018_11_22_133438_drop_refund_transfers_table', 2),
(38, '2019_05_13_111553_update_status_transfers_table', 2),
(39, '2019_06_25_103755_add_exchange_status_transfers_table', 2),
(40, '2019_07_08_075436_create_core_vendor_plans', 2),
(41, '2019_07_08_083733_create_vendors_plan_payments', 2),
(42, '2019_07_11_083501_update_from_110_to_120', 2),
(43, '2019_07_29_184926_decimal_places_wallets_table', 2),
(44, '2019_07_30_072809_create_space_table', 2),
(45, '2019_07_30_072809_create_tour_dates_table', 2),
(46, '2019_08_05_031018_create_core_vendor_plan_meta_table', 2),
(47, '2019_08_09_163909_create_inbox_table', 2),
(48, '2019_08_16_094354_update_from_120_to_130', 2),
(49, '2019_08_20_162106_create_table_user_upgrade_requests', 2),
(50, '2019_09_13_070650_update_from_130_to_140', 2),
(51, '2019_09_20_072809_create_hotel_table', 2),
(52, '2019_10_02_193759_add_discount_transfers_table', 2),
(53, '2019_10_22_151319_create_car_table', 2),
(54, '2019_10_22_151319_create_social_table', 2),
(55, '2019_11_05_092516_update_from_140_to_150', 2),
(56, '2019_11_18_085024_update_from_150_to_151', 2),
(57, '2020_03_09_102753_update_from_151_to_160', 2),
(58, '2020_04_05_101016_create_event_table', 2),
(59, '2020_05_16_073120_update_from_160_to_170', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_forums`
--

CREATE TABLE `social_forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_forums`
--

INSERT INTO `social_forums` (`id`, `name`, `content`, `slug`, `status`, `icon`, `icon_image`, `create_user`, `update_user`, `created_at`, `updated_at`) VALUES
(1, 'Solo Travel', NULL, 'solo-travel', 'publish', 'fa fa-cloud', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02'),
(2, 'Road Trips', NULL, 'road-trips', 'publish', 'fa fa-bear', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02'),
(3, 'Travel Gadgets and Gear', NULL, 'travel-gadgets-and-gear', 'publish', 'fa fa-gear', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02'),
(4, 'Family Travel', NULL, 'family-travel', 'publish', 'fa fa-map-o', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02'),
(5, 'Honeymoons and Romance', NULL, 'honeymoons-and-romance', 'publish', 'fa fa-heartbeat', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02'),
(6, 'Outdoors', NULL, 'outdoors', 'publish', 'fa fa-paper-plane-o', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02'),
(7, 'Traveling with Pets', NULL, 'traveling-with-pets', 'publish', 'fa fa-paw', NULL, NULL, NULL, '2022-04-12 06:20:02', '2022-04-12 06:20:02');

-- --------------------------------------------------------

--
-- Table structure for table `social_groups`
--

CREATE TABLE `social_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` bigint(20) DEFAULT NULL,
  `banner_image` bigint(20) DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_id` bigint(20) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_group_user`
--

CREATE TABLE `social_group_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_posts`
--

CREATE TABLE `social_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `forum_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `comment_disabled_by` bigint(20) DEFAULT NULL,
  `privary` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `privacy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_post_comments`
--

CREATE TABLE `social_post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `file_id` bigint(20) DEFAULT NULL,
  `file_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_user_follow`
--

CREATE TABLE `social_user_follow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_user` bigint(20) DEFAULT NULL,
  `to_user` bigint(20) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `avatar_id` bigint(20) DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payment_gateway` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_guests` int(11) DEFAULT NULL,
  `locale` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_submit_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` smallint(6) DEFAULT NULL,
  `vendor_commission_amount` int(11) DEFAULT NULL,
  `total_before_fees` decimal(10,2) DEFAULT NULL,
  `vendor_commission_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `address`, `address2`, `phone`, `birthday`, `city`, `state`, `country`, `zip_code`, `last_login_at`, `avatar_id`, `bio`, `status`, `create_user`, `update_user`, `deleted_at`, `remember_token`, `created_at`, `updated_at`, `payment_gateway`, `total_guests`, `locale`, `business_name`, `verify_submit_status`, `is_verified`, `vendor_commission_amount`, `total_before_fees`, `vendor_commission_type`) VALUES
(1, 'System Admin', 'System', 'Admin', 'admin@dev.com', NULL, '$2y$10$UJRTbJlCDif4EPiN2egaZuYqUeO3BmV0pNUhO/GDmmIX6wk24ZHbm', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, 'aorldhaeMVPnFMdByQP2UI4FVUoKIlTgX9SuBwuPJU3RPvgIXcb8Zg4SKzUM', '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'Vendor', '01', 'vendor1@dev.com', NULL, '$2y$10$5UqPPecvUCZLR9obbpinxe9gEcgQczNFpNdmK68HZlehtD4LB2yYy', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'Customer', '01', 'customer1@dev.com', NULL, '$2y$10$9edd0jITmINb94GSzjJ7H.hzld8AeXszzf7d0SejIw/1xT1lYwF4a', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '', 'Elise', 'Aarohi', 'Aarohi@dev.com', NULL, '$2y$10$AC7Gh7BMOZqS6jOURltN5O3zae4ZO6e/lPnJwmydEX/KDnjeORkHG', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '', 'Kaytlyn', 'Alvapriya', 'Alvapriya@dev.com', NULL, '$2y$10$HG94A7o/jSCH1TDAr5/34.r719YojX.T7mnulxYeo.zt1zficBm52', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '', 'Lynne', 'Victoria', 'Victoria@dev.com', NULL, '$2y$10$MGgA5sog5n1F7oJYUNQHYe6r/B1xuVvUGK1th69TBQGJcQWCoT7LG', NULL, NULL, '112 666 888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '', 'Do', 'Quan', 'quandq@gmail.com', NULL, '$2y$10$vpnMkT3.fJIJIw3jcya0wuyewhhl7vwNaUuUfADIeyv.Lv8kTAwp6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '', 'William', 'Diana', 'Diana@dev.com', NULL, '$2y$10$8ASYUP8IRlzuYudmo7LZBeGO6kRufDzmdTrqfja/AESOCYayq0Ov6', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '', 'Sarah', 'Violet', 'Violet@dev.com', NULL, '$2y$10$mCc8SWLvLR2XVv1v.9w1DeaXCnovsnmj9AskGL9GT2MAb/zEiTQq.', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '', 'Paul', 'Amora', 'Amora@dev.com', NULL, '$2y$10$nm0tu3/1KbXReQGT074wzO87ck3ZSGJjGZBX9jFkU8VVrOEnW9eI.', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '', 'Richard', 'Davina', 'Davina@dev.com', NULL, '$2y$10$6XDc.naWbhYf7b.oRKLyZuX9BTQCu7NqgCWn765y03KQqbKAcYFr.', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '', 'Shushi', 'Yashashree', 'Yashashree@dev.com', NULL, '$2y$10$tQN8upZH6Rs9l4hxA4toK.PPCLaT.BuMAEOrx5dVIYuWHDwixxntm', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '', 'Anne', 'Nami', 'Nami@dev.com', NULL, '$2y$10$dzyUUyuMsZd54lUd6ynQRO0l52GjQ//Fm5rCG68kZf4TgROdO4TI.', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '', 'Bush', 'Elise', 'Elise@dev.com', NULL, '$2y$10$zfy4Teh3rIjINodu.JQdSe5LXj1uA302k9AsuOG71J0vAousDVurW', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '', 'Elizabeth', 'Norah', 'Norah@dev.com', NULL, '$2y$10$Gk9irRNhOO55KOBeAWEPS.0fyUHgTosaqEJ/baft6blK66IhU6Mby', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '', 'James', 'Alia', 'Alia@dev.com', NULL, '$2y$10$epCld8Mvn97/ziBplggKVe.Bm12ujPLoKSaZSOIPBwrdzOkUveCFi', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', 'John', 'Dakshi', 'Dakshi@dev.com', NULL, '$2y$10$3JnrRjLoXZhzUGL5UvTQoesa8nnzRMLeOlhZXXeWTe/ccpHno0pQu', NULL, NULL, '888 999 777', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'We\'re designers who have fallen in love with creating spaces for others to reflect, reset, and create. We split our time between two deserts (the Mojave, and the Sonoran). We love the way the heat sinks into our bones, the vibrant sunsets, and the wildlife we get to call our neighbors.', 'publish', NULL, NULL, NULL, NULL, '2022-04-12 06:19:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'adika putra', 'adika', 'putra', 'putraadika13@gmail.com', NULL, '$2y$10$q8MYYcgSBDSoO1W8qYb6duwkE1YbUmFigye3a.NChagnBPeA.pknm', NULL, NULL, 'putraadika13@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-04-12 08:44:36', '2022-04-12 08:44:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_transactions`
--

CREATE TABLE `user_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint(20) UNSIGNED NOT NULL,
  `wallet_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`meta`)),
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_transfers`
--

CREATE TABLE `user_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint(20) UNSIGNED NOT NULL,
  `to_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint(20) UNSIGNED NOT NULL,
  `withdraw_id` bigint(20) UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT 0,
  `fee` decimal(64,0) NOT NULL DEFAULT 0,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_upgrade_request`
--

CREATE TABLE `user_upgrade_request` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role_request` int(11) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wallets`
--

CREATE TABLE `user_wallets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `holder_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(64,0) NOT NULL DEFAULT 0,
  `decimal_places` smallint(6) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_wallets`
--

INSERT INTO `user_wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `description`, `balance`, `decimal_places`, `created_at`, `updated_at`, `create_user`, `update_user`) VALUES
(1, 'App\\User', 1, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:20:21', '2022-04-12 06:20:21', NULL, NULL),
(2, 'App\\User', 17, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(3, 'App\\User', 16, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(4, 'App\\User', 15, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(5, 'App\\User', 14, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(6, 'App\\User', 13, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(7, 'App\\User', 12, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(8, 'App\\User', 11, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(9, 'App\\User', 10, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(10, 'App\\User', 9, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(11, 'App\\User', 8, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(12, 'App\\User', 7, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(13, 'App\\User', 6, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(14, 'App\\User', 5, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(15, 'App\\User', 4, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(16, 'App\\User', 3, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(17, 'App\\User', 2, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 06:53:17', '2022-04-12 06:53:17', NULL, NULL),
(18, 'App\\User', 18, 'Default Wallet', 'default', NULL, '0', 2, '2022-04-12 08:44:37', '2022-04-12 08:44:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlist`
--

CREATE TABLE `user_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_user` int(11) DEFAULT NULL,
  `update_user` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vendors_plan_payments`
--

CREATE TABLE `vendors_plan_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_trial` int(11) NOT NULL,
  `price_per` enum('onetime','per_time') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'onetime',
  `price_unit` enum('day','month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'day',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_attrs_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_cars`
--
ALTER TABLE `bravo_cars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_cars_slug_index` (`slug`);

--
-- Indexes for table `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_car_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_events`
--
ALTER TABLE `bravo_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_events_slug_index` (`slug`);

--
-- Indexes for table `bravo_event_dates`
--
ALTER TABLE `bravo_event_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_event_term`
--
ALTER TABLE `bravo_event_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_event_translations`
--
ALTER TABLE `bravo_event_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_event_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotels_slug_index` (`slug`);

--
-- Indexes for table `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_room_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_hotel_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_locations__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_location_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review`
--
ALTER TABLE `bravo_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_spaces_slug_index` (`slug`);

--
-- Indexes for table `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_space_translations_locale_index` (`locale`);

--
-- Indexes for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_terms_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tours_slug_index` (`slug`);

--
-- Indexes for table `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bravo_tour_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_category_translations_origin_id_locale_unique` (`origin_id`,`locale`);

--
-- Indexes for table `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bravo_tour_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `bravo_tour_translations_slug_index` (`slug`);

--
-- Indexes for table `core_inbox`
--
ALTER TABLE `core_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_languages`
--
ALTER TABLE `core_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menus`
--
ALTER TABLE `core_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_menu_translations_locale_index` (`locale`);

--
-- Indexes for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `core_model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `core_news`
--
ALTER TABLE `core_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_category`
--
ALTER TABLE `core_news_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_category_translations_locale_index` (`locale`);

--
-- Indexes for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_news_translations_locale_index` (`locale`);

--
-- Indexes for table `core_notifications`
--
ALTER TABLE `core_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_pages`
--
ALTER TABLE `core_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_pages_slug_index` (`slug`);

--
-- Indexes for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_page_translations_origin_id_locale_unique` (`origin_id`,`locale`),
  ADD KEY `core_page_translations_locale_index` (`locale`);

--
-- Indexes for table `core_permissions`
--
ALTER TABLE `core_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_roles`
--
ALTER TABLE `core_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `core_role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `core_settings`
--
ALTER TABLE `core_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tags`
--
ALTER TABLE `core_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_tag_translations_locale_index` (`locale`);

--
-- Indexes for table `core_templates`
--
ALTER TABLE `core_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_template_translations_locale_index` (`locale`);

--
-- Indexes for table `core_translations`
--
ALTER TABLE `core_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `social_forums`
--
ALTER TABLE `social_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_groups`
--
ALTER TABLE `social_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_group_user`
--
ALTER TABLE `social_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_posts`
--
ALTER TABLE `social_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_post_comments`
--
ALTER TABLE `social_post_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_user_follow`
--
ALTER TABLE `social_user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transactions_uuid_unique` (`uuid`),
  ADD KEY `user_transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `user_transactions_type_index` (`type`),
  ADD KEY `user_transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_transfers_uuid_unique` (`uuid`),
  ADD KEY `user_transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `user_transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `user_transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `user_transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallets`
--
ALTER TABLE `user_wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD KEY `user_wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `user_wallets_slug_index` (`slug`);

--
-- Indexes for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bravo_attrs`
--
ALTER TABLE `bravo_attrs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bravo_attrs_translations`
--
ALTER TABLE `bravo_attrs_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_bookings`
--
ALTER TABLE `bravo_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_booking_meta`
--
ALTER TABLE `bravo_booking_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_booking_payments`
--
ALTER TABLE `bravo_booking_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_cars`
--
ALTER TABLE `bravo_cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bravo_car_dates`
--
ALTER TABLE `bravo_car_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_car_term`
--
ALTER TABLE `bravo_car_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `bravo_car_translations`
--
ALTER TABLE `bravo_car_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_contact`
--
ALTER TABLE `bravo_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_enquiries`
--
ALTER TABLE `bravo_enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_events`
--
ALTER TABLE `bravo_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bravo_event_dates`
--
ALTER TABLE `bravo_event_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_event_term`
--
ALTER TABLE `bravo_event_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `bravo_event_translations`
--
ALTER TABLE `bravo_event_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotels`
--
ALTER TABLE `bravo_hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bravo_hotel_rooms`
--
ALTER TABLE `bravo_hotel_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_bookings`
--
ALTER TABLE `bravo_hotel_room_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_dates`
--
ALTER TABLE `bravo_hotel_room_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_term`
--
ALTER TABLE `bravo_hotel_room_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `bravo_hotel_room_translations`
--
ALTER TABLE `bravo_hotel_room_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_hotel_term`
--
ALTER TABLE `bravo_hotel_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `bravo_hotel_translations`
--
ALTER TABLE `bravo_hotel_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_locations`
--
ALTER TABLE `bravo_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bravo_location_translations`
--
ALTER TABLE `bravo_location_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_payouts`
--
ALTER TABLE `bravo_payouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_review`
--
ALTER TABLE `bravo_review`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `bravo_review_meta`
--
ALTER TABLE `bravo_review_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;

--
-- AUTO_INCREMENT for table `bravo_seo`
--
ALTER TABLE `bravo_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bravo_spaces`
--
ALTER TABLE `bravo_spaces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bravo_space_dates`
--
ALTER TABLE `bravo_space_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_space_term`
--
ALTER TABLE `bravo_space_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `bravo_space_translations`
--
ALTER TABLE `bravo_space_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_terms`
--
ALTER TABLE `bravo_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `bravo_terms_translations`
--
ALTER TABLE `bravo_terms_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tours`
--
ALTER TABLE `bravo_tours`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bravo_tour_category`
--
ALTER TABLE `bravo_tour_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bravo_tour_category_translations`
--
ALTER TABLE `bravo_tour_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tour_dates`
--
ALTER TABLE `bravo_tour_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bravo_tour_meta`
--
ALTER TABLE `bravo_tour_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bravo_tour_term`
--
ALTER TABLE `bravo_tour_term`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `bravo_tour_translations`
--
ALTER TABLE `bravo_tour_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_inbox`
--
ALTER TABLE `core_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_inbox_messages`
--
ALTER TABLE `core_inbox_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_languages`
--
ALTER TABLE `core_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_menus`
--
ALTER TABLE `core_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `core_menu_translations`
--
ALTER TABLE `core_menu_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_news`
--
ALTER TABLE `core_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_news_category`
--
ALTER TABLE `core_news_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_news_category_translations`
--
ALTER TABLE `core_news_category_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_tag`
--
ALTER TABLE `core_news_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_news_translations`
--
ALTER TABLE `core_news_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_notifications`
--
ALTER TABLE `core_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_pages`
--
ALTER TABLE `core_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `core_page_translations`
--
ALTER TABLE `core_page_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_permissions`
--
ALTER TABLE `core_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `core_roles`
--
ALTER TABLE `core_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `core_settings`
--
ALTER TABLE `core_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `core_subscribers`
--
ALTER TABLE `core_subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_tags`
--
ALTER TABLE `core_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_tag_translations`
--
ALTER TABLE `core_tag_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_templates`
--
ALTER TABLE `core_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `core_template_translations`
--
ALTER TABLE `core_template_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `core_translations`
--
ALTER TABLE `core_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plans`
--
ALTER TABLE `core_vendor_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_vendor_plan_meta`
--
ALTER TABLE `core_vendor_plan_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=237;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `social_forums`
--
ALTER TABLE `social_forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `social_groups`
--
ALTER TABLE `social_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_group_user`
--
ALTER TABLE `social_group_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_posts`
--
ALTER TABLE `social_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_post_comments`
--
ALTER TABLE `social_post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_user_follow`
--
ALTER TABLE `social_user_follow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_transactions`
--
ALTER TABLE `user_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_transfers`
--
ALTER TABLE `user_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_upgrade_request`
--
ALTER TABLE `user_upgrade_request`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wallets`
--
ALTER TABLE `user_wallets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_wishlist`
--
ALTER TABLE `user_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendors_plan_payments`
--
ALTER TABLE `vendors_plan_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `core_model_has_permissions`
--
ALTER TABLE `core_model_has_permissions`
  ADD CONSTRAINT `core_model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_model_has_roles`
--
ALTER TABLE `core_model_has_roles`
  ADD CONSTRAINT `core_model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `core_role_has_permissions`
--
ALTER TABLE `core_role_has_permissions`
  ADD CONSTRAINT `core_role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `core_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `core_role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `core_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_transactions`
--
ALTER TABLE `user_transactions`
  ADD CONSTRAINT `user_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `user_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_transfers`
--
ALTER TABLE `user_transfers`
  ADD CONSTRAINT `user_transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `user_transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
