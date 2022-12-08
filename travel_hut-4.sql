-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2022 at 07:46 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel_hut`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(255) DEFAULT NULL,
  `city_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `city_country`) VALUES
(1, 'Chandigarh', 'India'),
(2, 'Delhi', 'India'),
(3, 'Mumbai', 'India'),
(4, 'Austin', 'USA'),
(5, 'Dallas', 'USA'),
(7, 'Houston', 'USA'),
(8, 'London', 'UK'),
(9, 'Istanbul', 'Turkey'),
(10, 'Doha', 'Qatar'),
(11, 'Sydney', 'Australia'),
(12, 'Melbourne', 'Australia'),
(13, 'Tokyo', 'Japan'),
(14, 'Bangkok', 'Thailand'),
(15, 'Seoul', 'South Korea'),
(16, 'Frankfurt', 'Germany'),
(17, 'Zurich', 'Switzerland'),
(18, 'Mississauga', 'Canada'),
(19, 'Dubai', 'United Arab Emirates'),
(20, 'Beijing', 'China');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `option` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `comments`, `option`, `user_id`) VALUES
(1, 'string', 'string', NULL),
(2, 'string', 'string', 6),
(3, 'jhbhwbckdbchbhvbhjbhw', 'Medicore', NULL),
(4, 'Not upjbkjwjkwdckjevef', 'Medicore', 7),
(5, 'hhvhgvhgbjhbkbhjb', 'Medicore', 8);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `id` int(11) NOT NULL,
  `airline_name` varchar(255) DEFAULT NULL,
  `flight_number` varchar(255) DEFAULT NULL,
  `flight_type` varchar(255) DEFAULT NULL,
  `max_capacity` int(11) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`id`, `airline_name`, `flight_number`, `flight_type`, `max_capacity`, `rating`, `logo`) VALUES
(1, 'Delta Airlines', 'B737-900', 'Domestic', 60, 4, 'https://news.delta.com/sites/default/files/2021-11/delta_c_r.png'),
(2, 'Delta Airlines', 'A319-100', 'International', 150, 4, 'https://news.delta.com/sites/default/files/2021-11/delta_c_r.png'),
(3, 'Delta Airlines', 'B777-300ER', 'Domestic', 80, 4, 'https://news.delta.com/sites/default/files/2021-11/delta_c_r.png'),
(4, 'British Airways', 'A350-1000', 'International', 190, 4, 'https://www.britishairways.com/cms/global/assets/images/site/brand/ba_masterbrand_positive.svg'),
(5, 'American Airlines', 'A350-900', 'International', 120, 4, 'https://www.aa.com/content/images/chrome/rebrand/aa-logo.png'),
(6, 'Turkish Airlines', '737-900', 'International', 150, 4, 'https://upload.wikimedia.org/wikipedia/en/6/62/Turkish_Airlines_logo_%28large%29.svg'),
(7, 'United Airlines', '777-300ER', 'International', 90, 5, 'https://1000logos.net/wp-content/uploads/2017/06/United-logo.jpg'),
(8, 'Japan Airlines', '787-9', 'International', 130, 5, 'https://www.jal.com/commonY16/img/logo_jal.png'),
(9, 'Thai Airways', 'T789-987', 'International', 140, 4, 'https://logos-download.com/wp-content/uploads/2016/03/Thai_Airways_logo.png'),
(10, 'Korean Air', 'A220-100', 'International', 120, 4, 'https://www.koreanair.com/etc.clientlibs/koreanair/clientlibs/clientlib-base/resources/images/layout/logo--koreanair-m.png'),
(11, 'Lufthansa', '747-400', 'International', 120, 4, 'https://www.lufthansa.com/etc/designs/dcep/logo-lh-og.jpg'),
(12, 'Swiss International Air Lines', '767-300', 'International', 150, 5, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Swiss_new.svg/2560px-Swiss_new.svg.png'),
(13, 'Air Canada', 'A330-300', 'International', 120, 4, 'https://1000logos.net/wp-content/uploads/2020/03/Air-Canada-Logo-1994.jpg'),
(14, 'Qatar Airways', 'A350-1100', 'International', 150, 5, 'https://logos-world.net/wp-content/uploads/2020/03/Qatar-Airways-Logo.png'),
(15, 'Air China', 'C750-900CH', 'International', 120, 4, 'https://www.airchina.us/CAPortal/16.7.1.3//portal/skin/img/CA-LOGO-chinese.png'),
(16, 'KLM Royal Dutch Airlines', '787-91', 'International', 160, 4, 'https://www.klm.com/assets/components/28.4.0/kl/logo/kl-logo-small-2022.svg'),
(17, 'Air France', '787-989', 'International', 180, 5, 'https://wwws.airfrance.us/assets/components/28.4.0/af/logo/af-logo.svg'),
(18, 'American Airlines', 'AA 1015', 'Domestic', 130, 4, 'https://www.aa.com/content/images/chrome/rebrand/aa-logo.png'),
(19, 'Spirit Airlines', 'NK 505', 'Domestic', 110, 4, 'https://content.spirit.com/a/1679'),
(20, 'Alaska Airlines', 'AS 6403', 'Domestic', 90, 4, 'https://unpkg.com/@alaskaairux/icons@4.10.1/dist/logos/logo-AS-tagline.svg'),
(21, 'Spirit Airlines', 'NK 540', 'Domestic', 130, 4, 'https://content.spirit.com/a/1679'),
(22, 'United Airlines', 'UA 1389', 'Domestic', 120, 5, 'https://1000logos.net/wp-content/uploads/2017/06/United-logo.jpg'),
(23, 'Frontier Airlines', 'Frontier Airlines 619', 'Domestic', 150, 4, 'https://logos-download.com/wp-content/uploads/2016/05/Frontier_Airlines_logo_logotype.png');

-- --------------------------------------------------------

--
-- Table structure for table `flight_booking`
--

CREATE TABLE `flight_booking` (
  `id` int(11) NOT NULL,
  `travellers` varchar(255) DEFAULT NULL,
  `flight_schedule_id` int(11) NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_booking`
--

INSERT INTO `flight_booking` (`id`, `travellers`, `flight_schedule_id`, `transactions_id`, `count`) VALUES
(5, NULL, 1, 4, 1),
(6, NULL, 10, 4, 1),
(7, NULL, 5, 5, 1),
(8, NULL, 1, 7, 9),
(9, NULL, 6, 8, 2),
(10, NULL, 1, 10, 1),
(11, NULL, 10, 10, 1),
(12, NULL, 5, 11, 1),
(13, NULL, 5, 12, 1),
(14, NULL, 5, 13, 1),
(15, NULL, 5, 14, 1),
(16, NULL, 5, 15, 1),
(17, NULL, 5, 16, 2),
(18, NULL, 5, 17, 1),
(19, NULL, 1, 18, 2),
(20, NULL, 10, 18, 1),
(21, NULL, 1, 19, 1),
(22, NULL, 1, 20, 1),
(23, NULL, 3, 21, 1),
(24, NULL, 5, 22, 1),
(25, NULL, 5, 23, 1),
(26, NULL, 5, 24, 1),
(27, NULL, 10, 26, 1),
(28, NULL, 5, 27, 1),
(29, NULL, 5, 28, 2),
(30, NULL, 1, 29, 1),
(31, NULL, 5, 30, 1),
(32, NULL, 5, 31, 1),
(33, NULL, 1, 32, 3),
(34, NULL, 18, 34, 1),
(35, NULL, 5, 35, 1),
(36, NULL, 12, 36, 1),
(37, NULL, 5, 37, 1);

-- --------------------------------------------------------

--
-- Table structure for table `flight_schedule`
--

CREATE TABLE `flight_schedule` (
  `id` int(11) NOT NULL,
  `end_date_time` date DEFAULT NULL,
  `price` double DEFAULT NULL,
  `start_date_time` date DEFAULT NULL,
  `destination_city_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `source_city_id` int(11) NOT NULL,
  `availability` int(11) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `mileage` double DEFAULT NULL,
  `flight_reference` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flight_schedule`
--

INSERT INTO `flight_schedule` (`id`, `end_date_time`, `price`, `start_date_time`, `destination_city_id`, `flight_id`, `source_city_id`, `availability`, `end_time`, `start_time`, `mileage`, `flight_reference`) VALUES
(1, '2022-12-19', 200, '2022-12-19', 7, 1, 5, 100, '20:26:33', '06:27:00', 1000, 'rrhbfchbcj'),
(2, '2022-12-20', 200, '2022-12-20', 7, 1, 5, 100, '02:36:21', '23:36:21', 500, 'hbhbcwj'),
(3, '2022-12-21', 250, '2022-12-21', 7, 1, 5, 100, '08:39:14', '11:39:14', 200, 'hcbwcnj'),
(4, '2022-12-22', 250, '2022-12-22', 7, 1, 5, 100, '09:39:14', '06:27:00', 400, ' cwencdwc'),
(5, '2022-12-20', 1000, '2022-12-19', 3, 2, 4, 100, '06:36:54', '09:36:54', 569, 'xnuecbdiwc'),
(6, '2022-12-22', 1250, '2022-12-21', 3, 2, 4, 100, '16:39:14', '23:39:14', 675, 'jnbcbccwdc'),
(7, '2022-12-24', 1250, '2022-12-23', 3, 2, 4, 100, '06:39:14', '10:39:14', 663, 'njkncdwbvwv'),
(8, '2022-12-20', 300, '2022-12-19', 5, 3, 7, 100, '20:27:15', '03:27:01', 11, 'jdbbvvvvve'),
(9, '2022-12-22', 350, '2022-12-21', 5, 3, 7, 100, '04:39:14', '13:39:14', 333, 'bhbvhvveve'),
(10, '2022-12-24', 325, '2022-12-23', 5, 3, 7, 100, '05:39:14', '19:39:14', 433, 'bhvbhvbv'),
(11, '2022-12-19', 300, '2022-12-19', 7, 3, 5, 100, '16:26:33', '04:27:00', 1000, 'gvcfhvjhhgvg'),
(12, '2022-12-19', 220, '2022-12-19', 7, 18, 5, 100, '23:26:33', '10:00:00', 1000, 'cfgcfgghjvjh'),
(13, '2022-12-19', 350, '2022-12-19', 7, 19, 5, 100, '18:45:33', '09:12:00', 1000, 'rvbthbhbhtvv'),
(14, '2022-12-19', 430, '2022-12-19', 7, 20, 5, 100, '23:58:33', '13:27:00', 1000, 'vtbhbbyntthr'),
(15, '2022-12-19', 190, '2022-12-19', 7, 21, 5, 100, '18:26:33', '08:27:00', 1000, 'bvhgjhhvjhjh'),
(16, '2022-12-19', 280, '2022-12-19', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, 'tyfryguguiii'),
(17, '2022-12-19', 310, '2022-12-19', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, 'vgfytyyuguuu'),
(18, '2022-12-20', 300, '2022-12-20', 7, 3, 5, 100, '16:26:33', '04:27:00', 1000, 'bhjgvfytuuuu'),
(19, '2022-12-20', 220, '2022-12-20', 7, 18, 5, 100, '23:26:33', '10:00:00', 1000, 'bhjytfrtdeer'),
(20, '2022-12-20', 350, '2022-12-20', 7, 19, 5, 100, '18:45:33', '09:12:00', 1000, '4hbfhtbtvhjt'),
(21, '2022-12-20', 430, '2022-12-20', 7, 20, 5, 100, '23:58:33', '13:27:00', 1000, 'bhbtvjhheeee'),
(22, '2022-12-20', 190, '2022-12-20', 7, 21, 5, 100, '18:26:33', '08:27:00', 1000, 'bhbbebswwrit'),
(23, '2022-12-20', 280, '2022-12-20', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, 'bvtfghjhbhbj'),
(24, '2022-12-20', 310, '2022-12-20', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, 'e25vt8hlb36o'),
(25, '2022-12-21', 300, '2022-12-21', 7, 3, 5, 100, '16:26:33', '04:27:00', 1000, 'wely1lilm41n'),
(26, '2022-12-21', 220, '2022-12-21', 7, 18, 5, 100, '23:26:33', '10:00:00', 1000, '5ansnv7ueknu'),
(27, '2022-12-21', 350, '2022-12-21', 7, 19, 5, 100, '18:45:33', '09:12:00', 1000, '7ndkehj58zcx'),
(28, '2022-12-21', 430, '2022-12-21', 7, 20, 5, 100, '23:58:33', '13:27:00', 1000, 'ab5keeixwewa'),
(29, '2022-12-21', 190, '2022-12-21', 7, 21, 5, 100, '18:26:33', '08:27:00', 1000, '2ljg9htm5ep7'),
(30, '2022-12-21', 280, '2022-12-21', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, 'so58fvz5hy9l'),
(31, '2022-12-21', 310, '2022-12-21', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, '3qwhcvs90r7o'),
(32, '2022-12-22', 300, '2022-12-21', 7, 3, 5, 100, '16:26:33', '04:27:00', 1000, 'szqmgtz6f6ua'),
(33, '2022-12-22', 220, '2022-12-21', 7, 18, 5, 100, '23:26:33', '10:00:00', 1000, '12t10h2m389n'),
(34, '2022-12-22', 350, '2022-12-21', 7, 19, 5, 100, '18:45:33', '09:12:00', 1000, 'kmy0ak20jwwi'),
(35, '2022-12-22', 430, '2022-12-21', 7, 20, 5, 100, '23:58:33', '13:27:00', 1000, 'c1iw7atceba7'),
(36, '2022-12-22', 190, '2022-12-21', 7, 21, 5, 100, '18:26:33', '08:27:00', 1000, 'ee45vzro5wvv'),
(37, '2022-12-22', 280, '2022-12-21', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, '3qespb7a7f17'),
(38, '2022-12-22', 310, '2022-12-21', 7, 22, 5, 100, '19:26:33', '07:27:00', 1000, 'f668251t9awu'),
(39, '2022-12-24', 300, '2022-12-23', 5, 4, 7, 100, '05:39:14', '19:39:14', 433, 'sw6z0etp4xrf'),
(40, '2022-12-24', 310, '2022-12-23', 5, 5, 7, 100, '05:39:14', '19:39:14', 433, '7jpcjuzrqq3f'),
(41, '2022-12-24', 340, '2022-12-23', 5, 6, 7, 100, '05:39:14', '19:39:14', 433, '9k7mw12j9ami'),
(42, '2022-12-24', 335, '2022-12-23', 5, 7, 7, 100, '05:39:14', '19:39:14', 433, '32p8s0w8lrvt'),
(43, '2022-12-24', 355, '2022-12-23', 5, 8, 7, 100, '05:39:14', '19:39:14', 433, 'el1nojqx6s54'),
(44, '2022-12-24', 367, '2022-12-23', 5, 9, 7, 100, '05:39:14', '19:39:14', 433, '9tv2r3o7nthp'),
(45, '2022-12-24', 390, '2022-12-23', 5, 10, 7, 100, '05:39:14', '19:39:14', 433, 'bwhtked8kt2a'),
(46, '2022-12-24', 500, '2022-12-23', 5, 11, 7, 100, '05:39:14', '19:39:14', 433, 'qz07b24xkwai');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `franchise_name` varchar(255) DEFAULT NULL,
  `hotel_address` varchar(255) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `hotel_type` varchar(255) DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `franchise_name`, `hotel_address`, `hotel_name`, `hotel_type`, `rating`, `city_id`) VALUES
(1, 'Days Inn', '5 Buckingham St. Dallas, TX 44004', 'Serene Basin Hotel', '3 star', 4, 5),
(2, 'Hyatt Hotels & Resorts', '83 Sutor Court Austin, TX 06360', 'Quiet Tower Hotel', '5 star', 3, 4),
(3, 'Motel 6', '224 Old Fairway St. Mount Prospect, Houston, TX 44004', 'Spectrum Hotel', '2 star', 1, 7),
(4, 'Wyndham Dallas Love Field', '8650 N Stemmons Fwy, I-35E Exit 434A Empire Central, Dallas, TX, 75247', 'Wingate', '3.5 star', 4.123, 5),
(5, 'Palace In', '5321 Red Black Road', 'Palace In', '3 star', 3, 7),
(6, 'IHG', '810 Red River Street, Austin, TX, 78701', 'Hotel Indigo', '3 star', 4, 4),
(7, 'IHG', '805 Neches Street, Austin, TX, 78701', 'Holiday Inn', '5 star', 4, 4),
(8, 'IHG', '2712 Southwest Freeway, Houston, Texas, 77098', 'Crowne Plaza', '3 star', 4, 7),
(9, 'IHG', '2351 West Loop South, Houston, Texas, 77027', 'StayBridge Suites', '3 star', 4, 7),
(10, 'IHG', '2551 Elm Street, Dallas, Texas, 75226', 'Kimpton Pittman Hotel', '3 star', 4, 5),
(11, 'IHG', '1015 Elm Street, Dallas, Texas, 75202', 'Crowne Plaza Dallas Downtown', '4 star', 5, 5),
(12, 'Choice Hotels', '700 Delmar Ave, Austin, TX, 78752', 'Comfort Inn & Suites', '3 star', 4, 4),
(13, 'Choice Hotels', '1701 E. St. Elmo Rd., Austin, TX, 78744', 'Quality Suites', '3 star', 4, 4),
(14, 'Choice Hotels', '7800 E. Ben White Blvd., Austin, TX, 78741', 'Cambria Hotel Austin Airport', '3 star', 4, 4),
(15, 'Choice Hotels', '3134 Old Spanish Trail, Houston, TX, 77054', 'MainStay Suites', '3 star', 4, 7),
(16, 'Choice Hotels', '5451 Northwest Central Drive, Houston, TX, 77092', 'Sleep Inn & Suites', '3 star', 4, 7),
(17, 'Choice Hotels', '4760 Sherwood Ln., Houston, TX, 77092', 'Rodeway Inn & Suites', '3 star', 4, 7),
(18, 'Choice Hotels', '4275 DFW Turnpike/IH-30, Dallas, TX, 75211', 'Comfort Suites', '3 star', 3, 5),
(19, 'Choice Hotels', '1165 Empire Central Place, Dallas, TX, 75247', 'Sleep Inn', '3 star', 4, 5),
(20, 'Choice Hotels', '2275 Valley View Lane, Dallas, TX, 75234', 'Econo Lodge', '3 star', 4, 5),
(21, 'IHG', 'Asset Area 12 Hospitality District Aero City Delhi International Airport, New Delhi, 110037 India', 'Holiday Inn', '5 star', 4, 2),
(22, 'IHG', 'PLOT NO. 1, COMMUNITY CENTRE PHASE - 1, OKHLA, NEW DELHI, 110020, India', 'Crowne Plaza', '3 star', 4, 2),
(23, 'IHG', 'Level 5, Terminal 3 Indira Gandhi International Airport, New Delhi, 110037, India', 'Holiday Inn Express', '3 star', 4, 2),
(24, 'IHG', 'City Centre, Sector 3 Haryana, Panchkula, 134109, India', 'Holiday Inn', '3 star', 4, 1),
(25, 'IHG', 'Raksha Business Centre Ambala Chandigarh Highway Punjab, Zirakpur, 140603, India', 'Holiday Inn', '3 star', 4, 1),
(26, 'IHG', '135 Marine Drive, Mumbai, 400020, India', 'InterContinental', '3 star', 4, 3),
(27, 'IHG', 'Sakinaka Junction Andheri Kurla Road, Andheri East, Mumbai, 400072, India', 'Holiday Inn', '3 star', 4, 3),
(28, 'OYO', 'Near Asalpha Metro Station, Behind Nityanand Hotel, Andheri East, Mumbai', ' Hotel Alfa Grand', '3 star', 3, 3),
(29, 'OYO', 'Casa Roomz Royal Palms, Aarey Colony, Goregaon East, Mumbai', 'Town House', '3 star', 4, 3),
(30, 'OYO', 'Pap-a 88-97, T T C Industrial Area, Khairane M I D C, Koparkhairane, Navi Mumbai, Mumbai', 'Hotel Konar Inn', '3 star', 4, 3),
(31, 'OYO', 'Karoran Road, Near Century Public School, Naya Gaon, Chandigarh', 'Hotel City View', '3 star', 4, 1),
(32, 'OYO', 'Seo No 12345, Patiala Road, Zirakpur, Chandigarh', 'Hotel Black Diamond', '5 star', 4, 1),
(33, 'OYO', 'Nada road, Near govt school, Nayagaon, SAS NagarNada road, near govt school, Nayagaon, SAS Nagar, 160103, Chandigarh,', 'Majestic The Amayra', '5 star', 4, 1),
(34, 'OYO', 'C1 main road gazipur opposite shyam dairy, Delhi', 'Discovery Stay', '3 star', 4, 2),
(35, 'OYO', 'Mange ram park extension rohini Sector 23, Delhi', 'Sk Residency Rohini', '3 star', 4, 2),
(36, 'OYO', 'near Dwarka Sector 9 Metro station new Delhi, Delhi', 'Hotel Blue Orchid', '3 star', 4, 2),
(37, 'HAMPTON INN BY HILTON', '200 San Jacinto Blvd, Austin TX - 78701', 'HAMPTON INN & SUITES AUSTIN - DOWNTOWN / CONVENTION CENTER', '5 star', 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_booking`
--

CREATE TABLE `hotel_booking` (
  `id` int(11) NOT NULL,
  `end_date_time` date DEFAULT NULL,
  `start_date_time` date DEFAULT NULL,
  `travellers` varchar(255) DEFAULT NULL,
  `hotel_room_id` int(11) NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_booking`
--

INSERT INTO `hotel_booking` (`id`, `end_date_time`, `start_date_time`, `travellers`, `hotel_room_id`, `transactions_id`, `count`) VALUES
(1, '2022-12-20', '2022-12-14', NULL, 15, 6, 3),
(2, '2022-12-22', '2022-12-13', NULL, 13, 9, 2),
(3, '2022-12-23', '2022-12-19', NULL, 14, 10, 1),
(4, '2022-12-20', '2022-12-19', NULL, 6, 11, 1),
(5, '2022-12-23', '2022-12-19', NULL, 8, 13, 1),
(6, '2022-12-23', '2022-12-19', NULL, 8, 14, 1),
(7, '2022-12-23', '2022-12-19', NULL, 5, 15, 1),
(8, '2022-12-23', '2022-12-19', NULL, 8, 16, 2),
(9, '2022-12-16', '2022-12-13', NULL, 15, 25, 2),
(10, '2022-12-26', '2022-12-22', NULL, 13, 26, 1),
(11, '2022-12-16', '2022-12-14', NULL, 3, 33, 1),
(12, '2022-12-21', '2022-12-18', NULL, 48, 36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_room`
--

CREATE TABLE `hotel_room` (
  `id` int(11) NOT NULL,
  `amenities` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `room_size` int(11) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `hotel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel_room`
--

INSERT INTO `hotel_room` (`id`, `amenities`, `price`, `room_size`, `room_type`, `hotel_id`) VALUES
(1, 'Gym, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 1),
(3, 'Gym, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 1),
(5, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 2),
(6, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 2),
(8, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 2),
(9, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 3),
(10, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 3),
(12, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 3),
(13, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 4),
(14, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 4),
(15, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 4),
(16, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 5),
(17, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 5),
(18, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 5),
(19, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 6),
(20, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 6),
(21, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 6),
(22, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 7),
(23, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 7),
(24, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 7),
(25, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 8),
(26, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 8),
(27, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 8),
(28, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 9),
(29, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 9),
(30, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 9),
(31, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 10),
(32, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 10),
(33, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 10),
(34, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 11),
(35, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 11),
(36, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 11),
(37, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 12),
(38, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 12),
(39, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 12),
(40, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 13),
(41, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 13),
(42, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 13),
(43, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 14),
(44, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 14),
(45, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 14),
(46, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 15),
(47, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 15),
(48, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 15),
(49, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 16),
(50, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 16),
(51, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 16),
(52, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 17),
(53, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 17),
(54, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 17),
(55, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 18),
(56, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 18),
(57, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 18),
(58, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 19),
(59, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 19),
(60, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 19),
(61, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 20),
(62, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 20),
(63, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 20),
(64, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 21),
(65, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 21),
(66, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 21),
(67, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 22),
(68, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 22),
(69, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 22),
(70, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 23),
(71, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 23),
(72, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 23),
(73, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 24),
(74, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 24),
(75, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 24),
(76, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 25),
(77, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 25),
(78, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 25),
(79, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 26),
(80, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 26),
(81, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 26),
(82, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 27),
(83, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 27),
(84, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 27),
(85, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 28),
(86, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 28),
(87, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 28),
(88, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 29),
(89, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 29),
(90, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 29),
(91, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 30),
(92, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 30),
(93, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 30),
(94, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 31),
(95, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 31),
(96, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 31),
(97, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 32),
(98, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 32),
(99, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 32),
(100, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 33),
(101, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 33),
(102, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 33),
(103, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 34),
(104, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 34),
(105, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 34),
(106, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 35),
(107, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 35),
(108, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 35),
(109, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 250, 250, 'Queen', 36),
(110, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Twin', 36),
(111, 'Swiming pool, Free parking, AC, TV, Geyser, CCTV cameras, Free Wifi, Personal care, Coffee Kits', 300, 250, 'King', 36),
(112, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 200, 250, 'Queen', 37),
(113, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 150, 250, 'Twin', 37),
(114, 'Swiming pool, Free parking, Free Wifi, Personal care, Coffee Kits', 250, 250, 'King', 37);

-- --------------------------------------------------------

--
-- Table structure for table `payment_info`
--

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL,
  `card_expiry_date` datetime DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `is_default` bit(1) DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `payment_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_info`
--

INSERT INTO `payment_info` (`id`, `card_expiry_date`, `card_number`, `is_default`, `name_on_card`, `security_code`, `user_id`, `payment_name`) VALUES
(1, '2022-12-19 20:30:00', '4532588993683070', b'1', 'Marck Williams', '572', 1, NULL),
(2, '2022-12-19 20:30:00', '4532558992683070', b'1', 'Britney Seaman', '599', 2, NULL),
(3, '2022-12-19 20:30:00', '4535448993683070', b'1', 'Andrew Clark', '973', 3, NULL),
(5, '2022-11-17 18:00:00', '2342564667654', b'1', 'sasank', '234', 5, NULL),
(6, '2025-10-01 19:00:00', '123453323232322423', b'1', 'Niklaus Mikaelson', '111', 6, 'Hope'),
(7, '2025-12-19 01:16:25', '6846823827824642', b'0', 'Elijah Mikaelson', '123', 6, 'Elijah'),
(8, '2022-12-28 18:00:00', '454645425465646', b'0', 'hnhbgd gbgbth', '456', 6, 'vrvrgvgtbth'),
(9, '2026-11-18 18:00:00', '1234567812345678', b'1', 'Raj Kumar Madala', '123', 7, 'Raju'),
(10, '2027-11-17 18:00:00', '768767576678678667', b'0', 'Raj Kumar Madala', '457', 7, 'King '),
(11, '2022-12-21 18:00:00', '123564557675455', b'1', 'Ssank Reddy', '134', 8, 'sasank');

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `id` int(11) NOT NULL,
  `end_date_time` date DEFAULT NULL,
  `promo_code_max_value` double DEFAULT NULL,
  `promo_code_name` varchar(255) DEFAULT NULL,
  `promo_code_title` varchar(255) DEFAULT NULL,
  `promo_code_type` varchar(255) DEFAULT NULL,
  `promo_code_usage` varchar(255) DEFAULT NULL,
  `promo_code_value` double DEFAULT NULL,
  `start_date_time` date DEFAULT NULL,
  `terms_and_conditions` varchar(255) DEFAULT NULL,
  `destination_city_id` int(11) NOT NULL,
  `source_city_id` int(11) NOT NULL,
  `mileage` double NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promo_code`
--

INSERT INTO `promo_code` (`id`, `end_date_time`, `promo_code_max_value`, `promo_code_name`, `promo_code_title`, `promo_code_type`, `promo_code_usage`, `promo_code_value`, `start_date_time`, `terms_and_conditions`, `destination_city_id`, `source_city_id`, `mileage`, `price`) VALUES
(1, '2022-12-19', 100, 'GCH-435', 'SAVE 100', 'voucher', 'flight', 100, '2022-11-01', 'terms and condition: ', 7, 5, 5000, 50),
(2, '2022-12-31', 150, 'RCH-A-150', 'SAVE 150', 'voucher', 'flight', 150, '2022-11-01', 'terms and condition: ', 3, 4, 5000, 75),
(3, '2022-12-31', 200, 'HTL-200', 'SAVE 200', 'voucher', 'Hotel', 200, '2022-11-01', 'terms and condition: ', 5, 5, 5000, 100),
(4, '2023-01-31', 220, 'ARC-220', 'SAVE 220', 'voucher', 'Hotel', 220, '2022-12-01', 'User use only one time in a week', 1, 10, 7000, 60),
(5, '2023-01-15', 300, 'ARC-300', 'Flat 300', 'voucher', 'Hotel', 300, '2022-12-01', 'Minimum order value $1000', 1, 10, 10000, 70),
(6, '2023-01-31', 300, 'ARC-300', 'Save flat 300 on flights', 'voucher', 'Flight', 300, '2022-12-01', 'Minimum order value $1000', 1, 10, 10000, 100),
(7, '2022-12-31', 125, 'ARC-125', 'Save upto 125 on flights', 'voucher', 'Flight', 125, '2022-12-01', 'Minimum order value $1000', 1, 10, 7000, 40),
(8, '2023-01-10', 250, 'CHRISTMAS-250', 'Save 250 on flight', 'voucher', 'Flight', 250, '2023-12-01', 'Minimum order value $600', 5, 15, 5000, 50),
(9, '2023-01-15', 100, 'CHRISTMAS-100', 'Flat 100 off on flight', 'voucher', 'Flight', 100, '2023-12-01', 'New user First booking', 5, 15, 0, 30),
(10, '2023-01-15', 300, 'CHRISTMAS-300', 'Save 300 on hotel', 'voucher', 'Hotel', 300, '2023-12-01', 'Minimum Order value is $700', 5, 15, 6000, 100),
(11, '2023-01-10', 175, 'CHRISTMAS-175', 'Flat 175 off on hotel', 'voucher', 'Hotel', 175, '2023-12-01', 'New user first booking', 5, 15, 0, 60),
(12, '2023-01-31', 200, 'New Year-200', 'Flat 200 off on Hotel', 'voucher', 'Hotel', 200, '2022-12-01', 'Minimum Order value $600', 10, 20, 5000, 60),
(13, '2023-01-31', 100, 'New Year-100', 'Save 100 off on Hotel', 'voucher', 'Hotel', 100, '2022-12-01', 'Minimum Order Value $500', 10, 20, 5000, 50),
(14, '2023-01-31', 150, 'New Year-150', 'Save 150 off on Flight', 'voucher', 'Flight', 150, '2022-12-01', 'Minimum Order value $500', 10, 20, 5000, 50),
(15, '2023-01-31', 200, 'New Year-200', 'Flat 200 off on Flight', 'voucher', 'Flight', 200, '2023-01-01', 'Miniomum Order value $500', 10, 20, 5000, 60),
(16, '2023-03-31', 300, 'Summer Offer-300', 'Save 300 off on Flight', 'voucher', 'Flight', 300, '2023-01-01', 'Minimum Order value $600', 15, 5, 7000, 40),
(17, '2023-03-31', 350, 'Summer Offer-350', 'Flat 350 Off on Flight', 'voucher', 'Flight', 350, '2023-01-01', 'Minimum Order value $500', 15, 5, 6000, 50),
(18, '2023-03-31', 200, 'Summer Offer-200', 'Save 200 off on Hotel', 'voucher', 'Hotel', 200, '2023-01-01', 'Minimum order value $550', 15, 5, 5000, 40),
(19, '2023-03-31', 400, 'Summer Offer-400', 'flat 400 off on Hotel', 'vouhcer', 'Hotel', 400, '2023-01-01', 'Minimum order value $600', 15, 5, 5000, 50);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `tax` double NOT NULL,
  `total_cost` double NOT NULL,
  `payment_info_id` int(11) NOT NULL,
  `promo_code_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `total_cost_paid` double NOT NULL,
  `transaction_date` datetime DEFAULT NULL,
  `discount_price` double NOT NULL,
  `redeemed_price` double NOT NULL,
  `offer_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tax`, `total_cost`, `payment_info_id`, `promo_code_id`, `user_id`, `total_cost_paid`, `transaction_date`, `discount_price`, `redeemed_price`, `offer_price`) VALUES
(4, 43.3125, 525, 5, NULL, 5, 568.3125, '2022-11-30 23:11:55', 0, 0, 0),
(5, 82.5, 1000, 5, NULL, 5, 1082.5, '2022-11-30 23:48:43', 0, 0, 0),
(6, 371.25, 4500, 5, NULL, 5, 4871.25, '2022-12-02 10:05:58', 0, 0, 0),
(7, 148.5, 1800, 5, NULL, 5, 1948.5, '2022-12-02 10:47:31', 0, 0, 0),
(8, 206.25, 2500, 6, NULL, 6, 2706.25, '2022-12-02 12:32:46', 0, 0, 0),
(9, 297, 3600, 6, NULL, 6, 3897, '2022-12-02 15:32:24', 0, 0, 0),
(10, 92.8125, 1125, 6, NULL, 6, 1217.8125, '2022-12-03 17:51:17', 0, 0, 0),
(11, 80.64375, 1150, 6, NULL, 6, 1230.64375, '2022-12-03 19:19:29', 0, 0, 0),
(12, 82.5, 1000, 6, NULL, 6, 1082.5, '2022-12-03 19:25:22', 0, 0, 0),
(13, 240, 2000, 6, NULL, 6, 2240, '2022-12-03 20:19:47', 0, 0, 0),
(14, 120, 2000, 6, NULL, 6, 2120, '2022-12-03 23:07:55', 0, 0, 0),
(15, 96, 1800, 6, NULL, 6, 736, '2022-12-03 23:13:50', 0, 0, 0),
(16, 600, 4000, 6, NULL, 6, 1840, '2022-12-03 23:20:36', 0, 0, 0),
(17, 82.5, 1000, 6, NULL, 6, 1082.5, '2022-12-03 23:29:05', 0, 0, 0),
(18, 108.75, 725, 6, NULL, 6, 508.75, '2022-12-03 23:30:37', 0, 325, 0),
(19, 15, 200, 6, NULL, 6, 115, '2022-12-05 05:21:46', 0, 0, 0),
(20, 15, 200, 6, NULL, 6, 115, '2022-12-05 05:26:09', 0, 0, 0),
(21, 22.5, 250, 6, 1, 6, 172.5, '2022-12-05 05:30:51', 0, 0, 100),
(22, 135, 1000, 6, 1, 6, 1035, '2022-12-06 13:24:12', 0, 0, 100),
(23, 150, 1000, 7, NULL, 6, 1150, '2022-12-06 13:25:40', 0, 0, 0),
(24, 150, 1000, 9, NULL, 7, 1150, '2022-12-08 02:32:02', 0, 0, 0),
(25, 225, 1500, 9, NULL, 7, 1725, '2022-12-08 02:34:11', 0, 0, 0),
(26, 135, 1125, 9, NULL, 7, 1035, '2022-12-08 02:37:18', 225, 0, 0),
(27, 75, 1000, 9, 6, 7, 575, '2022-12-08 02:43:30', 0, 0, 500),
(28, 75, 2000, 9, 6, 7, 575, '2022-12-08 02:50:18', 0, 1000, 500),
(29, 0, 200, 9, NULL, 7, 0, '2022-12-08 02:50:57', 0, 200, 0),
(30, 150, 1000, 10, NULL, 7, 1150, '2022-12-08 02:58:45', 0, 0, 0),
(31, 127.5, 1000, 10, 2, 7, 977.5, '2022-12-08 09:57:14', 0, 0, 150),
(32, 90, 600, 11, NULL, 8, 690, '2022-12-08 12:28:15', 0, 0, 0),
(33, 75, 500, 11, NULL, 8, 575, '2022-12-08 12:31:06', 0, 0, 0),
(34, 0, 300, 11, NULL, 8, 0, '2022-12-08 12:32:04', 0, 300, 0),
(35, 0, 1000, 11, NULL, 8, 0, '2022-12-08 12:35:07', 0, 1000, 0),
(36, 116.4, 970, 11, NULL, 8, 892.4, '2022-12-08 12:40:08', 194, 0, 0),
(37, 127.5, 1000, 11, 2, 8, 977.5, '2022-12-08 12:42:46', 0, 0, 150);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email_id` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `user_pass` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `travel_mileage` double DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email_id`, `first_name`, `last_name`, `user_pass`, `phone_number`, `travel_mileage`, `user_address`, `username`) VALUES
(1, 'abc@gmail.com', 'Mark', 'Williams', 'Archer@4587', '(325)-209-3212', 100, '45 abc street, san marcos, texas, 78666', 'user1'),
(2, 'abcdef@gmail.com', 'Britney', 'Seaman', 'Britney@4587', '(456)-897-3333', 10000, '124 bobcat street, san marcos, texas, 78666', 'user2'),
(3, 'abcd@gmail.com', 'Andrew', 'Clark', 'Andrew@4587', '(624)-893-5642', 0, '93 bcd street, san marcos, texas, 78666', 'user3'),
(5, 'sasankreddy4587@gmail.com', 'Sasank Reddy', 'Evuri', '1234567', '9452441539', 3002, '810 North LBJ, Apartment number: 1-07-A', 'mentalist'),
(6, 'niklaus@gmail.com', 'Klaus', 'Mikaelson', 'paranoid', '1000824456', 39771, 'Pattabhipuram 2nd lane', 'hybrid'),
(7, 'kingSon@gmail.com', 'Raj Kumar', 'Madala', '1234567890', '7863992373', 12707, '810 North LBJ Drive', 'kingson'),
(8, 'sasank@gmail.com', 'sasank', 'reddy', '1234567890', '8452441539', 13138, '810 North LBJ Drive', 'sasank12');

-- --------------------------------------------------------

--
-- Table structure for table `user_promo_code`
--

CREATE TABLE `user_promo_code` (
  `id` int(11) NOT NULL,
  `promo_code_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_promo_code`
--

INSERT INTO `user_promo_code` (`id`, `promo_code_id`, `user_id`) VALUES
(6, 2, 7),
(7, 2, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_aucisqx7arn3fi6eyjmsvqdb3` (`flight_number`);

--
-- Indexes for table `flight_booking`
--
ALTER TABLE `flight_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7g0gmdlnfguaaex0ck1r5wn9b` (`flight_schedule_id`),
  ADD KEY `FKt10ifirq6jufqmrs52dh1nb9e` (`transactions_id`);

--
-- Indexes for table `flight_schedule`
--
ALTER TABLE `flight_schedule`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_g5fod3pbm3mbtrtyx6mmyj436` (`flight_reference`),
  ADD KEY `FKn94ovqq3lpj1qut7ylmxj8vxk` (`destination_city_id`),
  ADD KEY `FK1voe8ky2xg3fw8x5jiwduigja` (`flight_id`),
  ADD KEY `FK4tsagwomd0wuvre1bnlnq20k2` (`source_city_id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK5ptavj9kawoasosd8npp9tbqg` (`city_id`);

--
-- Indexes for table `hotel_booking`
--
ALTER TABLE `hotel_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK4d273qolacnacxna4dlo20j28` (`hotel_room_id`),
  ADD KEY `FK96ol1j1m0hlgxfxblctvkee2l` (`transactions_id`);

--
-- Indexes for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkidx9n5p4parnjnpg912svvgi` (`hotel_id`);

--
-- Indexes for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_key7jfapqdbdv33gbdmfsv4wb` (`card_number`),
  ADD KEY `FK44fo99gxhh07jnkdbjxble2cc` (`user_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnhnyc7p7fv5a26ddlnyvwe70v` (`destination_city_id`),
  ADD KEY `FK1rl27klprjrw73h6rn7qtshdy` (`source_city_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKe7quxkxbxixrecajcyribppje` (`payment_info_id`),
  ADD KEY `FKlwkngiie2skiupj99cbpkxj` (`promo_code_id`),
  ADD KEY `FK9e5ssu5c6n40gw5bgt5dg4mph` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_r9kvst217faqa7vgeyy51oos0` (`email_id`),
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`);

--
-- Indexes for table `user_promo_code`
--
ALTER TABLE `user_promo_code`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKrf18istn27mwxyv4welyviupq` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `flight_booking`
--
ALTER TABLE `flight_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `flight_schedule`
--
ALTER TABLE `flight_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `hotel_booking`
--
ALTER TABLE `hotel_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hotel_room`
--
ALTER TABLE `hotel_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `payment_info`
--
ALTER TABLE `payment_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_promo_code`
--
ALTER TABLE `user_promo_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `flight_booking`
--
ALTER TABLE `flight_booking`
  ADD CONSTRAINT `FK7g0gmdlnfguaaex0ck1r5wn9b` FOREIGN KEY (`flight_schedule_id`) REFERENCES `flight_schedule` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKt10ifirq6jufqmrs52dh1nb9e` FOREIGN KEY (`transactions_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `flight_schedule`
--
ALTER TABLE `flight_schedule`
  ADD CONSTRAINT `FK1voe8ky2xg3fw8x5jiwduigja` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK4tsagwomd0wuvre1bnlnq20k2` FOREIGN KEY (`source_city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `FKn94ovqq3lpj1qut7ylmxj8vxk` FOREIGN KEY (`destination_city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `FK5ptavj9kawoasosd8npp9tbqg` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `hotel_booking`
--
ALTER TABLE `hotel_booking`
  ADD CONSTRAINT `FK4d273qolacnacxna4dlo20j28` FOREIGN KEY (`hotel_room_id`) REFERENCES `hotel_room` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK96ol1j1m0hlgxfxblctvkee2l` FOREIGN KEY (`transactions_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hotel_room`
--
ALTER TABLE `hotel_room`
  ADD CONSTRAINT `FKkidx9n5p4parnjnpg912svvgi` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_info`
--
ALTER TABLE `payment_info`
  ADD CONSTRAINT `FK44fo99gxhh07jnkdbjxble2cc` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD CONSTRAINT `FK1rl27klprjrw73h6rn7qtshdy` FOREIGN KEY (`source_city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `FKnhnyc7p7fv5a26ddlnyvwe70v` FOREIGN KEY (`destination_city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `FK9e5ssu5c6n40gw5bgt5dg4mph` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FKe7quxkxbxixrecajcyribppje` FOREIGN KEY (`payment_info_id`) REFERENCES `payment_info` (`id`),
  ADD CONSTRAINT `FKlwkngiie2skiupj99cbpkxj` FOREIGN KEY (`promo_code_id`) REFERENCES `promo_code` (`id`);

--
-- Constraints for table `user_promo_code`
--
ALTER TABLE `user_promo_code`
  ADD CONSTRAINT `FKrf18istn27mwxyv4welyviupq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
