-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2018 at 07:51 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radar`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `all_access` tinyint(1) NOT NULL DEFAULT '0',
  `controller` varchar(50) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`id`, `key`, `all_access`, `controller`, `date_created`, `date_modified`) VALUES
(1, 'sdftr5t34tagfa54tgv54r5tgs5t', 0, 'v1', '2017-08-18 00:00:00', '2017-08-18 11:02:14');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, 'sdftr5t34tagfa54tgv54r5tgs5t', 0, 0, 0, '111.118.246.34', 1503053504);

-- --------------------------------------------------------

--
-- Table structure for table `limits`
--

CREATE TABLE `limits` (
  `id` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `limits`
--

INSERT INTO `limits` (`id`, `api_key`, `uri`, `count`, `hour_started`) VALUES
(1, 'sdftr5t34tagfa54tgv54r5tgs5t', 'test_post', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `api_key` varchar(40) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` enum('get','post','options','put','patch','delete') NOT NULL,
  `params` text,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `api_key`, `uri`, `method`, `params`, `ip_address`, `time`, `rtime`, `authorized`, `response_code`) VALUES
(4, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Accept":"*\\/*","Cookie":"ci_session=3sb3ph8p783viddribjg1egr8o9rsmoi","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Content-Length":"20","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Authorization":"Basic YWRtaW46MTIzNA==","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298184, 0.113528, '1', 200),
(5, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Accept":"*\\/*","Cookie":"ci_session=h9a2645jic1mov86aed76a0gvsk064ne","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Content-Length":"20","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Authorization":"Basic YWRtaW46MTIzNA==","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298273, 0.13471, '1', 200),
(6, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Accept":"*\\/*","Cookie":"ci_session=h9a2645jic1mov86aed76a0gvsk064ne","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Content-Length":"20","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Authorization":"Basic YWRtaW46MTIzNA==","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298303, 0.0780571, '1', 200),
(7, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=h9a2645jic1mov86aed76a0gvsk064ne","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298386, 0.077518, '1', 200),
(8, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=h9a2645jic1mov86aed76a0gvsk064ne","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298441, 0.190198, '1', 200),
(9, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=h9a2645jic1mov86aed76a0gvsk064ne","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298482, 0.126791, '1', 200),
(10, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=69qccatiol9usg715k6pq30rq2c1ates","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298515, 0.091265, '1', 200),
(11, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=69qccatiol9usg715k6pq30rq2c1ates","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298551, 0.0617929, '1', 200),
(12, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=2fgqjul96s2kboftl61ffn5ddfu1quc0","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514298857, 0.277366, '1', 200),
(13, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=2fgqjul96s2kboftl61ffn5ddfu1quc0","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299083, 0.142567, '1', 200),
(14, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=lef00fmros2ogg2alqg1rfv27qothrf3","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299171, 0.10947, '1', 200),
(15, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=li15kepii912b6q10aonrj8vjhplpdlf","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299185, 0.122164, '1', 200),
(16, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Connection":"keep-alive","Content-Length":"218","Origin":"chrome-extension:\\/\\/fhbjgbiflinjbdggehcddcbncdddomop","Accept-Language":"english","Authorization":"Basic YWRtaW46MTIzNA==","Content-Type":"application\\/json","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/63.0.3239.84 Safari\\/537.36","Cache-Control":"no-cache","Postman-Token":"68df8927-ede3-4ef0-42f5-e52b25e790e9","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","Accept-Encoding":"gzip, deflate","first_name":"satanand","dob":"2017-12-12","profile_pic":"sadf","gender":"m","intrest_in":"f","intrest_min_age":"sadf","intrest_max_age":"sadf","facebook_id":"sdfadsf","last_name":"","email":""}', '111.118.246.34', 1514299381, 0.261962, '1', 400),
(17, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=li15kepii912b6q10aonrj8vjhplpdlf","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299382, 0.227556, '1', 200),
(18, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Connection":"keep-alive","Content-Length":"22","Origin":"chrome-extension:\\/\\/fhbjgbiflinjbdggehcddcbncdddomop","Accept-Language":"english","Authorization":"Basic YWRtaW46MTIzNA==","Content-Type":"application\\/json","User-Agent":"Mozilla\\/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/63.0.3239.84 Safari\\/537.36","Cache-Control":"no-cache","Postman-Token":"ddada967-86c3-bb4b-70bc-0fea9692f754","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","Accept-Encoding":"gzip, deflate","Cookie":"ci_session=8nqj4j1ncij9obsejhorisd0k38aa9i8","zip_code":"94102"}', '111.118.246.34', 1514299411, 0.077826, '1', 200),
(19, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=8us6nppitaietmpd0h0trpuousqhfs5b","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299491, 0.161183, '1', 200),
(20, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=8us6nppitaietmpd0h0trpuousqhfs5b","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299674, 0.079654, '1', 200),
(21, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=8us6nppitaietmpd0h0trpuousqhfs5b","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299731, 0.248807, '1', 200),
(22, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=3iogmsfmu37fcg5igjbbph88co5ckc8v","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299894, 0.163878, '1', 200),
(23, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=3iogmsfmu37fcg5igjbbph88co5ckc8v","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514299925, 0.070359, '1', 200),
(24, 'sdftr5t34tagfa54tgv54r5tgs5t', 'api/v1/checkForZip', 'post', '{"Host":"111.118.246.35","Content-Type":"application\\/json","Cookie":"ci_session=3iogmsfmu37fcg5igjbbph88co5ckc8v","Authorization":"Basic YWRtaW46MTIzNA==","Connection":"keep-alive","x-api-key":"sdftr5t34tagfa54tgv54r5tgs5t","Accept":"*\\/*","User-Agent":"Radar\\/1.0 (com.canopusapps..Radar; build:1; iOS 11.1.0) Alamofire\\/4.5.1","Accept-Language":"en;q=1.0","Content-Length":"20","Accept-Encoding":"gzip;q=1.0, compress;q=0.5","zip_code":"94102"}', '111.118.246.34', 1514300079, 0.145384, '1', 200);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(20170706032825);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artists_list`
--

CREATE TABLE `tbl_artists_list` (
  `id` int(11) NOT NULL,
  `artists` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_artists_list`
--

INSERT INTO `tbl_artists_list` (`id`, `artists`) VALUES
(1, 'The Beatles'),
(2, 'Al Green'),
(3, 'The Smiths'),
(4, 'Jimi Hendrix'),
(5, 'Drake'),
(6, 'Aretha Franklin'),
(7, 'Alabama Shakes'),
(8, 'Bruno Mars');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_available_zipcode`
--

CREATE TABLE `tbl_available_zipcode` (
  `zip_id` int(11) NOT NULL,
  `zip_code` varchar(255) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_available_zipcode`
--

INSERT INTO `tbl_available_zipcode` (`zip_id`, `zip_code`, `city_name`) VALUES
(1, '94102', ''),
(2, '94103', ''),
(3, '94104', ''),
(4, '94105', ''),
(5, '94107', ''),
(6, '94108', ''),
(7, '94109', ''),
(8, '94110', ''),
(9, '94111', ''),
(10, '94112', ''),
(11, '94114', ''),
(12, '94115', ''),
(13, '94116', ''),
(14, '94117', ''),
(15, '94118', ''),
(16, '94121', ''),
(17, '94122', ''),
(18, '94123', ''),
(19, '94124', ''),
(20, '94127', ''),
(21, '94129', ''),
(22, '94130', ''),
(23, '94131', ''),
(24, '94132', ''),
(25, '94133', ''),
(26, '94134', ''),
(27, '94158', ''),
(28, '10453', ''),
(29, '10457', ''),
(30, '10460', ''),
(31, '10458', ''),
(32, '10467', ''),
(33, '10468', ''),
(34, '10451', ''),
(35, '10452', ''),
(36, '10456', ''),
(37, '10454', ''),
(38, '10455', ''),
(39, '10459', ''),
(40, '10474', ''),
(41, '10463', ''),
(42, '10471', ''),
(43, '10466', ''),
(44, '10469', ''),
(45, '10470', ''),
(46, '10475', ''),
(47, '10461', ''),
(48, '10462', ''),
(49, '10464', ''),
(50, '10465', ''),
(51, '10472', ''),
(52, '10473', ''),
(53, '11212', ''),
(54, '11213', ''),
(55, '11216', ''),
(56, '11233', ''),
(57, '11238', ''),
(58, '11209', ''),
(59, '11214', ''),
(60, '11228', ''),
(61, '11204', ''),
(62, '11218', ''),
(63, '11219', ''),
(64, '11230', ''),
(65, '11234', ''),
(66, '11236', ''),
(67, '11239', ''),
(68, '11223', ''),
(69, '11224', ''),
(70, '11229', ''),
(71, '11235', ''),
(72, '11201', ''),
(73, '11205', ''),
(74, '11215', ''),
(75, '11217', ''),
(76, '11231', ''),
(77, '11203', ''),
(78, '11210', ''),
(79, '11225', ''),
(80, '11226', ''),
(81, '11207', ''),
(82, '11208', ''),
(83, '11211', ''),
(84, '11222', ''),
(85, '11220', ''),
(86, '11232', ''),
(87, '11206', ''),
(88, '11221', ''),
(89, '11237', ''),
(90, '10026', ''),
(91, '10027', ''),
(92, '10030', ''),
(93, '10037', ''),
(94, '10039', ''),
(95, '10001', ''),
(96, '10011', ''),
(97, '10018', ''),
(98, '10019', ''),
(99, '10020', ''),
(100, '10036', ''),
(101, '10029', ''),
(102, '10035', ''),
(103, '10010', ''),
(104, '10016', ''),
(105, '10017', ''),
(106, '10022', ''),
(107, '10012', ''),
(108, '10013', ''),
(109, '10014', ''),
(110, '10004', ''),
(111, '10005', ''),
(112, '10006', ''),
(113, '10007', ''),
(114, '10038', ''),
(115, '10280', ''),
(116, '10002', ''),
(117, '10003', ''),
(118, '10009', ''),
(119, '10021', ''),
(120, '10028', ''),
(121, '10044', ''),
(122, '10065', ''),
(123, '10075', ''),
(124, '10128', ''),
(125, '10023', ''),
(126, '10024', ''),
(127, '10025', ''),
(128, '10031', ''),
(129, '10032', ''),
(130, '10033', ''),
(131, '10034', ''),
(132, '10040', ''),
(133, '11361', ''),
(134, '11362', ''),
(135, '11363', ''),
(136, '11364', ''),
(137, '11354', ''),
(138, '11355', ''),
(139, '11356', ''),
(140, '11357', ''),
(141, '11358', ''),
(142, '11359', ''),
(143, '11360', ''),
(144, '11365', ''),
(145, '11366', ''),
(146, '11367', ''),
(147, '11412', ''),
(148, '11423', ''),
(149, '11432', ''),
(150, '11433', ''),
(151, '11434', ''),
(152, '11435', ''),
(153, '11436', ''),
(154, '11101', ''),
(155, '11102', ''),
(156, '11103', ''),
(157, '11104', ''),
(158, '11105', ''),
(159, '11106', ''),
(160, '11374', ''),
(161, '11375', ''),
(162, '11379', ''),
(163, '11385', ''),
(164, '11691', ''),
(165, '11692', ''),
(166, '11693', ''),
(167, '11694', ''),
(168, '11695', ''),
(169, '11697', ''),
(170, '11004', ''),
(171, '11005', ''),
(172, '11411', ''),
(173, '11413', ''),
(174, '11422', ''),
(175, '11426', ''),
(176, '11427', ''),
(177, '11428', ''),
(178, '11429', ''),
(179, '11414', ''),
(180, '11415', ''),
(181, '11416', ''),
(182, '11417', ''),
(183, '11418', ''),
(184, '11419', ''),
(185, '11420', ''),
(186, '11421', ''),
(187, '11368', ''),
(188, '11369', ''),
(189, '11370', ''),
(190, '11372', ''),
(191, '11373', ''),
(192, '11377', ''),
(193, '11378', ''),
(194, '10302', ''),
(195, '10303', ''),
(196, '10310', ''),
(197, '10306', ''),
(198, '10307', ''),
(199, '10308', ''),
(200, '10309', ''),
(201, '10312', ''),
(202, '10301', ''),
(203, '10304', ''),
(204, '10305', ''),
(205, '10314', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_filter`
--

CREATE TABLE `tbl_filter` (
  `filter_id` int(11) NOT NULL,
  `user_radar_id` varchar(255) NOT NULL,
  `distance` int(11) NOT NULL,
  `type_of_hotsopt` int(11) NOT NULL,
  `is_mutual_friend` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ideal_match`
--

CREATE TABLE `tbl_ideal_match` (
  `user_radar_id` varchar(255) NOT NULL,
  `adventurous` int(11) NOT NULL DEFAULT '0',
  `ambitious` int(11) NOT NULL DEFAULT '0',
  `analytical` int(11) NOT NULL DEFAULT '0',
  `articulate` int(11) NOT NULL DEFAULT '0',
  `artsy` int(11) NOT NULL DEFAULT '0',
  `assertive` int(11) NOT NULL DEFAULT '0',
  `athletic` int(11) NOT NULL DEFAULT '0',
  `attentive` int(11) NOT NULL DEFAULT '0',
  `awkward` int(11) NOT NULL DEFAULT '0',
  `baller` int(11) NOT NULL DEFAULT '0',
  `blessed` int(11) NOT NULL DEFAULT '0',
  `brave` int(11) NOT NULL DEFAULT '0',
  `breezy` int(11) NOT NULL DEFAULT '0',
  `cautious` int(11) NOT NULL DEFAULT '0',
  `charitable` int(11) NOT NULL DEFAULT '0',
  `charming` int(11) NOT NULL DEFAULT '0',
  `cheesy` int(11) NOT NULL DEFAULT '0',
  `chill` int(11) NOT NULL DEFAULT '0',
  `chivalrous` int(11) NOT NULL DEFAULT '0',
  `classy` int(11) NOT NULL DEFAULT '0',
  `clean` int(11) NOT NULL DEFAULT '0',
  `clever` int(11) NOT NULL DEFAULT '0',
  `clumsy` int(11) NOT NULL DEFAULT '0',
  `committed` int(11) NOT NULL DEFAULT '0',
  `compassionate` int(11) NOT NULL DEFAULT '0',
  `competitive` int(11) NOT NULL DEFAULT '0',
  `complex` int(11) NOT NULL DEFAULT '0',
  `confident` int(11) NOT NULL DEFAULT '0',
  `corny` int(11) NOT NULL DEFAULT '0',
  `creative` int(11) NOT NULL DEFAULT '0',
  `creepy` int(11) NOT NULL DEFAULT '0',
  `cultured` int(11) NOT NULL DEFAULT '0',
  `curious` int(11) NOT NULL DEFAULT '0',
  `dark` int(11) NOT NULL DEFAULT '0',
  `decisive` int(11) NOT NULL DEFAULT '0',
  `deep` int(11) NOT NULL DEFAULT '0',
  `determined` int(11) NOT NULL DEFAULT '0',
  `dgaf` int(11) NOT NULL DEFAULT '0',
  `diplomatic` int(11) NOT NULL DEFAULT '0',
  `direct` int(11) NOT NULL DEFAULT '0',
  `disciplined` int(11) NOT NULL DEFAULT '0',
  `dope` int(11) NOT NULL DEFAULT '0',
  `dorky` int(11) NOT NULL DEFAULT '0',
  `down_to_earth` int(11) NOT NULL DEFAULT '0',
  `dreamy` int(11) NOT NULL DEFAULT '0',
  `easy` int(11) NOT NULL DEFAULT '0',
  `emotional` int(11) NOT NULL DEFAULT '0',
  `empathetic` int(11) NOT NULL DEFAULT '0',
  `energetic` int(11) NOT NULL DEFAULT '0',
  `enigmatic` int(11) NOT NULL DEFAULT '0',
  `enthusiastic` int(11) NOT NULL DEFAULT '0',
  `experimental` int(11) NOT NULL DEFAULT '0',
  `extroverted` int(11) NOT NULL DEFAULT '0',
  `family_oriented` int(11) NOT NULL DEFAULT '0',
  `fancy` int(11) NOT NULL DEFAULT '0',
  `feisty` int(11) NOT NULL DEFAULT '0',
  `femme` int(11) NOT NULL DEFAULT '0',
  `flamboyant` int(11) NOT NULL DEFAULT '0',
  `flirty` int(11) NOT NULL DEFAULT '0',
  `free_spirited` int(11) NOT NULL DEFAULT '0',
  `fresh` int(11) NOT NULL DEFAULT '0',
  `fried` int(11) NOT NULL DEFAULT '0',
  `frugal` int(11) NOT NULL DEFAULT '0',
  `fun` int(11) NOT NULL DEFAULT '0',
  `funny` int(11) NOT NULL DEFAULT '0',
  `generous` int(11) NOT NULL DEFAULT '0',
  `genuine` int(11) NOT NULL DEFAULT '0',
  `glamorous` int(11) NOT NULL DEFAULT '0',
  `good_listener` int(11) NOT NULL DEFAULT '0',
  `goofy` int(11) NOT NULL DEFAULT '0',
  `grounded` int(11) NOT NULL DEFAULT '0',
  `handy` int(11) NOT NULL DEFAULT '0',
  `hard_working` int(11) NOT NULL DEFAULT '0',
  `headstrong` int(11) NOT NULL DEFAULT '0',
  `hell_raiser` int(11) NOT NULL DEFAULT '0',
  `high_maintenance` int(11) NOT NULL DEFAULT '0',
  `hipster` int(11) NOT NULL DEFAULT '0',
  `honest` int(11) NOT NULL DEFAULT '0',
  `humble` int(11) NOT NULL DEFAULT '0',
  `imaginative` int(11) NOT NULL DEFAULT '0',
  `immature` int(11) NOT NULL DEFAULT '0',
  `impulsive` int(11) NOT NULL DEFAULT '0',
  `in_charge` int(11) NOT NULL DEFAULT '0',
  `independent` int(11) NOT NULL DEFAULT '0',
  `indulgent` int(11) NOT NULL DEFAULT '0',
  `innocent` int(11) NOT NULL DEFAULT '0',
  `intellectual` int(11) NOT NULL DEFAULT '0',
  `intense` int(11) NOT NULL DEFAULT '0',
  `introverted` int(11) NOT NULL DEFAULT '0',
  `juicy` int(11) NOT NULL DEFAULT '0',
  `kind` int(11) NOT NULL DEFAULT '0',
  `kinky` int(11) NOT NULL DEFAULT '0',
  `lazy` int(11) NOT NULL DEFAULT '0',
  `left_brained` int(11) NOT NULL DEFAULT '0',
  `logical` int(11) NOT NULL DEFAULT '0',
  `loner` int(11) NOT NULL DEFAULT '0',
  `low_maintenance` int(11) NOT NULL DEFAULT '0',
  `loyal` int(11) NOT NULL DEFAULT '0',
  `mature` int(11) NOT NULL DEFAULT '0',
  `meathead` int(11) NOT NULL DEFAULT '0',
  `mellow` int(11) NOT NULL DEFAULT '0',
  `messy` int(11) NOT NULL DEFAULT '0',
  `monogamous` int(11) NOT NULL DEFAULT '0',
  `morning_person` int(11) NOT NULL DEFAULT '0',
  `musical` int(11) NOT NULL DEFAULT '0',
  `mysterious` int(11) NOT NULL DEFAULT '0',
  `nerdy` int(11) NOT NULL DEFAULT '0',
  `new_in_town` int(11) NOT NULL DEFAULT '0',
  `nocturnal` int(11) NOT NULL DEFAULT '0',
  `nutty` int(11) NOT NULL DEFAULT '0',
  `odd` int(11) NOT NULL DEFAULT '0',
  `old_fashioned` int(11) NOT NULL DEFAULT '0',
  `open_book` int(11) NOT NULL DEFAULT '0',
  `open_minded` int(11) NOT NULL DEFAULT '0',
  `opinionated` int(11) NOT NULL DEFAULT '0',
  `organized` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `party__animal` int(11) NOT NULL DEFAULT '0',
  `patient` int(11) NOT NULL DEFAULT '0',
  `player` int(11) NOT NULL DEFAULT '0',
  `playful` int(11) NOT NULL DEFAULT '0',
  `plucky` int(11) NOT NULL DEFAULT '0',
  `prankster` int(11) NOT NULL DEFAULT '0',
  `progressive` int(11) NOT NULL DEFAULT '0',
  `protective` int(11) NOT NULL DEFAULT '0',
  `punctual` int(11) NOT NULL DEFAULT '0',
  `quick_witted` int(11) NOT NULL DEFAULT '0',
  `quiet` int(11) NOT NULL DEFAULT '0',
  `rebellious` int(11) NOT NULL DEFAULT '0',
  `reliable` int(11) NOT NULL DEFAULT '0',
  `religious` int(11) NOT NULL DEFAULT '0',
  `responsible` int(11) NOT NULL DEFAULT '0',
  `right_brained` int(11) NOT NULL DEFAULT '0',
  `romantic` int(11) NOT NULL DEFAULT '0',
  `sarcastic` int(11) NOT NULL DEFAULT '0',
  `scary` int(11) NOT NULL DEFAULT '0',
  `sensitive` int(11) NOT NULL DEFAULT '0',
  `sensual` int(11) NOT NULL DEFAULT '0',
  `serious` int(11) NOT NULL DEFAULT '0',
  `sexy` int(11) NOT NULL DEFAULT '0',
  `shady` int(11) NOT NULL DEFAULT '0',
  `sharp` int(11) NOT NULL DEFAULT '0',
  `shy` int(11) NOT NULL DEFAULT '0',
  `silly` int(11) NOT NULL DEFAULT '0',
  `sleazy` int(11) NOT NULL DEFAULT '0',
  `sophisticated` int(11) NOT NULL DEFAULT '0',
  `spacey` int(11) NOT NULL DEFAULT '0',
  `spendthrift` int(11) NOT NULL DEFAULT '0',
  `spicy` int(11) NOT NULL DEFAULT '0',
  `spiritual` int(11) NOT NULL DEFAULT '0',
  `spitfire` int(11) NOT NULL DEFAULT '0',
  `spontaneous` int(11) NOT NULL DEFAULT '0',
  `stable` int(11) NOT NULL DEFAULT '0',
  `stoic` int(11) NOT NULL DEFAULT '0',
  `straightedge` int(11) NOT NULL DEFAULT '0',
  `stubborn` int(11) NOT NULL DEFAULT '0',
  `stylish` int(11) NOT NULL DEFAULT '0',
  `sunny` int(11) NOT NULL DEFAULT '0',
  `sweet` int(11) NOT NULL DEFAULT '0',
  `takes_it_slow` int(11) NOT NULL DEFAULT '0',
  `techie` int(11) NOT NULL DEFAULT '0',
  `thoughtful` int(11) NOT NULL DEFAULT '0',
  `tidy` int(11) NOT NULL DEFAULT '0',
  `tough` int(11) NOT NULL DEFAULT '0',
  `tranquil` int(11) NOT NULL DEFAULT '0',
  `trustworthy` int(11) NOT NULL DEFAULT '0',
  `uninhibited` int(11) NOT NULL DEFAULT '0',
  `unique` int(11) NOT NULL DEFAULT '0',
  `whimsical` int(11) NOT NULL DEFAULT '0',
  `wholesome` int(11) NOT NULL DEFAULT '0',
  `wild` int(11) NOT NULL DEFAULT '0',
  `woke` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_intrest`
--

CREATE TABLE `tbl_intrest` (
  `user_radar_id` varchar(255) NOT NULL,
  `going_out` int(11) NOT NULL DEFAULT '0',
  `staying_in` int(11) NOT NULL DEFAULT '0',
  `dining_out` int(11) NOT NULL DEFAULT '0',
  `cooking` int(11) NOT NULL DEFAULT '0',
  `watching_tv` int(11) NOT NULL DEFAULT '0',
  `traveling` int(11) NOT NULL DEFAULT '0',
  `road_trips` int(11) NOT NULL DEFAULT '0',
  `shopping` int(11) NOT NULL DEFAULT '0',
  `dancing` int(11) NOT NULL DEFAULT '0',
  `sports` int(11) NOT NULL DEFAULT '0',
  `exercise` int(11) NOT NULL DEFAULT '0',
  `cycling` int(11) NOT NULL DEFAULT '0',
  `vegetarian` int(11) NOT NULL DEFAULT '0',
  `politics` int(11) NOT NULL DEFAULT '0',
  `reading` int(11) NOT NULL DEFAULT '0',
  `culture` int(11) NOT NULL DEFAULT '0',
  `art` int(11) NOT NULL DEFAULT '0',
  `music` int(11) NOT NULL DEFAULT '0',
  `karaoke` int(11) NOT NULL DEFAULT '0',
  `film` int(11) NOT NULL DEFAULT '0',
  `gaming` int(11) NOT NULL DEFAULT '0',
  `geekery` int(11) NOT NULL DEFAULT '0',
  `recreational_drugs` int(11) NOT NULL DEFAULT '0',
  `dogs` int(11) NOT NULL DEFAULT '0',
  `cats` int(11) NOT NULL DEFAULT '0',
  `nature` int(11) NOT NULL DEFAULT '0',
  `being_green` int(11) NOT NULL DEFAULT '0',
  `camping` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_self_personality`
--

CREATE TABLE `tbl_self_personality` (
  `user_radar_id` varchar(255) NOT NULL,
  `adventurous` int(11) NOT NULL DEFAULT '0',
  `ambitious` int(11) NOT NULL DEFAULT '0',
  `analytical` int(11) NOT NULL DEFAULT '0',
  `articulate` int(11) NOT NULL DEFAULT '0',
  `artsy` int(11) NOT NULL DEFAULT '0',
  `assertive` int(11) NOT NULL DEFAULT '0',
  `athletic` int(11) NOT NULL DEFAULT '0',
  `attentive` int(11) NOT NULL DEFAULT '0',
  `awkward` int(11) NOT NULL DEFAULT '0',
  `baller` int(11) NOT NULL DEFAULT '0',
  `blessed` int(11) NOT NULL DEFAULT '0',
  `brave` int(11) NOT NULL DEFAULT '0',
  `breezy` int(11) NOT NULL DEFAULT '0',
  `cautious` int(11) NOT NULL DEFAULT '0',
  `charitable` int(11) NOT NULL DEFAULT '0',
  `charming` int(11) NOT NULL DEFAULT '0',
  `cheesy` int(11) NOT NULL DEFAULT '0',
  `chill` int(11) NOT NULL DEFAULT '0',
  `chivalrous` int(11) NOT NULL DEFAULT '0',
  `classy` int(11) NOT NULL DEFAULT '0',
  `clean` int(11) NOT NULL DEFAULT '0',
  `clever` int(11) NOT NULL DEFAULT '0',
  `clumsy` int(11) NOT NULL DEFAULT '0',
  `committed` int(11) NOT NULL DEFAULT '0',
  `compassionate` int(11) NOT NULL DEFAULT '0',
  `competitive` int(11) NOT NULL DEFAULT '0',
  `complex` int(11) NOT NULL DEFAULT '0',
  `confident` int(11) NOT NULL DEFAULT '0',
  `corny` int(11) NOT NULL DEFAULT '0',
  `creative` int(11) NOT NULL DEFAULT '0',
  `creepy` int(11) NOT NULL DEFAULT '0',
  `cultured` int(11) NOT NULL DEFAULT '0',
  `curious` int(11) NOT NULL DEFAULT '0',
  `dark` int(11) NOT NULL DEFAULT '0',
  `decisive` int(11) NOT NULL DEFAULT '0',
  `deep` int(11) NOT NULL DEFAULT '0',
  `determined` int(11) NOT NULL DEFAULT '0',
  `dgaf` int(11) NOT NULL DEFAULT '0',
  `diplomatic` int(11) NOT NULL DEFAULT '0',
  `direct` int(11) NOT NULL DEFAULT '0',
  `disciplined` int(11) NOT NULL DEFAULT '0',
  `dope` int(11) NOT NULL DEFAULT '0',
  `dorky` int(11) NOT NULL DEFAULT '0',
  `down_to_earth` int(11) NOT NULL DEFAULT '0',
  `dreamy` int(11) NOT NULL DEFAULT '0',
  `easy` int(11) NOT NULL DEFAULT '0',
  `emotional` int(11) NOT NULL DEFAULT '0',
  `empathetic` int(11) NOT NULL DEFAULT '0',
  `energetic` int(11) NOT NULL DEFAULT '0',
  `enigmatic` int(11) NOT NULL DEFAULT '0',
  `enthusiastic` int(11) NOT NULL DEFAULT '0',
  `experimental` int(11) NOT NULL DEFAULT '0',
  `extroverted` int(11) NOT NULL DEFAULT '0',
  `family_oriented` int(11) NOT NULL DEFAULT '0',
  `fancy` int(11) NOT NULL DEFAULT '0',
  `feisty` int(11) NOT NULL DEFAULT '0',
  `femme` int(11) NOT NULL DEFAULT '0',
  `flamboyant` int(11) NOT NULL DEFAULT '0',
  `flirty` int(11) NOT NULL DEFAULT '0',
  `free_spirited` int(11) NOT NULL DEFAULT '0',
  `fresh` int(11) NOT NULL DEFAULT '0',
  `fried` int(11) NOT NULL DEFAULT '0',
  `frugal` int(11) NOT NULL DEFAULT '0',
  `fun` int(11) NOT NULL DEFAULT '0',
  `funny` int(11) NOT NULL DEFAULT '0',
  `generous` int(11) NOT NULL DEFAULT '0',
  `genuine` int(11) NOT NULL DEFAULT '0',
  `glamorous` int(11) NOT NULL DEFAULT '0',
  `good_listener` int(11) NOT NULL DEFAULT '0',
  `goofy` int(11) NOT NULL DEFAULT '0',
  `grounded` int(11) NOT NULL DEFAULT '0',
  `handy` int(11) NOT NULL DEFAULT '0',
  `hard_working` int(11) NOT NULL DEFAULT '0',
  `headstrong` int(11) NOT NULL DEFAULT '0',
  `hell_raiser` int(11) NOT NULL DEFAULT '0',
  `high_maintenance` int(11) NOT NULL DEFAULT '0',
  `hipster` int(11) NOT NULL DEFAULT '0',
  `honest` int(11) NOT NULL DEFAULT '0',
  `humble` int(11) NOT NULL DEFAULT '0',
  `imaginative` int(11) NOT NULL DEFAULT '0',
  `immature` int(11) NOT NULL DEFAULT '0',
  `impulsive` int(11) NOT NULL DEFAULT '0',
  `in_charge` int(11) NOT NULL DEFAULT '0',
  `independent` int(11) NOT NULL DEFAULT '0',
  `indulgent` int(11) NOT NULL DEFAULT '0',
  `innocent` int(11) NOT NULL DEFAULT '0',
  `intellectual` int(11) NOT NULL DEFAULT '0',
  `intense` int(11) NOT NULL DEFAULT '0',
  `introverted` int(11) NOT NULL DEFAULT '0',
  `juicy` int(11) NOT NULL DEFAULT '0',
  `kind` int(11) NOT NULL DEFAULT '0',
  `kinky` int(11) NOT NULL DEFAULT '0',
  `lazy` int(11) NOT NULL DEFAULT '0',
  `left_brained` int(11) NOT NULL DEFAULT '0',
  `logical` int(11) NOT NULL DEFAULT '0',
  `loner` int(11) NOT NULL DEFAULT '0',
  `low_maintenance` int(11) NOT NULL DEFAULT '0',
  `loyal` int(11) NOT NULL DEFAULT '0',
  `mature` int(11) NOT NULL DEFAULT '0',
  `meathead` int(11) NOT NULL DEFAULT '0',
  `mellow` int(11) NOT NULL DEFAULT '0',
  `messy` int(11) NOT NULL DEFAULT '0',
  `monogamous` int(11) NOT NULL DEFAULT '0',
  `morning_person` int(11) NOT NULL DEFAULT '0',
  `musical` int(11) NOT NULL DEFAULT '0',
  `mysterious` int(11) NOT NULL DEFAULT '0',
  `nerdy` int(11) NOT NULL DEFAULT '0',
  `new_in_town` int(11) NOT NULL DEFAULT '0',
  `nocturnal` int(11) NOT NULL DEFAULT '0',
  `nutty` int(11) NOT NULL DEFAULT '0',
  `odd` int(11) NOT NULL DEFAULT '0',
  `old_fashioned` int(11) NOT NULL DEFAULT '0',
  `open_book` int(11) NOT NULL DEFAULT '0',
  `open_minded` int(11) NOT NULL DEFAULT '0',
  `opinionated` int(11) NOT NULL DEFAULT '0',
  `organized` int(11) NOT NULL DEFAULT '0',
  `original` int(11) NOT NULL DEFAULT '0',
  `party__animal` int(11) NOT NULL DEFAULT '0',
  `patient` int(11) NOT NULL DEFAULT '0',
  `player` int(11) NOT NULL DEFAULT '0',
  `playful` int(11) NOT NULL DEFAULT '0',
  `plucky` int(11) NOT NULL DEFAULT '0',
  `prankster` int(11) NOT NULL DEFAULT '0',
  `progressive` int(11) NOT NULL DEFAULT '0',
  `protective` int(11) NOT NULL DEFAULT '0',
  `punctual` int(11) NOT NULL DEFAULT '0',
  `quick_witted` int(11) NOT NULL DEFAULT '0',
  `quiet` int(11) NOT NULL DEFAULT '0',
  `rebellious` int(11) NOT NULL DEFAULT '0',
  `reliable` int(11) NOT NULL DEFAULT '0',
  `religious` int(11) NOT NULL DEFAULT '0',
  `responsible` int(11) NOT NULL DEFAULT '0',
  `right_brained` int(11) NOT NULL DEFAULT '0',
  `romantic` int(11) NOT NULL DEFAULT '0',
  `sarcastic` int(11) NOT NULL DEFAULT '0',
  `scary` int(11) NOT NULL DEFAULT '0',
  `sensitive` int(11) NOT NULL DEFAULT '0',
  `sensual` int(11) NOT NULL DEFAULT '0',
  `serious` int(11) NOT NULL DEFAULT '0',
  `sexy` int(11) NOT NULL DEFAULT '0',
  `shady` int(11) NOT NULL DEFAULT '0',
  `sharp` int(11) NOT NULL DEFAULT '0',
  `shy` int(11) NOT NULL DEFAULT '0',
  `silly` int(11) NOT NULL DEFAULT '0',
  `sleazy` int(11) NOT NULL DEFAULT '0',
  `sophisticated` int(11) NOT NULL DEFAULT '0',
  `spacey` int(11) NOT NULL DEFAULT '0',
  `spendthrift` int(11) NOT NULL DEFAULT '0',
  `spicy` int(11) NOT NULL DEFAULT '0',
  `spiritual` int(11) NOT NULL DEFAULT '0',
  `spitfire` int(11) NOT NULL DEFAULT '0',
  `spontaneous` int(11) NOT NULL DEFAULT '0',
  `stable` int(11) NOT NULL DEFAULT '0',
  `stoic` int(11) NOT NULL DEFAULT '0',
  `straightedge` int(11) NOT NULL DEFAULT '0',
  `stubborn` int(11) NOT NULL DEFAULT '0',
  `stylish` int(11) NOT NULL DEFAULT '0',
  `sunny` int(11) NOT NULL DEFAULT '0',
  `sweet` int(11) NOT NULL DEFAULT '0',
  `takes_it_slow` int(11) NOT NULL DEFAULT '0',
  `techie` int(11) NOT NULL DEFAULT '0',
  `thoughtful` int(11) NOT NULL DEFAULT '0',
  `tidy` int(11) NOT NULL DEFAULT '0',
  `tough` int(11) NOT NULL DEFAULT '0',
  `tranquil` int(11) NOT NULL DEFAULT '0',
  `trustworthy` int(11) NOT NULL DEFAULT '0',
  `uninhibited` int(11) NOT NULL DEFAULT '0',
  `unique` int(11) NOT NULL DEFAULT '0',
  `whimsical` int(11) NOT NULL DEFAULT '0',
  `wholesome` int(11) NOT NULL DEFAULT '0',
  `wild` int(11) NOT NULL DEFAULT '0',
  `woke` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_top_artist`
--

CREATE TABLE `tbl_top_artist` (
  `user_radar_id` varchar(255) NOT NULL,
  `artist_list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_radar_id` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('m','f') NOT NULL COMMENT 'm=male,f=female',
  `dob` date NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `facebook_id` varchar(255) NOT NULL,
  `instagram_id` varchar(255) NOT NULL,
  `email_verification_string` varchar(255) NOT NULL,
  `email_verification_expire` datetime NOT NULL,
  `password_reset_string` varchar(255) NOT NULL,
  `password_reset_expire` datetime NOT NULL,
  `intrest_in` varchar(10) NOT NULL,
  `intrest_min_age` int(11) NOT NULL,
  `intrest_max_age` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_status` enum('0','1','2','3') NOT NULL COMMENT '0=enable,1=deleted,2=blocked,3=disabled',
  `profile_pic` text NOT NULL,
  `zip_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_radar_id`, `first_name`, `last_name`, `gender`, `dob`, `email`, `latitude`, `longitude`, `password`, `password_hash`, `facebook_id`, `instagram_id`, `email_verification_string`, `email_verification_expire`, `password_reset_string`, `password_reset_expire`, `intrest_in`, `intrest_min_age`, `intrest_max_age`, `created_at`, `last_update`, `account_status`, `profile_pic`, `zip_code`) VALUES
(38, '7b5f6e8ae200360119bd898012308004', 'Twentyseven', '', 'm', '1988-10-10', 'testcanopus27@gmail.com', '', '', '', '', '308541816332388', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0, '2018-01-02 13:06:27', '2018-01-02 13:06:27', '0', 'http://111.118.246.35/radarapp/uploads/profile_image/7b5f6e8ae200360119bd898012308004.png', '94102'),
(39, '006edf9050a008c2b6cbd0a552f25eb5', 'TwentyEight', '', 'm', '1970-10-10', 'testcanopus28@gmail.com', '', '', '', '', '205448316680978', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0, '2018-01-03 14:32:25', '2018-01-03 14:32:25', '0', 'http://111.118.246.35/radarapp/uploads/profile_image/006edf9050a008c2b6cbd0a552f25eb5.png', '94102'),
(40, 'f28f739576b829b6756f94787a2b2841', 'NinetyNine', '', 'm', '1988-10-10', 'testcano99@gmail.com', '', '', '', '', '189983815072512', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0, '2018-01-03 14:35:50', '2018-01-03 14:35:50', '0', 'http://111.118.246.35/radarapp/uploads/profile_image/f28f739576b829b6756f94787a2b2841.png', '94110'),
(41, 'e6b26a452111331bf73c05dfeca99703', 'Ninezero', '', 'm', '1988-10-10', 'testcano90@gmail.com', '', '', '', '', '187756861965186', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0, '2018-01-03 15:29:19', '2018-01-03 15:29:20', '0', 'http://111.118.246.35/radarapp/uploads/profile_image/e6b26a452111331bf73c05dfeca99703.png', '94102'),
(42, '6f5f050740b370db699958bcac4fe729', 'Natalie', '', 'm', '1987-03-02', 'taylornatalie.rose@gmail.com', '', '', '', '', '10100509591905980', '', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 0, 0, '2018-01-03 17:54:05', '2018-01-03 17:54:05', '0', 'http://111.118.246.35/radarapp/uploads/profile_image/6f5f050740b370db699958bcac4fe729.png', '11217');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_auth`
--

CREATE TABLE `tbl_user_auth` (
  `auth_id` int(11) NOT NULL,
  `user_radar_id` varchar(255) NOT NULL,
  `auth_token` varchar(255) NOT NULL,
  `device_type` varchar(10) NOT NULL,
  `device_token` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_auth`
--

INSERT INTO `tbl_user_auth` (`auth_id`, `user_radar_id`, `auth_token`, `device_type`, `device_token`, `created_at`) VALUES
(2, 'e1ae54aab9d8a4f4a948d0346e5f8307', '590e66e4e7924b0c15634294f0851489', 'ios', 'sdaf', '2017-12-21 11:54:14'),
(3, 'e61df973184b992821f61e32dcf5c891', '456b9e531b7a376bcfcc51f8d238e5ee', 'ios', 'sadfsadf', '2017-12-22 06:41:40'),
(4, '6f5f050740b370db699958bcac4fe729', '76f622de54cd3acd3dc3efe441d0d8cb', 'ios', 'sdfasd', '2018-01-03 18:37:01'),
(5, '6f5f050740b370db699958bcac4fe729', 'c5d1388ff9590640de954f2fc3159f30', 'ios', 'abcd', '2018-01-03 17:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `firstname`, `lastname`, `created_at`) VALUES
(1, 'satanand.tiwari@canopusinfosystems.com', 'satanand7', 'satanand', 'tiwari', '2017-08-18 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `controller` (`controller`),
  ADD KEY `access_key_fk` (`key`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `keys_user_id_fk` (`user_id`);

--
-- Indexes for table `limits`
--
ALTER TABLE `limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uri` (`uri`),
  ADD KEY `limits_api_key_fk` (`api_key`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_artists_list`
--
ALTER TABLE `tbl_artists_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_available_zipcode`
--
ALTER TABLE `tbl_available_zipcode`
  ADD PRIMARY KEY (`zip_id`);

--
-- Indexes for table `tbl_filter`
--
ALTER TABLE `tbl_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `tbl_ideal_match`
--
ALTER TABLE `tbl_ideal_match`
  ADD PRIMARY KEY (`user_radar_id`);

--
-- Indexes for table `tbl_intrest`
--
ALTER TABLE `tbl_intrest`
  ADD PRIMARY KEY (`user_radar_id`);

--
-- Indexes for table `tbl_self_personality`
--
ALTER TABLE `tbl_self_personality`
  ADD PRIMARY KEY (`user_radar_id`);

--
-- Indexes for table `tbl_top_artist`
--
ALTER TABLE `tbl_top_artist`
  ADD PRIMARY KEY (`user_radar_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_radar_id` (`user_radar_id`),
  ADD KEY `user_radar_id_2` (`user_radar_id`);

--
-- Indexes for table `tbl_user_auth`
--
ALTER TABLE `tbl_user_auth`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `limits`
--
ALTER TABLE `limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_artists_list`
--
ALTER TABLE `tbl_artists_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_available_zipcode`
--
ALTER TABLE `tbl_available_zipcode`
  MODIFY `zip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;
--
-- AUTO_INCREMENT for table `tbl_filter`
--
ALTER TABLE `tbl_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `tbl_user_auth`
--
ALTER TABLE `tbl_user_auth`
  MODIFY `auth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_key_fk` FOREIGN KEY (`key`) REFERENCES `keys` (`key`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keys`
--
ALTER TABLE `keys`
  ADD CONSTRAINT `keys_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `limits`
--
ALTER TABLE `limits`
  ADD CONSTRAINT `limits_api_key_fk` FOREIGN KEY (`api_key`) REFERENCES `keys` (`key`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_ideal_match`
--
ALTER TABLE `tbl_ideal_match`
  ADD CONSTRAINT `tbl_ideal_match_ibfk_1` FOREIGN KEY (`user_radar_id`) REFERENCES `tbl_user` (`user_radar_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_intrest`
--
ALTER TABLE `tbl_intrest`
  ADD CONSTRAINT `tbl_intrest_ibfk_1` FOREIGN KEY (`user_radar_id`) REFERENCES `tbl_user` (`user_radar_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_self_personality`
--
ALTER TABLE `tbl_self_personality`
  ADD CONSTRAINT `tbl_self_personality_ibfk_1` FOREIGN KEY (`user_radar_id`) REFERENCES `tbl_user` (`user_radar_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_top_artist`
--
ALTER TABLE `tbl_top_artist`
  ADD CONSTRAINT `tbl_top_artist_ibfk_1` FOREIGN KEY (`user_radar_id`) REFERENCES `tbl_user` (`user_radar_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
