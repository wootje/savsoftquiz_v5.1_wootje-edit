-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2023 at 04:17 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `account_id` int(11) NOT NULL,
  `users` varchar(1000) DEFAULT NULL,
  `quiz` varchar(1000) DEFAULT NULL,
  `results` varchar(1000) DEFAULT NULL,
  `questions` varchar(1000) DEFAULT NULL,
  `account_name` varchar(1000) DEFAULT NULL,
  `setting` varchar(100) DEFAULT NULL,
  `study_material` varchar(1000) NOT NULL,
  `appointment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`account_id`, `users`, `quiz`, `results`, `questions`, `account_name`, `setting`, `study_material`, `appointment`) VALUES
(1, 'Add,Edit,View,List,List_all,Myaccount,Remove', 'Attempt,Add,Edit,View,List,List_all,Remove', 'View,List,List_all,Remove', 'Add,Edit,View,list,List_all,Remove', 'Administrator', 'All', 'Add,Edit,View,List,List_all,Remove', 'List,List_all'),
(2, 'Myaccount', 'Attempt,View,List', 'View,List,Remove', '', 'Quizzer', NULL, 'View,List', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_request`
--

CREATE TABLE `appointment_request` (
  `appointment_id` int(11) NOT NULL,
  `request_by` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `appointment_timing` timestamp NOT NULL DEFAULT current_timestamp(),
  `appointment_time_zone` varchar(100) NOT NULL DEFAULT 'Europe/Amsterdam',
  `appointment_status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoftquiz_custom_form`
--

CREATE TABLE `savsoftquiz_custom_form` (
  `field_id` int(11) NOT NULL,
  `field_title` varchar(100) NOT NULL,
  `field_type` varchar(100) NOT NULL DEFAULT 'text',
  `field_validate` varchar(1000) NOT NULL DEFAULT 'pattern="[A-Za-z0-9]{1,100}"',
  `field_value` varchar(100) DEFAULT NULL,
  `display_at` varchar(100) NOT NULL DEFAULT 'Registration'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `savsoftquiz_setting`
--

CREATE TABLE `savsoftquiz_setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(1000) NOT NULL,
  `setting_value` varchar(1000) DEFAULT 'true',
  `setting_group_name` varchar(100) NOT NULL DEFAULT 'General',
  `order_by` int(11) NOT NULL,
  `setting_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoftquiz_setting`
--

INSERT INTO `savsoftquiz_setting` (`setting_id`, `setting_name`, `setting_value`, `setting_group_name`, `order_by`, `setting_description`) VALUES
(1, 'App_Name', 'Quiz Tool', 'General', 1, NULL),
(2, 'App_title', 'Leuk om je te zien.', 'General', 1, NULL),
(3, 'SMTP_hostname', 'ssl://smtp.somedomain.something', 'Email', 2, NULL),
(4, 'SMTP_username', 'noreply@somedomain.something', 'Email', 2, NULL),
(5, 'SMTP_password', 'somepassword', 'Email', 2, NULL),
(6, 'SMTP_port', '465', 'Email', 2, NULL),
(7, 'Language_direction', 'ltr', 'General', 1, NULL),
(8, 'Enable_web_cam', 'false', 'General', 1, NULL),
(9, 'Enable_google_chart', 'true', 'General', 1, NULL),
(10, 'Enable_dompdf', 'true', 'General', 1, NULL),
(11, 'Enable_user_registration', 'true', 'General', 1, NULL),
(12, 'Verify_user_email', 'true', 'Email', 2, NULL),
(13, 'Tinymce_editor', 'true', 'Editor', 3, NULL),
(14, 'Tinymce_eqneditor_plugin', 'true', 'Editor', 3, NULL),
(15, 'Tinymce_wiris_plugin', 'true', 'Editor', 3, NULL),
(16, 'Mathjax', 'true', 'Editor', 3, NULL),
(17, 'Default_group_id', '1', 'General', 1, NULL),
(18, 'Enable_open_quiz', 'false', 'General', 1, NULL),
(19, 'Enable_sharethis', 'false', 'General', 1, NULL),
(20, 'Sharethis_property_id', '', 'General', 1, NULL),
(21, 'Advertisement_display_after_seconds', '0', 'General', 1, NULL),
(22, 'Advertisement_display_for_seconds', '0', 'General', 1, NULL),
(23, 'Android_API_key', '', 'General', 1, NULL),
(25, 'Email_protocol', 'smtp', 'Email', 2, NULL),
(26, 'SMTP_mailtype', 'html', 'Email', 2, NULL),
(28, 'Activation_email_subject', 'Quiz Tool - Je kunt bijna beginnen met de quiz!', 'Email', 2, NULL),
(29, 'Activation_email_message', 'Hallo, <br> <br> Leuk dat je mee doet! <br> <br> Open de link om je e-mail adres te bevestigen: <br> [verilink] <br> <br> Om in te loggen kun je de volgende link gebruiken: <br> [loginlink] <br> <br> Succes met de quiz!', 'Email', 2, NULL),
(30, 'Password_change_subject', 'Quiz Tool - Je nieuwe wachtwoord', 'Email', 2, NULL),
(31, 'Password_change_message', 'Hallo, <br> <br>  Je nieuwe wachtwoord is: [new_password] <br> <br> <u> Als je geen nieuw wachtwoord hebt aangevraagd, wijzig dan direct je wachtwoord! </u>  <br> <br> Succes met de quiz!', 'Email', 2, NULL),
(32, 'Send_result_email', 'true', 'Email', 2, NULL),
(33, 'Result_email_subject', 'Quiz Tool - Je score van quiz [quiz_name]', 'Email', 2, NULL),
(34, 'Result_email_message', 'Hallo, <br> <br> Voortgang: [result_status] <br> Quiz: [quiz_name] <br> Score: [percentage_obtained]% <br> <br> Voor meer informatie log in op de Quiz Tool: <br> [loginlink] <br> <br> Bedankt voor het quizzen!', 'Email', 2, NULL),
(35, 'Master_password', 'quizpass', 'General', 1, NULL),
(36, 'Base_currency_prefix', '€', 'Payment_Gateway', 4, NULL),
(37, 'Base_currency_sufix', 'Euro', 'Payment_Gateway', 4, NULL),
(38, 'Payment_gateways', 'paypal,checkout,payumoney,paytm', 'Payment_Gateway', 4, 'Comma separated'),
(39, 'Default_gateway', 'paypal', 'Payment_Gateway', 4, NULL),
(40, 'Enable_paypal', 'false', 'Payment_Gateway', 4, NULL),
(41, 'Paypal_environment', '', 'Payment_Gateway', 4, 'Empty for real or sandbox '),
(42, 'Paypal_receiver', '', 'Payment_Gateway', 4, 'Paypal email id'),
(43, 'Paypal_currency_prefix', '€', 'Payment_Gateway', 4, NULL),
(44, 'Paypal_currency_sufix', 'Euro', 'Payment_Gateway', 4, NULL),
(45, 'Paypal_conversion', '1', 'Payment_Gateway', 4, '1 if base currency is same'),
(46, 'Enable_checkout', 'false', 'Payment_Gateway', 4, NULL),
(47, 'Checkout_environment', '', 'Payment_Gateway', 4, NULL),
(48, 'Checkout_sid', '', 'Payment_Gateway', 4, NULL),
(49, 'Checkout_SecretWord', '', 'Payment_Gateway', 4, ''),
(50, 'Checkout_receiver', '', 'Payment_Gateway', 4, NULL),
(51, 'Checkout_currency_prefix', '€', 'Payment_Gateway', 4, NULL),
(52, 'Checkout_currency_sufix', 'Euro', 'Payment_Gateway', 4, NULL),
(53, 'Checkout_conversion', '1', 'Payment_Gateway', 4, NULL),
(54, 'Enable_payumoney', 'false', 'Payment_Gateway', 4, NULL),
(55, 'Payu_merchant_key', '', 'Payment_Gateway', 4, NULL),
(56, 'Payu_salt', '', 'Payment_Gateway', 4, NULL),
(57, 'Payumoney_currency_prefix', '€', 'Payment_Gateway', 4, NULL),
(58, 'Payumoney_currency_sufix', 'Euro', 'Payment_Gateway', 4, NULL),
(59, 'Payumoney_conversion', '66', 'Payment_Gateway', 4, NULL),
(60, 'Enable_paytm', 'false', 'Payment_Gateway', 4, NULL),
(61, 'Paytm_environment', 'Test', 'Payment_Gateway', 4, NULL),
(62, 'Paytm_merchant_key', '', 'Payment_Gateway', 4, NULL),
(63, 'Paytm_merchant_id', '', 'Payment_Gateway', 4, NULL),
(64, 'Paytm_merchant_website', 'WEB_STAGING', 'Payment_Gateway', 4, NULL),
(65, 'Paytm_currency_prefix', '€', 'Payment_Gateway', 4, NULL),
(66, 'Paytm_currency_sufix', 'Euro', 'Payment_Gateway', 4, NULL),
(67, 'Paytm_conversion', '', 'Payment_Gateway', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_add`
--

CREATE TABLE `savsoft_add` (
  `add_id` int(11) NOT NULL,
  `advertisement_code` text NOT NULL,
  `banner` varchar(1000) NOT NULL,
  `banner_link` varchar(1000) DEFAULT NULL,
  `position` varchar(100) NOT NULL,
  `add_status` varchar(100) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_answers`
--

CREATE TABLE `savsoft_answers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL,
  `qn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_category`
--

CREATE TABLE `savsoft_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_category`
--

INSERT INTO `savsoft_category` (`cid`, `category_name`) VALUES
(1, 'Algemeen'),
(2, 'Rekenen'),
(3, 'Multimedia'),
(4, 'Raadsels');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_group`
--

CREATE TABLE `savsoft_group` (
  `gid` int(11) NOT NULL,
  `group_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_group`
--

INSERT INTO `savsoft_group` (`gid`, `group_name`, `price`, `valid_for_days`, `description`) VALUES
(1, 'Deelnemer', 0, 0, '<p>Kies deze om verder te gaan.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_level`
--

CREATE TABLE `savsoft_level` (
  `lid` int(11) NOT NULL,
  `level_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_level`
--

INSERT INTO `savsoft_level` (`lid`, `level_name`) VALUES
(1, 'Makkelijk'),
(2, 'Moeilijk');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_notification`
--

CREATE TABLE `savsoft_notification` (
  `nid` int(11) NOT NULL,
  `notification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `click_action` varchar(100) DEFAULT NULL,
  `notification_to` varchar(1000) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `viewed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `q_option1` text NOT NULL,
  `score` float NOT NULL DEFAULT 0,
  `q_option_match1` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_payment`
--

CREATE TABLE `savsoft_payment` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `quid` int(11) NOT NULL DEFAULT 0,
  `amount` float NOT NULL,
  `paid_date` int(11) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL DEFAULT 'Paypal',
  `payment_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(1000) NOT NULL,
  `other_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `question1` text DEFAULT NULL,
  `description1` text DEFAULT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  `inserted_by` int(11) NOT NULL,
  `inserted_by_name` varchar(100) DEFAULT NULL,
  `paragraph` text DEFAULT NULL,
  `paragraph1` text DEFAULT NULL,
  `parent_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qcl`
--

CREATE TABLE `savsoft_qcl` (
  `qcl_id` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL,
  `i_correct` text NOT NULL,
  `i_incorrect` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_quiz`
--

CREATE TABLE `savsoft_quiz` (
  `quid` int(11) NOT NULL,
  `quiz_name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `gids` text NOT NULL,
  `qids` text NOT NULL,
  `noq` int(11) NOT NULL,
  `correct_score` text NOT NULL,
  `incorrect_score` text NOT NULL,
  `ip_address` text NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 10,
  `maximum_attempts` int(11) NOT NULL DEFAULT 1,
  `pass_percentage` float NOT NULL DEFAULT 50,
  `view_answer` int(11) NOT NULL DEFAULT 1,
  `camera_req` int(11) NOT NULL DEFAULT 1,
  `question_selection` int(11) NOT NULL DEFAULT 1,
  `gen_certificate` int(11) NOT NULL DEFAULT 0,
  `certificate_text` text DEFAULT NULL,
  `with_login` int(11) NOT NULL DEFAULT 1,
  `quiz_template` varchar(100) NOT NULL DEFAULT 'Default',
  `uids` varchar(1000) DEFAULT NULL,
  `inserted_by` int(11) NOT NULL DEFAULT 1,
  `inserted_by_name` varchar(100) DEFAULT 'Admin',
  `show_chart_rank` int(11) NOT NULL DEFAULT 1,
  `quiz_price` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_result`
--

CREATE TABLE `savsoft_result` (
  `rid` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `result_status` varchar(100) NOT NULL DEFAULT 'Open',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `categories` text NOT NULL,
  `category_range` text NOT NULL,
  `r_qids` text NOT NULL,
  `individual_time` text NOT NULL,
  `total_time` int(11) NOT NULL DEFAULT 0,
  `score_obtained` float NOT NULL DEFAULT 0,
  `percentage_obtained` float NOT NULL DEFAULT 0,
  `attempted_ip` varchar(100) NOT NULL,
  `score_individual` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `manual_valuation` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_users`
--

CREATE TABLE `savsoft_users` (
  `uid` int(11) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(1000) DEFAULT NULL,
  `connection_key` varchar(1000) DEFAULT NULL,
  `gid` varchar(100) NOT NULL DEFAULT '1',
  `su` int(11) NOT NULL DEFAULT 0,
  `inserted_by` int(11) NOT NULL DEFAULT 0,
  `subscription_expired` int(11) NOT NULL DEFAULT 0,
  `verify_code` int(11) NOT NULL DEFAULT 0,
  `wp_user` varchar(100) DEFAULT NULL,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(1000) DEFAULT NULL,
  `user_status` varchar(100) NOT NULL DEFAULT 'Active',
  `web_token` varchar(1000) DEFAULT NULL,
  `android_token` varchar(1000) DEFAULT NULL,
  `skype_id` varchar(100) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT 'Europe/Amsterdam'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_users`
--

INSERT INTO `savsoft_users` (`uid`, `password`, `email`, `first_name`, `last_name`, `contact_no`, `connection_key`, `gid`, `su`, `inserted_by`, `subscription_expired`, `verify_code`, `wp_user`, `registered_date`, `photo`, `user_status`, `web_token`, `android_token`, `skype_id`, `time_zone`) VALUES
(1, '5f4dcc3b5aa765d61d8327deb882cf99', 'admin@somedomain.something', 'Admin', 'User', '', NULL, '1', 1, 0, 0, 0, '', '2017-04-20 11:22:38', NULL, 'Active', 'dnwIpQWkxyA:APA91bFZLhdxZnPcNareTyHnJRikJGqaT7qh9DF4jSmyKSOq1rv6k7uwgmaQ4_K7jT3WNNUeKRdRQYsNf_OZaQZ7i5nKI_CjA6QGPwPsL5_D7ShPTtsuIwTkr0CuGx0RS7oAVNg_bImc', NULL, '', 'Europe/Amsterdam'),
(2, '3d1dfde9304bff15332bf4b308a47b50', '1558001408', 'Guest User', '1558001408', '', NULL, '1', 0, 0, 0, 0, NULL, '2019-05-16 10:10:08', NULL, 'Active', NULL, NULL, NULL, 'Europe/Amsterdam');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_users_custom`
--

CREATE TABLE `savsoft_users_custom` (
  `c_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `field_values` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_group`
--

CREATE TABLE `social_group` (
  `sg_id` int(11) NOT NULL,
  `sg_name` varchar(30) NOT NULL,
  `about` varchar(1000) NOT NULL,
  `sg_status` varchar(100) NOT NULL DEFAULT 'Public',
  `no_member` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `social_group_joined`
--

CREATE TABLE `social_group_joined` (
  `join_id` int(11) NOT NULL,
  `sg_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `joined_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `study_material`
--

CREATE TABLE `study_material` (
  `stid` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `study_description` text NOT NULL,
  `gids` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `attachment` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warning_message`
--

CREATE TABLE `warning_message` (
  `wid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `warning_time` int(11) NOT NULL,
  `warning_message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `appointment_request`
--
ALTER TABLE `appointment_request`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `savsoftquiz_custom_form`
--
ALTER TABLE `savsoftquiz_custom_form`
  ADD PRIMARY KEY (`field_id`);

--
-- Indexes for table `savsoftquiz_setting`
--
ALTER TABLE `savsoftquiz_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `savsoft_add`
--
ALTER TABLE `savsoft_add`
  ADD PRIMARY KEY (`add_id`);

--
-- Indexes for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `savsoft_notification`
--
ALTER TABLE `savsoft_notification`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  ADD PRIMARY KEY (`qcl_id`);

--
-- Indexes for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  ADD PRIMARY KEY (`quid`);

--
-- Indexes for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `savsoft_users_custom`
--
ALTER TABLE `savsoft_users_custom`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `social_group`
--
ALTER TABLE `social_group`
  ADD PRIMARY KEY (`sg_id`);

--
-- Indexes for table `social_group_joined`
--
ALTER TABLE `social_group_joined`
  ADD PRIMARY KEY (`join_id`);

--
-- Indexes for table `study_material`
--
ALTER TABLE `study_material`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `warning_message`
--
ALTER TABLE `warning_message`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointment_request`
--
ALTER TABLE `appointment_request`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `savsoftquiz_custom_form`
--
ALTER TABLE `savsoftquiz_custom_form`
  MODIFY `field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoftquiz_setting`
--
ALTER TABLE `savsoftquiz_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `savsoft_add`
--
ALTER TABLE `savsoft_add`
  MODIFY `add_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savsoft_notification`
--
ALTER TABLE `savsoft_notification`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  MODIFY `qcl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  MODIFY `quid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `savsoft_users_custom`
--
ALTER TABLE `savsoft_users_custom`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `social_group`
--
ALTER TABLE `social_group`
  MODIFY `sg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_group_joined`
--
ALTER TABLE `social_group_joined`
  MODIFY `join_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `study_material`
--
ALTER TABLE `study_material`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `warning_message`
--
ALTER TABLE `warning_message`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
