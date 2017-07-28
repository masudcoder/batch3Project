-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2017 at 08:39 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `admin_type` tinyint(1) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `admin_type`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super@admin.com', 1, '$2y$10$hZRZiBmJWAk1WK4T6eGYS.QAp9rl.A8LcLilY.q/kK8Ffu62VF3Kq', 'FP4T9JgQB68dUSFDtzeshuDKADvCffNGSPgkqCOpVyZyF0VwEvYRiOpQneWR', NULL, '2017-02-18 00:43:05'),
(2, 'admin', 'admin@freecommerce.com', 2, '$2y$10$hZRZiBmJWAk1WK4T6eGYS.QAp9rl.A8LcLilY.q/kK8Ffu62VF3Kq', 'eLSFHr4B9leC2WmAPfrAJFviqFaDbTbvZkcjVNhuWaW6gMflx9WwBCbY2dtn', NULL, '2017-03-06 14:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `category_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_long_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` int(11) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `count_product` int(11) NOT NULL,
  `category_sort_order` int(11) NOT NULL,
  `meta_key` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`category_row_id`, `category_name`, `active_status`, `category_image`, `category_short_description`, `category_long_description`, `parent_id`, `has_child`, `is_featured`, `level`, `count_product`, `category_sort_order`, `meta_key`, `meta_description`, `created_at`, `updated_at`) VALUES
(56, 'Laravel', 1, '', '', '', 0, 1, 0, 0, 0, 0, '', '', '2016-06-11 22:27:42', '2016-08-09 13:42:12'),
(57, 'MySQL', 1, '', '', '', 0, 1, 0, 0, 0, 0, '', '', '2016-06-11 22:27:59', '2016-08-09 13:42:19'),
(58, 'PHP', 1, '', '', '', 0, 1, 0, 0, 0, 0, '', '', '2016-08-09 13:41:35', '2016-08-09 13:41:35'),
(71, 'PHP-OOP', 1, '', '', '', 0, 0, 0, 0, 0, 0, '', '', NULL, NULL),
(72, 'Git', 1, '', '', '', 0, 0, 0, 0, 0, 0, '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `post_row_id` int(11) NOT NULL,
  `category_row_id` int(11) NOT NULL,
  `active_status` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL,
  `post_url_link` varchar(255) NOT NULL,
  `has_content` tinyint(1) NOT NULL DEFAULT '0',
  `post_title` varchar(255) NOT NULL,
  `post_content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`post_row_id`, `category_row_id`, `active_status`, `sort_order`, `post_url_link`, `has_content`, `post_title`, `post_content`, `created_at`, `updated_at`) VALUES
(1, 58, 1, 0, 'Web-Crawler', 0, 'Web Crawler', 'A Web crawler is an Internet bot which systematically browses the World Wide Web, typically for the purpose of Web indexing (web spidering). Web search ...', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 56, 1, 1, 'install-laravel-in-windows', 1, 'Install laravel in windows', '<p>1. Install Composer<br />2. Create a folder inside htdocs named \"laravelProject\"<br />3. Open cmd and run<br />&nbsp; &nbsp;composer create-project laravel/laravel &nbsp;D:/xampp/htdocs/laravelProject<br /><br />You can keep the project anywhere and can run it. It is the simplest way to install laravel in windows. It will install latest version of laravel.<br />For more details it is better to visit&nbsp;&nbsp;<a href=\"https://www.laravel.com/docs/5.3/installation\">https://www.laravel.com/docs/5.3/installation</a> because everything is there.</p>', '0000-00-00 00:00:00', '2016-08-25 16:30:55'),
(4, 57, 1, 0, 'my-sql-null-value', 1, 'My SQL Null Value', '<p><strong>o &nbsp;is not null</strong><br /> <strong>\'\' is not null<br /> \' &nbsp;\' &nbsp;is not null<br /> Only null is null<br /> <code>Any operation with null makes the output&nbsp;null.</code></strong><br /> SELECT &nbsp;2/0 &nbsp; &nbsp; &nbsp; &nbsp;//output: null<br /> SELECT 2*null &nbsp; //output: null<br /> SELECT ISNULL(NULL) &nbsp;//output: 1<br /> SELECT ISNULL(0)&nbsp;//output: 0<br /> SELECT ISNULL(\'\')&nbsp;//output: 0<br /> SELECT ISNULL(\' \')&nbsp;//output: 0</p>\r\n<p>&nbsp;</p>', '0000-00-00 00:00:00', '2016-08-25 16:43:40'),
(6, 57, 1, 0, 'mysql-storage-engine', 1, 'MySQL Storage Engine', '<p><strong>1. MyISAM</strong><br /><strong>2.InnoDB<br /></strong>3. Memory<br />4.CSV<br />5.Merge<br />and some others.<br /><br />Usually MyISAM and InnoDB are used.<br /><br /><strong>MyISAM was default storage engine up to My SQL 5.5. &nbsp;InnoDB is the default storage engine in&nbsp;MySQL 5.5 and Later version.<br /><br />MyISAM:&nbsp; <br />&nbsp;</strong>&gt;&gt;Faster than InnoDB<strong> <br /></strong>&nbsp;&gt;&gt;It is good when there are lot of&nbsp;read operations in table. &nbsp;<br /><strong>&nbsp;</strong>&gt;&gt;Good for Full-text Search<br /><strong>&nbsp;</strong>&gt;&gt;Does not support&nbsp;transactions<br />&gt;&gt;Supports Table level locking<br /><br /><strong>InnoDB:</strong><br />&gt;&gt;Support &nbsp;transaction that is necessary in finance module, specially in banking software.<br />&gt;&gt;support row level locking<br />&gt;&gt;Foreign key constraints<br />&gt;&gt;Crash recovery, more resistant to table corruption.<br />&gt;&gt; Good when there are more write operations in the table.<strong><br /></strong><br /><strong>Memory:</strong><br />&gt;&gt;Fastest<br />&gt;&gt;Good for Creation of &nbsp;temporary tables.<br />&gt;&gt;Data is lost when database is restarted, Table is not destroyed but no data will be there.<br />&nbsp;</p>\r\n<p>&nbsp;</p>', '0000-00-00 00:00:00', '2016-08-25 16:05:56'),
(7, 57, 1, 0, 'MySQL keys', 1, 'Keys', '<p>1. Primary<br />2. Unique ( unique is unique:) &nbsp;accepts&nbsp;0)<br />3. Index (Mainly used to make the searching faster)<br />4. FullText ( created on text based column like varchar,text - to speed up query)<br />5. Spatial ( used in Geo Object shape- related functions&nbsp;<strong class=\"userinput\"><code>MBRContains,&nbsp;</code></strong><strong class=\"userinput\"><code>MBRWithin</code></strong>)</p>', '0000-00-00 00:00:00', '2016-08-25 15:35:43'),
(8, 69, 1, 0, 'What-is-Maria-DB\r\n', 0, 'What is Maria DB\r\n', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 61, 1, 0, 'What-is-API\r\n', 0, 'What is an API\r\n', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 61, 1, 0, 'Web-Service-Soup-Rest', 0, 'Web Service (Soup Rest)', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 70, 1, 0, 'mongo-db', 0, 'Mongo DB', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 56, 1, 9, 'laravel-error-maximum-function-nesting-level-of-100-reached-aborting', 1, 'Laravel Error: Maximum function nesting level of \'100\' reached, aborting', '<p>Open bootstrap/autoload.php write a line of code.<br /> ini_set(\'xdebug.max_nesting_level\', 400);</p>', '0000-00-00 00:00:00', '2016-08-25 16:31:19'),
(64, 56, 1, 8, 'how-to-see-the-version-of-laravel', 1, 'How to see the version of laravel', '<p>1. php artisan --version<br />2. vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php<br /> see const VERSION = \'version no\';</p>', '0000-00-00 00:00:00', '2016-09-04 05:50:09'),
(66, 57, 1, 0, 'mysql-optimization', 1, 'MySQL Optimization', '<ol>\r\n<li><strong>Indexing<br /><br /></strong></li>\r\n<li><strong>Avoidance of Sub Query.</strong><br />&gt;&gt; Splitting&nbsp;queries may cause problem in MYISAM as<strong> transaction</strong> not available. If It is INNODB then you will get transaction support as well as row level locking.<br /><br /></li>\r\n<li><strong>Understanding Engine</strong>: My sql has two primary storage. MYISAM, INNODB.<br />MY ISAM is good for read heavy data where InnoDB is good for write heavy data. MyISAM has internal cache that stores how many rows in tables. So count(*) query is faster in MYISAM, innoDB has such no cache, so it is expensive. InnoDB supports<br />transaction but MyISAM does not. So, depending on the application you should choose the storage &nbsp;Engine.<br /><br /></li>\r\n<li><strong>Replication &amp; Sharding</strong><br />Replications-&gt; Distributing DB in more than one location. &nbsp;same data appears in all server.<br /><span style=\"line-height: 1.5;\">Sharding-&gt;&nbsp;Distributing DB in more than one location, different server contains different data.</span></li>\r\n</ol>', '2016-08-21 17:18:03', '2016-08-25 16:44:20'),
(74, 57, 1, 0, 'concat-and-concat-ws-in-mysql', 1, 'CONCAT and  CONCAT_WS  in MYSQL', '<p>SELECT CONCAT(\'-\', \'Masud\', \'Zaman\') //output: &nbsp; -MasudZaman</p>\r\n<p>SELECT CONCAT_WS(\'-\', \'Masud\', \'Zaman\') //output: Masud-Zaman</p>', '2016-08-21 18:32:43', '2016-08-25 16:44:40'),
(75, 57, 1, 0, 'mysql-least-and-greatest', 1, 'MYSQL LEAST and GREATEST', '<p>SELECT&nbsp;LEAST(2,3,5,6) //output 2<br /> SELECT GREATEST&nbsp;(2,3,5,6) //output 6</p>', '2016-08-21 18:34:05', '2016-08-21 18:34:05'),
(76, 56, 1, 7, 'how-to-fix-pdo-exception-in-connectorphp-line-55-in-laravel', 1, 'How to fix PDO Exception in Connector.php line 55 in laravel', '<ol>\r\n<li>Check &nbsp;.env file properly.</li>\r\n<li>Clear cache.</li>\r\n<li>Run migrate</li>\r\n</ol>', '2016-08-21 18:35:13', '2016-08-21 18:35:13'),
(77, 58, 1, 0, 'php7-new-features', 1, 'PHP7 new  features', '<ol>\r\n<li><strong>Faster :</strong> &nbsp;about two times faster than php 5.6<br /><br /></li>\r\n<li>.<strong> Type declaration, Scaler Type hints</strong><br /> <!--?php class B<br ?--> {<br /> public function test(int $i)<br /> {<br /> echo \'Method of child Class is Called\';<br /> }<br /> }<br /> $objB = new B;<br /> $objB-&gt;test(4);<br /> /* Prior to PHP7 version:&nbsp;<strong>Catchable fatal error</strong>: Argument 1 passed to B::test() must be an instance of int, integer given,<br /> you could pass only object and array prior version of php 7. but ithis code works in php 7. */?&gt;<br /><br /></li>\r\n<li><strong>Return type declaration</strong>\r\n<pre>function getResult(int $para1, int $para2 ) : <strong>int</strong> { }\r\n\r\n</pre>\r\n</li>\r\n<li><strong>Error Handling</strong><br /> you can throw an error rather than exception<br /><br /></li>\r\n<li>&nbsp;<strong>Spaceship Operator</strong> : &nbsp;<strong>&lt;=&gt;<br /> </strong>echo&nbsp;1&nbsp;&lt;=&gt;&nbsp;1;&nbsp;//&nbsp;0<br /> echo&nbsp;1&nbsp;&lt;=&gt;&nbsp;2;&nbsp;//&nbsp;-1<br /> echo&nbsp;2&nbsp;&lt;=&gt;&nbsp;1;&nbsp;//&nbsp;1<br /> <strong><br /> </strong>6. <strong>Coalesec Operator</strong>:<br /> <!--?php <br ?--> //if it exists and is not NULL then it prints its\' value.//case-1:<br /> echo $status = $val ?? 2; // $val is not set, output second operand: 2//case-2:<br /> $val = 0;<br /> echo $status = $val ?? 3; //$val is set, output first operand: 0\r\n<p>//case-3:<br /> $val = null;<br /> echo $status = $val ?? 4; //$val is null, output 4</p>\r\n<p>//case-4:<br /> $val = \'\';<br /> echo $status = $val ?? 5; //$val is set, output</p>\r\n<p>// case-5 (terenary operator: no changes done here,&nbsp; for thinking)<br /> $val = 0;<br /> echo $status = $val ? $val : 3; //$val is not true, output second operand: 3</p>\r\n<p>// Think case-2 &amp; case 5.<br /> ?&gt;</p>\r\n<p>7. &nbsp; <strong>&nbsp;Define Constant Array</strong><br /> <!--?php <br ?--> define(\'DISTRICTS\',&nbsp;[<br /> \'Dhaka\',<br /> \'Rajshahi\',<br /> \'Tangail\'<br /> ]);</p>\r\n<p>8. <strong>Clouser ::call()</strong></p>\r\n</li>\r\n</ol>', '2016-08-21 18:35:54', '2016-08-21 19:03:14'),
(78, 71, 1, 0, 'overloading-in-php', 1, 'Overloading in php', '<p><!--?php <br ?--><!--?php </p>\r\n<p>Class A<br ?--><!--?php <br ?-->class A {<br />&nbsp; &nbsp; &nbsp; public function test(int $para)<br />&nbsp; &nbsp; &nbsp; {<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;echo \'function first time\';<br />&nbsp; &nbsp; &nbsp; }<br /><strong>&nbsp; &nbsp; &nbsp;// Declare the test method again with different arguments.&nbsp; &nbsp; &nbsp; &nbsp;</strong></p>\r\n<p>&nbsp; &nbsp; public function test(int $par1, int $para2)<br />&nbsp; &nbsp; &nbsp;{<br />&nbsp; &nbsp; &nbsp; &nbsp; echo \'function second time\';<br />&nbsp; &nbsp; &nbsp;}<br /> }</p>\r\n<p>?&gt;<br /><strong>&nbsp;//Fatal error: Cannot redeclare A::test()&nbsp;</strong><strong><br />Declaring &nbsp;methods&nbsp; with same name &amp; different argument is mainly callled method overloading.</strong> <strong>This code is ok for standard OOP concept. In Java, C it works but in PHP it does not work.</strong> &nbsp;<strong>In this sense PHP does not&nbsp;</strong><strong>support method overloading.<br /></strong>&nbsp;</p>\r\n<p>SO, the question is <strong>How PHP supports overloading.</strong><br /> Actually php overloading works by <strong>magic method.</strong>&nbsp; See the example,</p>\r\n<p><!--?php </p>\r\n<p>Class A<br ?--><!--?php <br ?-->class A {<br />&nbsp; &nbsp; &nbsp;public function __call($name, $arguments)<br />&nbsp; &nbsp; { <br /> <br />&nbsp; &nbsp; &nbsp;echo \'called from: \' . $name ; <br />&nbsp; &nbsp; &nbsp;echo \'Arguments is an array. Elements are: \';<br />&nbsp; &nbsp; &nbsp;print_r($arguments); <br />&nbsp; &nbsp; }<br />}</p>\r\n<p>$obj = new A;<br />$obj-&gt;myAutoMethod(5);&nbsp;<br />$obj-&gt;myAutoSameMethod(5, 6, 7, \'abc\');&nbsp;<br />?&gt;</p>\r\n<p><code>__call() &nbsp;method is called in&nbsp;both cases. In this way it is overloaded and this is called overloading in PHP.</code><br /><br /></p>\r\n<p><strong>Output:</strong></p>\r\n<p>Called from: <strong>myAutoMethod</strong><br />Arguments is an array. Elements are: Array ( [0] =&gt; 5 ) <br /><br /><br />Called from: <strong>myAutoSameMethod</strong><br />Arguments is an array. Elements are: Array ( [0] =&gt; 5 [1] =&gt; 6 [2] =&gt; 7 [3] =&gt; abc ) <br /><br /></p>\r\n<p><strong>__call() is invoked when called function is not available, it does not matter how many parameters does the calling function has.</strong></p>', '2016-08-21 18:36:56', '2016-08-25 16:42:55'),
(79, 71, 1, 0, 'overriding-in-php', 1, 'Overriding in php', '<p><strong>Normal Scenario:</strong></p>\r\n<p>Class A<br /> {<br />&nbsp; &nbsp; &nbsp;public function m1()<br />&nbsp; &nbsp; &nbsp;{<br />&nbsp; &nbsp; &nbsp; &nbsp; echo \'Method of Base Class is Called\';<br />&nbsp; &nbsp; &nbsp;}<br /> }</p>\r\n<p>class B extends A<br /> {</p>\r\n<p>}</p>\r\n<p>$objB = new B;<br /> <strong>$objB-&gt;m1(); // Output; Method of Base Class is Called</strong><br /> ?&gt;<br /> ----------------------------------------------------------------------------------------------------------------------------------------------------------<br /> <strong>Overriding&nbsp;Scenario:</strong></p>\r\n<p>But When you write again the method m1() in &nbsp;class B, it means you over write this method. because it was already there sincc<br /> B Extends A.</p>\r\n<p><!--?php <br ?--> class A<br /> {<br />&nbsp; &nbsp; &nbsp;public function m1()<br />&nbsp; &nbsp; {<br />&nbsp; &nbsp; &nbsp; &nbsp;echo \'Method of Base Class is Called\';<br />&nbsp; &nbsp; }<br /> }</p>\r\n<p>Class B extends A<br /> {</p>\r\n<p><strong>&nbsp; &nbsp; &nbsp;// <em>YOU ARE WRITING THE METHOD AGAIN NOW, IT IS OVERRIDING METHOD</em></strong><br /> <strong>&nbsp; &nbsp; public function m1()</strong><br /> <strong>&nbsp; &nbsp; {</strong><br /> <strong>&nbsp; &nbsp; &nbsp; &nbsp; echo \'Method of Child&nbsp;Class is Called\';</strong><br /> <strong>&nbsp; &nbsp; &nbsp;}</strong></p>\r\n<p>}</p>\r\n<p>$objB = new B;<br /> $objB-&gt;m1(); // Output; Method of <strong>Child Class</strong> is Called<br /> ?&gt;&nbsp;</p>\r\n<p><strong>The method m1 in Class B is overriding method and the m1 in Class A is overridden method.</strong></p>', '2016-08-21 18:37:23', '2016-08-21 19:04:47'),
(80, 56, 1, 6, 'how-to-create-helper-in-laravel', 1, 'How to create Helper in Laravel', '<p>create Helpers folder inside App.&nbsp;<br />create myhelper.php &nbsp;inside Helpers folder.<br /><strong>that means&nbsp;app/Helpers/myhelper.php.</strong></p>\r\n<p>add&nbsp;the follwoing codes &nbsp;in autoload section of composer.json file.<br /><br /><strong>\"files\": [</strong><br /><strong>\"app/Helpers/myhelper.php\"</strong><br /><strong>] &nbsp;</strong><br /><br /><br /><br />so &nbsp;composer.json autolaod section will look like</p>\r\n<p><br /> \"autoload\": {<br /> \"classmap\": [<br /> \"database\"<br /> ],<br /> \"psr-4\": {<br /> \"App\\\\\": \"app/\"<br /> },<br /> <strong>\"files\": [</strong><br /><strong> \"app/Helpers/myhelper.php\"</strong><br /><strong> ]</strong><br /> },</p>\r\n<p>&nbsp;</p>\r\n<p><strong>run:&nbsp;&nbsp;</strong>&nbsp;<code><span class=\"pln\">composer </span><span class=\"kwd\">dump</span><span class=\"pun\">-</span><span class=\"pln\">autoload</span></code></p>', '2016-08-21 18:38:14', '2017-02-11 06:02:36'),
(81, 56, 1, 3, 'removing-indexphp-from-laravel-url', 1, 'Removing index.php from  Laravel URL', '<p>Create a .htaccess file in root folder which contains the following codes.</p>\r\n<p><br />RewriteEngine On<br />RewriteRule ^ index.php [L]<br /><br /><strong>or&nbsp;</strong><br /><strong>there is a .htaccess file inside the public folder. copy it and paste it in project root, Simple!</strong></p>\r\n<p>Check whether&nbsp;mod_rewrite is enabled or not. if it is not enabled then enable it.</p>\r\n<p>&nbsp;</p>', '2016-08-21 18:38:49', '2016-08-27 07:56:33'),
(83, 56, 1, 2, 'how-to-remove-public-from-laravel-url', 1, 'How to remove public from Laravel Url', '<p>inside the project folder you will see a file named <strong>server.php</strong><br /> rename it to<strong> index.php</strong> &nbsp; and browse&nbsp;http://localhost/project_folder_name</p>', '2016-08-21 18:39:51', '2016-08-21 18:39:51'),
(84, 72, 1, 0, 'how-to-ignore-filesfolder-in-git', 1, 'How to ignore files/folder in git', '<ol>\r\n<li>Create .gitignore file<br />Open Git bash and run&nbsp;&nbsp;<strong>touch .gitignore</strong> to create this file.<br /><br /><br /></li>\r\n<li>&nbsp;Open .gitignore file&nbsp;and give the location of the folder/file that you want to skip.<br /> suppose i want to skip&nbsp;the metronic folder inside public directory.<br /> So write, &nbsp; &nbsp; &nbsp; &nbsp;<strong>/public/metronic<br /><br />You are done.<br /><br /></strong></li>\r\n</ol>', '2016-08-21 18:40:44', '2016-08-31 14:20:21'),
(85, 72, 1, 0, 'fatal-error-repository-not-found-git', 1, 'fatal error repository not found git', '<p><em>1. Check whether the repository &nbsp; really exist or not.<br /> 2.Repository names are case-sensitive. So check is there any lowercase/uppercase issue took place in typing the repository address.<br /> 3.&nbsp;Run Git bash as Administrator.</em></p>\r\n<p>&nbsp;</p>', '2016-08-21 18:41:25', '2016-08-21 18:41:25'),
(86, 72, 1, 0, 'how-to-clone-git-to-specific-folder-in-windows', 1, 'How to clone git to specific folder in windows', '<p>git clone {your repository}&nbsp; destination_path<br />Example:<br />git clone https://github.com/masuduzzaman/sample_project.git&nbsp; D:/xampp/htdocs/sample_project</p>', '2016-08-21 18:42:45', '2016-08-21 18:42:45'),
(87, 72, 1, 0, 'git-fork', 0, 'Git Fork', '', '2016-08-21 18:43:03', '2016-08-21 18:43:03'),
(88, 57, 1, 0, 'mysql-scaling', 1, 'MySQL Scaling', '<p><strong>1.Replication: &nbsp;</strong><br />Data is replicated from master server to another server(slave). So. same data are stored in all servers. For data reading it is faster. but it may cause problems<br />if application has more write operations. Inconsistency may arise between database nodes due to the &nbsp;synchronization between salves involves some dalay.<br /><br /><strong>2. Sharding</strong><br />&nbsp; Splittting db schema into multiple partitions. &nbsp;splitting can be happened in&nbsp;tables / row level. &nbsp;Splitting should be done very sincerely.<br /><strong>&nbsp; Explaination:</strong><br />Suppose you have multisites solutions that handles 1000 databases, you can split it in different ways<br />1. you can keep 100 db in one db server, another 50 in another server and so on.<br />2. you can keep some tables in one server and some tables in another server. because in most cases some tables are hitted very much, so you can divide accordingly.<br />3. Sometimes data could be splitted based on Geographic locations.<br />you can divide data based on states of a country. or you can keep biography of top 100 persons\' in another server. How you will split data depends onyour application in fact.<br /><br /><strong>3.MySQL cluster:</strong> <br />&nbsp;it is one kind of combination of Replication and sharding.<br /><br /><br /></p>\r\n<p>&nbsp;</p>', '2016-08-26 16:44:16', '2016-08-26 17:42:49'),
(89, 57, 1, 0, 'mysql-if-else-case-when', 1, 'MySQl IF ELSE CASE WHEN', '<p>1. If a column named status contains two values: 0,1 where o means InActive, 1 means Active. then query should be<br />&nbsp;<strong> &nbsp; SELECT if(status = 0, \'InActive\', \'Active\' ) FROM table</strong>&nbsp;&nbsp;<br /><br />2. If a column named status contains three values: 0,1,2 where 0 means InActive, 1 means InProcess, 2 Means \'PartiallyCompleted\' then query should be&nbsp;<br /><strong>SELECT </strong><br /><strong>IF (status = 0, \'Inactive\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IF (status =1, \'In Prcoess\', \'PartiallyCompleted\' )</strong><br /><strong>&nbsp; &nbsp; )</strong><br /><strong>FROM table</strong><br /><br />3. If a column named status contains four&nbsp;values: 0,1,2,3 &nbsp;where 0 means InActive, 1 means InProcess, 2 Means \'PartiallyCompleted\', 3 means \'Completed\' then query should be<br /><strong>SELECT </strong><br /><strong>IF (status = 0, \'Inactive\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;IF (status =1, \'In Prcoess\',</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;IF (status =2, \'PartiallyCompleted\', \'Completed\' )</strong><br /><strong>&nbsp; &nbsp; &nbsp; &nbsp; )</strong></p>\r\n<p><strong>&nbsp; &nbsp; )</strong><br /><strong>FROM table</strong><br /><br /></p>\r\n<p>***If status&nbsp;contains 7 values then the query becomes complicated but still you can solve it in this way. Yo can do the same thing by using CASE WHEN<br /><br /><code>SELECT</code><br /><code>CASE status</code><br /><code>WHEN 0 THEN \'INACTIVE\'</code><br /><code>WHEN 1 THEN \'InProcess\'</code><br /><code>WHEN 2 THEN \'PartiallyCompleted\'</code><br /><code>WHEN 3 THEN \'Completed\'</code><br /><code>WHEN 4 THEN \'OVERCOMPLETED\'</code><br /><code>WHEN 5 THEN \'STATUS-5-stage\'</code><br /><code>WHEN 6 THEN \'ETO STATUS KARE!\'</code><br /><code>ELSE \'UNKONOWN - NOT DEFINED\'</code><br /><code>END AS status </code><br /><code>FROM&nbsp;table</code><br /><br /><br /><br /><br />&nbsp;</p>', '2016-08-27 07:32:49', '2016-08-27 09:57:04'),
(90, 72, 1, 0, 'how-to-delete-a-file-from-git-repository', 1, 'How to delete a file from git repository', '<p><br />&nbsp; &nbsp;If you want to delete a specific file then<br />&nbsp; &nbsp; <strong>git rm --cached test.php</strong><br /><br />&nbsp; &nbsp;if you want to delete \'test\' folder then<br />&nbsp; &nbsp;<strong>git rm --cached test -r</strong><br /><br />Now commit and push.<br /><br /><br /><br /><br /></p>', '2016-08-31 14:24:54', '2016-08-31 14:25:51'),
(91, 71, 1, 0, 'final-class-and-final-method-in-php', 1, 'Final Class and final method in php', '<p>1. <strong>Final means final, you cannot extend it.</strong></p>\r\n<p>&nbsp; Final class A { <br />&nbsp;}</p>\r\n<p>class B extends A {<br />}<br /><br /><strong>Fatal error: Class B may not inherit from final class (A)</strong><br /><br /><br />2. <strong>If a method is declared as final in any class then you can not override it.</strong></p>\r\n<p>class A {<br />&nbsp;<br /><strong>&nbsp; &nbsp; &nbsp;final</strong> public function f1() {<br />&nbsp; &nbsp; &nbsp;echo \'in A\';<br />&nbsp; &nbsp; }<br />}<br /><br /></p>\r\n<p>class B extends A {</p>\r\n<p>&nbsp; &nbsp; public function f1() {<br />&nbsp; &nbsp; &nbsp; echo \'in B\';<br />&nbsp; &nbsp; }<br />}<br /><br /></p>\r\n<p><strong>Fatal error: Cannot override final method A::f1()</strong><br /><br /><br /><code><strong>THAT MEANS, WHEN SOMETHING IS FINAL THEN IT IS REALLY FINAL, YOU CAN NEITHER EXTENDS NOR&nbsp;OVERRIDE IT.</strong></code></p>', '2016-09-01 18:25:05', '2016-09-19 04:45:53'),
(92, 56, 1, 0, 'how-to-submit-csrf-token-in-ajax-form-submit', 1, 'How to submit CSRF token in AJAX form Submit', '<p>1. in &lt;head&gt; &lt;/head&gt; section of the&nbsp;layout write one line code<br />&nbsp; &nbsp;<strong>&lt;meta name=\"csrf-token\" content=\"{{ csrf_token() }}\"&gt;</strong><br />&nbsp;This CSRF token is available in every page.<br /><br /><br />2. &nbsp;So, when you submit a form in ajax just add the following code&nbsp;&nbsp;<br /><strong>headers: {</strong><br /><strong>\'X-CSRF-TOKEN\': $(\'meta[name=\"csrf-token\"]\').attr(\'content\')</strong><br /><strong>}</strong><br /><br /><br />So your ajax code will be like<br />var dataString = \'name=\' + name&nbsp;+ \'&amp;price=\' + 5;<br />$.ajax({<br />headers: {\'X-CSRF-Token\': $(\'meta[name=\"csrf-token\"]\').attr(\'content\')},<br />type: \"POST\",<br />url: url + \"saveItem\",<br />data: dataString,<br />success: function (data) {<br />&nbsp; &nbsp;&nbsp;<br />}<br />});</p>', '2016-09-02 03:16:37', '2016-09-02 03:19:09'),
(93, 72, 1, 0, 'git-cannot-push-large-file-and-it-cannot-be-deleted', 1, 'git cannot push large file and it cannot be deleted', '<p>Though you have deleted it, still it is trying to push. The reason is, it is residing in history.To destroy it run the following command.</p>\r\n<pre>git filter-branch --index-filter \'git rm -r --cached --ignore-unmatch &lt;folder/fileName&gt;\' HEAD</pre>\r\n<p>&nbsp;</p>\r\n<p>if you want to delete test.zip <br />git filter-branch --index-filter \'git rm -r --cached --ignore-unmatch test.zip\' HEAD</p>', '2016-09-17 08:42:04', '2016-09-17 08:53:05'),
(94, 56, 1, 0, 'how-to-call-library-from-routes-in-laravel', 1, 'How to call library from routes in laravel', '<p>Sometimes we &nbsp;need to call some functions from different pages. suppose you want to populate city based on states and you need it in Ajax.<br />and this thing is needed in many pages. So it is the solution to create a library.<br /><br />in routes.php:<br /><br /><strong>use App\\Libraries\\CommonData;</strong><br /><strong>Route::get(\'/getCities/{stateId}\', function ($stateId) { </strong><br /><strong>&nbsp; &nbsp; &nbsp;$CommonData= new CommonData();</strong><br /><strong>&nbsp; &nbsp; &nbsp;return $CommonData-&gt;getCities($stateId);</strong><br /><strong> });</strong><br /><br /><br /><br />in CommonData.php, write a function named&nbsp;getCities().<br />public function&nbsp;getCities($stateId) {<br />&nbsp; &nbsp; &nbsp;// retrieve cities by query from DB.<br />&nbsp; &nbsp; &nbsp; $cities = \' make city list here, may be select option dropdown or something you need\';<br /><br />&nbsp; &nbsp; &nbsp;return $cities;</p>\r\n<p>}<br /><br /><br /><br /></p>', '2016-09-18 13:56:05', '2016-09-19 04:55:10'),
(95, 56, 1, 0, 'how-to-use-custom-config-files-in-laravel', 1, 'How to Use Custom Config Files in  Laravel ', '<p>1. create a php file suppose<strong> site_config.php</strong> &nbsp;inside&nbsp;config folder.</p>\r\n<p>site_config.php file contains the followinf codes.&nbsp;</p>\r\n<p>&lt;?php</p>\r\n<p>$config_admin_type [\'system_admin\'] = 1;<br />$config_admin_type [\'school_admin\'] = 2;<br /><br />return [<br /> \'config_admin_type\' =&gt; $config_admin_type<br />];</p>\r\n<p>?&gt;</p>\r\n<p><strong>Retrieve&nbsp;&nbsp;the value where you need.</strong><br />$config_admin_type_array = config(\'site_config.config_admin_type\');<br />echo $config_admin_type_array [\'school_admin\'];<br /><strong>OR</strong><br />echo $config_admin_type = config(\'site_config.config_admin_type.school_admin\');</p>', '2016-09-24 03:32:38', '2016-09-24 03:32:38'),
(96, 56, 1, 0, 'how-can-i-check-if-request-was-a-post-or-get-request-in-laravel', 1, 'How can I check if request was a POST or GET request in laravel', '<p>get the request method.<br /><code class=\" language-php\"><span class=\"token variable\">$method</span> <span class=\"token operator\">=</span> <span class=\"token variable\">$request</span><span class=\"token operator\">-</span><span class=\"token operator\">&gt;</span><span class=\"token function\">method<span class=\"token punctuation\">(</span></span><span class=\"token punctuation\">)</span><span class=\"token punctuation\">;</span></code></p>\r\n<p>&nbsp;</p>\r\n<p>if($request-&gt;isMethod(\'post\')) <br /> {</p>\r\n<p>&nbsp; // recieve form data&nbsp;</p>\r\n<p>}</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2016-09-24 04:09:39', '2016-09-24 04:09:39'),
(97, 56, 1, 0, 'write-php-code-in-laravel-blade-template', 1, 'write php code in laravel blade template', '<p><strong>Method - 1</strong><br />@php <br />&nbsp; &nbsp; &nbsp;$a = 5; <br />&nbsp; &nbsp; &nbsp;echo $a;<br />@endphp<br /><br /></p>\r\n<p><strong>Method-2</strong><br />{{-- */<br />&nbsp;$a = 5; <br />&nbsp;echo $a;<br />/* --}}</p>\r\n<p>&nbsp;<br /><strong>Method-3</strong><br />&nbsp;&lt;?php&nbsp;<br />&nbsp; &nbsp;$a = 5; <br />&nbsp; &nbsp;echo $a;<br />&nbsp; ?&gt;</p>', '2016-09-24 05:07:17', '2016-09-27 16:05:31'),
(98, 58, 1, 0, 'single-and-and-double-and-difference-in-if-condition', 1, 'single AND( & ) and double AND && difference in if condition', '<div class=\"post_tile\">if ($a &amp;&amp; $b) &nbsp;// if $a is false then it will not go to check $b.</div>\r\n<div>\r\n<p>if ($a &amp; $b) &nbsp;// if $a is false then it also check what about $b.</p>\r\n<p>&nbsp;</p>\r\n<p>&lt;?php</p>\r\n<p><strong>$country_list = \'\'; &nbsp;</strong></p>\r\n<p>if ( &nbsp;is_array($country_list) <strong>&amp;&amp;</strong> &nbsp;in_array(\'us\', $country_list) &nbsp;)</p>\r\n<p>&nbsp; {</p>\r\n<p>&nbsp;&nbsp;// do something</p>\r\n<p>&nbsp; &nbsp;}</p>\r\n<p>&nbsp;else<br />{</p>\r\n<p>&nbsp; echo \'US is not there\';</p>\r\n<p>}</p>\r\n<p>?&gt;</p>\r\n<p>output:&nbsp;US is not there</p>\r\n<p>&nbsp;Explaination: is_array($country_list) is false so it wil not go to check what is the status of in_array(\'us\', $country_list), so \'US is not there\' is printed.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&lt;?php</p>\r\n<p><strong>$country_list = \'\'; &nbsp;</strong></p>\r\n<p>if ( &nbsp;is_array($country_list) <strong>&amp;</strong> &nbsp;in_array(\'us\', $country_list) &nbsp;)</p>\r\n<p>&nbsp; {</p>\r\n<p>&nbsp; &nbsp; // do something</p>\r\n<p>&nbsp; &nbsp;}</p>\r\n<p>else&nbsp;</p>\r\n<p>{</p>\r\n<p>&nbsp; &nbsp; &nbsp; echo \'US is not there\';</p>\r\n<p>&nbsp; }</p>\r\n<p>?&gt;</p>\r\n<p><strong>Warning</strong>: in_array() expects parameter 2 to be array.<br />US is not there</p>\r\n<p>&nbsp;Explaination: though is_array($country_list) is false, still it will go to check what is the status of in_array(\'us\', $country_list).&nbsp;<br />&nbsp;$country_list is supposed to be an array, as it is not array so it will throw an warning.<br /><br />This is the difference of &amp; and &amp;&amp; &nbsp;regarding if condition.<br />So it is better to use &amp;&amp;&nbsp;<br />&nbsp;</p>\r\n<p>&nbsp;</p>\r\n</div>', '2016-09-24 11:05:22', '2016-09-24 11:14:38'),
(99, 56, 1, 0, 'laravel-multi-auth', 1, 'Laravel multi auth', '<p>suppose you need an admin panel and your admin table name is admins. &nbsp;you have laravel auth that is for front end and it uses users table. What to do then ?</p>\r\n<p><strong>Step-1:</strong> suppose project admin panel url is <a href=\"http://localhost/project_name/admin\">http://localhost/project_name/admin</a><br />point the url in route and create just a login form. You can copy the login form from existing auth&nbsp;folder or can create yourself.<br /><br /></p>\r\n<p><strong>Step-2:</strong> Create a middleware name \'admin-auth\'</p>\r\n<p>it should contains:</p>\r\n<p><!--?php &lt;/p&gt;\r\n&lt;p&gt;namespace App\\Http\\Middleware;&lt;/p&gt;\r\n&lt;p&gt;use Closure;&lt;br ?-->use Illuminate\\Support\\Facades\\Auth;</p>\r\n<p>class AdminAuth<br />{<br /> /**<br /> * Handle an incoming request.<br /> *<br /> * @param \\Illuminate\\Http\\Request $request<br /> * @param \\Closure $next<br /> * @return mixed<br /> */<br /> public function handle($request, Closure $next, $guard = \'admins\')<br /> {<br /> <br /> if (Auth::guard($guard)-&gt;guest()) {<br /> <br /> if ($request-&gt;ajax() || $request-&gt;wantsJson()) {<br /> return response(\'Unauthorized.\', 401);<br /> } else { <br /> return redirect()-&gt;guest(\'admin\');<br /> }<br /> }</p>\r\n<p>return $next($request);<br /> }<br />}</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Step-3:</strong> Add the middleware in kernel.php<br />protected $routeMiddleware = [<br /> \'auth\' =&gt; \\App\\Http\\Middleware\\Authenticate::class,<br /> \'auth.basic\' =&gt; \\Illuminate\\Auth\\Middleware\\AuthenticateWithBasicAuth::class,<br /> \'can\' =&gt; \\Illuminate\\Foundation\\Http\\Middleware\\Authorize::class,<br /> \'guest\' =&gt; \\App\\Http\\Middleware\\RedirectIfAuthenticated::class,<br /> \'throttle\' =&gt; \\Illuminate\\Routing\\Middleware\\ThrottleRequests::class,<br /> <strong>\'admin-auth\' =&gt; \\App\\Http\\Middleware\\AdminAuth::class,</strong><br /> ];<br /><br /><strong>Step-4:</strong> in config-&gt;auth.php<br />add a guard named \'admins\'. so the whole code will be</p>\r\n<p>\'guards\' =&gt; [<br /> \'web\' =&gt; [<br /> \'driver\' =&gt; \'session\',<br /> \'provider\' =&gt; \'users\',<br /> ],<br /> <strong>\'admins\' =&gt; [</strong><br /><strong> \'driver\' =&gt; \'session\',</strong><br /><strong> \'provider\' =&gt; \'admins\',</strong><br /><strong> ],</strong></p>\r\n<p>\'api\' =&gt; [<br /> \'driver\' =&gt; \'token\',<br /> \'provider\' =&gt; \'users\',<br /> ],<br /> ],<br /><br /></p>\r\n<p>\'providers\' =&gt; [<br /> \'users\' =&gt; [<br /> \'driver\' =&gt; \'eloquent\',<br /> \'model\' =&gt; App\\User::class,<br /> ],<br /> <strong>\'admins\' =&gt; [</strong><br /><strong> \'driver\' =&gt; \'eloquent\',</strong><br /><strong> \'model\' =&gt; App\\Admin::class,</strong><br /><strong> ],</strong></p>\r\n<p>// \'users\' =&gt; [<br /> // \'driver\' =&gt; \'database\',<br /> // \'table\' =&gt; \'users\',<br /> // ],<br /> ],</p>\r\n<p><strong>Step-5.</strong> Create a model Admin as like as existing user. the code will be</p>\r\n<p>namespace App;</p>\r\n<p>use Illuminate\\Foundation\\Auth\\User as Authenticatable;</p>\r\n<p>class Admin extends Authenticatable<br />{<br /> /**<br /> * The attributes that are mass assignable.<br /> *<br /> * @var array<br /> */<br /> <br /> <strong>protected $guard = \'admins\';</strong><br /> protected $fillable = [<br /> \'name\', \'email\', \'password\',<br /> ];</p>\r\n<p>/**<br /> * The attributes that should be hidden for arrays.<br /> *<br /> * @var array<br /> */<br /> protected $hidden = [<br /> \'password\', \'remember_token\',<br /> ];<br />}</p>\r\n<p>&nbsp;</p>\r\n<p>You are done. Now when you&nbsp;submit &nbsp;the admin login &nbsp;form&nbsp;</p>\r\n<p>suppose in you post it in &nbsp;localhost/project/postAdminLogin<br />postAdminLogin function is below:</p>\r\n<p>function postAdminLogin(Request $request) {<br /> $credential = [\'email\' =&gt; $request-&gt;email, \'password\' =&gt; $request-&gt;password ]; <br /> <br /> // validator<br /> <br /> if( Auth()-&gt;guard(\'admins\')-&gt;attempt($credential) ) { <br /> return redirect(\'/admin/dashboard\');<br /> }<br /> else { <br /> return redirect(\'/admin\')<br /> -&gt;withErrors([\'errors\', \'Admin Credentail do not match\'])<br /> -&gt;withInput(); <br /> }<br /> } &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Once it is logged in How to check authentication in other controller of admin panel ?</strong></p>\r\n<p>Simple, just add the admin-auth middleware in any class\'s controller.</p>\r\n<p>class CategoryController extends Controller<br />{<br /> public function __construct()<br /> {<br /> $this-&gt;middleware(\'admin-auth\');</p>\r\n<p>}</p>\r\n<p>}</p>\r\n<p>&nbsp;if it is not authenticated then it will redirect it to localhost/project_name/admin. as it defined in middleware &nbsp;admin-auth.php<br />&nbsp;</p>\r\n<p><strong>How to get Admin name and email in dashboard ?<br /></strong>Get Name: &nbsp;{{ &nbsp;Auth()-&gt;guard(\'admins\')-&gt;user()-&gt;name }}<br />Get email:&nbsp;{{ &nbsp;Auth()-&gt;guard(\'admins\')-&gt;user()-&gt;email }}<strong><br /><br /></strong></p>\r\n<p>&nbsp;</p>', '2016-10-01 15:59:39', '2016-10-01 16:09:32'),
(100, 58, 1, 0, 'server-in-php', 1, '$_SERVER in PHP', '<p>it is an superglobal array contains&nbsp;<strong>headers</strong>, <strong>paths</strong>, and <strong>script locations</strong>.<br />Do you know what are these ?</p>\r\n<p><br />1.&nbsp;$_SERVER[\'PHP_SELF\']<br />2.&nbsp;$_SERVER[\'GATEWAY_INTERFACE\']<br />3.&nbsp;$_SERVER[\'SERVER_ADDR\']<br />4.&nbsp;$_SERVER[\'SERVER_NAME\']<br />5.&nbsp;$_SERVER[\'SERVER_SOFTWARE\']<br />6.&nbsp;$_SERVER[\'SERVER_PROTOCOL\']<br />7.&nbsp;$_SERVER[\'REQUEST_TIME_FLOAT\']<br />8.&nbsp;$_SERVER[\'REQUEST_TIME\']<br />9.&nbsp;$_SERVER[\'QUERY_STRING\']<br />10.&nbsp;$_SERVER[\'DOCUMENT_ROOT\']<br />11.&nbsp;$_SERVER[\'HTTP_CONNECTION\']<br />12.&nbsp;$_SERVER[\'HTTP_HOST\']<br />13.&nbsp;$_SERVER[\'HTTP_REFERER\']<br />14.&nbsp;$_SERVER[\'REMOTE_ADDR\']<br />15.&nbsp;$_SERVER[\'REMOTE_HOST\']<br />16.&nbsp;$_SERVER[\'REQUEST_URI\']<br />17.&nbsp;$_SERVER[\'SCRIPT_FILENAME\']<br />18.&nbsp;$_SERVER[\'SCRIPT_NAME\']<br /><br /></p>\r\n<p>&nbsp;</p>', '2016-10-08 10:57:43', '2016-10-08 10:57:43'),
(103, 58, 1, 0, 'parse-url-in-php', 1, 'parse_url in php', '<div>\r\n<p>parse_url is used to parse the url :)</p>\r\n<p>if $url = \'<a href=\"#\';\">http://localhost/laravel/index.php\';</a></p>\r\n<p>print_r(parse_url($url, PHP_URL_PATH));<br /><strong>&nbsp;\"/laravel/index.php\"</strong></p>\r\n<p>if $url =<a href=\"#\">http://localhost/laravel/index.php?a=5&amp;b=</a>9<br />print_r(parse_url($url, PHP_URL_PATH));<br /><strong>&nbsp;\"/laravel/index.php\"</strong></p>\r\n<p>print_r(parse_url($url, PHP_URL_QUERY));<br /><strong>a=5&amp;b=9<br /><br /></strong></p>\r\n<p><strong>Learn:<br /></strong>parse_url($url, <code class=\"parameter\">component</code> parameter)<br />PHP_URL_SCHEME<br />PHP_URL_USER<br />PHP_URL_PASS<br />PHP_URL_HOST<br />PHP_URL_PORT<br />PHP_URL_PATH<br />PHP_URL_QUERY<br />PHP_URL_FRAGMENT</p>\r\n</div>', '2016-10-08 11:15:12', '2016-10-08 11:15:12');
INSERT INTO `blog_posts` (`post_row_id`, `category_row_id`, `active_status`, `sort_order`, `post_url_link`, `has_content`, `post_title`, `post_content`, `created_at`, `updated_at`) VALUES
(104, 56, 1, 0, 'laravel-instance', 1, 'laravel instance', '<pre><strong>$app is the instance of laravel application. see what does it contain:</strong></pre>\r\n<pre><br />Illuminate\\Foundation\\Application Object\r\n(\r\n    [basePath:protected] =&gt; D:\\xampp\\htdocs\\laravel\r\n    [hasBeenBootstrapped:protected] =&gt; \r\n    [booted:protected] =&gt; \r\n    [bootingCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [bootedCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [terminatingCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [serviceProviders:protected] =&gt; Array\r\n        (\r\n            [0] =&gt; Illuminate\\Events\\EventServiceProvider Object\r\n                (\r\n                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                    [defer:protected] =&gt; \r\n                )\r\n\r\n            [1] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                (\r\n                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                    [defer:protected] =&gt; \r\n                )\r\n\r\n        )\r\n\r\n    [loadedProviders:protected] =&gt; Array\r\n        (\r\n            [Illuminate\\Events\\EventServiceProvider] =&gt; 1\r\n            [Illuminate\\Routing\\RoutingServiceProvider] =&gt; 1\r\n        )\r\n\r\n    [deferredServices:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [monologConfigurator:protected] =&gt; \r\n    [databasePath:protected] =&gt; \r\n    [storagePath:protected] =&gt; \r\n    [environmentPath:protected] =&gt; \r\n    [environmentFile:protected] =&gt; .env\r\n    [namespace:protected] =&gt; \r\n    [resolved:protected] =&gt; Array\r\n        (\r\n            [events] =&gt; 1\r\n        )\r\n\r\n    [bindings:protected] =&gt; Array\r\n        (\r\n            [events] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [this] =&gt; Illuminate\\Events\\EventServiceProvider Object\r\n                                (\r\n                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                    [defer:protected] =&gt; \r\n                                )\r\n\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$app] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; 1\r\n                )\r\n\r\n            [router] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [static] =&gt; Array\r\n                                (\r\n                                    [closure] =&gt; Closure Object\r\n                                        (\r\n                                            [this] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                                                (\r\n                                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                                    [defer:protected] =&gt; \r\n                                                )\r\n\r\n                                            [parameter] =&gt; Array\r\n                                                (\r\n                                                    [$app] =&gt; \r\n                                                )\r\n\r\n                                        )\r\n\r\n                                    [object] =&gt; \r\n                                )\r\n\r\n                            [this] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$container] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; \r\n                )\r\n\r\n            [url] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [static] =&gt; Array\r\n                                (\r\n                                    [closure] =&gt; Closure Object\r\n                                        (\r\n                                            [this] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                                                (\r\n                                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                                    [defer:protected] =&gt; \r\n                                                )\r\n\r\n                                            [parameter] =&gt; Array\r\n                                                (\r\n                                                    [$app] =&gt; \r\n                                                )\r\n\r\n                                        )\r\n\r\n                                    [object] =&gt; \r\n                                )\r\n\r\n                            [this] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$container] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; \r\n                )\r\n\r\n            [redirect] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [static] =&gt; Array\r\n                                (\r\n                                    [closure] =&gt; Closure Object\r\n                                        (\r\n                                            [this] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                                                (\r\n                                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                                    [defer:protected] =&gt; \r\n                                                )\r\n\r\n                                            [parameter] =&gt; Array\r\n                                                (\r\n                                                    [$app] =&gt; \r\n                                                )\r\n\r\n                                        )\r\n\r\n                                    [object] =&gt; \r\n                                )\r\n\r\n                            [this] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$container] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; \r\n                )\r\n\r\n            [Psr\\Http\\Message\\ServerRequestInterface] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [this] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                                (\r\n                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                    [defer:protected] =&gt; \r\n                                )\r\n\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$app] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; \r\n                )\r\n\r\n            [Psr\\Http\\Message\\ResponseInterface] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [this] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                                (\r\n                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                    [defer:protected] =&gt; \r\n                                )\r\n\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$app] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; \r\n                )\r\n\r\n            [Illuminate\\Contracts\\Routing\\ResponseFactory] =&gt; Array\r\n                (\r\n                    [concrete] =&gt; Closure Object\r\n                        (\r\n                            [this] =&gt; Illuminate\\Routing\\RoutingServiceProvider Object\r\n                                (\r\n                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                    [defer:protected] =&gt; \r\n                                )\r\n\r\n                            [parameter] =&gt; Array\r\n                                (\r\n                                    [$app] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                    [shared] =&gt; 1\r\n                )\r\n\r\n        )\r\n\r\n    [instances:protected] =&gt; Array\r\n        (\r\n            [app] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n            [Illuminate\\Container\\Container] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n            [events] =&gt; Illuminate\\Events\\Dispatcher Object\r\n                (\r\n                    [container:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                    [listeners:protected] =&gt; Array\r\n                        (\r\n                        )\r\n\r\n                    [wildcards:protected] =&gt; Array\r\n                        (\r\n                        )\r\n\r\n                    [sorted:protected] =&gt; Array\r\n                        (\r\n                            [Illuminate\\Events\\EventServiceProvider] =&gt; Array\r\n                                (\r\n                                )\r\n\r\n                            [Illuminate\\Routing\\RoutingServiceProvider] =&gt; Array\r\n                                (\r\n                                )\r\n\r\n                        )\r\n\r\n                    [firing:protected] =&gt; Array\r\n                        (\r\n                        )\r\n\r\n                    [queueResolver:protected] =&gt; Closure Object\r\n                        (\r\n                            [static] =&gt; Array\r\n                                (\r\n                                    [app] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                )\r\n\r\n                            [this] =&gt; Illuminate\\Events\\EventServiceProvider Object\r\n                                (\r\n                                    [app:protected] =&gt; Illuminate\\Foundation\\Application Object\r\n *RECURSION*\r\n                                    [defer:protected] =&gt; \r\n                                )\r\n\r\n                        )\r\n\r\n                )\r\n\r\n            [path] =&gt; D:\\xampp\\htdocs\\laravel\\app\r\n            [path.base] =&gt; D:\\xampp\\htdocs\\laravel\r\n            [path.lang] =&gt; D:\\xampp\\htdocs\\laravel\\resources\\lang\r\n            [path.config] =&gt; D:\\xampp\\htdocs\\laravel\\config\r\n            [path.public] =&gt; D:\\xampp\\htdocs\\laravel\\public\r\n            [path.storage] =&gt; D:\\xampp\\htdocs\\laravel\\storage\r\n            [path.database] =&gt; D:\\xampp\\htdocs\\laravel\\database\r\n            [path.resources] =&gt; D:\\xampp\\htdocs\\laravel\\resources\r\n            [path.bootstrap] =&gt; D:\\xampp\\htdocs\\laravel\\bootstrap\r\n        )\r\n\r\n    [aliases:protected] =&gt; Array\r\n        (\r\n            [Illuminate\\Foundation\\Application] =&gt; app\r\n            [Illuminate\\Contracts\\Container\\Container] =&gt; app\r\n            [Illuminate\\Contracts\\Foundation\\Application] =&gt; app\r\n            [Illuminate\\Auth\\AuthManager] =&gt; auth\r\n            [Illuminate\\Contracts\\Auth\\Factory] =&gt; auth\r\n            [Illuminate\\Contracts\\Auth\\Guard] =&gt; auth.driver\r\n            [Illuminate\\View\\Compilers\\BladeCompiler] =&gt; blade.compiler\r\n            [Illuminate\\Cache\\CacheManager] =&gt; cache\r\n            [Illuminate\\Contracts\\Cache\\Factory] =&gt; cache\r\n            [Illuminate\\Cache\\Repository] =&gt; cache.store\r\n            [Illuminate\\Contracts\\Cache\\Repository] =&gt; cache.store\r\n            [Illuminate\\Config\\Repository] =&gt; config\r\n            [Illuminate\\Contracts\\Config\\Repository] =&gt; config\r\n            [Illuminate\\Cookie\\CookieJar] =&gt; cookie\r\n            [Illuminate\\Contracts\\Cookie\\Factory] =&gt; cookie\r\n            [Illuminate\\Contracts\\Cookie\\QueueingFactory] =&gt; cookie\r\n            [Illuminate\\Encryption\\Encrypter] =&gt; encrypter\r\n            [Illuminate\\Contracts\\Encryption\\Encrypter] =&gt; encrypter\r\n            [Illuminate\\Database\\DatabaseManager] =&gt; db\r\n            [Illuminate\\Database\\Connection] =&gt; db.connection\r\n            [Illuminate\\Database\\ConnectionInterface] =&gt; db.connection\r\n            [Illuminate\\Events\\Dispatcher] =&gt; events\r\n            [Illuminate\\Contracts\\Events\\Dispatcher] =&gt; events\r\n            [Illuminate\\Filesystem\\Filesystem] =&gt; files\r\n            [Illuminate\\Filesystem\\FilesystemManager] =&gt; filesystem\r\n            [Illuminate\\Contracts\\Filesystem\\Factory] =&gt; filesystem\r\n            [Illuminate\\Contracts\\Filesystem\\Filesystem] =&gt; filesystem.disk\r\n            [Illuminate\\Contracts\\Filesystem\\Cloud] =&gt; filesystem.cloud\r\n            [Illuminate\\Contracts\\Hashing\\Hasher] =&gt; hash\r\n            [Illuminate\\Translation\\Translator] =&gt; translator\r\n            [Symfony\\Component\\Translation\\TranslatorInterface] =&gt; translator\r\n            [Illuminate\\Log\\Writer] =&gt; log\r\n            [Illuminate\\Contracts\\Logging\\Log] =&gt; log\r\n            [Psr\\Log\\LoggerInterface] =&gt; log\r\n            [Illuminate\\Mail\\Mailer] =&gt; mailer\r\n            [Illuminate\\Contracts\\Mail\\Mailer] =&gt; mailer\r\n            [Illuminate\\Contracts\\Mail\\MailQueue] =&gt; mailer\r\n            [Illuminate\\Auth\\Passwords\\PasswordBrokerManager] =&gt; auth.password\r\n            [Illuminate\\Contracts\\Auth\\PasswordBrokerFactory] =&gt; auth.password\r\n            [Illuminate\\Auth\\Passwords\\PasswordBroker] =&gt; auth.password.broker\r\n            [Illuminate\\Contracts\\Auth\\PasswordBroker] =&gt; auth.password.broker\r\n            [Illuminate\\Queue\\QueueManager] =&gt; queue\r\n            [Illuminate\\Contracts\\Queue\\Factory] =&gt; queue\r\n            [Illuminate\\Contracts\\Queue\\Monitor] =&gt; queue\r\n            [Illuminate\\Contracts\\Queue\\Queue] =&gt; queue.connection\r\n            [Illuminate\\Queue\\Failed\\FailedJobProviderInterface] =&gt; queue.failer\r\n            [Illuminate\\Routing\\Redirector] =&gt; redirect\r\n            [Illuminate\\Redis\\Database] =&gt; redis\r\n            [Illuminate\\Contracts\\Redis\\Database] =&gt; redis\r\n            [Illuminate\\Http\\Request] =&gt; request\r\n            [Symfony\\Component\\HttpFoundation\\Request] =&gt; request\r\n            [Illuminate\\Routing\\Router] =&gt; router\r\n            [Illuminate\\Contracts\\Routing\\Registrar] =&gt; router\r\n            [Illuminate\\Session\\SessionManager] =&gt; session\r\n            [Illuminate\\Session\\Store] =&gt; session.store\r\n            [Symfony\\Component\\HttpFoundation\\Session\\SessionInterface] =&gt; session.store\r\n            [Illuminate\\Routing\\UrlGenerator] =&gt; url\r\n            [Illuminate\\Contracts\\Routing\\UrlGenerator] =&gt; url\r\n            [Illuminate\\Validation\\Factory] =&gt; validator\r\n            [Illuminate\\Contracts\\Validation\\Factory] =&gt; validator\r\n            [Illuminate\\View\\Factory] =&gt; view\r\n            [Illuminate\\Contracts\\View\\Factory] =&gt; view\r\n        )\r\n\r\n    [extenders:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [tags:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [buildStack:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [contextual] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [reboundCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [globalResolvingCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [globalAfterResolvingCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [resolvingCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n    [afterResolvingCallbacks:protected] =&gt; Array\r\n        (\r\n        )\r\n\r\n)</pre>', '2016-10-08 16:25:15', '2016-10-08 16:25:15'),
(105, 71, 1, 0, 'php-traits', 1, 'PHP Traits', '<p>&gt;&gt;A Trait is similar to a class<br />&gt;&gt;It is not possible to instantiate a Trait on its own<br />&gt;&gt;A Trait is intended to reduce some limitations of single inheritance<br />&gt;&gt;Trait may have public, private, protected method.<br />&gt;&gt;two trait having same named method arise problem, can be used by using instead keyword<br />&gt;&gt;trait function will get more priority (overridden) if parent class has the same named method</p>\r\n<p>&lt;?php<br />trait A {<br /> public function smallTalk() {<br /> echo \'a\';<br /> }<br /> public function bigTalk() {<br /> echo \'A\';<br /> }<br />}</p>\r\n<p>trait B {<br /> public function smallTalk1() {<br /> echo \'b\';<br /> $this-&gt;bigTalk1();<br /> }<br /> private function bigTalk1() {<br /> echo \'B\';<br /> $this-&gt;cc();<br /> }</p>\r\n<p><br /> protected function cc() {<br /> echo \'c\';<br /> }<br />}</p>\r\n<p>&nbsp;</p>\r\n<p>class Aliased_Talker {<br /> use A, B;<br />}</p>\r\n<p>$ob = new Aliased_Talker;<br />$ob-&gt;smallTalk1(); //bBc<br />?&gt;</p>', '2016-10-10 13:41:12', '2017-03-05 05:11:44'),
(106, 71, 1, 0, 'class-name-resolution', 1, ' class name resolution', '<p>&lt;?php<br />namespace ABC {<br />&nbsp;&nbsp;&nbsp;&nbsp;class myClass{<br />&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;echo myClass::class;<br />}<br />?&gt;</p>\r\n<p>&nbsp;</p>\r\n<p>output:&nbsp;</p>\r\n<pre>ABC\\myClass</pre>', '2016-10-15 00:21:40', '2016-10-15 00:21:40'),
(107, 56, 1, 0, 'laravel-chunk-in-blade-template', 1, 'laravel chunk in blade template', '<pre class=\" language-php\"><code class=\" language-php\"><strong>chunk($number) means divide an array in some pieces where each piece contains $number element.</strong><br />For bootstrap grid chunk is helpful.</code></pre>\r\n<pre class=\" language-php\"><code class=\" language-php\"><br />@<span class=\"token keyword\">foreach</span> <span class=\"token punctuation\">(</span><span class=\"token variable\">$items</span><span class=\"token operator\">-</span><span class=\"token operator\">&gt;</span><span class=\"token function\">chunk<span class=\"token punctuation\">(</span></span><span class=\"token number\">3</span><span class=\"token punctuation\">)</span> <span class=\"token keyword\">as</span> <span class=\"token variable\">$chunk</span><span class=\"token punctuation\">)</span>\r\n    <span class=\"token markup\"><span class=\"token tag\"><span class=\"token punctuation\">&lt;</span>div <span class=\"token attr-name\">class</span><span class=\"token attr-value\"><span class=\"token punctuation\">=</span><span class=\"token punctuation\">\"</span>row<span class=\"token punctuation\">\"</span></span><span class=\"token punctuation\">&gt;</span></span></span>\r\n        @<span class=\"token keyword\">foreach</span> <span class=\"token punctuation\">(</span><span class=\"token variable\">$chunk</span> <span class=\"token keyword\">as</span> <span class=\"token variable\">$item</span><span class=\"token punctuation\">)</span>\r\n            <span class=\"token markup\"><span class=\"token tag\"><span class=\"token punctuation\">&lt;</span>div <span class=\"token attr-name\">class</span><span class=\"token attr-value\"><span class=\"token punctuation\">=</span><span class=\"token punctuation\">\"</span>col-xs-4<span class=\"token punctuation\">\"</span></span><span class=\"token punctuation\">&gt;</span></span></span><span class=\"token punctuation\">{</span><span class=\"token punctuation\">{</span> <span class=\"token variable\">$item</span><span class=\"token operator\">-</span><span class=\"token operator\">&gt;</span><span class=\"token property\">name</span> <span class=\"token punctuation\">}</span><span class=\"token punctuation\">}</span><span class=\"token markup\"><span class=\"token tag\"><span class=\"token punctuation\">div<span class=\"token punctuation\">&gt;</span></span></span>\r\n        @<span class=\"token keyword\">endforeach</span>\r\n    <span class=\"token markup\"><span class=\"token tag\"><span class=\"token punctuation\">div<span class=\"token punctuation\">&gt;</span></span></span>\r\n@<span class=\"token keyword\">endforeach</span></span></span></code></pre>', '2016-10-16 03:00:39', '2016-10-16 03:01:33'),
(108, 71, 1, 0, 'multilevel-inheritancemultiple-inheritance-and-trait', 1, 'Multilevel inheritance,multiple inheritance and Trait', '<p><strong>Multiple inheritance is not supported.</strong><br />class A {<br />}<br />class B {<br />}<br /><strong>class C extends A extends B</strong> {<br />}<br />It will produce error as you can not extends more than one class at a time.<br /><br /><br /><br /><strong>Multilevel inheritance is supported.<br /></strong>class A {<br />}<br />class B extends A{<br />}</p>\r\n<p>class C extends B {<br />}<br /><br /></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Trait<br />A Trait is intended to reduce some limitations of single inheritance.<br /></strong></p>\r\n<p><strong>Trait A</strong> {<br /> public function f1 () {<br /> echo \'hello in f1 method\';<br /> }<br /> }<br /> <br />class B { <br />}</p>\r\n<p>class C extends B {<br /> <strong>use A;</strong><br /> }</p>\r\n<p>$ob = new C();<br />$ob-&gt;f1();<br /><br />output:&nbsp;hello in f1 method</p>\r\n<p><strong>&nbsp;</strong></p>\r\n<p><br /><br /></p>', '2016-10-21 14:14:48', '2016-10-21 14:17:21'),
(109, 71, 1, 0, 'namespace-in-php', 1, 'namespace in php', '<p><strong>What it does</strong>: Solve the Name collisions between the codes.</p>\r\n<p>Explaination:<br />You cannot have two classes with the same name in a file. suppose <br />you have a user class in your application, you have downloaded a plugin/third part package which<br />also conatans a class named user. Then problem arise, To resolve this issue we can use<br />namespace.</p>\r\n<p>&lt;?php<br />include(\'cars/MyClass.php\');<br />include(\'books/MyClass.php\'); <strong>// Though the class names are same it will not throw error because their namespace is different.</strong></p>\r\n<p>// use keyword is needed to access namespaced class.<br />use cars\\MyClass as carClassAlias; // Alias is created<br />use books\\MyClass as bookClassAlias; // Alias is created</p>\r\n<p>$ob1 = new carClassAlias();<br />//object is created of car namespaced class, we know constructor is called when object is initialised. output will be &lsquo;Object is created of cars namespaced Class&rsquo;.</p>\r\n<p>echo \'&lt;br /&gt;\';<br />$ob2 = new bookClassAlias();<br />//object is created of book namespaced class, we know constructor is called when object is initialised. So, output will be &lsquo;Object is created of books namespaced Class&rsquo;</p>\r\n<p>?&gt;</p>\r\n<p><br />In \'cars\' folder you have a file MyClass.php.</p>\r\n<p>&lt;?php</p>\r\n<p><strong>namespace cars; // It means The MyClass is located under cars folder.</strong><br />class MyClass <br />{</p>\r\n<p>function __construct() {<br />echo \'Object is created of cars namespaced Class\';<br />}</p>\r\n<p>?&gt;<br /><br /><br /></p>\r\n<p>in books folder you have a file MyClass.php.</p>\r\n<p>&lt;?php<br /><strong>namespace books; // It means The MyClass is located under books folder.</strong><br />class MyClass <br />{</p>\r\n<p>function __construct() {<br />echo \'Object is created of books namespaced Class\';<br />}<br />}</p>\r\n<p>?&gt;</p>', '2016-10-21 14:29:10', '2016-10-21 14:34:07'),
(110, 58, 1, 0, 'composer', 1, 'composer ', '<p>Composer is a tool for dependency management in PHP. &nbsp;We can install laravel using the composer.<br />composer has some specific command. suppose we can tell composer to download laravel by the following command<br /><strong>composer</strong> <strong>create-project</strong> <strong>laravel/laravel</strong> &nbsp; <strong>destination_path</strong><br /><br />Download the composer &nbsp;from &nbsp;<a href=\"https://getcomposer.org/download\" target=\"_blank\">https://getcomposer.org/download</a><br /><br /></p>', '2016-10-21 14:39:43', '2016-10-21 14:39:43'),
(111, 71, 1, 0, 'reserved-classes-in-php', 1, 'reserved classes in php', '<p>&lt;?php<br />print_r(get_declared_classes());<br />?&gt;</p>\r\n<p><strong>what will be output ?</strong> it will provide you an array of classes that are bulit in class or reserved class<br />of php engine. by default about 128 built in classes are available in any php file.<br />about 128-&gt; because it veries on php version.<br />Array<br />(<br /> [0] =&gt; stdClass<br /> [1] =&gt; __PHP_Incomplete_Class<br /> [2] =&gt; Directory<br /> ...<br /> ...<br /> [127]=&gt; something<br />)</p>\r\n<p><br />&lt;?php<br /><strong>class myClass {}</strong><br />print_r(get_declared_classes());<br />?&gt;<br />Array<br />(<br /> [0] =&gt; stdClass<br /> [1] =&gt; __PHP_Incomplete_Class<br /> [2] =&gt; Directory<br /> ...<br /> ...<br /> <strong>[128]=&gt; myClass</strong></p>\r\n<p>)</p>\r\n<p><br />So in any file if you write print_r(get_declared_classes()) then you can know how<br />many classes are present/included in that file.</p>\r\n<p>Learn: class_exist().&nbsp;http://php.net/manual/ru/function.class-exists.php</p>\r\n<p>&nbsp;</p>', '2016-10-21 14:48:42', '2016-10-21 14:50:43'),
(112, 58, 1, 0, 'explode-and-implode-in-php', 1, 'explode and implode in php', '<p><br />Explode:<strong> From String to an array.</strong> <br />&lt;?php<br />$str = \"rasel-shafiq-arif\";<br />$arr = explode(\"-\", $str);<br />print_r($arr);<br />?&gt;<br />Output: Array ( [0] =&gt; rasel [1] =&gt; shafiq [2] =&gt; arif )</p>\r\n<p>&nbsp;</p>\r\n<p>Implode: <strong>From Array to string</strong><br />$arr = array( \'rasel\', \'shafiq\', \'arif\');<br />echo implode(\"-\", $arr); //output: rasel-shafiq-arif<br />echo implode(\",\", $arr); //output: rasel,shafiq,arif</p>', '2016-10-21 15:53:45', '2016-10-21 15:53:45'),
(113, 58, 1, 0, 'php-trim-function', 1, 'php trim function', '<p><strong>Trim remove space from the beginning and end of string.</strong> <br /><!--?php &lt;/p&gt;\r\n&lt;p&gt;$str= \"masud \";&lt;br ?--></p>\r\n<p>&lt;?php</p>\r\n<p>$str= \"masud \";<br />echo trim($str); // masud space will be removed<br /> <br /> $str= \"mas ud\";<br /> echo trim($str); // output mas ud -&gt;nothing is removed, space between the character will not be removed.<br /><br /> $str= \"_masud_\";<br /> echo trim($str, \"_\"); // output masud <br /> <br /> $str= \"_masud_\";<br /> echo <strong>ltrim</strong>($str, \"_\"); // output masud_ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ltrim trims from the left only.<br /> <br /> $str= \"_masud_\";<br /> echo <strong>rtrim</strong>($str, \"_\"); // output _masud &nbsp; &nbsp; rtrim trims from the right only.<br /> ?&gt;</p>', '2016-10-21 15:54:15', '2016-10-21 15:57:15'),
(114, 56, 1, 0, 'laravel-create-controller-inside-a-subfolder', 1, 'laravel Create Controller Inside a Subfolder', '<p>Create <strong>CategoryController</strong> &nbsp;in &nbsp;App\\Http\\Controllers\\Backend\\SubFolder.</p>\r\n<p>php artisan make:controller <strong>Backend/SubFolder/CategoryController</strong></p>', '2016-10-24 05:10:57', '2016-10-24 05:10:57'),
(115, 58, 1, 0, 'form-method', 1, 'Form Method', '<p>1. GET</p>\r\n<p>&nbsp;&gt;&gt; data is visible in url, the max length of url can be 3000 characters.<br />&nbsp;&gt;&gt; better for non-secure data,&nbsp;<br />&nbsp;&gt;&gt; you may want to send a search result to others.<br />&nbsp; &nbsp; &nbsp; suppose,&nbsp;<a href=\"https://www.google.com.bd/?gws_rd=cr,ssl&amp;ei=hR0QWJiICcX-vASzo6o4#q=what+is+php\">https://www.google.com.bd/?gws_rd=cr,ssl&amp;ei=hR0QWJiICcX-vASzo6o4#q=what+is+php</a>&nbsp;<br /><br /></p>\r\n<p>2.</p>\r\n<p>&gt;&gt;POST is better for secure data</p>\r\n<p>&gt;&gt;no size limitation</p>\r\n<p>&nbsp;</p>', '2016-10-26 03:14:14', '2016-10-26 03:14:14'),
(116, 72, 1, 0, 'git-clean-df', 1, 'git clean -df', '<pre><code>git clean -df  remove untracked files &amp;d irectories<br /><br />be careful before running this command, you might be deleting files you mean to keep, like robots.txt, uploaded files.<br /></code></pre>', '2016-10-26 03:58:40', '2016-10-26 04:01:46'),
(117, 72, 1, 0, 'git-reset-hard', 1, 'git reset --hard', '<p>if you delete some files locally and not commit it then how can you get that folder from git?</p>\r\n<p>git reset --hard</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '2016-10-26 05:25:48', '2016-10-26 05:38:02'),
(118, 57, 1, 0, 'how-to-get-get-even-and-odd-rows-from-mysql', 1, 'How to get get even and odd rows from mysql', '<p><strong>Even rows only</strong><br />SELECT * FROM `students` WHERE Mod(`id`,2 ) = 0</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Odd&nbsp;rows only</strong></p>\r\n<p>SELECT * FROM `students` WHERE Mod(`id`,2 ) = 1</p>', '2016-11-12 03:38:13', '2016-11-12 03:38:13'),
(119, 72, 1, 0, 'git-process-may-have-crashed-in-this-repository-earlier', 1, 'git process may have crashed in this repository earlier', '<p>inside .git folder there is a file named \'git.lock\'</p>\r\n<p>remove it manually and try to git add,commit,push.</p>', '2016-11-13 07:08:05', '2016-11-13 07:08:05'),
(120, 56, 1, 0, 'laravel-form-validation-and-custom-message', 1, 'Laravel form validation and custom message', '<blockquote>\r\n<p><strong>Solution - 1</strong><br />public function store(Request $request)</p>\r\n<p>{</p>\r\n<p>//Form validation<br /> <br /> $this-&gt;validate(<br /> $request,<br /> [<br /> \'name\' =&gt; \'required\',<br /> \'email\' =&gt; \'required|unique:users\',<br /> ],<br /> [<br /> \'name.required\' =&gt; \'Name is required\',<br />\'email.required\' =&gt; \'Email is required\',<br /> \'email.unique\' =&gt; \'Email is already exist, Please choose another!\',<br /> ] <br /> );</p>\r\n<p>}</p>\r\n</blockquote>\r\n<p>validate() methods accept three parameters, <br />1. Data($request) where validation will be applied<br />2.Validation rules array<br />3.validation message array.<br /><br /><br /></p>\r\n<p><strong>Solution - 2<br /></strong>use Illuminate\\Support\\Facades\\Input;<br />use Redirect;<strong><br /></strong></p>\r\n<p>$inputs = Input::all();<br /> $rules = array(\'name\'=&gt;\'required\', \'email\'=&gt; \'required|unique:users\');<br /><code class=\"php  hljs \"><span class=\"hljs-variable\">$messages</span> = <span class=\"hljs-keyword\">array</span>( <span class=\"hljs-string\">\'unique\'</span>=&gt;<span class=\"hljs-string\">\'it should be unique\'</span> );</code><br /> $validator = Validator::make($inputs,$rules,$messages);<br /><br /> if(!$validator-&gt;passes()){<br /> return Redirect::to(\'/showTheFormAgainWithErrors\')-&gt;withErrors($validator);<br /> }</p>\r\n<p>&nbsp;</p>\r\n<p><strong>in view print the errors</strong><br />@if (count($errors) &gt; 0)<br /> &lt;div class=\"alert alert-danger\"&gt;<br /> &lt;ul&gt;<br /> @foreach ($errors-&gt;all() as $error)<br /> &lt;li&gt;{{ $error }}&lt;/li&gt;<br /> @endforeach<br /> &lt;/ul&gt;<br /> &lt;/div&gt;<br /> @endif</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Print the specific field erors</strong><br />{{ $errors-&gt;first(\'name\') }}</p>', '2016-11-17 05:26:40', '2016-11-17 06:19:28'),
(121, 56, 1, 0, 'import-data-from-csv-file', 1, 'import data from csv file', '<p>http://itsolutionstuff.com/post/laravel-5-import-export-to-excel-and-csv-using-maatwebsite-exampleexample.html</p>', '2016-11-17 16:32:17', '2016-11-17 16:32:17'),
(122, 56, 1, 0, 'get-specific-columns-using-with-function-in-laravel-eloquent', 1, 'Get specific columns using with() function in Laravel Eloquent', '<p>$admin_list = \\App\\Admin::with(array(\'adminDetails\'=&gt;function($query){<br /> $query-&gt;select(\'admin_row_id\',\'contact_1\');<br /> }))<br /> -&gt;select(\'admin_name\') <br /> -&gt;where(\'admin_row_id\', 1)<br /> -&gt;first();</p>', '2016-12-07 08:52:08', '2016-12-07 08:52:08'),
(123, 58, 1, 0, 'update-wysihtml5-editor-content-dynamically-using-jquery', 1, 'update-wysihtml5-editor-content-dynamically-using-jquery', '<p>&lt;textarea class=\"wysihtml5 form-control\" id=\"test\"&gt;&lt;/textarea&gt;</p>\r\n<p>&lt;select id=\"item\" name=\"something\"&gt; <br /> &lt;option value=\"One\"&gt;1&lt;/option&gt;<br /> &lt;option value=\"Two\"&gt;2&lt;/option&gt;<br /> &lt;/select&gt;</p>\r\n<p>&nbsp;</p>\r\n<p>&lt;script type=\"text/javascript\"&gt;<br /> $(\'#item\').change(function() { <br /> var appropriateEditor = $(\"#test\").data(\"wysihtml5\").editor;<br /> var text =&nbsp;$(this) . val();</p>\r\n<p>// you can call ajax here.<br /> appropriateEditor.setValue(text, true);<br /> });<br />&lt;/script&gt;</p>', '2016-12-08 10:23:26', '2016-12-08 10:23:26'),
(124, 58, 1, 0, 'ubuntu-how-to-get-permission-to-edit-the-file-apache2conf', 1, 'ubuntu - How to get permission to edit the file apache2.conf', '<h1>How to get permission to edit the file apache2.conf</h1>\r\n<pre><code>sudoedit /etc/apache2/apache2.conf<br />form &lt;Directory /var/www/&gt;<br />&nbsp;&nbsp; &nbsp;Options Indexes FollowSymLinks<br />&nbsp;&nbsp; &nbsp;AllowOverride None<br />&nbsp;&nbsp; &nbsp;Require all granted<br />&lt;/Directory&gt;<br /><br /><br /></code></pre>\r\n<p><code>Change \"</code><code>AllowOverride None\"&nbsp;</code> to&nbsp; \"<code>AllowOverride All</code>\"</p>\r\n<pre><code>sudo service apache2 restart</code></pre>\r\n<pre>&nbsp;</pre>', '2017-01-09 05:24:14', '2017-01-09 05:24:14'),
(125, 72, 1, 0, 'files-showing-as-modified-directly-after-git-clone-from-windows-to-ubuntu', 1, 'files-showing-as-modified-directly-after-git-clone-from-windows-to-ubuntu', '<pre><code>in terminal</code></pre>\r\n<pre><code>git rm --cached -r</code></pre>\r\n<pre><code>git reset &ndash;-hard</code></pre>', '2017-01-10 04:52:15', '2017-01-10 04:52:15'),
(126, 72, 1, 0, 'linux-git-asks-for-username-and-password-in-every-push', 1, 'Linux git asks for username and password in every push', '<pre><code>$ git config credential.helper store\r\n$ git push https://github.com/repo.git\r\nnext, it will ask for user name and password, Provide it and you are done!</code></pre>', '2017-01-10 05:24:32', '2017-01-10 05:24:32'),
(127, 56, 1, 12, 'db-query-builder-toarray-error-laravel', 1, 'db-query-builder-toarray-error-laravel', '<p>DB::table(\'users\')-&gt;get()-&gt;toArray();</p>\r\n<p>will return <strong><span class=\"exception_message\">Call to a member function toArray() on array</span></strong></p>\r\n<p><span class=\"exception_message\">&nbsp;\\App\\User::get()-&gt;toArray();&nbsp; // it will work<br /><br />toArray is a method of Eloquent, so you need to use eloquent model.</span></p>\r\n<p>&nbsp;</p>', '2017-02-06 06:44:12', '2017-02-06 06:44:12'),
(128, 58, 1, 6, '777-permission-to-a-folder-in-ubuntu', 1, '777  permission to a folder in ubuntu', '<p><code>chmod -R 777 /www/laravelProject</code></p>\r\n<p><code>chmod -R 777 /www/laravelProject -R kaes it recursive<br /></code></p>', '2017-02-08 07:20:44', '2017-02-08 07:20:44'),
(129, 56, 1, 18, 'form-valdation-in-laravel', 1, 'form valdation in laravel', '<p><strong>in controller</strong></p>\r\n<p>use Illuminate\\Support\\Facades\\Validator;</p>\r\n<p><strong>in method:</strong><br />$this-&gt;validate(<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$request,<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;[<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\'admin_name\' =&gt; \'required\',<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\'admin_name_bangla\' =&gt; \'required\',<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\'admin_email\' =&gt; \'required|unique:admins\',&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;],<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;[<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\'admin_name.required\' =&gt; \'Name in English is required\',<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\'admin_name_bangla.required\' =&gt; \'Name in Bangla is required\',&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;\'admin_email.unique\' =&gt; \'Login email ia already exist, Please choose another!\',&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;]&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;);</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong>in&nbsp; view to print error</strong></p>\r\n<p>&nbsp;</p>\r\n<p>@if (count($errors) &gt; 0)<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;div class=\"alert alert-danger\"&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;ul&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;@foreach ($errors-&gt;all() as $error)<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;li&gt;{{ $error }}&lt;/li&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;@endforeach<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;/ul&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;/div&gt;<br />&nbsp;&nbsp; &nbsp;@endif</p>', '2017-02-10 00:37:21', '2017-02-10 00:37:21'),
(130, 56, 1, 5, 'laravel-error-the-only-supported-ciphers-are-aes-128-cbc-and-aes-256-cbc', 1, 'laravel error - The only supported ciphers are AES-128-CBC and AES-256-CBC', '<p><span class=\"tag\">needs to generate key in .env file.<br /><br /><br /></span></p>\r\n<p><span class=\"tag\">php</span> <span class=\"tag\">artisan</span> <span class=\"tag\">key</span><span class=\"pseudo\">:generate</span></p>\r\n<p><span class=\"pseudo\">it will generate&nbsp; 32 character string in .env file</span></p>\r\n<p>&nbsp;</p>\r\n<p><span class=\"pseudo\">or do&nbsp;config/app.php \'key\' =&gt; env(\'APP_KEY\', \'rando string\').</span></p>\r\n<p><span class=\"pseudo\">php artisan config:clear</span></p>\r\n<p><span class=\"pseudo\">php artisan config:cache</span></p>\r\n<p>&nbsp;</p>', '2017-02-13 02:41:10', '2017-02-13 02:41:10'),
(131, 56, 1, 56, 'eloquent-in-laravel', 1, 'eloquent in laravel', '<p>eloquent is an ....</p>', '2017-03-03 04:21:22', '2017-03-03 04:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_row_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `category_long_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` int(11) NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL,
  `count_product` int(11) NOT NULL,
  `category_sort_order` int(11) NOT NULL,
  `meta_key` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_row_id`, `category_name`, `category_image`, `category_short_description`, `category_long_description`, `parent_id`, `has_child`, `is_featured`, `level`, `count_product`, `category_sort_order`, `meta_key`, `meta_description`, `created_at`, `updated_at`) VALUES
(56, 'Chair', '', '', '', 0, 1, 0, 0, 0, 0, '', '', '2016-06-11 22:27:42', '2016-08-09 13:42:12'),
(57, 'Table', '', '', '', 0, 0, 0, 0, 0, 0, '', '', '2016-06-11 22:27:59', '2016-08-09 13:42:19'),
(59, 'Furniture', '', '', '', 0, 1, 0, 0, 0, 0, '', '', '2016-08-09 13:42:05', '2016-08-09 13:42:05'),
(65, 'sub chair', '', '', '', 56, 1, 0, 1, 0, 0, '', '', '2016-12-14 22:49:55', '2016-12-14 22:49:55'),
(66, 'test', '', '', '', 65, 0, 0, 2, 0, 0, '', '', '2017-02-18 00:42:19', '2017-02-18 00:42:19'),
(67, 'sub of furniture', '', '', '', 59, 0, 0, 1, 0, 0, '', '', '2017-03-02 22:19:05', '2017-03-02 22:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `memory_tbl`
--

CREATE TABLE `memory_tbl` (
  `sd` int(11) NOT NULL,
  `asd` int(11) NOT NULL,
  `dsads` int(11) NOT NULL,
  `asdsad` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_row_id` int(11) NOT NULL,
  `link_dynamic` tinyint(1) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_link` varchar(255) NOT NULL,
  `menu_content` longtext NOT NULL,
  `parent_id` int(11) NOT NULL,
  `has_child` tinyint(1) NOT NULL,
  `level` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `menu_sort_order` int(5) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_row_id`, `link_dynamic`, `menu_name`, `menu_link`, `menu_content`, `parent_id`, `has_child`, `level`, `is_active`, `menu_sort_order`, `created_at`, `updated_at`) VALUES
(1, 0, 'Home', '', '<p>hom</p>', 0, 0, 0, 0, 0, '2016-06-01 16:39:38', '2016-06-01 16:39:38'),
(2, 0, 'About Us', '', '<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.</p>\r\n<p>It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.</p>\r\n<p><strong>It is About us page.</strong> You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.</p>\r\n<p>It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.<br />It is About us page. You can update the content from Admin panel.</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is AboIt is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.It is About us page. You can update the content from Admin panel.ut us page. You can update the content from Admin panel. &nbsp; &nbsp; &nbsp; &nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel. &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;It is About us page. You can update the content from Admin panel.&nbsp;</p>', 0, 0, 0, 1, 0, '2016-06-01 16:39:48', '2016-06-15 13:50:25'),
(3, 0, 'Contact Us', '', '<p>Email: enggmasud1983 @ gmail.com</p>\r\n<p>Skype: enggmasud1983</p>', 0, 0, 0, 1, 0, '2016-06-01 16:40:00', '2016-06-15 13:55:06'),
(4, 1, 'What is Lorem Ipsum?', 'what-is-lorem-ipsum', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>', 0, 0, 0, 1, 4, '0000-00-00 00:00:00', '2016-08-18 22:07:19'),
(9, 1, 'MY new Page', 'my-new-page', '<p>my new page &nbsp;</p>', 0, 0, 0, 1, 0, '2016-08-18 21:53:24', '2016-08-18 21:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_09_233722_create_admins_table', 2),
('2016_05_10_001807_create_products_table', 3),
('2016_05_10_001820_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_row_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_price` float(10,2) NOT NULL DEFAULT '0.00',
  `order_status` int(11) NOT NULL COMMENT '1=order start, 2=order completed, 3= order cancelled',
  `deletion_status` int(11) NOT NULL,
  `shipping_amount` float(10,2) NOT NULL DEFAULT '0.00',
  `shipping_country` varchar(60) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_exp_month` varchar(10) NOT NULL,
  `card_exp_year` varchar(10) NOT NULL,
  `card_holder_contactname` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_row_id`, `user_id`, `total_price`, `order_status`, `deletion_status`, `shipping_amount`, `shipping_country`, `card_type`, `card_number`, `card_exp_month`, `card_exp_year`, `card_holder_contactname`, `created_at`, `updated_at`) VALUES
(1, 4, 1200.00, 1, 0, 0.00, '', '', '', '', '', '', '2016-08-30 02:12:44', '2016-08-30 02:12:44'),
(16, 5, 324.00, 1, 0, 0.00, '', '', '', '', '', '', '2016-08-29 22:28:48', '2016-08-29 22:28:48'),
(17, 0, 900.00, 1, 0, 0.00, '', '', '', '', '', '', '2016-08-29 22:29:53', '2016-08-29 22:29:53'),
(18, 0, 34543.00, 1, 0, 0.00, '', '', '', '', '', '', '2016-08-30 02:16:22', '2016-08-30 02:16:22'),
(19, 6, 34867.00, 1, 0, 0.00, '', '', '', '', '', '', '2016-08-30 02:17:31', '2016-08-30 02:17:31'),
(20, 7, 900.00, 1, 0, 0.00, '', '', '', '', '', '', '2016-08-30 12:50:13', '2016-08-30 12:50:13'),
(21, 8, 898.00, 1, 0, 0.00, '', '', '', '', '', '', '2017-03-04 04:32:11', '2017-03-04 04:32:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_row_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_name_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` float(8,2) NOT NULL,
  `product_height` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_width` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `product_weight` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `category_row_id` int(11) NOT NULL,
  `product_sku` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_latest` tinyint(1) NOT NULL DEFAULT '0',
  `product_short_description` text COLLATE utf8_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_row_id`, `product_name`, `product_name_url`, `product_price`, `product_height`, `product_width`, `product_weight`, `category_row_id`, `product_sku`, `product_image`, `is_featured`, `is_latest`, `product_short_description`, `product_long_description`, `created_at`, `updated_at`) VALUES
(1, 'Apples', '', 500.00, '', '', '', 57, 'tbl4', '1470793974.png', 1, 1, 'The apple tree (Malus pumila, commonly and erroneously called Malus domestica) is a deciduous tree in the rose family best known for its sweet, pomaceous fruit, the apple. It is cultivated worldwide as a fruit tree,', 'The apple tree (Malus pumila, commonly and erroneously called Malus domestica) is a deciduous tree in the rose family best known for its sweet, pomaceous fruit, the apple. It is cultivated worldwide as a fruit tree,', '2016-07-30 17:34:38', '2016-08-09 13:52:54'),
(2, 'Bananas', '', 100.00, '', '', '', 57, 'tbl2', '1470793940.png', 1, 1, 'The banana is an edible fruit – botanically a berry[1][2] – produced by several kinds of large herbaceous flowering plants in the genus Musa.[3] In some countries, bananas used for cooking may be called plantains,', 'The banana is an edible fruit – botanically a berry[1][2] – produced by several kinds of large herbaceous flowering plants in the genus Musa.[3] In some countries, bananas used for cooking may be called plantains, in contrast to dessert bananas. The fruit is variable in size, color and firmness, but is usually elongated and curved, with soft flesh rich in starch covered with a rind which may be green, yellow, red, purple, or brown when ripe. The fruits grow in clusters hanging from the top of the plant. Almost all modern edible parthenocarpic (seedless) bananas come from two wild species – Musa acuminata and Musa balbisiana. The scientific names of most cultivated bananas are Musa acuminata, Musa balbisiana, and Musa × paradisiaca for the hybrid Musa acuminata × M. balbisiana, depending on their genomic constitution. The old scientific name Musa sapientum is no longer used.', '2016-07-30 23:04:37', '2016-08-09 13:52:20'),
(3, 'Strawberry', '', 400.00, '', '', '', 57, 'tbl1', '1470793921.png', 1, 1, 'The garden strawberry (or simply strawberry; Fragaria × ananassa)[1] is a widely grown hybrid species of the genus Fragaria (collectively known as the strawberries). It is cultivated worldwide for its fruit.', 'he garden strawberry (or simply strawberry; Fragaria × ananassa)[1] is a widely grown hybrid species of the genus Fragaria (collectively known as the strawberries). It is cultivated worldwide for its fruit. The fruit (which is not a botanical berry, but an aggregate accessory fruit) is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as preserves, fruit juice, pies, ice creams, milkshakes, and chocolates. Artificial strawberry flavorings and aromas are also widely used in many products like lip gloss, candy, hand sanitizers, perfume, and many others.', '2016-07-30 23:04:54', '2016-08-09 13:52:01'),
(4, 'Pineapples', '', 250.00, '', '', '', 56, 'chr3', '1470793898.png', 1, 1, 'The pineapple (Ananas comosus) is a tropical plant with an edible multiple fruit consisting of coalesced berries, also called pineapples,[2][3] and the most economically significant plant in the Bromeliaceae family.', 'This article is about the large fruit and the plant that bears it. For other uses, see Pineapple (disambiguation).The pineapple (Ananas comosus) is a tropical plant with an edible multiple fruit consisting of coalesced berries, also called pineapples,[2][3] and the most economically significant plant in the Bromeliaceae family.[4]\r\n\r\nPineapples may be cultivated from a crown cutting of the fruit,[2][5] possibly flowering in 5-10 months and fruiting in the following six months.[5][6] Pineapples do not ripen significantly after harvest.[7]', '2016-08-08 03:34:45', '2016-08-09 13:51:38'),
(5, 'Oranges', '', 900.00, '', '', '', 56, 'shr', '1470793875.png', 0, 0, 'The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae.[1] It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. ', 'The orange is the fruit of the citrus species Citrus × sinensis in the family Rutaceae.[1] It is also called sweet orange, to distinguish it from the related Citrus × aurantium, referred to as bitter orange. The sweet orange reproduces asexually (apomixis through nucellar embryony); varieties of sweet orange arise through mutations.\r\n\r\nThe orange is a hybrid between pomelo (Citrus maxima) and mandarin (Citrus reticulata). It has genes that are ~25% pomelo and ~75% mandarin; however, it is not a simple backcrossed BC1 hybrid, but hybridized over multiple generations.[4] The chloroplast genes, and therefore the maternal line, seem to be pomelo. The sweet orange has had its full genome sequenced. Earlier estimates of the percentage of pomelo genes varying from ~50% to 6% have been reported.', '2016-08-08 03:57:03', '2016-08-09 13:51:15'),
(6, 'Mangos', '', 1200.00, '', '', '', 56, 'prod', '1488692752.png', 0, 0, 'Mangoes are juicy stone fruit (drupe) from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. The majority of these species are found in nature as wild mangoes.', 'Mangoes are juicy stone fruit (drupe) from numerous species of tropical trees belonging to the flowering plant genus Mangifera, cultivated mostly for their edible fruit. The majority of these species are found in nature as wild mangoes. The genus belongs to the cashew family Anacardiaceae. Mangoes are native to South Asia,[2][3] from where the \"common mango\" or \"Indian mango\", Mangifera indica, has been distributed worldwide to become one of the most widely cultivated fruits in the tropics. Other Mangifera species (e.g. horse mango, Mangifera foetida) are also grown on a more localized basis.', '2016-08-09 13:50:48', '2017-03-04 23:45:52'),
(10, 'Grapes', '', 240.00, '', '', '', 56, '', '1470794418.png', 0, 0, 'This article is about the fruits of the genus Vitis. For the European grapevine, see Vitis vinifera. For other uses, see Grape (disambiguation).', 'The cultivation of the domesticated grape began 6,000–8,000 years ago in the Near East.[1] Yeast, one of the earliest domesticated microorganisms, occurs naturally on the skins of grapes, leading to the discovery of alcoholic drinks such as wine. The earliest archeological evidence for a dominant position of wine-making in human culture dates from 8,000 years ago in Georgia.[2][3][4] The oldest known winery was found in Armenia, dating to around 4000 BC.[citation needed] By the 9th century AD the city of Shiraz was known to produce some of the finest wines in the Middle East. Thus it has been proposed that Syrah red wine is named after Shiraz, a city in Persia where the grape was used to make Shirazi wine.', '2016-08-09 14:00:18', '2016-08-09 14:00:18'),
(11, 'Cucumber', '', 50.00, '', '', '', 57, 'fdsf', '1470794437.png', 0, 0, 'Cucumber (Cucumis sativus) is a widely cultivated plant in the gourd family, Cucurbitaceae. It is a creeping vine that bears cucumiform fruits that are used as vegetables. There are three main varieties of cucumber: ', 'The cucumber is a creeping vine that roots in the ground and grows up trellises or other supporting frames, wrapping around supports with thin, spiraling tendrils. The plant may also root in a soilless medium and will sprawl along the ground if it does not have supports. The vine has large leaves that form a canopy over the fruits. The fruit of typical cultivars of cucumber is roughly cylindrical, but elongated with tapered ends, and may be as large as 60 centimeters (24 in) long and 10 centimeters (3.9 in) in diameter.[citation needed] Botanically speaking, the cucumber is classified as a pepo, a type of botanical berry with a hard outer rind and no internal divisions. Much like tomato and squash, it is often perceived, prepared and eaten as a vegetable. Cucumber fruits are usually more than 90% water', '2016-08-09 14:00:37', '2016-08-09 14:00:37'),
(12, 'Tomato', '', 50.00, '', '', '', 57, 'dsfsd', '1470794458.png', 0, 0, 'The tomato (see pronunciation) is the edible fruit of Solanum lycopersicum,[2] commonly known as a tomato plant, which belongs to the nightshade family, Solanaceae.[1]\r\n\r\nThe species originated in Central and South America. The Nahuatl (Aztec language) word tomatl gave rise to the Spanish word \"tomate\", from which the English word tomato originates.', 'The word \"tomato\" comes from the Spanish tomate, which in turn comes from the Nahuatl word tomatl [ˈtomat͡ɬ].[6] It first appeared in print in 1595.[citation needed]\r\n\r\nThe native Mexican tomatillo is tomate (in Nahuatl: tomātl Listen), meaning \"fat water\" or \"fat thing\").[7] When Aztecs started to cultivate the Andean fruit, bigger and red, they called the new species xitomatl (or jitomates) (pronounced [ʃiːˈtomatɬ]), (\"plump thing with navel\" or \"fat water with navel\"). After their conquest of Tenochtitlan, Spaniards exported tomatoes (jitomates) to the rest of the world with the name tomate, so numerous languages use forms of the word \"tomato\" (tomate) to refer to the red tomato instead of the green tomatillo.[citation needed] It first appeared in print in 1595.[6] The scientific species epithet lycopersicum means \"wolf peach\", and comes from German werewolf myths. These legends said that deadly nightshade was used by witches and sorcerers in potions to transform themselves into werewolves, so the tomato\'s similar, but much larger, fruit was called the \"wolf peach\" when it arrived in Europe', '2016-08-09 14:00:58', '2016-08-09 14:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_image_others`
--

CREATE TABLE `product_image_others` (
  `product_row_id` int(11) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_real_time`
--

CREATE TABLE `tbl_gateway_real_time` (
  `real_time_gateway_row_id` int(11) UNSIGNED NOT NULL,
  `merchant_row_id` int(11) UNSIGNED NOT NULL,
  `real_time_gateway` smallint(5) UNSIGNED NOT NULL,
  `gateway_account_no` tinyint(2) UNSIGNED NOT NULL DEFAULT '1',
  `nick_name` varchar(50) DEFAULT NULL,
  `authorize_api_login_key` text NOT NULL,
  `authorize_api_transaction_key` text NOT NULL,
  `authorize_api_signature` text NOT NULL,
  `real_time_currency` varchar(20) NOT NULL,
  `transactions_per_cycle` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `cvv2_required` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_mobile` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_real_time`
--

INSERT INTO `tbl_gateway_real_time` (`real_time_gateway_row_id`, `merchant_row_id`, `real_time_gateway`, `gateway_account_no`, `nick_name`, `authorize_api_login_key`, `authorize_api_transaction_key`, `authorize_api_signature`, `real_time_currency`, `transactions_per_cycle`, `cvv2_required`, `is_mobile`) VALUES
(53, 2, 43, 1, 'eProcessing Network', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(57, 2, 2, 1, 'Authorize.Net', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(8, 2, 3, 1, 'PayPal Website Payment Pro ', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(55, 2, 45, 1, 'Klick and Pay', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(41, 2, 31, 1, 'PayLeap', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(37, 2, 36, 1, 'First Atlantic Commerce', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(54, 2, 44, 1, 'Stripe', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 1, 0),
(46, 2, 1005, 1, 'Beanstream Mobile', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', '0', 0, 0, 1),
(56, 2, 29, 1, 'Quantum Gateway', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 0),
(45, 2, 1003, 2, 'PayLeap Mobile', 'eyJpdiI6IlpJTzEwZGtWcG5pQVwvMGFkYnZDRzBnPT0iLCJ2YWx1ZSI6IkgxYWwxa2U5dDIwSEVqYm12WnBYQkE9PSIsIm1hYyI6ImQ0YzE1MGJkZjllYzA4MDRkZjNkZWUwOWMyY2JlMjJiZWU5ZDg4ZjU3MDEwYjNmMzNiNzlkYzFmMDk0ZGM0MjQifQ==', 'eyJpdiI6InIwNmRhQThjUWNNb3g5UU9Xd25pSUE9PSIsInZhbHVlIjoiMDM5SFczeFczSENVRFR1QjNRR000NDZtbW5uY0xpZjNsMzNnaGdENFdlWT0iLCJtYWMiOiIxZDEwNmZhNzgyZjBkMDQ2NTRmZDc1NzhjOWQwYTdjYjhmOTBhMWE4MjYxZDc5NTQ4ODI0N2UzN2FiNGJiZWFkIn0=', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'USD', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_setup`
--

CREATE TABLE `tbl_gateway_setup` (
  `merchant_row_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `credit_cards_selected` varchar(100) DEFAULT NULL,
  `payment_process_model` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1=Sale, 2= Authorize and Capture',
  `real_time_gateway` tinyint(3) DEFAULT '0',
  `real_time_gateway_mobile` smallint(6) NOT NULL,
  `real_gateway_account_no` tinyint(10) UNSIGNED NOT NULL DEFAULT '1',
  `standard_gateway_paypal` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_alertpay` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_rbsworldpay` tinyint(3) UNSIGNED DEFAULT '0',
  `standard_gateway_klickandpay` tinyint(3) DEFAULT '0',
  `enable_realtime_rotator` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_setup`
--

INSERT INTO `tbl_gateway_setup` (`merchant_row_id`, `credit_cards_selected`, `payment_process_model`, `real_time_gateway`, `real_time_gateway_mobile`, `real_gateway_account_no`, `standard_gateway_paypal`, `standard_gateway_alertpay`, `standard_gateway_rbsworldpay`, `standard_gateway_klickandpay`, `enable_realtime_rotator`) VALUES
(2, 'American Express,Master Card,Visa', 1, 2, 0, 1, 1, 10, 12, 45, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gateway_standard`
--

CREATE TABLE `tbl_gateway_standard` (
  `standard_gateway_row_id` int(11) UNSIGNED NOT NULL,
  `merchant_row_id` int(11) UNSIGNED NOT NULL,
  `standard_gateway` tinyint(3) UNSIGNED NOT NULL,
  `authorize_email` varchar(255) DEFAULT NULL,
  `authorize_api_login_key` text,
  `authorize_api_transaction_key` text,
  `authorize_api_signature` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gateway_standard`
--

INSERT INTO `tbl_gateway_standard` (`standard_gateway_row_id`, `merchant_row_id`, `standard_gateway`, `authorize_email`, `authorize_api_login_key`, `authorize_api_transaction_key`, `authorize_api_signature`) VALUES
(16, 2, 1, 'msh134_1265016211_biz@gmail.com', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(11, 2, 10, 'seller_1_enggmasud1983@gmail.com', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(19, 2, 12, '', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ=='),
(20, 2, 45, '', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==', 'eyJpdiI6IlRmSVBEcDdmZ0F4VjJSRVwvWndaZlpBPT0iLCJ2YWx1ZSI6IjZxRUM0cDR1TG9XV1NEaG8xaDhNZWc9PSIsIm1hYyI6IjJkMTZlMzdlZjdlNTQ2ZDY0YzBhNWM1OTRkOTdhODJjY2MxOGVmMGVkN2FiMjE1OTczYzIwOGMyNzBhYjlkNTkifQ==');

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

CREATE TABLE `temp_orders` (
  `temp_order_row_id` int(11) NOT NULL,
  `product_row_id` int(11) NOT NULL,
  `tracking_number` varchar(255) NOT NULL,
  `product_price` float(8,2) NOT NULL,
  `product_qty` int(5) NOT NULL,
  `product_total_price` float(8,2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_orders`
--

INSERT INTO `temp_orders` (`temp_order_row_id`, `product_row_id`, `tracking_number`, `product_price`, `product_qty`, `product_total_price`, `created_at`, `updated_at`) VALUES
(5, 1, '8e2579a61e116e7b09d51bf036981fb8f3ccc299', 500.00, 1, 500.00, '2016-08-09 14:28:30', '0000-00-00 00:00:00'),
(6, 4, '8e2579a61e116e7b09d51bf036981fb8f3ccc299', 100.00, 1, 100.00, '2016-08-09 14:29:32', '0000-00-00 00:00:00'),
(7, 1, '8e2579a61e116e7b09d51bf036981fb8f3ccc299', 500.00, 1, 500.00, '2016-08-09 17:34:29', '0000-00-00 00:00:00'),
(8, 3, '8e2579a61e116e7b09d51bf036981fb8f3ccc299', 400.00, 1, 400.00, '2016-08-09 17:37:02', '0000-00-00 00:00:00'),
(9, 8, '10fed37b3d4699b14ee6c789302e24388e296f7d', 450.00, 2, 900.00, '2016-08-10 02:19:57', '0000-00-00 00:00:00'),
(10, 8, '10fed37b3d4699b14ee6c789302e24388e296f7d', 450.00, 1, 450.00, '2016-08-10 02:20:23', '0000-00-00 00:00:00'),
(11, 11, '10fed37b3d4699b14ee6c789302e24388e296f7d', 343.00, 1, 343.00, '2016-08-10 02:20:37', '0000-00-00 00:00:00'),
(12, 14, '4abf133aa893101cefe6f2d75a726018a77a415f', 455.00, 1, 455.00, '2016-08-10 02:34:12', '0000-00-00 00:00:00'),
(13, 2, '4abf133aa893101cefe6f2d75a726018a77a415f', 130.00, 1, 130.00, '2016-08-10 02:34:18', '0000-00-00 00:00:00'),
(14, 2, '4abf133aa893101cefe6f2d75a726018a77a415f', 130.00, 1, 130.00, '2016-08-10 02:34:37', '0000-00-00 00:00:00'),
(15, 14, '5b71021234b6568f5bc747cedfb566db955c02b1', 455.00, 1, 455.00, '2016-08-10 05:57:56', '0000-00-00 00:00:00'),
(16, 6, '5b71021234b6568f5bc747cedfb566db955c02b1', 1200.00, 1, 1200.00, '2016-08-10 06:00:22', '0000-00-00 00:00:00'),
(18, 10, 'ecb05af7263e36fc5bab7351067953b27d4618d1', 34543.00, 4, 138172.00, '2016-08-15 14:04:35', '0000-00-00 00:00:00'),
(19, 1, '7c29564d74f4aabf64a05dc388333c3eb30c7604', 500.00, 3, 1500.00, '2016-08-15 14:24:05', '0000-00-00 00:00:00'),
(20, 13, '7c29564d74f4aabf64a05dc388333c3eb30c7604', 324.00, 1, 324.00, '2016-08-15 14:24:09', '0000-00-00 00:00:00'),
(21, 10, 'f651b7846a38947f8da9d493161239ffa753e2c2', 34543.00, 1, 34543.00, '2016-08-15 19:44:33', '0000-00-00 00:00:00'),
(22, 3, 'b6fee063229cd36387bbd61be9322c3782912bbe', 400.00, 1, 400.00, '2016-08-16 14:10:33', '0000-00-00 00:00:00'),
(23, 11, 'b6fee063229cd36387bbd61be9322c3782912bbe', 343.00, 1, 343.00, '2016-08-16 14:12:11', '0000-00-00 00:00:00'),
(24, 6, '3d6feae108ac1f219e2085e115747c963c068b69', 1200.00, 4, 4800.00, '2016-08-16 16:04:43', '0000-00-00 00:00:00'),
(25, 4, '3d6feae108ac1f219e2085e115747c963c068b69', 250.00, 1, 250.00, '2016-08-16 16:29:36', '0000-00-00 00:00:00'),
(26, 6, '3d6feae108ac1f219e2085e115747c963c068b69', 1200.00, 1, 1200.00, '2016-08-16 16:33:19', '0000-00-00 00:00:00'),
(27, 14, '297174538c056177034cf686c3c923fa7eaff911', 455.00, 1, 455.00, '2016-08-18 21:22:28', '0000-00-00 00:00:00'),
(28, 14, '8455e6f3264a57fcbbb01b2e006411aa991db86b', 455.00, 1, 455.00, '2016-08-22 02:59:23', '0000-00-00 00:00:00'),
(30, 10, '3a33a70153804e422e3270ebada1aea7e4bf7534', 34543.00, 1, 34543.00, '2016-08-28 21:55:19', '0000-00-00 00:00:00'),
(31, 15, '2c2b007bc5a9476c545ee12e7db9cd648bfb54b1', 123.00, 1, 123.00, '2016-08-29 16:08:07', '0000-00-00 00:00:00'),
(32, 13, 'f533b059aa4bef10571aae7cfd56780b9085e7c5', 324.00, 1, 324.00, '2016-08-30 01:54:03', '0000-00-00 00:00:00'),
(33, 6, '089e87f756310c85958515a8a09c4eeebaab8709', 1200.00, 1, 1200.00, '2016-08-30 02:11:44', '0000-00-00 00:00:00'),
(34, 10, 'fae42b76e0766455ed94c8277116454265d232ae', 34543.00, 1, 34543.00, '2016-08-30 02:14:43', '0000-00-00 00:00:00'),
(35, 13, 'fae42b76e0766455ed94c8277116454265d232ae', 324.00, 1, 324.00, '2016-08-30 02:16:56', '0000-00-00 00:00:00'),
(36, 13, '2b1f50c42d701ee57becc09f9e5c6f69530a2393', 324.00, 1, 324.00, '2016-08-30 02:19:06', '0000-00-00 00:00:00'),
(37, 3, 'b4619ea9b7592ba6078dbd482d809ea5f02cf441', 400.00, 1, 400.00, '2016-08-30 02:44:15', '0000-00-00 00:00:00'),
(38, 5, 'a7004d8c5a74b268d67bd99ad8bd25882ffdf5f2', 900.00, 1, 900.00, '2016-08-30 12:49:04', '0000-00-00 00:00:00'),
(39, 14, 'b78a833b8cf4ff3ed8627a1b9ffa53109f62d3d8', 455.00, 1, 455.00, '2016-09-07 04:25:07', '0000-00-00 00:00:00'),
(40, 5, '1d9cf069e5786c85637a23587d9320de1efbc7e6', 900.00, 1, 900.00, '2016-09-10 22:06:16', '0000-00-00 00:00:00'),
(41, 15, '7ed3c3f5b471bdb6c2a49bf5c43a9a8233726397', 123.00, 1, 123.00, '2016-09-11 00:11:48', '0000-00-00 00:00:00'),
(42, 2, 'c2efc72a5ab38e70dfbb2cc6b555c2dbecfd3555', 1730.00, 1, 1730.00, '2016-09-12 15:47:27', '0000-00-00 00:00:00'),
(43, 12, 'c6a7b2a55042342c56f2821535e0d07f81b56b33', 43543.00, 1, 43543.00, '2016-09-14 11:59:18', '0000-00-00 00:00:00'),
(44, 1, '114b67116ceb3b1335ac75d091b88b6a9a75f818', 500.00, 1, 500.00, '2016-09-18 16:00:44', '0000-00-00 00:00:00'),
(45, 14, '55165363241cb1216d721ecba63c92d05b8ed9ef', 455.00, 1, 455.00, '2016-09-19 04:59:46', '0000-00-00 00:00:00'),
(46, 16, '38642626bbdb41fef5108802ba8ae5b86f4b2d4d', 123.00, 1, 123.00, '2016-09-19 15:07:38', '0000-00-00 00:00:00'),
(47, 14, '77229a90980e2584f4aa4f3303871a55dc775fbb', 455.00, 1, 455.00, '2016-09-20 12:41:57', '0000-00-00 00:00:00'),
(48, 14, 'eb0b7a0b1477d8a7b472c5fb15d39029c77a3008', 455.00, 0, 0.00, '2016-09-20 18:13:38', '0000-00-00 00:00:00'),
(52, 17, '2b742c8610bb22f486b2bbd3599d4a159e80d12c', 70000.00, 1, 70000.00, '2016-10-10 19:27:19', '0000-00-00 00:00:00'),
(53, 17, '07629a8b26003e04966b10890fa9be24f665108c', 70000.00, 1, 70000.00, '2016-10-12 05:11:53', '0000-00-00 00:00:00'),
(54, 17, '6318ce7f9194302b97845ff6da66b8053111f1f0', 70000.00, 1, 70000.00, '2016-10-13 06:55:11', '0000-00-00 00:00:00'),
(55, 17, '378dc3f9b32e9c93d53962ca4c6e7b78aeb74f69', 70000.00, 1, 70000.00, '2016-10-16 07:20:24', '0000-00-00 00:00:00'),
(57, 17, '378dc3f9b32e9c93d53962ca4c6e7b78aeb74f69', 70000.00, 1, 70000.00, '2016-10-16 07:27:17', '0000-00-00 00:00:00'),
(58, 17, '4cf103449ed70aca540a79783d125869cdf630b2', 70000.00, 1, 70000.00, '2016-10-21 14:43:23', '0000-00-00 00:00:00'),
(59, 13, '4cf103449ed70aca540a79783d125869cdf630b2', 324.00, 1, 324.00, '2016-10-21 14:43:42', '0000-00-00 00:00:00'),
(60, 17, '32e70a3b5858e9475c8e7937974933f6d17811bc', 70000.00, 1, 70000.00, '2016-10-21 20:26:39', '0000-00-00 00:00:00'),
(61, 17, '32e70a3b5858e9475c8e7937974933f6d17811bc', 70000.00, 1, 70000.00, '2016-10-21 20:29:16', '0000-00-00 00:00:00'),
(62, 1, '93a1ff68319d4322b5b3095280a24a6ae69afd96', 500.00, 1, 500.00, '2016-11-09 22:39:34', '0000-00-00 00:00:00'),
(63, 10, '5817053b238310491205989529486052294963ba', 34543.00, 1, 34543.00, '2016-11-10 17:31:17', '0000-00-00 00:00:00'),
(64, 3, 'c2e57e0457460ec5412112cce97ddd242b2ab961', 400.00, 1, 400.00, '2016-11-10 17:33:17', '0000-00-00 00:00:00'),
(65, 6, '54440f45dbbeb9cc81bb88e96054bf3200bce482', 1200.00, 1, 1200.00, '2016-11-10 17:35:23', '0000-00-00 00:00:00'),
(66, 11, '396da21acfc9e5d861b22e097c875fa90a63b47c', 343.00, 1, 343.00, '2016-11-12 05:20:18', '0000-00-00 00:00:00'),
(67, 4, '8ea9d33e8fe093ce68044aabe64ad5d193f75598', 250.00, 1, 250.00, '2016-11-12 09:44:43', '0000-00-00 00:00:00'),
(68, 11, 'd2dec56028b698296ce6a5169b15988de7d43885', 343.00, 1, 343.00, '2016-11-12 17:44:47', '0000-00-00 00:00:00'),
(69, 2, '558bd6ad892af8b771722e5d8a6bef6889ae810d', 1730.00, 1, 1730.00, '2016-11-18 02:43:56', '0000-00-00 00:00:00'),
(70, 1, '9f90fa20d8d548b1ac38c176d5936ae9b0623228', 500.00, 1, 500.00, '2016-11-18 02:44:06', '0000-00-00 00:00:00'),
(71, 4, '0042b70107e9a2c832819f90e7d14ef32045edf0', 250.00, 1, 250.00, '2016-11-18 02:44:15', '0000-00-00 00:00:00'),
(72, 15, '46a39bb3b7a3fea104afa3d4e5d85784db858535', 123.00, 1, 123.00, '2016-11-18 02:44:25', '0000-00-00 00:00:00'),
(73, 3, 'ea8c4927fd944359f14fd260692f254ef8889941', 400.00, 1, 400.00, '2016-11-18 02:44:36', '0000-00-00 00:00:00'),
(74, 5, '979038a856d64f8f7b096f120b5648c81c8a396c', 900.00, 1, 900.00, '2016-11-18 02:44:45', '0000-00-00 00:00:00'),
(75, 6, '0da4b76287102e9c5f2f73a05b1b7e8a47469749', 1200.00, 1, 1200.00, '2016-11-18 02:44:55', '0000-00-00 00:00:00'),
(76, 13, '251d10d45546cc41b278b892d2a26999807ce46c', 324.00, 1, 324.00, '2016-11-18 02:45:36', '0000-00-00 00:00:00'),
(77, 14, '550749972758744662c7dad8691a8ee7c989e27b', 455.00, 1, 455.00, '2016-11-18 02:45:51', '0000-00-00 00:00:00'),
(78, 13, 'd2cc570a10d283ee0a6046f641049ee631375f13', 324.00, 1, 324.00, '2016-11-22 13:46:14', '0000-00-00 00:00:00'),
(79, 2, '052741115ecb794601e8ae19f2ea1186a614dfea', 1730.00, 1, 1730.00, '2016-11-28 22:37:54', '0000-00-00 00:00:00'),
(80, 3, '094cf3bd0eac95d285017cfb4992ad05327b09b7', 400.00, 1, 400.00, '2016-11-28 22:38:03', '0000-00-00 00:00:00'),
(81, 15, '4438b8732df0931edbcd430c9730abcdf16595dd', 123.00, 1, 123.00, '2016-11-28 22:38:14', '0000-00-00 00:00:00'),
(82, 1, '687347b22c29e4060dbd0ada8308476559e0f4f6', 500.00, 1, 500.00, '2016-11-28 22:38:24', '0000-00-00 00:00:00'),
(83, 4, '33a661c7ee0c04d6e1f8c04088b507275b9e4051', 250.00, 1, 250.00, '2016-11-28 22:38:34', '0000-00-00 00:00:00'),
(84, 5, '16e0ffb85f57b643c9a553cdce6d1a1c734b2506', 900.00, 1, 900.00, '2016-11-28 22:38:43', '0000-00-00 00:00:00'),
(85, 6, '96fd6d2d059ba7166a8d6cca58d5e9a6106107e0', 1200.00, 1, 1200.00, '2016-11-28 22:38:59', '0000-00-00 00:00:00'),
(86, 14, '95fd77d97c47652ba5f54a2eba8a3cb435036420', 455.00, 1, 455.00, '2016-11-28 22:39:34', '0000-00-00 00:00:00'),
(87, 13, 'c6360cbe6b8ff3ce5612936047ba549f6147fa87', 324.00, 1, 324.00, '2016-11-28 22:39:49', '0000-00-00 00:00:00'),
(88, 2, 'ff68b787b7f3561ff822b7adab00238628256af4', 1730.00, 1, 1730.00, '2016-12-09 19:40:06', '0000-00-00 00:00:00'),
(89, 3, '31f759d1d16e0fd4173c6b2ee28d79baa42c4a17', 400.00, 1, 400.00, '2016-12-09 19:40:16', '0000-00-00 00:00:00'),
(90, 4, '8e4b7b8d611164e9d427168d8f3324cbf1e6f637', 250.00, 1, 250.00, '2016-12-09 19:40:27', '0000-00-00 00:00:00'),
(91, 5, '64163921e1b3fdf81d1be78ff5bdd24fd2e004b0', 900.00, 1, 900.00, '2016-12-09 19:40:36', '0000-00-00 00:00:00'),
(92, 1, '9d404bfe8176e380879fec1301c236fdad499204', 500.00, 1, 500.00, '2016-12-09 19:40:46', '0000-00-00 00:00:00'),
(93, 15, 'e0d3f3865505527f64d73f432f20f66277c346c4', 123.00, 1, 123.00, '2016-12-09 19:40:56', '0000-00-00 00:00:00'),
(94, 6, '7556b1d9da06eaa9df3f3835a709607874724ed8', 1200.00, 1, 1200.00, '2016-12-09 19:41:16', '0000-00-00 00:00:00'),
(95, 14, 'b417879bd97914ebf29c09216ac013cb86c9a9f6', 455.00, 1, 455.00, '2016-12-09 19:41:51', '0000-00-00 00:00:00'),
(96, 13, 'b4797164578f9f1d75b89d0b0417edb61e1ee7a2', 324.00, 1, 324.00, '2016-12-09 19:42:00', '0000-00-00 00:00:00'),
(97, 17, '92976fab686086caf81509fd8304d35b152c09ba', 70000.00, 1, 70000.00, '2016-12-14 01:14:07', '0000-00-00 00:00:00'),
(98, 1, '50ce6986d8c85798ef6ad4ed71d2817f0fffb0ee', 500.00, 2, 1000.00, '2016-12-15 04:44:44', '0000-00-00 00:00:00'),
(99, 11, '50ce6986d8c85798ef6ad4ed71d2817f0fffb0ee', 343.00, 1, 343.00, '2016-12-15 04:45:11', '0000-00-00 00:00:00'),
(100, 1, 'd371e66c242830b93e75dad5ec7d036a697de4e2', 500.00, 1, 500.00, '2016-12-20 19:14:30', '0000-00-00 00:00:00'),
(101, 3, '361559e5989118d7b994be5582a6dbecdcf54b23', 400.00, 1, 400.00, '2016-12-20 19:14:40', '0000-00-00 00:00:00'),
(102, 5, '7133b376616f9c5ab42f9d978caf16dce6a88323', 900.00, 1, 900.00, '2016-12-20 19:14:50', '0000-00-00 00:00:00'),
(103, 4, '1dc1422b68f5b9056837d0b6489d7d2d012222c5', 250.00, 1, 250.00, '2016-12-20 19:15:00', '0000-00-00 00:00:00'),
(104, 2, 'cf08c90f3f472a068b0c6e69769b320324854e6a', 1730.00, 1, 1730.00, '2016-12-20 19:15:10', '0000-00-00 00:00:00'),
(105, 15, '098ec211d2f7e7f2f3520db915d2bb51b8c4e26c', 123.00, 1, 123.00, '2016-12-20 19:15:20', '0000-00-00 00:00:00'),
(106, 6, '4fc6ded46a284b0c4c5afb666ad73285236ae523', 1200.00, 1, 1200.00, '2016-12-20 19:15:34', '0000-00-00 00:00:00'),
(107, 13, '5403d57afce639ee99960d5b88e6401f504ba35d', 324.00, 1, 324.00, '2016-12-20 19:16:04', '0000-00-00 00:00:00'),
(108, 14, 'bb61a3916f84fec34497801ca397490ed6c573b9', 455.00, 1, 455.00, '2016-12-20 19:16:20', '0000-00-00 00:00:00'),
(109, 5, 'ade1878b11f6eba8d8f9337689989b85dde3c7b4', 900.00, 1, 900.00, '2016-12-31 12:50:09', '0000-00-00 00:00:00'),
(110, 15, '78a557839b6194f8bc8b3eb8013fc5c0ec64f539', 123.00, 1, 123.00, '2016-12-31 12:50:20', '0000-00-00 00:00:00'),
(111, 4, 'a08905c07ada2585d99616e8ceeed5305b6aca40', 250.00, 1, 250.00, '2016-12-31 12:50:29', '0000-00-00 00:00:00'),
(112, 1, 'dd75f942e57dd9aed4a5e2c49af73aa0eb0529f4', 500.00, 1, 500.00, '2016-12-31 12:50:39', '0000-00-00 00:00:00'),
(113, 2, 'e7fc6c1d348ff6d44c8e28883a70be437c5abcbb', 1730.00, 1, 1730.00, '2016-12-31 12:50:50', '0000-00-00 00:00:00'),
(114, 3, 'e9fcdbb0504c247118d87c7bd395054a2d87756f', 400.00, 1, 400.00, '2016-12-31 12:50:59', '0000-00-00 00:00:00'),
(115, 6, '89339bb5140b7fa70f47351ef5349ab3720ca448', 1200.00, 1, 1200.00, '2016-12-31 12:51:10', '0000-00-00 00:00:00'),
(116, 14, 'a3215fcd17b610f35994a35e73b991858090fb97', 455.00, 1, 455.00, '2016-12-31 12:51:49', '0000-00-00 00:00:00'),
(117, 13, '123ec952e3f2ee4cce6c8c832c5fdfcc4b6f5ea1', 324.00, 1, 324.00, '2016-12-31 12:52:03', '0000-00-00 00:00:00'),
(118, 17, 'a096ed844d0fd866e38704f01448d2a4609a081b', 70000.00, 1, 70000.00, '2017-01-09 17:08:29', '0000-00-00 00:00:00'),
(119, 4, '46a362615002afd21677d3b292f36882f94d51ac', 250.00, 1, 250.00, '2017-01-10 06:29:01', '0000-00-00 00:00:00'),
(120, 3, '06b5e295e322bfb9ec66960c4c15593f78173d2b', 400.00, 1, 400.00, '2017-01-10 06:29:10', '0000-00-00 00:00:00'),
(121, 1, '474890c3dfc22ad6e2b01cd7f1ffc24941de435f', 500.00, 1, 500.00, '2017-01-10 06:29:21', '0000-00-00 00:00:00'),
(122, 5, '82e271bf4c7917d6ef0d9a3129552190497036bf', 900.00, 1, 900.00, '2017-01-10 06:29:31', '0000-00-00 00:00:00'),
(123, 2, 'fe29f850390c035dc58c1107f6fa02c2583160e0', 1730.00, 1, 1730.00, '2017-01-10 06:29:40', '0000-00-00 00:00:00'),
(124, 6, 'ebc7b46c4439e264d5cfed935dda6d922fb92ffb', 1200.00, 1, 1200.00, '2017-01-10 06:29:51', '0000-00-00 00:00:00'),
(125, 13, '7d98ff6f96e86391d13052dd1d87bca28bbc3687', 324.00, 1, 324.00, '2017-01-10 06:30:25', '0000-00-00 00:00:00'),
(126, 14, '58fe57de443154f392659eaeae2818535e5cc87c', 455.00, 1, 455.00, '2017-01-10 06:30:46', '0000-00-00 00:00:00'),
(127, 14, '9518443135532989061cb584587500be576c4896', 455.00, 1, 455.00, '2017-02-05 17:40:14', '0000-00-00 00:00:00'),
(128, 10, '9c32bfa0c08e1ae34aa32085b41c793c99838100', 34543.00, 1, 34543.00, '2017-02-07 09:16:50', '0000-00-00 00:00:00'),
(129, 1, '0202f062f9c1230180342e483b9ecfbda769692b', 500.00, 1, 500.00, '2017-02-09 07:09:56', '0000-00-00 00:00:00'),
(130, 6, 'dddc0a37f1d061a42397493388dc4a8687c83917', 1200.00, 1, 1200.00, '2017-02-10 17:17:28', '0000-00-00 00:00:00'),
(131, 13, '74189774e72649c093807dd1ca02602f4a528db5', 324.00, 1, 324.00, '2017-02-11 02:57:19', '0000-00-00 00:00:00'),
(132, 3, '3fc2ba2deaa283b8f9b70704ba0a46b7bcee4760', 400.00, 1, 400.00, '2017-02-13 02:27:18', '0000-00-00 00:00:00'),
(133, 3, '1e96ab00d70f08ed21da8cd9a3538d39ca21b092', 400.00, 1, 400.00, '2017-02-14 18:36:20', '0000-00-00 00:00:00'),
(134, 5, 'cf3d8455b36e3c8c04b100ea970dd5eca382dc06', 900.00, 1, 900.00, '2017-02-14 18:36:31', '0000-00-00 00:00:00'),
(135, 2, '566cd08649845688deaa68939e1a4a8b442fe918', 1730.00, 1, 1730.00, '2017-02-14 18:36:41', '0000-00-00 00:00:00'),
(136, 1, '1a1dc65c651a547a02795b716a9f4df4de71910f', 500.00, 1, 500.00, '2017-02-14 18:36:50', '0000-00-00 00:00:00'),
(137, 4, 'fc07d24275654b808962d102f43ab5d1b233b3e1', 250.00, 1, 250.00, '2017-02-14 18:37:00', '0000-00-00 00:00:00'),
(138, 6, 'e8157408faf038211ee38030be2da82de5ebec26', 1200.00, 1, 1200.00, '2017-02-14 18:37:15', '0000-00-00 00:00:00'),
(139, 13, '842b9665e97fc5ee8770229d69bc93f2900545f8', 324.00, 1, 324.00, '2017-02-14 18:37:50', '0000-00-00 00:00:00'),
(140, 14, '922e66d3327c15b53bf4ec358ccced9d7fcffcc0', 455.00, 1, 455.00, '2017-02-14 18:38:00', '0000-00-00 00:00:00'),
(141, 6, 'c9a042fbc86094d35785c6b1f759d92799153a74', 1200.00, 1, 1200.00, '2017-02-17 13:56:19', '0000-00-00 00:00:00'),
(142, 6, 'a633b899f399e6a218d686e2dd2b72a0dde7e00e', 1200.00, 1, 1200.00, '2017-02-17 18:15:57', '0000-00-00 00:00:00'),
(143, 13, 'a02f83a69ecc00216513e052976c589fba9b41e0', 324.00, 1, 324.00, '2017-02-21 06:10:21', '0000-00-00 00:00:00'),
(144, 12, 'cb44f2a5abad2dd3d4c3dca098aa93011aa3dc91', 43543.00, 1, 43543.00, '2017-02-21 14:44:54', '0000-00-00 00:00:00'),
(145, 2, 'c21b0c341ebf7212895afb921b5dd08b02bb1e2e', 1730.00, 1, 1730.00, '2017-02-23 20:48:35', '0000-00-00 00:00:00'),
(146, 2, 'cadcbf825f6601f077b814c3e944bac12449d73a', 1730.00, 1, 1730.00, '2017-02-24 03:49:28', '0000-00-00 00:00:00'),
(147, 4, '58896252ca4cc175efac9fa7e0627b8fb5ee7e7d', 250.00, 1, 250.00, '2017-02-24 03:49:38', '0000-00-00 00:00:00'),
(148, 3, '9c61370ec74ef2693cb96d513256ce824072dfee', 400.00, 1, 400.00, '2017-02-24 03:49:48', '0000-00-00 00:00:00'),
(149, 1, 'ce690475c89844cadd001de2f43fbfbf054cc596', 500.00, 1, 500.00, '2017-02-24 03:49:58', '0000-00-00 00:00:00'),
(150, 5, '28b6fdc10293fdf3f8581852050918760b25ab20', 900.00, 1, 900.00, '2017-02-24 03:50:08', '0000-00-00 00:00:00'),
(151, 6, 'fbeb3bca9b042a5176494ec011c0449c1717e3e2', 1200.00, 1, 1200.00, '2017-02-24 03:50:18', '0000-00-00 00:00:00'),
(152, 14, 'e7ffc69fbe156888d1f266d78665af3d0dfab54d', 455.00, 1, 455.00, '2017-02-24 03:50:53', '0000-00-00 00:00:00'),
(153, 13, '9444aedd1b8cc36cdf6c811316b418c4a0a32cd8', 324.00, 1, 324.00, '2017-02-24 03:51:13', '0000-00-00 00:00:00'),
(154, 11, '84462cf0f2aeccc967b0ebe5b1d7e92c11f877fe', 343.00, 1, 343.00, '2017-02-24 18:44:21', '0000-00-00 00:00:00'),
(161, 14, '1c3b1450e3bf69e79de418ecbf5646ec28e8253d', 455.00, 1, 455.00, '2017-02-24 19:10:48', '0000-00-00 00:00:00'),
(162, 1, '2c6ea68baaff493b7ceb3e955ec9f2f88bdd146d', 500.00, 1, 500.00, '2017-02-27 12:35:56', '0000-00-00 00:00:00'),
(163, 10, '4f5af7ae54aa9eee59e049d1b407ee22c69eaba6', 34543.00, 1, 34543.00, '2017-03-01 16:07:32', '0000-00-00 00:00:00'),
(165, 14, 'c68950f645d6e277242b25d1824c834f2f9feee7', 455.00, 1, 455.00, '2017-03-03 04:21:09', '0000-00-00 00:00:00'),
(166, 13, '8b9438c3515887f516e2df95dde2c65003adda7f', 324.00, 2, 648.00, '2017-03-04 04:30:24', '0000-00-00 00:00:00'),
(167, 4, '8b9438c3515887f516e2df95dde2c65003adda7f', 250.00, 1, 250.00, '2017-03-04 04:30:41', '0000-00-00 00:00:00'),
(168, 6, '2421b05a0acf0c0ad4aa30a4e6d0c342ccb5db74', 1200.00, 1, 1200.00, '2017-03-05 09:21:22', '0000-00-00 00:00:00'),
(169, 5, 'b04f74f3c37c1e18d72198dce622b74c91fcadac', 900.00, 1, 900.00, '2017-03-05 10:55:56', '0000-00-00 00:00:00'),
(170, 2, '94d9bda3394010332393d3e5881fa5ebfa679fc7', 1730.00, 1, 1730.00, '2017-03-05 10:56:04', '0000-00-00 00:00:00'),
(171, 3, '50fad5418d88571b500bb6f0ae8014d6b1507841', 400.00, 1, 400.00, '2017-03-05 10:56:14', '0000-00-00 00:00:00'),
(172, 4, '0017e684518e6a7b544c461a256088652df903b5', 250.00, 1, 250.00, '2017-03-05 10:56:24', '0000-00-00 00:00:00'),
(173, 1, '27bc49adb4c7f6a528c02ec9020e7f94e3ae6dff', 500.00, 1, 500.00, '2017-03-05 10:56:35', '0000-00-00 00:00:00'),
(174, 6, '92f1463b1abff262b6ce1847859f34764cc9d905', 1200.00, 1, 1200.00, '2017-03-05 10:56:44', '0000-00-00 00:00:00'),
(175, 14, '5bf41b8fc0e821064d79728e6660b8a71655b73c', 455.00, 1, 455.00, '2017-03-05 10:57:19', '0000-00-00 00:00:00'),
(176, 13, '20c38470bb0b3461b7dcf59608cf8dddae9b85e4', 324.00, 1, 324.00, '2017-03-05 10:57:34', '0000-00-00 00:00:00'),
(178, 6, 'a824ee51148832dadcaf030fc33ae1b116603200', 1200.00, 1, 1200.00, '2017-03-08 13:05:32', '0000-00-00 00:00:00'),
(179, 12, '4d4da0943b5c29b2c4b607804e09b4fabde0a03f', 43543.00, 1, 43543.00, '2017-03-10 06:15:12', '0000-00-00 00:00:00'),
(181, 13, '6362f5868d8be188dafe8bca44f1ad9ef088e6b5', 324.00, 1, 324.00, '2017-03-12 11:27:23', '0000-00-00 00:00:00'),
(182, 11, 'aaaa36460a5718b1fb8bd1fa0eb200180384a4b0', 343.00, 1, 343.00, '2017-03-12 18:40:50', '0000-00-00 00:00:00'),
(183, 4, '96f5e65823ed8e095491663c55664701c03aa025', 250.00, 1, 250.00, '2017-03-14 17:04:56', '0000-00-00 00:00:00'),
(184, 3, '910a2632397b80ad8ab2e249784e42b4a9cbfee2', 400.00, 1, 400.00, '2017-03-14 17:05:07', '0000-00-00 00:00:00'),
(185, 1, '39907fd23955532b84d3dd8982ce01c95da3a145', 500.00, 1, 500.00, '2017-03-14 17:05:16', '0000-00-00 00:00:00'),
(186, 2, 'fee02779027aa90bb62aefa0849d11288e766dae', 1730.00, 1, 1730.00, '2017-03-14 17:05:27', '0000-00-00 00:00:00'),
(187, 5, '9b2c0571618d378c9c8679e3d81d883445257ac3', 900.00, 1, 900.00, '2017-03-14 17:05:37', '0000-00-00 00:00:00'),
(188, 6, '7d3971949506b812a7119dee273b2c9fa7cffa2f', 1200.00, 1, 1200.00, '2017-03-14 17:05:46', '0000-00-00 00:00:00'),
(189, 13, '1ad347c6f8c91e28a9690c23e000379279898644', 324.00, 1, 324.00, '2017-03-14 17:06:21', '0000-00-00 00:00:00'),
(190, 14, '3731c825ce935712c09e85600385f54753f78a7b', 455.00, 1, 455.00, '2017-03-14 17:06:31', '0000-00-00 00:00:00'),
(191, 1, 'dfaace252da959b70645c46a9b9a62941e9a8b81', 500.00, 1, 500.00, '2017-03-18 03:27:28', '0000-00-00 00:00:00'),
(192, 6, '33649c2d22292d6a650755ea68b5bf2103bb0426', 1200.00, 1, 1200.00, '2017-03-19 11:38:36', '0000-00-00 00:00:00'),
(193, 14, 'b0365debd149b8ffe4bcd613f3d734cba7dd2988', 455.00, 3, 1365.00, '2017-03-20 07:58:39', '0000-00-00 00:00:00'),
(194, 14, 'b0365debd149b8ffe4bcd613f3d734cba7dd2988', 455.00, 1, 455.00, '2017-03-20 07:59:01', '0000-00-00 00:00:00'),
(195, 14, 'b0365debd149b8ffe4bcd613f3d734cba7dd2988', 455.00, 1, 455.00, '2017-03-20 10:17:10', '0000-00-00 00:00:00'),
(196, 12, 'b0365debd149b8ffe4bcd613f3d734cba7dd2988', 43543.00, 1, 43543.00, '2017-03-20 10:31:21', '0000-00-00 00:00:00'),
(197, 12, 'b0365debd149b8ffe4bcd613f3d734cba7dd2988', 43543.00, 1, 43543.00, '2017-03-20 10:32:20', '0000-00-00 00:00:00'),
(198, 1, '8885a85fb92341908272d1701e584d072a554299', 500.00, 1, 500.00, '2017-03-21 18:29:02', '0000-00-00 00:00:00'),
(199, 5, '1ea14e6884b44f2848cb1ce57ed72952e6dbe150', 900.00, 1, 900.00, '2017-03-23 18:05:23', '0000-00-00 00:00:00'),
(200, 4, '0379c5b547aa74417071ceaa121c89211deabea8', 250.00, 1, 250.00, '2017-03-24 01:36:00', '0000-00-00 00:00:00'),
(201, 3, '626e4e81ee3a371310b5597bbc141bb2d90c0d03', 400.00, 1, 400.00, '2017-03-24 01:36:10', '0000-00-00 00:00:00'),
(202, 1, '53bdc4e9fb9f08363389ab4e4b0def955bd52773', 500.00, 1, 500.00, '2017-03-24 01:36:20', '0000-00-00 00:00:00'),
(203, 5, '4775ee00575e3cd86d376064afdcffc011f87249', 900.00, 1, 900.00, '2017-03-24 01:36:30', '0000-00-00 00:00:00'),
(204, 2, 'c34e0b6c290d5fd20a0471733d24de2839bd5ff8', 1730.00, 1, 1730.00, '2017-03-24 01:36:40', '0000-00-00 00:00:00'),
(205, 6, 'a1385f64c6923c80acb4c5a35a14d200cd475d64', 1200.00, 1, 1200.00, '2017-03-24 01:37:00', '0000-00-00 00:00:00'),
(206, 13, '37fb965c5234896b1dc957f7bc9c8b05d5904fc7', 324.00, 1, 324.00, '2017-03-24 01:37:25', '0000-00-00 00:00:00'),
(207, 14, 'b5e6224f11f294c31d2a5c8c21487a8edffe6f3a', 455.00, 1, 455.00, '2017-03-24 01:37:35', '0000-00-00 00:00:00'),
(208, 1, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 500.00, 1, 500.00, '2017-03-31 15:26:15', NULL),
(209, 4, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 250.00, 1, 250.00, '2017-03-31 16:16:35', NULL),
(210, 4, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 250.00, 1, 250.00, '2017-03-31 16:21:10', NULL),
(211, 4, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 250.00, 1, 250.00, '2017-03-31 17:00:43', NULL),
(212, 4, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 250.00, 1, 250.00, '2017-03-31 17:04:00', NULL),
(213, 4, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 250.00, 1, 250.00, '2017-03-31 17:06:18', NULL),
(214, 1, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 500.00, 1, 500.00, '2017-03-31 17:11:50', NULL),
(215, 1, 'FZS9XRnLotrhJJpqGabRxpUeAO0uoLsCOuxWxLh9', 500.00, 1, 500.00, '2017-03-31 17:24:41', NULL),
(216, 1, 'lwSOhrykgaFM7jJaAZhrVeP9IESNvnJzvZ9jcXzY', 500.00, 1, 500.00, '2017-04-01 11:56:43', NULL),
(217, 12, 'lwSOhrykgaFM7jJaAZhrVeP9IESNvnJzvZ9jcXzY', 50.00, 1, 50.00, '2017-04-01 11:57:24', NULL),
(218, 2, 'lwSOhrykgaFM7jJaAZhrVeP9IESNvnJzvZ9jcXzY', 100.00, 1, 100.00, '2017-04-01 12:02:41', NULL),
(219, 3, 'synlggDb98DE3UdBglTXZBQlL2wPg99AjlfWhPkO', 400.00, 4, 1600.00, '2017-04-01 12:16:08', NULL),
(220, 1, 'synlggDb98DE3UdBglTXZBQlL2wPg99AjlfWhPkO', 500.00, 1, 500.00, '2017-04-01 12:29:36', NULL),
(221, 6, 'synlggDb98DE3UdBglTXZBQlL2wPg99AjlfWhPkO', 1200.00, 1, 1200.00, '2017-04-01 14:23:59', NULL),
(222, 6, 'synlggDb98DE3UdBglTXZBQlL2wPg99AjlfWhPkO', 1200.00, 1, 1200.00, '2017-04-01 14:33:24', NULL),
(223, 1, 'rARuUslazgE8YWMXOEqmydZhp4xerlSxJuRRmx8Y', 500.00, 4, 2000.00, '2017-04-02 16:27:01', NULL),
(224, 1, 'tgrvUpdhGyTRCoVMshgXAwELIhufc1vmSjDRZF22', 500.00, 4, 2000.00, '2017-04-04 16:26:56', NULL),
(225, 4, 'tgrvUpdhGyTRCoVMshgXAwELIhufc1vmSjDRZF22', 250.00, 1, 250.00, '2017-04-04 17:29:48', NULL),
(226, 1, '9HlKTFdRhV6mZ93BRsoQ35ayK6amkZ7YfMR8TfN6', 500.00, 1, 500.00, '2017-04-05 16:28:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'masud', 'masud9@gmail.com', '$2y$10$dH6kJPaiGQS6G5yiC8Erou.bpt45KrBkfxH2t8DJNuftbBGVTsxuu', NULL, '2016-07-30 20:10:11', '2016-07-30 20:10:11'),
(2, 'masud', 'masud@bdcommerce.com', '$2y$10$Q5uiWK9IM1RLJRQFs.y4Pe2kVp2EMyrnBSPwE5FTFp7A/29p2Ikia', 'H0jSfWuWy4maBpgeJNn2eC6uFbXg89mhmF9Cs16n09hjUkweaXneFRPyQJqZ', '2016-08-08 01:38:35', '2016-08-09 23:03:47'),
(3, 'Masud', 'masud@masud.com', '$2y$10$82H3blHvOKiPAdW45N84DOEPmnpcosjIPadtQ5q83kYHokNtL3iRe', NULL, '2016-08-15 02:08:39', '2016-08-15 02:08:39'),
(4, 'John smith', 'john@smith.com', '$2y$10$aitGMwQRTLACY/xMZxkeBOddtoVyBgdC/KMK9FOsajjvKrGPO9kXq', NULL, NULL, NULL),
(5, 'zaman masud', 'zaman@masud.com', '$2y$10$x6fBNr5HoEzMgeSYQfUSn.WzAuniJwipbJLlhmDSdDxCppBxZE5dO', NULL, NULL, NULL),
(6, 'masu', 'mas@gmail.com', '$2y$10$FSupafM.W25V1Yyy.zxVMe/jkvkCwSAwBRXRHWvw8HQlYQndN1wH2', NULL, NULL, NULL),
(7, 'Mobile', 'M@m', '$2y$10$JOmeYAr0T2wvzUULMuz2buf3PRSV29YKgVMZFkUd//8Rpbs82mOVa', NULL, NULL, NULL),
(8, 'Sabbir ', 'sabbir@gmail.com', '$2y$10$fhPiy4CnPbMamTvTpsLWIemzi0ayJP37qtI6AFCr2WU5z.uiyToIe', NULL, NULL, NULL),
(9, 'Md ramjan ali', 'ramjan@gmail.com', '$2y$10$AQD/.lQ2RN7a59MNxdtPT.46YhLezLL9IAjc3MLFzrcaqulUkXluu', NULL, '2017-04-01 06:11:24', '2017-04-01 06:11:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`post_row_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_row_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_row_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_row_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_row_id`);

--
-- Indexes for table `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`temp_order_row_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `post_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `menu_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_row_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `temp_order_row_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
