-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 10:21 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Mobiles', 'Mobile', '2021-01-02 06:21:09', '05-01-2021 08:55:00 PM'),
(8, 'Tablets', 'Tablets', '2021-01-02 06:21:36', NULL),
(9, 'Laptop Tablets', '2 in 1 laptop', '2021-01-02 06:23:37', NULL),
(10, 'Feature Phones', 'Keypad phones', '2021-01-02 06:24:18', NULL),
(11, 'Foldable Phones', 'Foldable Phones', '2021-01-02 10:23:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(7, 4, '21', 1, '2021-01-02 08:21:17', 'COD', 'Delivered'),
(8, 5, '23', 1, '2021-01-03 09:28:31', 'Internet Banking', 'Delivered'),
(10, 4, '26', 1, '2021-01-05 10:51:31', 'COD', 'Delivered'),
(13, 4, '22', 1, '2021-02-02 08:21:17', 'COD', 'Delivered'),
(14, 4, '23', 1, '2021-02-06 08:21:17', 'COD', 'Delivered'),
(15, 4, '22', 2, '2021-03-06 08:21:17', 'COD', 'Delivered'),
(16, 4, '24', 1, '2021-03-06 08:21:17', 'COD', 'Delivered'),
(17, 4, '22', 1, '2021-04-06 08:21:17', 'COD', 'Delivered'),
(18, 4, '21', 1, '2021-01-05 15:42:08', 'Internet Banking', NULL),
(19, 4, '25', 1, '2021-01-05 15:53:39', 'COD', NULL),
(20, 4, '25', 1, '2021-01-05 15:54:33', 'COD', NULL),
(21, 4, '25', 1, '2021-01-05 15:57:22', 'COD', NULL),
(22, 4, '25', 1, '2021-01-05 15:59:58', NULL, NULL),
(23, 4, '25', 1, '2021-01-07 07:46:17', NULL, 'Delivered'),
(24, 5, '22', 2, '2021-01-08 06:19:07', 'Internet Banking', 'in Process');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 1, 'Delivered', 'khkjh', '2021-01-02 06:17:36'),
(6, 4, 'Delivered', 'jkhk', '2021-01-02 06:18:05'),
(7, 5, 'Delivered', 'jhgjgjh', '2021-01-02 06:18:24'),
(8, 6, 'Delivered', 'hjgjgjhg', '2021-01-02 06:18:45'),
(9, 8, 'Delivered', 'thankyou, Please visit again', '2021-01-03 10:52:19'),
(10, 7, 'Delivered', 'Thankyou, Please visit again', '2021-01-03 10:53:06'),
(11, 23, 'in Process', 'Shipped and would be delivered in 3 working days', '2021-01-07 08:01:43'),
(12, 23, 'Delivered', 'Thankyou!! Please visit again', '2021-01-07 08:02:14'),
(13, 24, 'in Process', ' ', '2021-01-08 06:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:51:11'),
(6, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:57:52'),
(7, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:59:02'),
(8, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 15:59:59'),
(9, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:00:32'),
(10, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:03:03'),
(11, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:03:57'),
(12, 21, 5, 5, 5, 'Sachin', 'Nice!', 'Nice!', '2021-01-02 16:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(21, 7, 13, 'Google Pixel 5', 'Google', 75000, 80000, '<div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><b>General</b></div> </div> <table> <tbody> <tr> <td>Brand</td> <td>Google</td> </tr> <tr> <td>Model</td> <td>Pixel 5</td> </tr> <tr> <td>Launched</td> <td>30th September 2020</td> </tr> <tr> <td>Launched in India</td> <td>No</td> </tr> <tr> <td>Form factor</td> <td>Touchscreen</td> </tr> <tr> <td>Dimensions (mm)</td> <td>144.70 x 70.40 x 8.00</td> </tr> <tr> <td>Weight (g)</td> <td>151.00</td> </tr> <tr> <td>IP rating</td> <td>IP68</td> </tr> <tr> <td>Battery capacity (mAh)</td> <td>4080</td> </tr> <tr> <td>Removable battery</td> <td>No</td> </tr> <tr> <td>Fast charging</td> <td>Proprietary</td> </tr> <tr> <td>Wireless charging</td> <td>Yes</td> </tr> <tr> <td>Colours</td> <td>Just Black, Sorta Sage</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Display</b></div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>6.00</td> </tr> <tr> <td>Touchscreen</td> <td>Yes</td> </tr> <tr> <td>Resolution</td> <td>1080x2340 pixels</td> </tr> <tr> <td>Protection type</td> <td>Gorilla Glass</td> </tr> <tr> <td>Aspect ratio</td> <td>19.5:9</td> </tr> <tr> <td>Pixels per inch (PPI)</td> <td>432</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Hardware</b></div> </div> <table> <tbody> <tr> <td>Processor</td> <td>1.8GHz octa-core</td> </tr> <tr> <td>Processor make</td> <td>Qualcomm Snapdragon 765G</td> </tr> <tr> <td>RAM</td> <td>8GB</td> </tr> <tr> <td>Internal storage</td> <td>128GB</td> </tr> <tr> <td>Expandable storage</td> <td>No</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Camera</b></div> </div> <table> <tbody> <tr> <td>Rear camera</td> <td>12.2-megapixel (f/1.7, 1.4-micron) + 16-megapixel (f/2.2, 1.0-micron)</td> </tr> <tr> <td>Rear autofocus</td> <td>Phase detection autofocus</td> </tr> <tr> <td>Rear flash</td> <td>Yes</td> </tr> <tr> <td>Front camera</td> <td>8-megapixel (f/2.0, 1.12-micron)</td> </tr> <tr> <td>Pop-Up Camera</td> <td>No</td> </tr> </tbody> </table> </div>  <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Software</b></div> </div>     <table><tbody><tr><td>Operating system</td><td>Android 11</td></tr></tbody></table>', 'google-pixel-5.jpg', 'banner2.jpg', 'pixel 5.jpg', 0, 'In Stock', '2021-01-02 07:44:45', NULL),
(22, 11, 24, 'Moto Razr', 'Motorola', 125000, 135000, '<div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><b>General</b></div> </div> <table> <tbody> <tr> <td>Brand</td> <td>Motorola</td> </tr> <tr> <td>Model</td> <td>Razr 5G</td> </tr> <tr> <td>Launched</td> <td>9th September 2020</td> </tr> <tr> <td>Launched in India</td> <td>Yes</td> </tr> <tr> <td>Form factor</td> <td>Foldable</td> </tr> <tr> <td>Body type</td> <td>Metal</td> </tr> <tr> <td>Dimensions (mm)</td> <td>169.20 x 72.60 x 7.90</td> </tr> <tr> <td>Weight (g)</td> <td>192.00</td> </tr> <tr> <td>Battery capacity (mAh)</td> <td>2800</td> </tr> <tr> <td>Fast charging</td> <td>Proprietary</td> </tr> <tr> <td>Colours</td> <td>Polished Graphite</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Display</b></div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>6.20</td> </tr> <tr> <td>Touchscreen</td> <td>Yes</td> </tr> <tr> <td>Resolution</td> <td>2142x876 pixels</td> </tr> <tr> <td>Aspect ratio</td> <td>21:9</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\">Second display</div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>2.70</td> </tr> <tr> <td>Touchscreen</td> <td>Yes</td> </tr> <tr> <td>Resolution</td> <td>800x600 pixels</td> </tr> <tr> <td>Aspect ratio</td> <td>4:3</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Hardware</b></div> </div> <table> <tbody> <tr> <td>Processor</td> <td>octa-core</td> </tr> <tr> <td>Processor make</td> <td>Qualcomm Snapdragon 765G</td> </tr> <tr> <td>RAM</td> <td>8GB</td> </tr> <tr> <td>Internal storage</td> <td>256GB</td> </tr> <tr> <td>Expandable storage</td> <td>No</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Camera</b></div> </div> <table> <tbody> <tr> <td>Rear camera</td> <td>48-megapixel (f/1.7, 1.6-micron)</td> </tr> <tr> <td>Rear autofocus</td> <td>Yes</td> </tr> <tr> <td>Rear flash</td> <td>Yes</td> </tr> <tr> <td>Front camera</td> <td>20-megapixel (f/2.2, 1.6-micron)</td> </tr> </tbody> </table> </div>  <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Software</b></div> </div>      <table><tbody><tr> <td>Operating system</td> <td>Android 10</td> </tr><tr><td>Skin</td><td>My UX</td></tr></tbody></table>', 'motorola-razr.webp', 'razr2.png', 'motorola-razr-5g.png', 0, 'In Stock', '2021-01-02 15:25:53', NULL),
(23, 11, 24, 'LG Wing', 'LG', 69990, 72000, '<div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><b>General</b></div> </div> <table> <tbody> <tr> <td>Brand</td> <td>LG</td> </tr> <tr> <td>Model</td> <td>Wing</td> </tr> <tr> <td>Launched</td> <td>14th September 2020</td> </tr> <tr> <td>Launched in India</td> <td>Yes</td> </tr> <tr> <td>Form factor</td> <td>Swivel</td> </tr> <tr> <td>Dimensions (mm)</td> <td>169.50 x 74.50 x 10.90</td> </tr> <tr> <td>Weight (g)</td> <td>260.00</td> </tr> <tr> <td>IP rating</td> <td>IP54</td> </tr> <tr> <td>Battery capacity (mAh)</td> <td>4000</td> </tr> <tr> <td>Removable battery</td> <td>No</td> </tr> <tr> <td>Fast charging</td> <td>Quick Charge 4+</td> </tr> <tr> <td>Wireless charging</td> <td>Yes</td> </tr> <tr> <td>Colours</td> <td>Aurora Gray, Illusion Sky</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Display</b></div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>6.80</td> </tr> <tr> <td>Touchscreen</td> <td>Yes</td> </tr> <tr> <td>Resolution</td> <td>1080x2460 pixels</td> </tr> <tr> <td>Protection type</td> <td>Gorilla Glass</td> </tr> <tr> <td>Aspect ratio</td> <td>20.5:9</td> </tr> <tr> <td>Pixels per inch (PPI)</td> <td>395</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\">Second display</div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>3.90</td> </tr> <tr> <td>Touchscreen</td> <td>Yes</td> </tr> <tr> <td>Resolution</td> <td>1080x1240 pixels</td> </tr> <tr> <td>Pixels per inch (PPI)</td> <td>419</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Hardware</b></div> </div> <table> <tbody> <tr> <td>Processor</td> <td>octa-core</td> </tr> <tr> <td>Processor make</td> <td>Qualcomm Snapdragon 765G</td> </tr> <tr> <td>RAM</td> <td>8GB</td> </tr> <tr> <td>Internal storage</td> <td>128GB</td> </tr> <tr> <td>Expandable storage</td> <td>Yes</td> </tr> <tr> <td>Expandable storage type</td> <td>microSD</td> </tr> <tr> <td>Expandable storage up to (GB)</td> <td>2000</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Camera</b></div> </div> <table> <tbody> <tr> <td>Rear camera</td> <td>64-megapixel (f/1.8, 0.8-micron) + 13-megapixel (f/1.9, 1.0-micron) + 12-megapixel (f/2.2, 1.4-micron)</td> </tr> <tr> <td>Rear autofocus</td> <td>Yes</td> </tr> <tr> <td>Rear flash</td> <td>Yes</td> </tr> <tr> <td>Front camera</td> <td>32-megapixel (f/1.9, 0.8-micron)</td> </tr> </tbody> </table> </div>  <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Software</b></div> </div>      <table><tbody><tr> <td>Operating system</td> <td>Android 10</td> </tr><tr><td>Skin</td><td>Q OS</td></tr></tbody></table>', 'lg-wing.jpg', 'LMF100EMW-DZ-18.jpg', 'LMF100EMW-DZ-06.webp', 0, 'In Stock', '2021-01-02 15:36:36', NULL),
(24, 9, 19, 'Microsoft Surface Book 3', 'Microsoft', 98000, 100000, '<div id=\"wtab-292772\" class=\"pd_cont\" style=\"\"><div class=\"pd_colmn\"><span><b>Display</b><br></span></div><div class=\"pd_colmn\"><span>Display size </span><span>13.50-inch</span></div><div class=\"pd_colmn\"><span>Display resolution </span><span>3240x2160 pixels</span></div><div class=\"pd_colmn\"><span>Touchscreen </span><span>Yes</span></div><div class=\"pd_colmn\"><span><br></span></div><div class=\"pd_colmn\"><span><b>Hardware</b><br></span></div><div class=\"pd_colmn\"><span>Processor </span><span>Core i7</span></div><div class=\"pd_colmn\"><span>RAM </span><span>16GB</span><span></span><div class=\"pd_colmn\"><span>SSD </span><span>256GB</span></div><div class=\"pd_colmn\"><span>Graphics </span><span>Nvidia GeForce GTX 1660 Ti</span></div><div class=\"pd_colmn\"><span>Weight </span><span>1.91 kg</span></div><div class=\"pd_colmn\"><span><br></span></div><div class=\"pd_colmn\"><span><b>Software</b><br></span></div></div><div class=\"pd_colmn\"><span>OS </span><span>Windows 10 Home</span></div></div>', 'RE4o21J.jpg', 'RE4o9Ei.jpg', 'RE4nZ9v.jpg', 0, 'In Stock', '2021-01-02 15:45:19', NULL),
(25, 10, 25, 'Nokia 150 202', 'Nokia', 2299, 2799, '<div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><b>General</b></div> </div> <table> <tbody> <tr> <td>Brand</td> <td>Nokia</td> </tr> <tr> <td>Model</td> <td>150 (2020)</td> </tr> <tr> <td>Launched</td> <td>12th May 2020</td> </tr> <tr> <td>Launched in India</td> <td>No</td> </tr> <tr> <td>Form factor</td> <td>Bar</td> </tr> <tr> <td>Body type</td> <td>Polycarbonate</td> </tr> <tr> <td>Dimensions (mm)</td> <td>132.00 x 50.50 x 15.00</td> </tr> <tr> <td>Weight (g)</td> <td>90.54</td> </tr> <tr> <td>Battery capacity (mAh)</td> <td>1020</td> </tr> <tr> <td>Removable battery</td> <td>Yes</td> </tr> <tr> <td>Wireless charging</td> <td>No</td> </tr> <tr> <td>Colours</td> <td>Black, Cyan, Red</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Display</b></div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>2.40</td> </tr> <tr> <td>Touchscreen</td> <td>No</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Hardware</b></div> </div> <table> <tbody> <tr> <td>RAM</td> <td>4MB</td> </tr> <tr> <td>Internal storage</td> <td>4MB</td> </tr> <tr> <td>Expandable storage</td> <td>Yes</td> </tr> <tr> <td>Expandable storage type</td> <td>microSD</td> </tr> <tr> <td>Expandable storage up to (GB)</td> <td>32</td> </tr> <tr> <td>Dedicated microSD slot</td> <td>Yes</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Camera</b></div> </div> <table> <tbody> <tr> <td>Rear camera</td> <td>0.3-megapixel</td> </tr> <tr> <td>Rear flash</td> <td>Yes</td> </tr> </tbody> </table> </div>  <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Software</b></div> </div>     <table><tbody><tr><td>Operating system</td><td>Series 30</td></tr></tbody></table>', '41IUNrXqL4L.jpg', '41t5OLKTM5L.jpg', '41dN0RQDN0L.jpg', 200, 'In Stock', '2021-01-02 16:30:20', NULL),
(26, 8, 18, 'Apple iPad Pro', 'Apple', 130900, 132000, '<div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><b>General</b></div> </div> <table> <tbody> <tr> <td>Brand</td> <td>Apple</td> </tr> <tr> <td>Model</td> <td>iPad Pro (10.5-inch) Wi-Fi</td> </tr> <tr> <td>Launched</td> <td>June 2017</td> </tr> <tr> <td>Dimensions (mm)</td> <td>250.60 x 174.10 x 6.10</td> </tr> <tr> <td>Weight (g)</td> <td>469.00</td> </tr> <tr> <td>Removable battery</td> <td>No</td> </tr> <tr> <td>Colours</td> <td>Space Grey, Rose Gold, Gold, Silver</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Display</b></div> </div> <table> <tbody> <tr> <td>Screen size (inches)</td> <td>10.50</td> </tr> <tr> <td>Touchscreen</td> <td>No</td> </tr> <tr> <td>Resolution</td> <td>2224x1668 pixels</td> </tr> <tr> <td>Pixels per inch (PPI)</td> <td>264</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Hardware</b></div> </div> <table> <tbody> <tr> <td>Processor</td> <td>one-core</td> </tr> <tr> <td>Processor make</td> <td>Apple A10X Fusion</td> </tr> <tr> <td>Internal storage</td> <td>64GB</td> </tr> <tr> <td>Expandable storage</td> <td>No</td> </tr> </tbody> </table> </div> <div class=\"_gry-bg _spctbl _ovfhide\"> <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Camera</b></div> </div> <table> <tbody> <tr> <td>Rear camera</td> <td>32-megapixel</td> </tr> <tr> <td>Rear Flash</td> <td>Yes</td> </tr> <tr> <td>Front camera</td> <td>7-megapixel</td> </tr> </tbody> </table> </div>  <div class=\"_flx\"> <div class=\"_hd\"><br></div><div class=\"_hd\"><b>Software</b></div> </div>     <table><tbody><tr><td>Operating system</td><td>iOS 11</td></tr></tbody></table>', '81gEWsabIYL._SL1500_.jpg', '710u7X04NNL._SL1500_.jpg', '81bdS9T9BYL._SL1500_.jpg', 0, 'In Stock', '2021-01-02 16:46:17', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sales`
-- (See below for the actual view)
--
CREATE TABLE `sales` (
`orderId` int(11)
,`productId` int(11)
,`productPrice` int(11)
,`quantity` int(11)
,`orderDate` timestamp
);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Android', '2021-01-02 06:24:40', NULL),
(14, 7, 'Stock Android', '2021-01-02 06:24:53', NULL),
(15, 7, 'iOS', '2021-01-02 06:25:27', NULL),
(16, 8, 'Android', '2021-01-02 06:25:51', NULL),
(17, 8, 'Stock Android', '2021-01-02 06:25:58', NULL),
(18, 8, 'iOS', '2021-01-02 06:26:06', NULL),
(19, 9, 'Windows/Android', '2021-01-02 06:26:39', NULL),
(20, 9, 'MacOS/iOS', '2021-01-02 06:26:58', NULL),
(21, 9, 'ChomeOS/Android', '2021-01-02 06:27:23', NULL),
(22, 10, 'KaiOS', '2021-01-02 06:40:13', NULL),
(23, 8, 'Amazon FireOS', '2021-01-02 07:18:35', NULL),
(24, 11, 'All', '2021-01-02 15:17:51', NULL),
(25, 10, 'Series 30', '2021-01-02 16:22:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'sachin@s.com', 0x3a3a3100000000000000000000000000, '2021-01-02 08:20:52', '02-01-2021 01:53:17 PM', 1),
(25, 'shashank@s.com', 0x3a3a3100000000000000000000000000, '2021-01-03 09:25:01', NULL, 1),
(26, 'shashank@s.com', 0x3a3a3100000000000000000000000000, '2021-01-03 10:50:33', NULL, 1),
(27, 'sachin@s.com', 0x3a3a3100000000000000000000000000, '2021-01-05 15:41:03', NULL, 1),
(28, 'sachin@s.com', 0x3a3a3100000000000000000000000000, '2021-01-07 07:46:11', '07-01-2021 01:29:18 PM', 1),
(29, 'shashank@s.com', 0x3a3a3100000000000000000000000000, '2021-01-08 06:18:21', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'Karnataka', 'Karnataka', 'Karnataka', 0, 'Karnataka', 'Karnataka', 'Karnataka', 0, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'Sachin', 'sachin@s.com', 9887654499, '5f4dcc3b5aa765d61d8327deb882cf99', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-02 08:20:35', NULL),
(5, 'Shashank', 'shashank@s.com', 9879879879, '5f4dcc3b5aa765d61d8327deb882cf99', ' ', ' ', ' ', 0, ' ', ' ', ' ', 0, '2021-01-03 09:24:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `date`, `count`) VALUES
(3, '2021-01-06', 4),
(4, '2021-02-02', 2),
(5, '2021-03-02', 7),
(6, '2021-01-07', 26),
(7, '2021-01-08', 9),
(8, '2021-01-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

-- --------------------------------------------------------

--
-- Structure for view `sales`
--
DROP TABLE IF EXISTS `sales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sales`  AS SELECT `o`.`id` AS `orderId`, `p`.`id` AS `productId`, `p`.`productPrice` AS `productPrice`, `o`.`quantity` AS `quantity`, `o`.`orderDate` AS `orderDate` FROM (`orders` `o` left join `products` `p` on(`p`.`id` = `o`.`productId`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
