-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2020 at 04:37 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rois`
--
CREATE DATABASE IF NOT EXISTS `rois` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rois`;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_ALLOTMENTS`
--

CREATE TABLE `TDAT_ALLOTMENTS` (
  `SHINSEI_NO` int(11) NOT NULL,
  `ALLOTMENT_STATUS` varchar(1) DEFAULT NULL,
  `ZANTEI_MAIL_FL` decimal(1,0) DEFAULT '0',
  `ZANTEI_MAIL_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SHIKKO_MAIL_FL` decimal(1,0) DEFAULT '0',
  `SHIKKO_MAIL_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `KETTEI_MAIL_FL` decimal(1,0) DEFAULT NULL,
  `KETTEI_MAIL_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ZANTEI_DOCUMENT_FL` decimal(1,0) DEFAULT '0',
  `SHIKKO_DOCUMENT_FL` decimal(1,0) DEFAULT '0',
  `KETTEI_DOCUMENT_FL` decimal(1,0) DEFAULT '0',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `REPORT_COST` decimal(9,0) DEFAULT NULL,
  `ZANTEI_MAIL_REQUEST_NO` int(11) DEFAULT NULL,
  `SHIKKO_MAIL_REQUEST_NO` int(11) DEFAULT NULL,
  `KETTEI_MAIL_REQUEST_NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_APPLICATION_REPORT`
--

CREATE TABLE `TDAT_APPLICATION_REPORT` (
  `SHINSEI_NO` int(11) NOT NULL,
  `ISSUE_DATE` date NOT NULL,
  `ISSUE_COUNT` decimal(9,0) NOT NULL DEFAULT '0',
  `ISSUE_PAGE` decimal(9,0) NOT NULL DEFAULT '0',
  `ISSUE_COST` decimal(18,0) DEFAULT '0',
  `DESTINATION` varchar(500) DEFAULT NULL,
  `OTHER` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(19) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ESTIMATE` decimal(9,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_EVALUATION`
--

CREATE TABLE `TDAT_EVALUATION` (
  `SHINSEI_NO` int(11) NOT NULL,
  `RIYOSHA_NO` int(11) NOT NULL,
  `EVALUATION_SYMBOL` varchar(1) DEFAULT NULL,
  `EVALUATION_COMMENT` varchar(1000) DEFAULT NULL,
  `EXPECTATION` varchar(1000) DEFAULT NULL,
  `IMPROVEMENT` varchar(1000) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_EVALUATION_ITEM`
--

CREATE TABLE `TDAT_EVALUATION_ITEM` (
  `SHINSEI_NO` int(11) NOT NULL,
  `RIYOSHA_NO` int(11) NOT NULL,
  `ITEM_NO` int(11) NOT NULL,
  `ITEM_NANE` varchar(50) NOT NULL,
  `EVALUATION_POINT` varchar(1) DEFAULT NULL,
  `EVALUATION_COMMENT` varchar(1000) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_EXPENSES`
--

CREATE TABLE `TDAT_EXPENSES` (
  `EXPENSES_NO` int(11) NOT NULL,
  `SHINSEI_NO` int(11) DEFAULT NULL,
  `EXPENSES_KBN` varchar(2) DEFAULT NULL,
  `EXPENSES_DETAIL` varchar(100) DEFAULT NULL,
  `UNIT_PRICE` decimal(18,0) DEFAULT NULL,
  `SURYO` decimal(18,0) DEFAULT NULL,
  `BIKO` varchar(200) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SOKEI` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_EXPENSES`
--

INSERT INTO `TDAT_EXPENSES` (`EXPENSES_NO`, `SHINSEI_NO`, `EXPENSES_KBN`, `EXPENSES_DETAIL`, `UNIT_PRICE`, `SURYO`, `BIKO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `SOKEI`) VALUES
(1, 1, '11', '東京、横浜', '10000', '2', NULL, 'Z0000001', '2019-10-25 02:14:25', 'Z0000001', '2019-10-25 02:14:25', '28000'),
(2, 1, '13', NULL, '8000', '1', NULL, 'Z0000001', '2019-10-25 02:14:25', NULL, '0000-00-00 00:00:00', '28000'),
(3, 2, '11', '東京、大阪', '10000', '2', NULL, 'Z0000001', '2019-10-31 05:36:03', NULL, '0000-00-00 00:00:00', '20000'),
(4, 4, '11', '', '0', '0', NULL, 'Z0000001', '2019-11-01 03:21:52', NULL, '0000-00-00 00:00:00', '0'),
(277, 7, '14', NULL, '10000', '5', NULL, 'systemadmin', '2020-01-31 05:48:15', NULL, '0000-00-00 00:00:00', '80000'),
(278, 7, '15', NULL, '15000', '2', NULL, 'systemadmin', '2020-01-31 05:48:15', NULL, '0000-00-00 00:00:00', '80000');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_EXPENSES_ALLOTMENT`
--

CREATE TABLE `TDAT_EXPENSES_ALLOTMENT` (
  `SHINSEI_NO` int(11) NOT NULL,
  `EXPENSES_KBN` varchar(2) NOT NULL,
  `ALLOTMENT_AMOUNT` decimal(9,0) DEFAULT NULL,
  `EXECUTION_COST` decimal(9,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_EXPENSES_ALLOTMENT`
--

INSERT INTO `TDAT_EXPENSES_ALLOTMENT` (`SHINSEI_NO`, `EXPENSES_KBN`, `ALLOTMENT_AMOUNT`, `EXECUTION_COST`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, '11', '20000', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(1, '12', '0', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(1, '13', '8000', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(1, '14', '0', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(1, '15', '0', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(1, '16', '0', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(1, '19', '0', '0', 'systemadmin', '2020-01-30 06:49:43', 'systemadmin', '2020-01-30 06:49:43'),
(7, '14', '10000', NULL, 'systemadmin', '2020-01-31 07:22:20', 'systemadmin', '2020-01-31 07:22:20'),
(7, '15', '20000', NULL, 'systemadmin', '2020-01-31 07:22:20', 'systemadmin', '2020-01-31 07:22:20');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_FUND`
--

CREATE TABLE `TDAT_FUND` (
  `SHIKIN_UKEIRE_NO` int(11) NOT NULL,
  `SHINSEI_NO` int(11) NOT NULL,
  `SEIDO_HIMOKU` varchar(1000) DEFAULT NULL,
  `KENKYU_KADAI` varchar(1000) DEFAULT NULL,
  `SINSEIGAKU` decimal(18,0) DEFAULT '0',
  `SAITAKUGAKU` decimal(18,0) DEFAULT '0',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_IDO_APPLICATION`
--

CREATE TABLE `TDAT_IDO_APPLICATION` (
  `IDO_NO` int(11) NOT NULL,
  `RIYOSHA_NO` int(11) DEFAULT NULL,
  `SHINSEI_NO` int(11) DEFAULT NULL,
  `KIKAN_CD` varchar(2) DEFAULT NULL,
  `IDO_START_DATE` date DEFAULT NULL,
  `IDO_SHINSEI_DATE` date NOT NULL,
  `SHINSEI_TYPE_CD` varchar(1) NOT NULL,
  `TAISHO_KBN` varchar(1) DEFAULT NULL,
  `HENKO_SHINSEI_KBN` varchar(1) DEFAULT NULL,
  `HENKO_RIYU` text,
  `IDO_STATUS_CD` varchar(1) DEFAULT NULL,
  `SANKA_KENKYUSHA_NO` int(11) DEFAULT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME_KANA` varchar(50) DEFAULT NULL,
  `FIRST_NAME_KANA` varchar(50) DEFAULT NULL,
  `LAST_NAME_EIJI` varchar(50) DEFAULT NULL,
  `FIRST_NAME_EIJI` varchar(50) DEFAULT NULL,
  `MAIL_ADDRESS` varchar(50) NOT NULL,
  `OFFICE_ZIPCODE` varchar(7) DEFAULT NULL,
  `OFFICE_TODOFUKEN` varchar(50) DEFAULT NULL,
  `OFFICE_SHIKUCHOSON` varchar(100) DEFAULT NULL,
  `OFFICE_BANCHI` varchar(100) DEFAULT NULL,
  `OFFICE_TATEMONO` varchar(100) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `OFFICE_NATIONAL_NAME` varchar(100) DEFAULT NULL,
  `OFFICE_ADDRESS1` text,
  `OFFICE_ADDRESS2` text,
  `SHOZOKU_RUIBETSU_CD` varchar(10) DEFAULT NULL,
  `SHOZOKU_KIKAN_CD` varchar(10) DEFAULT NULL,
  `YAKUSHOKU` varchar(50) DEFAULT NULL,
  `SENMON_BUNYA` varchar(100) DEFAULT NULL,
  `SHONAI_FL` decimal(1,0) DEFAULT '0',
  `ID_HAKKO_FL` decimal(1,0) DEFAULT '0',
  `SYOGAKUSHO` text,
  `SHOZOKUCHO_YAKUSYOKU` text,
  `SHOZOKUCHO_LAST_NAME` varchar(50) DEFAULT NULL,
  `SHOZOKUCHO_FIRST_NAME` varchar(50) DEFAULT NULL,
  `HENKOU_SHODAKU_FL` decimal(1,0) DEFAULT '0',
  `HENKOU_SHODAKU_DATE` date DEFAULT NULL,
  `SANKA_OK_FL` decimal(1,0) DEFAULT '0',
  `DISABLED_FL` decimal(1,0) DEFAULT '0',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` decimal(10,0) DEFAULT '0',
  `SONOTA_SHOZOKU_KIKAN_NAME` text,
  `SHOZOKU_BUKYOKU_NAME` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_JUDGEMENT`
--

CREATE TABLE `TDAT_JUDGEMENT` (
  `SHINSEI_NO` int(11) NOT NULL,
  `SAITAKU_KBN` varchar(1) DEFAULT NULL,
  `RESERVE_RANK` decimal(4,0) DEFAULT NULL,
  `TOTAL_EVALUATION` varchar(3) DEFAULT NULL,
  `AVERAGE_EVALUATION` decimal(3,0) DEFAULT NULL,
  `MAX_EVALUATION` decimal(3,0) DEFAULT NULL,
  `EXPECTATION` varchar(1000) DEFAULT NULL,
  `IMPROVEMENT` varchar(1000) DEFAULT NULL,
  `KENKYU_CHANGE_FL` decimal(1,0) DEFAULT NULL,
  `KENKYU_CHANGE_BEFORE` varchar(1) DEFAULT NULL,
  `KENKYU_CHANGE_AFTER` varchar(1) DEFAULT NULL,
  `NOTICE_MAIL_FL` decimal(1,0) DEFAULT NULL,
  `NOTICE_MAIL_DATE` timestamp NULL DEFAULT NULL,
  `NOTICE_DOCUMENT_FL` decimal(1,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NULL DEFAULT NULL,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NULL DEFAULT NULL,
  `MAIL_REQUEST_NO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_KENKYU_GYOSEKI`
--

CREATE TABLE `TDAT_KENKYU_GYOSEKI` (
  `KENKYU_GYOSEKI_NO` int(11) NOT NULL,
  `SHINSEI_NO` int(11) NOT NULL,
  `PUBLICATION_DATE` date DEFAULT NULL,
  `PAPER_NAME` text,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `PAGE` text,
  `SUBJECT_NAME` text,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `BIKOU` text,
  `SOCIETY_NAME` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_KENKYU_KEIREKI`
--

CREATE TABLE `TDAT_KENKYU_KEIREKI` (
  `KENKYU_KEIREKI_NO` int(11) NOT NULL,
  `RIYOSHA_NO` int(11) NOT NULL,
  `CARRER_DATA_FROM` date DEFAULT NULL,
  `CARRER_DATA_TO` date DEFAULT NULL,
  `CAREER` varchar(2000) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_KENKYU_KEIREKI`
--

INSERT INTO `TDAT_KENKYU_KEIREKI` (`KENKYU_KEIREKI_NO`, `RIYOSHA_NO`, `CARRER_DATA_FROM`, `CARRER_DATA_TO`, `CAREER`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
(1, 3, '2008-01-01', '2009-03-01', '経歴１', 'Z0000001', '2020-02-06 03:33:34', NULL, '0000-00-00 00:00:00'),
(2, 3, '2009-04-01', NULL, '経歴２', 'Z0000001', '2020-02-06 03:33:34', NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_KOBO`
--

CREATE TABLE `TDAT_KOBO` (
  `KOBO_NO` int(11) NOT NULL,
  `KIKAN_CD` varchar(8) NOT NULL,
  `KOBO_NENDO` date NOT NULL,
  `KENKYU_SYUBETSU_CD` varchar(2) NOT NULL,
  `KOBO_NAME` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `APPLICATION_MAX_AMOUNT` decimal(10,0) DEFAULT '0',
  `ALLOTMENT_RATEA` decimal(5,2) DEFAULT '2.00',
  `UKETUKE_KIKAN_START` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UKETUKE_KIKAN_END` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SHODAKU_FL` smallint(6) DEFAULT NULL,
  `SHODAKU_KIKAN_START` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SHODAKU_KIKAN_END` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `HOKOKU_KIKAN_START` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `HOKOKU_KIKAN_END` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `APPLICATION_STYLE` varchar(1000) DEFAULT NULL,
  `KOKAI_FL` char(1) DEFAULT NULL,
  `SHODAKU_TAISHO` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_KOBO`
--

INSERT INTO `TDAT_KOBO` (`KOBO_NO`, `KIKAN_CD`, `KOBO_NENDO`, `KENKYU_SYUBETSU_CD`, `KOBO_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `APPLICATION_MAX_AMOUNT`, `ALLOTMENT_RATEA`, `UKETUKE_KIKAN_START`, `UKETUKE_KIKAN_END`, `SHODAKU_FL`, `SHODAKU_KIKAN_START`, `SHODAKU_KIKAN_END`, `HOKOKU_KIKAN_START`, `HOKOKU_KIKAN_END`, `APPLICATION_STYLE`, `KOKAI_FL`, `SHODAKU_TAISHO`) VALUES
(4, '11', '2020-04-01', 'A1', 'A1-TEST', 'systemadmin', '2020-02-06 03:36:16', 'systemadmin', '2020-02-06 03:36:16', '100000', '100.00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', 1, '2019-08-31 15:00:00', '2030-03-30 15:00:00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', '/var/www/html/jrois/Rois/public/upload/TBRC/register-offer/4/', '1', '1'),
(5, '11', '2020-04-01', 'B', 'B-TEST', 'systemadmin', '2020-02-06 03:36:58', 'systemadmin', '2020-02-06 03:36:58', '100000', '50.00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', 1, '2019-08-31 15:00:00', '2030-03-30 15:00:00', '2019-08-31 15:00:00', '2030-09-29 15:00:00', '/var/www/html/jrois/Rois/public/upload/TBRC/register-offer/5/', '1', '1'),
(6, '11', '2020-04-01', 'A2', 'A2-TEST', 'systemadmin', '2020-02-06 03:37:51', 'systemadmin', '2020-02-06 03:37:51', '50000', '25.00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', 1, '2019-08-31 15:00:00', '2030-03-30 15:00:00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', '', '1', '1'),
(7, '11', '2020-04-01', 'A3', 'A3-TEST', 'systemadmin', '2020-02-06 03:38:41', 'systemadmin', '2020-02-06 03:38:41', '25000', '10.00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', 1, '2019-08-31 15:00:00', '2030-03-30 15:00:00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', '', '1', '1'),
(8, '11', '2020-04-01', 'A4', 'A4-TEST', 'systemadmin', '2020-02-06 03:39:13', 'systemadmin', '2020-02-06 03:39:13', '25000', '0.00', '2019-08-31 15:00:00', '2030-03-30 15:00:00', 1, '2019-08-31 15:00:00', '2030-03-30 15:00:00', '2020-11-29 15:00:00', '2030-11-29 15:00:00', '', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_MAIL_REQUEST`
--

CREATE TABLE `TDAT_MAIL_REQUEST` (
  `MAIL_REQUEST_NO` bigint(20) NOT NULL,
  `NOTIFICATION_NO` bigint(20) NOT NULL,
  `KIKAN_CD` varchar(2) NOT NULL,
  `REQUEST_FUNCTION` varchar(10) NOT NULL,
  `NOTICE_NO` bigint(20) DEFAULT NULL,
  `SEND_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SENT_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SEND_MAIL_END` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ACCONT_CNT` bigint(20) DEFAULT NULL,
  `SENT_CNT` bigint(20) DEFAULT NULL,
  `ERROR_CNT` bigint(20) DEFAULT NULL,
  `FIX_REQUEST_START` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FIX_REQUEST_END` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `FIX_REQUEST_START_FL` decimal(1,0) NOT NULL DEFAULT '0',
  `ENCODE` varchar(255) DEFAULT NULL,
  `REPLY_MAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VERSION` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_MAIL_STATUS`
--

CREATE TABLE `TDAT_MAIL_STATUS` (
  `MAIL_REQUEST_NO` bigint(20) NOT NULL,
  `MAIL_ADDRESS` varchar(255) NOT NULL,
  `RIYOSHA` int(11) DEFAULT NULL,
  `STATUS` char(1) NOT NULL DEFAULT '0',
  `SENT_AT` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FAILURE_CAUSE` varchar(50) DEFAULT NULL,
  `ERROR_AT` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VERSION` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_MAIL_TEMPLATE`
--

CREATE TABLE `TDAT_MAIL_TEMPLATE` (
  `MAIL_REQUEST_NO` bigint(20) NOT NULL,
  `LOCALE` varchar(16) NOT NULL,
  `SUBJECT` text NOT NULL,
  `MESSAGE` text NOT NULL,
  `ATTACHMENT_SITE` varchar(1000) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_NO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NINSYO`
--

CREATE TABLE `TDAT_NINSYO` (
  `RIYOSHA_NO` int(11) NOT NULL,
  `LOGIN_ID` varchar(20) NOT NULL,
  `PASSWORD` varchar(100) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) NOT NULL DEFAULT '0',
  `KIKAN_CD` varchar(2) DEFAULT NULL,
  `PERMISSION_CD` bit(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_NINSYO`
--

INSERT INTO `TDAT_NINSYO` (`RIYOSHA_NO`, `LOGIN_ID`, `PASSWORD`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`, `KIKAN_CD`, `PERMISSION_CD`) VALUES
(1, 'systemadmin', '2b4ae288a819f2bcf8e290332c838148', NULL, '2019-10-09 05:16:38', NULL, '0000-00-00 00:00:00', '0', '11', b'10000000'),
(2, 'testuser', '2b4ae288a819f2bcf8e290332c838148', NULL, '2020-02-06 03:34:38', 'testuser', '2020-02-06 03:34:38', '2', '11', b'00010000'),
(3, 'Z0000001', '2b4ae288a819f2bcf8e290332c838148', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', '7', '11', b'00010000');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NOTICE`
--

CREATE TABLE `TDAT_NOTICE` (
  `NOTICE_NO` int(11) NOT NULL,
  `KIKAN_CD` varchar(2) NOT NULL,
  `NOTICE_TITLE` varchar(100) DEFAULT NULL,
  `NOTICE_CONTENTS` varchar(5000) DEFAULT NULL,
  `ORIGINATOR` varchar(100) DEFAULT NULL,
  `ATTACHMENT_SITE` varchar(1000) DEFAULT NULL,
  `KOUKAI_PERIOD_FROM` date DEFAULT NULL,
  `KOUKAI_PERIOD_TO` date DEFAULT NULL,
  `NOTICE_TARGET` decimal(2,0) DEFAULT NULL,
  `KIKAN_DESIGNATION` varchar(500) DEFAULT NULL,
  `PERMISSION_DESIGNATION` varchar(500) DEFAULT NULL,
  `KADAI_DESIGNATION` varchar(500) DEFAULT NULL,
  `INDIVIDUAL_DESIGNATION` varchar(500) DEFAULT NULL,
  `DELETE_FL` decimal(1,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `KOUKAI_PERIOD_FROM_TIME` time DEFAULT NULL,
  `KOUKAI_PERIOD_TO_TIME` time DEFAULT NULL,
  `MAIL_SEND_FL` decimal(1,0) DEFAULT NULL,
  `JOIN_DESIGNATION` varchar(500) DEFAULT NULL,
  `KADAI_DESIGNATION_NENDO` date DEFAULT NULL,
  `NOTICE_CREATER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_NOTICE`
--

INSERT INTO `TDAT_NOTICE` (`NOTICE_NO`, `KIKAN_CD`, `NOTICE_TITLE`, `NOTICE_CONTENTS`, `ORIGINATOR`, `ATTACHMENT_SITE`, `KOUKAI_PERIOD_FROM`, `KOUKAI_PERIOD_TO`, `NOTICE_TARGET`, `KIKAN_DESIGNATION`, `PERMISSION_DESIGNATION`, `KADAI_DESIGNATION`, `INDIVIDUAL_DESIGNATION`, `DELETE_FL`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `KOUKAI_PERIOD_FROM_TIME`, `KOUKAI_PERIOD_TO_TIME`, `MAIL_SEND_FL`, `JOIN_DESIGNATION`, `KADAI_DESIGNATION_NENDO`, `NOTICE_CREATER`) VALUES
(1, '11', '2020年度の公募を開始しました', '2020年度の共同利用・共同研究の公募を開始しました。\r\n2020年公募要項をご確認の上、申請のお手続を行ってください。', '公募担当', '1', '2019-11-01', '2019-11-30', '0', '11', '', NULL, NULL, '1', 'systemadmin', '2020-01-06 06:07:31.760445', 'systemadmin', '2020-01-06 06:07:31.000000', '00:00:00', '23:59:00', '0', '', NULL, NULL),
(2, '11', '2020年度更新作業開始', 'JROIS1のアップデートを開始します', 'システム開発者', '2', '2020-01-01', '2020-03-01', '0', '11', '', NULL, NULL, '1', 'systemadmin', '2020-01-24 06:05:20.632702', 'systemadmin', '2020-01-24 06:05:20.000000', '00:00:00', '23:59:00', '0', '', NULL, NULL),
(3, '11', 'お知らせタイトルです', 'お知らせ内容です', 'システム管理者', '3', '2020-01-01', '2030-12-31', '0', '11', '', NULL, NULL, NULL, 'systemadmin', '2020-02-04 06:10:00.000000', NULL, '0000-00-00 00:00:00.000000', '00:00:00', '23:59:00', '0', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NOTICE_TEMPLATE`
--

CREATE TABLE `TDAT_NOTICE_TEMPLATE` (
  `NOTICE_TEMPLATE_NO` bigint(20) NOT NULL,
  `KIKAN_CD` varchar(2) NOT NULL,
  `NOTICE_SYUBETSU_CD` varchar(2) NOT NULL,
  `NOTICE_TITLE` varchar(100) DEFAULT NULL,
  `NOTICE_CONTENTS` text,
  `ORIGINATOR` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `NOTICE_METHOD` varchar(1) DEFAULT '',
  `NOTICE_TEMPLATE_NM` varchar(100) DEFAULT '',
  `NOTICE_CD` varchar(2) NOT NULL,
  `ATTACHMENT_SITE` varchar(1000) DEFAULT NULL,
  `VERSION` bigint(20) NOT NULL DEFAULT '0',
  `LOCALE` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_NOTICE_TEMPLATE`
--

INSERT INTO `TDAT_NOTICE_TEMPLATE` (`NOTICE_TEMPLATE_NO`, `KIKAN_CD`, `NOTICE_SYUBETSU_CD`, `NOTICE_TITLE`, `NOTICE_CONTENTS`, `ORIGINATOR`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `NOTICE_METHOD`, `NOTICE_TEMPLATE_NM`, `NOTICE_CD`, `ATTACHMENT_SITE`, `VERSION`, `LOCALE`) VALUES
(1, '99', 'B', '新規利用者登録手続きのご案内', '@@氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\nお申し込みいただいた以下の内容にて、本システムへの利用者IDの仮登録が完了いたしました。\r\n\r\nログインID\r\n@@ログインID@@\r\n\r\n下記のURLから本登録の手続きをお願いいたします。\r\n\r\n登録手続き専用URL\r\n@@URL@@\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp\r\n', 'JROIS', 'system', '2019-10-17 06:26:06', 'systemadmin', '2019-10-17 06:26:06', '1', '真正確認メール', '11', NULL, 0, 'JP'),
(2, '99', 'B', '研究者IDのお知らせ', '@@氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\n利用者ID通知申請画面より、本システムにご登録いただいた利用者IDの通知依頼を受け付けました。\r\n\r\nログインID\r\n@@ログインID@@\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp\r\n', 'JROIS', 'system', '2019-10-17 06:26:44', 'systemadmin', '2019-10-17 06:26:44', '1', '研究者ID通知メール', '80', NULL, 0, 'JP'),
(3, '99', 'B', 'パスワード再設定のご案内', '@@氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\nパスワード再設定画面より、下記のアカウントのパスワード再設定依頼を受け付けました。\r\n\r\nログインID\r\n@@ログインID@@\r\n\r\n以下のURLより、パスワードの再設定を行ってください。\r\n\r\nパスワード再設定URL\r\n@@URL@@\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp\r\n', 'JROIS', 'system', '2019-10-09 21:42:18', 'systemadmin', '2019-10-09 21:16:59', '1', 'パスワード再設定メール', '81', NULL, 0, 'JP'),
(4, '11', 'B', '公募申請を受理しました', '@@氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\nこのたびは、琉球大学熱帯生物圏研究センター @@年度@@年度 共同利用・共同研究公募\r\n公募区分「@@研究種別@@」へご応募いただき、誠にありがとうございます。\r\n\r\n下記の申請を受理いたしました。\r\n\r\n「@@研究課題名@@」\r\n申込者：　@@代表者氏名@@\r\n受理日付：　@@日付@@\r\n\r\nセンター運営委員会で審議の上、センター長より申請者に文書で採否を通知します。\r\n結果のご連絡まで今しばらくお待ちいただけますと幸甚です。\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp\r\n', 'JROIS', 'system', '2019-10-18 03:06:50', 'systemadmin', '2019-10-18 03:06:50', '1', '申請受理メール', '22', NULL, 0, 'JP'),
(5, '11', 'B', '「@@研究種別@@」申請通知', '公募ご担当者様　\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\n@@年度@@年度 共同利用・共同研究公募\r\n公募区分「@@研究種別@@」への申請が登録されました。\r\n\r\n申請の概要は下記の通りです。\r\n\r\n「@@研究課題名@@」\r\n申込者所属機関：　@@代表者所属機関名@@\r\n申込者所属部局：　@@代表者所属部局名@@\r\n申込者氏名：　@@代表者氏名@@\r\n申請日付：　@@日付@@\r\n\r\n', 'JROIS', 'system', '2019-10-21 02:14:26', 'systemadmin', '2019-10-21 02:14:26', '1', '本申請通知メール', '21', NULL, 0, 'JP'),
(6, '11', 'B', '「@@研究種別@@」申請差戻し通知', '@@氏名@@ 様　\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\n@@年度@@年度 共同利用・共同研究公募\r\n公募区分「@@研究種別@@」への申請が、公募担当者より差戻しとなりました。\r\n\r\n差戻しの対象となった申請は下記の通りです。\r\n\r\n「@@研究課題名@@」\r\n申込者所属機関：　@@代表者所属機関名@@\r\n申込者所属部局：　@@代表者所属部局名@@\r\n申込者氏名：　@@代表者氏名@@\r\n\r\nお手数ですが申請内容について、再度ご確認くださいますようお願い申し上げます。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp', 'JROIS', 'system', '2019-11-18 02:12:04', 'systemadmin', '2019-11-18 02:12:04', '1', '申請差戻しメール', '24', NULL, 0, 'JP'),
(7, '11', '2', '所要経費配分（暫定）のお知らせ', '@@代表者氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\n研究費の計画的な執行および利便性を考慮し、正式な予算配分通知に先立ち、\r\n下記の配分額にて暫定の状態となりましたことをお知らせいたします。\r\n\r\n@@年度@@年度 共同利用・共同研究公募\r\n公募区分「@@研究種別@@」\r\n\r\n「@@研究課題名@@」\r\n申込者所属機関：　@@代表者所属機関名@@\r\n申込者所属部局：　@@代表者所属部局名@@\r\n申込者氏名：　@@代表者氏名@@\r\n\r\n詳細につきましては共同利用・共同研究公募支援システムよりご確認ください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp', 'JROIS', 'system', '2020-01-30 07:14:20', 'systemadmin', '2020-01-30 07:14:20', '1', '暫定通知メール（配分額決定）', '10', NULL, 0, 'JP'),
(8, '11', '2', '所要経費配分（執行可能）のお知らせ', '@@代表者氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\n研究費の計画的な執行および利便性を考慮し、正式な予算配分通知に先立ち、\r\n下記の配分額にて執行可能な状態となりましたことを事前にお知らせいたします。\r\n\r\n@@年度@@年度 共同利用・共同研究公募\r\n公募区分「@@研究種別@@」\r\n\r\n「@@研究課題名@@」\r\n申込者所属機関：　@@代表者所属機関名@@\r\n申込者所属部局：　@@代表者所属部局名@@\r\n申込者氏名：　@@代表者氏名@@\r\n\r\n詳細につきましては、共同利用・共同研究公募支援システムよりご確認ください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp', 'JROIS', 'system', '2020-01-30 07:14:41', 'systemadmin', '2020-01-30 07:14:41', '1', '暫定通知メール（執行可能）', '20', NULL, 0, 'JP'),
(9, '11', '2', '所要経費配分について（通知）', '@@代表者氏名@@ 様\r\n\r\n琉球大学熱帯生物圏研究センター 共同利用・共同研究公募支援システムです。\r\n\r\n@@年度@@年度 共同利用・共同研究公募「@@研究種別@@」について、\r\n下記の通り所要経費の配分を決定しましたので通知いたします。\r\n\r\n「@@研究課題名@@」\r\n申込者所属機関：　@@代表者所属機関名@@\r\n申込者所属部局：　@@代表者所属部局名@@\r\n申込者氏名：　@@代表者氏名@@\r\n\r\n詳細につきましては、共同利用・共同研究公募支援システムよりご確認ください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC\r\n\r\n万一、本メールの内容にお心当たりがない場合は、下記までお問い合わせください。\r\n\r\n琉球大学熱帯生物圏研究センター\r\n共同利用・共同研究公募支援システム\r\nシステム担当\r\nE-mail: tbrc@ura3.c.ism.ac.jp', 'JROIS', 'system', '2020-01-30 07:14:55', 'systemadmin', '2020-01-30 07:14:55', '1', '予算決定メール', '30', NULL, 0, 'JP'),
(10, '11', '2', '@@和暦年度@@共同利用・共同研究公募の所要経費配分について', '<div style=\"padding-left: 300px;text-align: right;\">\r\n    <p>@@和暦日付@@</p>\r\n</div>\r\n<br/>\r\n<p style=\"text-align: left;\">@@代表者氏名@@ 殿</p>\r\n<br/>\r\n<div style=\"padding-left:500px;\" align=\"left\">\r\n    琉球大学<br/>\r\n    熱帯生物圏研究センター<br/>\r\n    <br/>\r\n    センター長<br/>松崎　吾朗\r\n</div>\r\n<br/>\r\n<br/>\r\n<p>@@和暦年度@@共同利用・共同研究公募の所要経費配分について</p>\r\n<br/>\r\n<br/>\r\n<p>\r\n　さきに採択結果の通知を行いました@@和暦年度@@共同利用・共同研究公募の所要経費配分について<br/>\r\n下記の通り所要経費の配分を決定しましたので通知いたします。<br/>\r\n　予算執行につきましては、公募利用案内「」（）に従い、貴共同研究の趣旨に沿った執行をお願いします。<br/>\r\n経費の執行時期については、早期の計画的な対応をお願いします。<br/>\r\n</p>\r\n<br/>\r\n<br/>\r\n@@和暦年度@@年度 共同利用・共同研究公募<br/>\r\n公募区分「@@研究種別@@」<br/>\r\n<br/>\r\n<br/>\r\n「@@研究課題名@@」<br/>\r\n申込者所属機関：　@@代表者所属機関名@@<br/>\r\n申込者所属部局：　@@代表者所属部局名@@<br/>\r\n申込者氏名：　@@代表者氏名@@<br/>\r\n研究費：　@@研究費@@<br/>\r\n旅費：　@@旅費@@<br/>\r\n合計：　@@合計@@<br/>\r\n<br/>\r\n琉球大学熱帯生物圏研究センター<br/>\r\n共同利用・共同研究公募支援システム<br/>\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC<br/>\r\n\r\n', 'JROIS', 'system', '2020-01-31 05:26:45', 'systemadmin', '2020-01-31 05:26:45', '2', '経費配分通知書', '30', NULL, 0, 'JP'),
(11, '11', '2', '@@和暦年度@@共同利用・共同研究公募のリポート発行経費配分について', '<div style=\"padding-left: 300px;text-align: right;\">\r\n    <p>@@和暦日付@@</p>\r\n</div>\r\n<br/>\r\n<p style=\"text-align: left;\">@@代表者氏名@@ 殿</p>\r\n<br/>\r\n<div style=\"padding-left:500px;\" align=\"left\">\r\n    琉球大学<br/>\r\n    熱帯生物圏研究センター<br/>\r\n    <br/>\r\n    センター長<br/>松崎　吾朗\r\n</div>\r\n<br/>\r\n<br/>\r\n<p>@@和暦年度@@共同利用・共同研究公募のリポート発行経費配分について</p>\r\n<br/>\r\n<br/>\r\n<p>\r\n　さきに採択結果の通知を行いました@@和暦年度@@共同利用・共同研究公募の所要経費配分について<br/>\r\n下記の通り所要経費の配分を決定しましたので通知いたします。<br/>\r\n　予算執行につきましては、公募利用案内「」（）に従い、貴共同研究の趣旨に沿った執行をお願いします。<br/>\r\n経費の執行時期については、早期の計画的な対応をお願いします。<br/>\r\n</p>\r\n<br/>\r\n<br/>\r\n@@和暦年度@@年度 共同利用・共同研究公募<br/>\r\n公募区分「@@研究種別@@」<br/>\r\n<br/>\r\n<br/>\r\n「@@研究課題名@@」<br/>\r\n申込者所属機関：　@@代表者所属機関名@@<br/>\r\n申込者所属部局：　@@代表者所属部局名@@<br/>\r\n申込者氏名：　@@代表者氏名@@<br/>\r\n研究費：　@@研究費@@<br/>\r\n旅費：　@@旅費@@<br/>\r\n合計：　@@合計@@<br/>\r\n<br/>\r\n琉球大学熱帯生物圏研究センター<br/>\r\n共同利用・共同研究公募支援システム<br/>\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC<br/>', 'JROIS', 'system', '2020-01-31 05:29:09', 'systemadmin', '2020-01-31 05:29:09', '2', 'リポート発行経費配分通知書', '31', NULL, 0, 'JP'),
(12, '11', '2', '@@和暦年度@@共同利用・共同研究公募の経費配分に関して', '<div style=\"padding-left: 300px;text-align: right;\">\r\n    <p>@@和暦日付@@</p>\r\n</div>\r\n<br/>\r\n<p style=\"text-align: left;\">@@代表者氏名@@ 殿</p>\r\n<br/>\r\n<div style=\"padding-left:500px;\" align=\"left\">\r\n    琉球大学<br/>\r\n    熱帯生物圏研究センター<br/>\r\n    <br/>\r\n    センター長<br/>松崎　吾朗\r\n</div>\r\n<br/>\r\n<br/>\r\n<p>@@和暦年度@@共同利用・共同研究公募の経費配分に関して</p>\r\n<br/>\r\n<br/>\r\n<p>\r\n　さきに採択結果の通知を行いました@@和暦年度@@共同利用・共同研究公募の所要経費配分について<br/>\r\n下記の通り所要経費の配分を決定しましたので通知いたします。<br/>\r\n　予算執行につきましては、公募利用案内「」（）に従い、貴共同研究の趣旨に沿った執行をお願いします。<br/>\r\n経費の執行時期については、早期の計画的な対応をお願いします。<br/>\r\n</p>\r\n<br/>\r\n<br/>\r\n@@和暦年度@@年度 共同利用・共同研究公募<br/>\r\n公募区分「@@研究種別@@」<br/>\r\n<br/>\r\n<br/>\r\n「@@研究課題名@@」<br/>\r\n申込者所属機関：　@@代表者所属機関名@@<br/>\r\n申込者所属部局：　@@代表者所属部局名@@<br/>\r\n申込者氏名：　@@代表者氏名@@<br/>\r\n研究費：　@@研究費@@<br/>\r\n旅費：　@@旅費@@<br/>\r\n合計：　@@合計@@<br/>\r\n<br/>\r\n琉球大学熱帯生物圏研究センター<br/>\r\n共同利用・共同研究公募支援システム<br/>\r\nhttps://jrois1.rois.ac.jp/u-ryukyu/TBRC<br/>', 'JROIS', 'system', '2020-01-31 05:30:24', 'systemadmin', '2020-01-31 05:30:24', '2', '経費配分に関する連絡', '32', NULL, 0, 'JP');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NOTIFICATION_TARGET`
--

CREATE TABLE `TDAT_NOTIFICATION_TARGET` (
  `NOTIFICATION_NO` int(11) NOT NULL,
  `NOTIFICATION_TYPE` char(1) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VERSION` decimal(8,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NOTIFICATION_TARGET_MAIL`
--

CREATE TABLE `TDAT_NOTIFICATION_TARGET_MAIL` (
  `NOTIFICATION_NO` bigint(20) NOT NULL,
  `MAIL_ADDRESS` varchar(255) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VERSION` bigint(20) NOT NULL,
  `SEPARATE_NO` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NOTIFICATION_TARGET_SUBJECT`
--

CREATE TABLE `TDAT_NOTIFICATION_TARGET_SUBJECT` (
  `NOTIFICATION_NO` bigint(20) NOT NULL,
  `NOTTICE_TARGET` decimal(2,0) NOT NULL,
  `KIKAN_DESIGNATION` varchar(500) DEFAULT NULL,
  `PERMISSION_DESIGNATION` varchar(500) DEFAULT NULL,
  `NENDO_DESIGNATION` date DEFAULT NULL,
  `JOIN_DESIGNATION` varchar(500) DEFAULT NULL,
  `KADAI_DESIGNATION` varchar(500) DEFAULT NULL,
  `INDIVIDUAL_DESIGNATION` varchar(500) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `VERSION` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_NUMBERING`
--

CREATE TABLE `TDAT_NUMBERING` (
  `NENDO` decimal(4,0) NOT NULL,
  `KIKAN_CD` varchar(2) NOT NULL,
  `KENKYU_SYUBETSU_CD` varchar(2) NOT NULL,
  `THEME_CD` varchar(2) NOT NULL,
  `UKETSUKE_NO` decimal(5,0) NOT NULL,
  `KADAI_NO` decimal(5,0) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_NUMBERING`
--

INSERT INTO `TDAT_NUMBERING` (`NENDO`, `KIKAN_CD`, `KENKYU_SYUBETSU_CD`, `THEME_CD`, `UKETSUKE_NO`, `KADAI_NO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
('2019', '11', 'A1', '0', '4', '0', 'Z0000001', '2019-11-15 01:51:40', 'Z0000001', '2019-10-21 05:26:36'),
('2019', '11', 'A3', '0', '2', '0', 'Z0000001', '2019-11-05 06:50:20', 'Z0000001', '2019-11-01 05:25:53'),
('2019', '11', 'A4', '0', '1', '0', 'Z0000001', '2019-11-05 07:25:45', 'Z0000001', '2019-11-05 07:25:45'),
('2019', '11', 'B', '0', '3', '0', 'Z0000001', '2019-10-31 06:33:04', 'Z0000001', '2019-10-21 05:46:28'),
('2020', '11', 'A2', '0', '22', '0', '50726388', '2020-01-21 02:38:44', '50726388', '2020-01-21 02:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_PERFORMANCE_CONFERENCE`
--

CREATE TABLE `TDAT_PERFORMANCE_CONFERENCE` (
  `PERFORMANCE_NO` int(11) NOT NULL,
  `CONFERENCE_NO` int(11) NOT NULL,
  `REAL_PRESENTER` varchar(50) DEFAULT NULL,
  `JOINT_PRESENTER` varchar(50) DEFAULT NULL,
  `PRESENTATION_TITLE` varchar(100) DEFAULT NULL,
  `CONFERENCE_NAME` varchar(100) DEFAULT NULL,
  `CONFERENCE_ORGANIZER` varchar(100) DEFAULT NULL,
  `CONFERENCE_DATE` date DEFAULT NULL,
  `CONFERENCE_PLACE` varchar(100) DEFAULT NULL,
  `WEB_FL` decimal(1,0) DEFAULT '0',
  `WEB_INFO` varchar(100) DEFAULT NULL,
  `REVIEW_FL` decimal(1,0) DEFAULT '0',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `INTERNATIONALJOINT_FL` decimal(1,0) DEFAULT NULL,
  `CONFERENCE_FROM_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `CONFERENCE_TO_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `INNER_JOIN_FL` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_PERFORMANCE_EXPERIMENT`
--

CREATE TABLE `TDAT_PERFORMANCE_EXPERIMENT` (
  `PERFORMNCE_NO` int(11) NOT NULL,
  `EXPERIMENT_NO` int(11) NOT NULL,
  `EXPEROMENT_DATE` date DEFAULT NULL,
  `EXPERIMENT_TITLE` varchar(100) DEFAULT NULL,
  `EXPERIMENT_RESULT` varchar(4000) DEFAULT NULL,
  `EXPERIMENT_PLACE` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SANKA_FL` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_PERFORMANCE_FUNDS`
--

CREATE TABLE `TDAT_PERFORMANCE_FUNDS` (
  `PERFORMANCE_NO` int(11) NOT NULL,
  `FUND_NO` int(11) NOT NULL,
  `YEAR` date DEFAULT NULL,
  `KYOSOTEKI_FUNDS` varchar(100) DEFAULT NULL,
  `STATUS` varchar(2) DEFAULT NULL,
  `KADAI_NM` varchar(100) DEFAULT NULL,
  `OTHER_INFO` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ACQUIRED_AMOUNT` decimal(9,0) DEFAULT NULL,
  `APPLICANT_NAME` varchar(4000) DEFAULT NULL,
  `INNER_JIOIN_FL` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_PERFORMANCE_MONOGRAPH`
--

CREATE TABLE `TDAT_PERFORMANCE_MONOGRAPH` (
  `PERFORMANCE_NO` int(11) NOT NULL,
  `MONOGRAPH_NO` int(11) NOT NULL,
  `TITLE` varchar(50) DEFAULT NULL,
  `AUTHOR` varchar(50) DEFAULT NULL,
  `JOURNAL_TITLE` varchar(50) DEFAULT NULL,
  `DOI_FL` decimal(1,0) DEFAULT '0',
  `DOI` varchar(50) DEFAULT NULL,
  `PUBLICATION_DATE` date DEFAULT NULL,
  `VOLUME` varchar(10) DEFAULT NULL,
  `NUMBER` varchar(10) DEFAULT NULL,
  `START_PAGE` decimal(5,0) DEFAULT NULL,
  `END_PAGE` decimal(5,0) DEFAULT NULL,
  `KIKAN_PUBLISH_FL` decimal(1,0) DEFAULT '0',
  `KIKAN_PUBLISH_DOI` varchar(50) DEFAULT NULL,
  `REVIEW_FL` decimal(1,0) DEFAULT '0',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `EARLY_PUBLICATION_FL` decimal(1,0) DEFAULT NULL,
  `INTERNATIONALJOINT_FL` decimal(1,0) DEFAULT NULL,
  `JOIN_FL` decimal(1,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_PERFORMANCE_REPORT`
--

CREATE TABLE `TDAT_PERFORMANCE_REPORT` (
  `PERFORMANCE_NO` int(11) NOT NULL,
  `SHINSEI_NO` int(11) NOT NULL,
  `REPORT_DATE` date DEFAULT NULL,
  `STATUS_CD` char(1) NOT NULL,
  `OPENING_TYPE` varchar(2) DEFAULT NULL,
  `OPENING_PERIOD_START` date DEFAULT NULL,
  `OPENING_PERIOD_END` date DEFAULT NULL,
  `OPENING_PLACE` varchar(100) DEFAULT NULL,
  `RESEARCH_RESULT` text,
  `RESEARCH_RESULT_DETAIL` text,
  `RESEARCH_INFO` text,
  `ATTACHMENT_SITE` text,
  `MEETING_EFFCET` text,
  `WORKSHOP_JOIN` text,
  `FUTURE_PROSPECTS` text,
  `OTHER_ACTION` text,
  `REQUEST` text,
  `APPLICATION_KBN` varchar(2) DEFAULT NULL,
  `INVENTOR_NAME` varchar(50) DEFAULT NULL,
  `RIGHT_HOLDER_NAME` varchar(50) DEFAULT NULL,
  `APPLICATION_TYPE` varchar(100) DEFAULT NULL,
  `APPLICATION_NO` varchar(10) DEFAULT NULL,
  `APPLICATION_DATE` date DEFAULT NULL,
  `COUNTRY_CD` varchar(3) DEFAULT NULL,
  `OTHER_COUNTRY_FL` decimal(1,0) DEFAULT NULL,
  `OTHER_COUNTRY_NAME` varchar(100) DEFAULT NULL,
  `FUND_FL` decimal(1,0) DEFAULT NULL,
  `MONOGRAPH_FL` decimal(1,0) DEFAULT NULL,
  `CONFERENCE_FL` decimal(1,0) DEFAULT NULL,
  `EXPEROMENT_FL` decimal(1,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OTHER_RESULTS` text,
  `PROPERTY_RIGHTS_FL` decimal(1,0) DEFAULT NULL,
  `SUPERCOMPUTER_FL` decimal(1,0) DEFAULT NULL,
  `LABORATORY_FL` decimal(1,0) DEFAULT NULL,
  `CONFERENCE_ROOM_FL` decimal(1,0) DEFAULT NULL,
  `LIBRARY_FL` decimal(1,0) DEFAULT NULL,
  `ADVISE_FL` decimal(1,0) DEFAULT NULL,
  `SANKASYA_TOTAL` decimal(9,0) DEFAULT NULL,
  `SANKASYA_SYONAI` decimal(9,0) DEFAULT NULL,
  `SANKASYA_SYOGAI` decimal(9,0) DEFAULT NULL,
  `SANKASYA_SYOGAIGAKUSEI` decimal(9,0) DEFAULT NULL,
  `SANKASYA_SYOGAIGAIKOKUJIN` decimal(9,0) DEFAULT NULL,
  `SANKASYA_SYOGAIWAKATE` decimal(9,0) DEFAULT NULL,
  `SANKASYA_SYOGAIJOSEI` decimal(9,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_PROPERTY_RIGHTS`
--

CREATE TABLE `TDAT_PROPERTY_RIGHTS` (
  `PERFORMANCE_NO` int(11) NOT NULL,
  `PROPERTY_RIGHTS_NO` int(11) NOT NULL,
  `APPLICATION_KBN` varchar(2) DEFAULT NULL,
  `INVENTOR_NAME` varchar(50) DEFAULT NULL,
  `RIGHT_HOLDER_NAME` varchar(50) DEFAULT NULL,
  `PATENT_NAME` varchar(100) DEFAULT NULL,
  `APPLICATION_TYPE` varchar(100) DEFAULT NULL,
  `APPLICATION_NO` varchar(50) DEFAULT NULL,
  `REGISTRATION_NO` varchar(50) DEFAULT NULL,
  `APPLICATION_DATE` date DEFAULT NULL,
  `COUNTRY_CD` varchar(3) DEFAULT NULL,
  `OTHER_COUNTRY_NAME` varchar(100) DEFAULT NULL,
  `INNER_JIOIN_FL` decimal(1,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_REPORT`
--

CREATE TABLE `TDAT_REPORT` (
  `SHINSEI_NO` int(11) NOT NULL,
  `REPORT_NO` varchar(10) NOT NULL,
  `TITLE_EN` varchar(100) DEFAULT NULL,
  `AUTHOR_EN` varchar(100) DEFAULT NULL,
  `ORGANIZATION` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `TITLE_JP` varchar(100) DEFAULT NULL,
  `AUTHOR_JP` varchar(100) DEFAULT NULL,
  `KIKAN_CD` varchar(2) NOT NULL,
  `REPORT_ISSUE_NO` int(11) NOT NULL,
  `STATUS_CD` char(1) DEFAULT NULL,
  `PUBLICATION_DATE` date DEFAULT NULL,
  `NUMBERING_DATE` date DEFAULT NULL,
  `ACCEPTED_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_REPORT_ISSUE`
--

CREATE TABLE `TDAT_REPORT_ISSUE` (
  `KIKAN_CD` decimal(2,0) NOT NULL,
  `REPORT_ISSUE_NO` decimal(5,0) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_RIYOSYA`
--

CREATE TABLE `TDAT_RIYOSYA` (
  `RIYOSHA_NO` decimal(8,0) NOT NULL,
  `LOGIN_ID` varchar(20) NOT NULL,
  `LAST_NAME` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `LAST_NAME_KANA` varchar(50) DEFAULT NULL,
  `FIRST_NAME_KANA` varchar(50) DEFAULT NULL,
  `LAST_NAME_EIJI` varchar(50) DEFAULT NULL,
  `FIRST_NAME_EIJI` varchar(50) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL,
  `SEIBETSU` char(1) DEFAULT NULL,
  `NATIONAL_CD` varchar(3) DEFAULT NULL,
  `NATIONAL_NANE` varchar(50) DEFAULT NULL,
  `FOREIGNER_FL` char(1) DEFAULT NULL,
  `MAIL_ADDRESS` varchar(50) DEFAULT NULL,
  `RENRAKU_KBN` varchar(4) DEFAULT NULL,
  `OFFICE_ZIPCODE` varchar(7) DEFAULT NULL,
  `OFFICE_TODOFUKEN` varchar(50) DEFAULT NULL,
  `OFFICE_SHIKUCHOSON` varchar(100) DEFAULT NULL,
  `OFFICE_BANCHI` varchar(100) DEFAULT NULL,
  `OFFICE_TATEMONO` varchar(100) DEFAULT NULL,
  `TEL` varchar(20) DEFAULT NULL,
  `FAX` varchar(20) DEFAULT NULL,
  `HOME_ZIPCODE` varchar(7) DEFAULT NULL,
  `HOME_TODOFUKEN` varchar(50) DEFAULT NULL,
  `HOME_SHIKUCHOSON` varchar(50) DEFAULT NULL,
  `HOME_BANCHI` varchar(50) DEFAULT NULL,
  `HOME_TATEMONO` varchar(50) DEFAULT NULL,
  `SHOZOKU_RUIBETSU_CD` varchar(10) DEFAULT NULL,
  `SHOZOKU_KIKAN_CD` varchar(10) DEFAULT NULL,
  `YAKUSHOKU` varchar(50) DEFAULT NULL,
  `SENMON_BUNYA` varchar(100) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) NOT NULL DEFAULT '0',
  `TRUE_FL` decimal(1,0) DEFAULT NULL,
  `OFFICE_NATIONAL_NAME` varchar(100) DEFAULT NULL,
  `OFFICE_ADDRESS1` text,
  `OFFICE_ADDRESS2` text,
  `HOME_NATIONAL_NAME` varchar(100) DEFAULT NULL,
  `HOME_ADDRESS1` text,
  `HOME_ADDRESS2` text,
  `LANGUAGE` varchar(2) DEFAULT NULL,
  `SHOZOKUCHO_YAKUSYOKU` text,
  `SHOZOKUCHO_LAST_NAME` varchar(50) DEFAULT NULL,
  `SHOZOKUCHO_FIRST_NAME` varchar(50) DEFAULT NULL,
  `SHOZOKU_BUKYOKU_NAME` text,
  `SONOTA_SHOZOKU_KIKAN_NAME` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_RIYOSYA`
--

INSERT INTO `TDAT_RIYOSYA` (`RIYOSHA_NO`, `LOGIN_ID`, `LAST_NAME`, `FIRST_NAME`, `LAST_NAME_KANA`, `FIRST_NAME_KANA`, `LAST_NAME_EIJI`, `FIRST_NAME_EIJI`, `BIRTHDAY`, `SEIBETSU`, `NATIONAL_CD`, `NATIONAL_NANE`, `FOREIGNER_FL`, `MAIL_ADDRESS`, `RENRAKU_KBN`, `OFFICE_ZIPCODE`, `OFFICE_TODOFUKEN`, `OFFICE_SHIKUCHOSON`, `OFFICE_BANCHI`, `OFFICE_TATEMONO`, `TEL`, `FAX`, `HOME_ZIPCODE`, `HOME_TODOFUKEN`, `HOME_SHIKUCHOSON`, `HOME_BANCHI`, `HOME_TATEMONO`, `SHOZOKU_RUIBETSU_CD`, `SHOZOKU_KIKAN_CD`, `YAKUSHOKU`, `SENMON_BUNYA`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`, `TRUE_FL`, `OFFICE_NATIONAL_NAME`, `OFFICE_ADDRESS1`, `OFFICE_ADDRESS2`, `HOME_NATIONAL_NAME`, `HOME_ADDRESS1`, `HOME_ADDRESS2`, `LANGUAGE`, `SHOZOKUCHO_YAKUSYOKU`, `SHOZOKUCHO_LAST_NAME`, `SHOZOKUCHO_FIRST_NAME`, `SHOZOKU_BUKYOKU_NAME`, `SONOTA_SHOZOKU_KIKAN_NAME`) VALUES
('1', 'systemadmin', 'system', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hhamada@ism.ac.jp', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-21 04:41:48', NULL, '0000-00-00 00:00:00', '0', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('2', 'testuser', '試験', '研究者', 'シケン', 'ケンキュウシャ', 'test', 'user', '1970-01-01', '0', NULL, '', NULL, 'hrx_vent@qc5.so-net.ne.jp', '1', '1908562', '東京都', '立川市', '緑町10-3', '', '05012345678', '', NULL, NULL, NULL, NULL, NULL, '6', '62603', 'URA', '', NULL, '2020-02-06 03:34:38', 'testuser', '2020-02-06 03:34:38', '2', '1', '', '', '', NULL, NULL, NULL, NULL, '統計数理研究所長', '椿', '広計', 'URAS', NULL),
('3', 'Z0000001', '統計', '数理', 'トウケイ', 'スウリ', 'Toukei', 'Suri', '1986-06-19', '1', NULL, '日本', NULL, 'hamada.hiroka@gmail.com', '1', '1908562', '東京都', '立川市', '緑町10-3', '', '05012345678', '', '', NULL, NULL, NULL, NULL, '6', '62603', '特任研究員', '', 'systemadmin', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', '5', '1', '', '', '', NULL, NULL, NULL, NULL, '統計数理研究所長', '椿', '広計', 'データ化学研究系', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_SANKA_KENKYUIN`
--

CREATE TABLE `TDAT_SANKA_KENKYUIN` (
  `SANKA_KENKYUSHA_NO` int(11) NOT NULL,
  `SHINSEI_NO` int(11) NOT NULL,
  `RIYOSHA_NO` int(11) DEFAULT NULL,
  `SANKA_KBN` varchar(1) NOT NULL,
  `LAST_NAME` varchar(50) DEFAULT NULL,
  `FIRST_NAME` varchar(50) DEFAULT NULL,
  `LAST_NAME_KANA` varchar(50) DEFAULT NULL,
  `FIRST_NAME_KANA` varchar(50) DEFAULT NULL,
  `MAIL_ADDRESS` varchar(50) DEFAULT NULL,
  `KIKAN_CD` varchar(10) DEFAULT NULL,
  `YAKUSHOKU` varchar(50) DEFAULT NULL,
  `SHONAI_FL` decimal(1,0) DEFAULT '0',
  `ID_HAKKO_FL` decimal(1,0) DEFAULT '0',
  `SANKA_OK_FL` decimal(1,0) DEFAULT '0',
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_NAME_EIJI` varchar(50) DEFAULT NULL,
  `FIRST_NAME_EIJI` varchar(50) DEFAULT NULL,
  `STUDENT_FL` decimal(1,0) DEFAULT '0',
  `CPMING_DAYS` decimal(3,0) DEFAULT '0',
  `SYODAKUSHO` varchar(2000) DEFAULT NULL,
  `SHOZOKUCHO_YAKUSYOKU` varchar(2000) DEFAULT NULL,
  `SHOZOKUCHO_LAST_NAME` varchar(50) DEFAULT NULL,
  `SHOZOKUCHO_FIRST_NAME` varchar(50) DEFAULT NULL,
  `SHOZOKU_RUIBETSU_CD` varchar(10) DEFAULT NULL,
  `SONOTA_SHOZOKU_KIKAN_NAME` varchar(2000) DEFAULT NULL,
  `KIKAN_BUKYOKU_NAME` varchar(2000) DEFAULT NULL,
  `DISABLED_FL` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_SANKA_KENKYUIN`
--

INSERT INTO `TDAT_SANKA_KENKYUIN` (`SANKA_KENKYUSHA_NO`, `SHINSEI_NO`, `RIYOSHA_NO`, `SANKA_KBN`, `LAST_NAME`, `FIRST_NAME`, `LAST_NAME_KANA`, `FIRST_NAME_KANA`, `MAIL_ADDRESS`, `KIKAN_CD`, `YAKUSHOKU`, `SHONAI_FL`, `ID_HAKKO_FL`, `SANKA_OK_FL`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `LAST_NAME_EIJI`, `FIRST_NAME_EIJI`, `STUDENT_FL`, `CPMING_DAYS`, `SYODAKUSHO`, `SHOZOKUCHO_YAKUSYOKU`, `SHOZOKUCHO_LAST_NAME`, `SHOZOKUCHO_FIRST_NAME`, `SHOZOKU_RUIBETSU_CD`, `SONOTA_SHOZOKU_KIKAN_NAME`, `KIKAN_BUKYOKU_NAME`, `DISABLED_FL`) VALUES
(1, 1, NULL, '3', '名字', '名前', NULL, NULL, 'test@tttest.jp', NULL, NULL, '0', '0', '0', 'Z0000001', '2020-01-28 06:04:56', 'Z0000001', '2020-01-28 06:04:56', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '2', '/Users/hiroka/IdeaProjects/jrois/Rois/public/upload/TBRC/register-shinsei/1/syodakusho/', '統計数理研究所長', '椿', '広計', '6', NULL, 'データ化学研究系', NULL),
(3, 2, NULL, '3', 'センター', '職員', NULL, NULL, 'test@tttest.jp', NULL, NULL, '0', '0', '0', 'Z0000001', '2019-10-31 05:36:03', NULL, '0000-00-00 00:00:00', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 2, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '0', NULL, '統計数理研究所長', '椿', '広計', '6', NULL, 'データ化学研究系', NULL),
(5, 3, NULL, '3', 'センター', '職員', NULL, NULL, 'test@tttest.test', NULL, NULL, '0', '0', '0', 'Z0000001', '2020-01-16 02:23:56', 'Z0000001', '2020-01-16 02:23:56', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '0', '/Users/hiroka/IdeaProjects/jrois/Rois/public/upload/TBRC/register-shinsei/3/syodakusho/', '統計数理研究所長', '椿', '広計', '6', NULL, 'データ化学研究系', NULL),
(7, 4, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '0', NULL, '統計数理研究所長', '椿', '広計', '6', NULL, 'データ化学研究系', NULL),
(8, 4, NULL, '3', 'センター', '職員', NULL, NULL, 'test@tttest.jp', NULL, NULL, '0', '0', '0', 'Z0000001', '2019-11-01 05:25:53', NULL, '0000-00-00 00:00:00', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 5, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '0', NULL, 'バグ507', '変更', '試験', '6', NULL, 'データ化学研究系', NULL),
(10, 6, NULL, '3', 'センター', '職員', NULL, NULL, 'test@tttest.jp', NULL, NULL, '0', '0', '0', 'Z0000001', '2019-11-05 06:50:20', NULL, '0000-00-00 00:00:00', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 6, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '0', NULL, '統計数理研究所長', '椿', '広計', '6', NULL, 'データ化学研究系', NULL),
(12, 7, NULL, '3', '教員', '氏名', NULL, NULL, 'test@tttest.jp', NULL, NULL, '0', '0', '0', 'Z0000001', '2020-01-31 05:48:16', 'systemadmin', '2020-01-31 05:48:15', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 7, 3, '1', '統計', '数理', 'トウケイ', 'スウリ', 'hamada.hiroka@gmail.com', '62603', '特任研究員', '1', '1', '1', 'Z0000001', '2020-02-06 03:33:33', 'Z0000001', '2020-02-06 03:33:33', 'Toukei', 'Suri', '0', '0', NULL, 'バグ507', '変更', '試験', '6', NULL, 'データ化学研究系', NULL),
(14, 5, NULL, '3', 'センター', '職員', NULL, NULL, 'test@tttest.jp', NULL, NULL, '0', '0', '0', 'Z0000001', '2020-01-22 02:49:27', 'Z0000001', '2020-01-22 02:49:26', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 8, 17, '1', '下地', '博之', '', '', 'shimojih@kwansei.ac.jp', '34504', '助教', '1', '1', '1', '50726388', '2020-01-21 02:19:19', '50726388', '2020-01-21 02:19:19', '', '', '0', '0', NULL, '教授', '北原', '和明', '3', NULL, '理工学部', NULL),
(16, 8, NULL, '3', '松浦', '優', NULL, NULL, 'yumatsu@comb.u-ryukyu.ac.jp', NULL, NULL, '0', '0', '0', '50726388', '2020-01-21 02:19:19', NULL, '0000-00-00 00:00:00', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 79, 17, '1', '下地', '博之', '', '', 'shimojih@kwansei.ac.jp', '34504', '助教', '1', '1', '1', '50726388', '2020-01-20 17:19:19', '50726388', '2020-01-20 17:19:19', '', '', '0', '0', NULL, '教授', '北原', '和明', '3', NULL, '理工学部', NULL),
(148, 79, NULL, '3', '松浦', '優', NULL, NULL, 'yumatsu@comb.u-ryukyu.ac.jp', NULL, NULL, '0', '0', '0', '50726388', '2020-01-20 17:19:19', NULL, '0000-00-00 00:00:00', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_SHINSEI`
--

CREATE TABLE `TDAT_SHINSEI` (
  `SHINSEI_NO` int(11) NOT NULL,
  `KOBO_NO` int(11) NOT NULL,
  `SHINSEI_DATE` date NOT NULL,
  `UKETSUKE_NO` varchar(100) DEFAULT NULL,
  `KADAI_NO` varchar(100) DEFAULT NULL,
  `SHINKI_KEIZOKU` char(1) DEFAULT NULL,
  `KENKYU_START_NENDO` date DEFAULT NULL,
  `KENKYU_SYUBETU_CD` varchar(2) DEFAULT NULL,
  `BUNYA_CD1` varchar(2) DEFAULT NULL,
  `BUNYA_CD2` varchar(2) DEFAULT NULL,
  `THEME_CD` varchar(4) DEFAULT NULL,
  `KADAI_NM_JP` text,
  `KADAI_NM_EN` text,
  `PERIOD_DATE_FROM` date DEFAULT NULL,
  `PERIOD_DATE_TO` date DEFAULT NULL,
  `KAISAI_BASYO` text,
  `KAISAI_DATE_FROM` date DEFAULT NULL,
  `KAISAI_DATE_TO` date DEFAULT NULL,
  `KENKYU_SANKASHA_NINZU` decimal(4,0) DEFAULT NULL,
  `KENKYU_MOKUTEKI` text,
  `KOUKA` text,
  `KENKYU_GAIYO` text,
  `KENKYU_DOKUJI` text,
  `TNEBO` text,
  `KENKYU_PLAN` text,
  `KENKYU_HITSUYOSEI` text,
  `KENKYU_KEIKA` text,
  `KENKYU_JISSEKI` text,
  `SONOTA_JIKO` text,
  `SYOGAKUSHO` text,
  `UKEIRE_YOTEI_FL` char(1) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `BASYO_HENKO_RIYU` text,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `STATUS_CD` char(1) NOT NULL,
  `KENKYU_THEME_NO` varchar(10) DEFAULT NULL,
  `SYOGAKUSHO_JURYO` char(1) DEFAULT NULL,
  `TENPU_SHIRYO` text,
  `KEIZOKU_RIYU` text,
  `KENKYU_THEME_NAME` text,
  `SHOMOHIN` text,
  `RIYO_KIKI_SHIRYO` text,
  `SUPER_COMPUTER` char(1) DEFAULT NULL,
  `SAISHIN_KIBO_FL` char(1) DEFAULT NULL,
  `GENE_EXPERIMENT_FL` char(1) DEFAULT NULL,
  `GENE_EXPERIMENT_LAST_NAME` varchar(50) DEFAULT NULL,
  `GENE_EXPERIMENT_FIRST_NAME` varchar(50) DEFAULT NULL,
  `ANIMAL_EXPERIMENT_FL` char(1) DEFAULT NULL,
  `SHOGAI_EXPERIMENT_FL` char(1) DEFAULT NULL,
  `ISOTOPE_FL` char(1) DEFAULT NULL,
  `REPORT_HAKKOU_FL` char(1) DEFAULT NULL,
  `EXPENSES_RELATION` text,
  `KEIZOKU_KADAI_NO` varchar(100) DEFAULT NULL,
  `ANIMAL_EXPERIMENT_LAST_NAME` varchar(50) DEFAULT NULL,
  `ANIMAL_EXPERIMENT_FIRST_NAME` varchar(50) DEFAULT NULL,
  `ADOPTION_NENDO` date DEFAULT NULL,
  `ADOPTION_KIKAN_CD` varchar(2) DEFAULT NULL,
  `ADOPTION_KENKYU_SYUBETSU_CD` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TDAT_SHINSEI`
--

INSERT INTO `TDAT_SHINSEI` (`SHINSEI_NO`, `KOBO_NO`, `SHINSEI_DATE`, `UKETSUKE_NO`, `KADAI_NO`, `SHINKI_KEIZOKU`, `KENKYU_START_NENDO`, `KENKYU_SYUBETU_CD`, `BUNYA_CD1`, `BUNYA_CD2`, `THEME_CD`, `KADAI_NM_JP`, `KADAI_NM_EN`, `PERIOD_DATE_FROM`, `PERIOD_DATE_TO`, `KAISAI_BASYO`, `KAISAI_DATE_FROM`, `KAISAI_DATE_TO`, `KENKYU_SANKASHA_NINZU`, `KENKYU_MOKUTEKI`, `KOUKA`, `KENKYU_GAIYO`, `KENKYU_DOKUJI`, `TNEBO`, `KENKYU_PLAN`, `KENKYU_HITSUYOSEI`, `KENKYU_KEIKA`, `KENKYU_JISSEKI`, `SONOTA_JIKO`, `SYOGAKUSHO`, `UKEIRE_YOTEI_FL`, `CREATED_BY`, `BASYO_HENKO_RIYU`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS_CD`, `KENKYU_THEME_NO`, `SYOGAKUSHO_JURYO`, `TENPU_SHIRYO`, `KEIZOKU_RIYU`, `KENKYU_THEME_NAME`, `SHOMOHIN`, `RIYO_KIKI_SHIRYO`, `SUPER_COMPUTER`, `SAISHIN_KIBO_FL`, `GENE_EXPERIMENT_FL`, `GENE_EXPERIMENT_LAST_NAME`, `GENE_EXPERIMENT_FIRST_NAME`, `ANIMAL_EXPERIMENT_FL`, `SHOGAI_EXPERIMENT_FL`, `ISOTOPE_FL`, `REPORT_HAKKOU_FL`, `EXPENSES_RELATION`, `KEIZOKU_KADAI_NO`, `ANIMAL_EXPERIMENT_LAST_NAME`, `ANIMAL_EXPERIMENT_FIRST_NAME`, `ADOPTION_NENDO`, `ADOPTION_KIKAN_CD`, `ADOPTION_KENKYU_SYUBETSU_CD`) VALUES
(1, 4, '2019-10-21', '2020-琉球大学熱帯生物圏研究センター-共同研究-00003', NULL, '1', '2019-04-01', 'A1', NULL, NULL, NULL, '(作成)本申請通知メール送信テスト', NULL, NULL, NULL, '瀬底研究施設, 分子生命科学研究施設', '2020-04-01', '2020-10-01', NULL, '研究計画出力テスト', NULL, NULL, NULL, NULL, '役割出力テスト', NULL, NULL, '著者名、発表年、論文名、誌名、巻、最初と最後のページ', NULL, NULL, '0', 'Z0000001', NULL, '2020-02-06 03:40:36', 'systemadmin', '2020-01-24 05:48:34', '3', NULL, NULL, NULL, '前年度採択出力テスト', NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '申請者以外の旅費受給者出力テスト', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 5, '2019-10-31', '2020-琉球大学熱帯生物圏研究センター-共同利用研究会-00002', NULL, NULL, NULL, 'B', NULL, NULL, NULL, 'B様式試験登録', NULL, NULL, NULL, '西原研究施設, 西表研究施設', '2020-04-01', '2020-04-01', '20', NULL, NULL, 'TEST\r\nTEST\r\n\r\nTEST', NULL, NULL, '（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）', NULL, NULL, NULL, NULL, NULL, '0', 'Z0000001', NULL, '2019-10-31 06:31:46', 'Z0000001', '2019-10-31 06:31:46', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '申請者以外の旅費受給者A\r\n\r\n申請者以外の旅費受給者B\r\n申請者以外の旅費受給者C', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 5, '2019-10-31', '2020-琉球大学熱帯生物圏研究センター-共同利用研究会-00003', NULL, NULL, NULL, 'B', NULL, NULL, NULL, 'B様式試験登録', NULL, NULL, NULL, '西原研究施設', '2020-05-01', '2020-05-01', '150', NULL, NULL, 'TEST\r\n\r\n\r\nTEST\r\nTEST', NULL, NULL, '（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）\r\n（所属機関・職・氏名）', NULL, NULL, NULL, NULL, NULL, '0', 'Z0000001', NULL, '2020-01-16 02:23:56', 'Z0000001', '2020-01-16 02:23:56', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '申請者以外の旅費受給者はありません', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 7, '2019-11-01', '2019-琉球大学熱帯生物圏研究センター-共同研究(海外機関)-00001', NULL, '0', NULL, 'A3', NULL, NULL, NULL, 'テスト', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '0', 'Z0000001', NULL, '2019-11-01 05:27:05', 'Z0000001', '2019-11-01 05:27:05', '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 4, '2019-11-05', '2020-琉球大学熱帯生物圏研究センター-共同研究-00004', NULL, '0', NULL, 'A1', NULL, NULL, NULL, 'A-1重複登録テスト', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '0', 'Z0000001', NULL, '2020-01-22 02:49:26', 'Z0000001', '2020-01-22 02:49:26', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 7, '2019-11-05', '2020-琉球大学熱帯生物圏研究センター-共同研究(海外機関)-00002', NULL, '0', NULL, 'A3', NULL, NULL, NULL, 'A-3テスト登録', NULL, NULL, NULL, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '0', 'Z0000001', NULL, '2020-02-06 03:40:47', 'systemadmin', '2020-01-30 07:18:24', '3', NULL, '1', NULL, NULL, NULL, NULL, NULL, '0', '1', '0', NULL, NULL, '0', '0', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL),
(7, 8, '2019-11-05', '2019-琉球大学熱帯生物圏研究センター-一般研究-00001', '7', '0', NULL, 'A4', NULL, NULL, NULL, 'A-4テスト登録', NULL, NULL, NULL, '西原研究施設, 西表研究施設', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', NULL, NULL, '', NULL, NULL, '0', 'Z0000001', NULL, '2020-02-06 03:40:54', 'systemadmin', '2020-01-31 05:48:46', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TDAT_SIKIBETU`
--

CREATE TABLE `TDAT_SIKIBETU` (
  `RIYOSHA_NO` int(11) NOT NULL,
  `VALID_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `KINOU` varchar(10) NOT NULL,
  `SIKIBETU` varchar(20) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_EXOENSES`
--

CREATE TABLE `TMST_EXOENSES` (
  `KIKAN_CD` varchar(2) NOT NULL,
  `KENKYU_SYUBETSU_CD` varchar(2) NOT NULL,
  `EXPENSES_KBN` varchar(2) NOT NULL,
  `SHINSEI_FL` decimal(1,0) NOT NULL,
  `ALLOTMENT_FL` decimal(1,0) NOT NULL,
  `ALLOTMENT_BASE` decimal(9,0) NOT NULL,
  `DISP_NO` decimal(3,0) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_EXOENSES`
--

INSERT INTO `TMST_EXOENSES` (`KIKAN_CD`, `KENKYU_SYUBETSU_CD`, `EXPENSES_KBN`, `SHINSEI_FL`, `ALLOTMENT_FL`, `ALLOTMENT_BASE`, `DISP_NO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('11', 'A1', '11', '1', '1', '0', '1', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A1', '12', '1', '1', '0', '2', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A1', '13', '1', '1', '0', '3', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A1', '14', '1', '1', '0', '4', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A1', '15', '1', '1', '0', '5', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A1', '16', '1', '1', '0', '6', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A1', '19', '1', '1', '0', '7', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '11', '1', '1', '0', '1', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '12', '1', '1', '0', '2', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '13', '1', '1', '0', '3', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '14', '1', '1', '0', '4', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '15', '1', '1', '0', '5', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '16', '1', '1', '0', '6', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A2', '19', '1', '1', '0', '7', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '11', '1', '1', '0', '1', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '12', '1', '1', '0', '2', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '13', '1', '1', '0', '3', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '14', '1', '1', '0', '4', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '15', '1', '1', '0', '5', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '16', '1', '1', '0', '6', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A3', '19', '1', '1', '0', '7', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '11', '1', '0', '0', '1', 'system', '2020-01-31 06:41:28', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '12', '1', '0', '0', '2', 'system', '2020-01-31 06:41:28', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '13', '1', '0', '0', '3', 'system', '2020-01-31 06:41:28', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '14', '1', '1', '0', '4', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '15', '1', '1', '0', '5', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '16', '1', '0', '0', '6', 'system', '2020-01-31 06:41:28', NULL, '0000-00-00 00:00:00', '1'),
('11', 'A4', '19', '1', '0', '0', '7', 'system', '2020-01-31 06:41:28', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '11', '1', '1', '0', '1', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '12', '1', '1', '0', '2', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '13', '1', '1', '0', '3', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '14', '1', '1', '0', '4', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '15', '1', '1', '0', '5', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '16', '1', '1', '0', '6', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1'),
('11', 'B', '19', '1', '1', '0', '7', 'system', '2020-01-30 03:13:05', NULL, '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `TMST_EXOENSES_NAME`
--

CREATE TABLE `TMST_EXOENSES_NAME` (
  `EXPENSES_KBN` varchar(2) NOT NULL,
  `EXPENSES_NAME` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_EXOENSES_NAME`
--

INSERT INTO `TMST_EXOENSES_NAME` (`EXPENSES_KBN`, `EXPENSES_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('11', '航空費', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('12', '宿泊費', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('13', 'レンタカー費用', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('14', 'ガゾリン代', 'system', '2019-11-01 04:41:16', NULL, '0000-00-00 00:00:00', '1'),
('15', '船代', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('16', '鉄道代（長距離）', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('17', '（未使用）', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('18', '（未使用）', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1'),
('19', 'その他', 'system', '2019-10-09 06:38:07', NULL, '0000-00-00 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `TMST_IDO_STATUS`
--

CREATE TABLE `TMST_IDO_STATUS` (
  `IDO_STATUS_CD` char(1) NOT NULL,
  `IDO_STATUS_NAME` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATE_COUNT` decimal(10,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_KENKYU_BUNYA`
--

CREATE TABLE `TMST_KENKYU_BUNYA` (
  `BUNYA_KBN` varchar(1) NOT NULL,
  `BUNYA_CD` varchar(2) NOT NULL,
  `BUNYA_NAME` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) DEFAULT NULL,
  `KIKAN_CD` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_KENKYU_SYUBETSU`
--

CREATE TABLE `TMST_KENKYU_SYUBETSU` (
  `KIKAN_CD` varchar(2) NOT NULL,
  `KENKYU_SYUBETSU_CD` varchar(2) NOT NULL,
  `KENKYU_SYUBETSU_NAME` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL,
  `KENKYU_TYPE` varchar(2) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_KENKYU_SYUBETSU`
--

INSERT INTO `TMST_KENKYU_SYUBETSU` (`KIKAN_CD`, `KENKYU_SYUBETSU_CD`, `KENKYU_SYUBETSU_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`, `KENKYU_TYPE`) VALUES
('1', '0', '共同利用登録', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('1', '1', '一般研究１', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('1', '2', '一般研究２', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('1', '4', '重点型研究', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('1', '5', '共同研究集会', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '2'),
('1', '6', '統計思考院ワークショップ', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '3'),
('1', '7', '統計思考院若手育成', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '3'),
('11', 'A1', '共同研究', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('11', 'A2', '共同研究(若手)', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('11', 'A3', '共同研究(海外機関)', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('11', 'A4', '一般研究', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('11', 'B', '共同利用研究会', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '2'),
('2', 'A', '共同研究（Ａ） ', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('2', 'B', '共同研究（Ｂ） ', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('2', 'C', '国際共同研究 ', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('2', 'D', '研究会', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '2'),
('3', '1', '一般共同研究', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('3', '2', '研究集会', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '2'),
('3', '3', '共同研究育成研究員', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '3'),
('4', '1', '戦略研究公募型', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('4', '2', '研究企画会合公募型', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('4', '3', '自由提案公募型', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('5', '1', '一般共同研究', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '1'),
('5', '2', '共同研究集会', 'system', '2019-10-09 05:11:58.684118', NULL, '2019-10-09 05:11:58.684118', 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `TMST_KENKYU_THEME`
--

CREATE TABLE `TMST_KENKYU_THEME` (
  `KIKAN_CD` varchar(2) NOT NULL,
  `NENDO` decimal(4,0) NOT NULL,
  `THEME_CD` varchar(2) NOT NULL,
  `THEME_NAME` varchar(100) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` decimal(10,0) DEFAULT '0',
  `PLANNER_RIYOSHA_NO_1` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_1` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_1` varchar(50) DEFAULT NULL,
  `KENKYU_SYUBETSU_CD` varchar(2) NOT NULL,
  `PLANNER_RIYOSHA_NO_2` smallint(6) DEFAULT NULL,
  `PLANNER_LAST_NAME_2` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_2` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_3` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_3` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_3` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_4` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_4` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_4` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_5` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_5` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_5` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_6` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_6` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_6` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_7` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_7` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_7` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_8` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_8` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_8` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_9` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_9` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_9` varchar(50) DEFAULT NULL,
  `PLANNER_RIYOSHA_NO_10` int(11) DEFAULT NULL,
  `PLANNER_LAST_NAME_10` varchar(50) DEFAULT NULL,
  `PLANNER_FIRST_NAME_10` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_KIKAN`
--

CREATE TABLE `TMST_KIKAN` (
  `KIKAN_CD` varchar(2) NOT NULL,
  `KIKAN_NAME` varchar(50) NOT NULL,
  `KIKAN_RYAKUSHO` varchar(50) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` date DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_KIKAN`
--

INSERT INTO `TMST_KIKAN` (`KIKAN_CD`, `KIKAN_NAME`, `KIKAN_RYAKUSHO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('1', '統計数理研究所', '統数研', 'system', '2019-10-09 05:12:20', NULL, '2019-10-09 05:12:20', '0'),
('11', '琉球大学熱帯生物圏研究センター', '熱生研', 'system', '2019-10-17 06:19:43', NULL, '2019-10-09 05:12:20', '0'),
('2', '国立遺伝学研究所', '遺伝研', 'system', '2019-10-09 05:12:20', NULL, '2019-10-09 05:12:20', '0'),
('3', '国立極地研究所', '極地研', 'system', '2019-10-09 05:12:20', NULL, '2019-10-09 05:12:20', '0'),
('4', '国立情報学研究所', '情報研', 'system', '2019-10-09 05:12:20', NULL, '2019-10-09 05:12:20', '0'),
('5', 'データサイエンス共同利用基盤施設', 'DS施設', 'system', '2019-10-09 05:12:20', NULL, '2019-10-09 05:12:20', '0');

-- --------------------------------------------------------

--
-- Table structure for table `TMST_NATIONAL`
--

CREATE TABLE `TMST_NATIONAL` (
  `NATIONAL_CD` varchar(3) NOT NULL,
  `NATIONAL_NAME` varchar(50) NOT NULL,
  `NATIONAL_RYAKUSHO` varchar(3) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_NATIONAL`
--

INSERT INTO `TMST_NATIONAL` (`NATIONAL_CD`, `NATIONAL_NAME`, `NATIONAL_RYAKUSHO`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('999', 'その他', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ABW', 'アルバ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AFG', 'アフガニスタン・イスラム国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AGO', 'アンゴラ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AIA', 'アンギラ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ALB', 'アルバニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AND', 'アンドラ公国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ANT', 'オランダ領アンチル', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ARE', 'アラブ首長国連邦', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ARG', 'アルゼンチン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ARM', 'アルメニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ASM', '米領サモア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ATA', '南極', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ATF', '仏領極南諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ATG', 'アンチグア・バーブーダ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AUS', 'オーストラリア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AUT', 'オーストリア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('AZE', 'アゼルバイジャン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BDI', 'ブルンジ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BEL', 'ベルギー王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BEN', 'ベナン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BFA', 'ブルキナファソ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BGD', 'バングラデシュ人民共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BGR', 'ブルガリア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BHR', 'バーレーン国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BHS', 'バハマ国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BIH', '(ボスニア・ヘルツェゴビナ共和国)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BLR', 'ベラルーシ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BLZ', 'ベリーズ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BMU', 'バーミューダ諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BOL', 'ボリビア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BRA', 'ブラジル連邦共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BRB', 'バルバドス', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BRN', 'ブルネイ・ダルサラーム国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BTN', 'ブータン王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BVT', 'ブーベ島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('BWA', 'ボツワナ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CAF', '中央アフリカ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CAN', 'カナダ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CCK', 'ココス諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CHE', 'スイス連邦', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CHL', 'チリ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CHN', '中華人民共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CIV', 'コートジボアール共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CMR', 'カメルーン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('COG', 'コンゴ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('COK', 'クック諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('COL', 'コロンビア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('COM', 'コモロ・イスラム連邦共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CPV', 'カーボベルデ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CRI', 'コスタリカ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CUB', 'キューバ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CXR', 'クリスマス島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CYM', 'ケイマン諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CYP', 'キプロス共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('CZE', 'チェコ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('DEU', 'ドイツ連邦共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('DJI', 'ジブチ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('DMA', 'ドミニカ国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('DNK', 'デンマーク王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('DOM', 'ドミニカ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('DZA', 'アルジェリア民主人民共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ECU', 'エクアドル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('EGY', 'エジプト・アラブ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ERI', 'エリトリア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ESH', '西サハラ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ESP', 'スペイン', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('EST', 'エストニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ETH', 'エチオピア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FIN', 'フィンランド共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FJI', 'フィジー共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FLK', 'フォークランド(マルビナス),諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FRA', 'フランス共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FRO', 'フェロー諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FSM', 'ミクロネシア連邦', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('FXX', 'フランス本国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GAB', 'ガボン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GBR', 'グレートブリテン及び北部アイルランド連合王国(英国)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GEO', 'グルジア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GHA', 'ガーナ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GIB', 'ジブラルタル', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GIN', 'ギニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GLP', 'グアドループ島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GMB', 'ガンビア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GNB', 'ギニアビサオ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GNQ', '赤道ギニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GRC', 'ギリシア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GRD', 'グレナダ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GRL', 'グリーンランド', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GTM', 'グアテマラ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GUF', '仏領ギアナ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GUM', 'グアム', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('GUY', 'ガイアナ協同共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('HKG', 'ホンコン (香港)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('HMD', 'ヘアド島・マクドナルド諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('HND', 'ホンジュラス共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('HRV', 'クロアチア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('HTI', 'ハイチ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('HUN', 'ハンガリー共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('IDN', 'インドネシア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('IND', 'インド', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('IOT', '英領インド洋地域', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('IRL', 'アイルランド', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('IRN', 'イラン・イスラム共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('IRQ', 'イラク共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ISL', 'アイスランド共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ISR', 'イスラエル国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ITA', 'イタリア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('JAM', 'ジャマイカ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('JOR', 'ヨルダン・ハシミテ王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('JPN', '日本国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KAZ', 'カザフスタン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KEN', 'ケニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KGZ', 'キルギスタン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KHM', 'カンボディア王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KIR', 'キリバス共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KNA', 'セントクリストファー・ネイビス', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KOR', '大韓民国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('KWT', 'クウェート国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LAO', 'ラオス人民民主共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LBN', 'レバノン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LBR', 'リベリア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LBY', '社会主義人民リビア・アラブ国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LCA', 'セントルシア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LIE', 'リヒテンシュタイン公国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LKA', 'スリランカ民主社会主義共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LSO', 'レソト王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LTU', 'リトアニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LUX', 'ルクセンブルク大公国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('LVA', 'ラトビア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MAC', 'マカオ(澳門)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MAR', 'モロッコ王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MCO', 'モナコ公国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MDA', 'モルドバ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MDG', 'マダガスカル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MDV', 'モルジブ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MEX', 'メキシコ合衆国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MHL', 'マーシャル諸島共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MLI', 'マリ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MLT', 'マルタ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MMR', 'ミャンマー連邦', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MNG', 'モンゴル国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MNP', '北マリアナ諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MOZ', 'モザンビーク共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MRT', 'モーリタニア・イスラム共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MSR', 'モントセラト', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MTQ', 'マルチニーク島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MUS', 'モーリシャス共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MWI', 'マラウイ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MYS', 'マレーシア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('MYT', 'マイヨット島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NAM', 'ナミビア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NCL', 'ニューカレドニア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NER', 'ニジェール共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NFK', 'ノーフォーク島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NGA', 'ナイジェリア連邦共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NIC', 'ニカラグア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NIU', 'ニウエ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NLD', 'オランダ王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NOR', 'ノルウェー王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NPL', 'ネパール王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NRU', 'ナウル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('NZL', 'ニュージーランド', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('OMN', 'オマーン国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PAK', 'パキスタン・イスラム共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PAN', 'パナマ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PCN', 'ピトケアン島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PER', 'ペルー共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PHL', 'フィリピン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PLW', 'パラオ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PNG', 'パプアニューギニア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('POL', 'ポーランド共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PRI', 'プエルトリコ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PRK', '(北朝鮮=朝鮮民主主義人民共和国)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PRT', 'ポルトガル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PRY', 'パラグアイ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('PYF', '仏領ポリネシア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('QAT', 'カタール国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('REU', 'レユニオン', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ROM', 'ルーマニア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('RUS', 'ロシア連邦', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('RWA', 'ルワンダ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SAU', 'サウジアラビア王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SDN', 'スーダン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SEN', 'セネガル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SGP', 'シンガポール共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SGS', '南ジョージア島・南サンドイッチ諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SHN', 'セントヘレナ島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SJM', 'スバールバル諸島・ヤンマイエン島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SLB', 'ソロモン諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SLE', 'シエラレオネ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SLV', 'エルサルバドル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SMR', 'サンマリノ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SOM', 'ソマリア民主共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SPM', 'サンピエール島・ミクロン島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('STP', 'サントメ・プリンシペ民主共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SUR', 'スリナム共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SVK', 'スロバキア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SVN', 'スロベニア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SWE', 'スウェーデン王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SWZ', 'スワジランド王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SYC', 'セイシェル共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('SYR', 'シリア・アラブ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TCA', 'タークス諸島・カイコス諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TCD', 'チャド共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TGO', 'トーゴ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('THA', 'タイ王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TJK', 'タジキスタン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TKL', 'トケラウ諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TKM', 'トルクメニスタン', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TMP', '東チモール', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TON', 'トンガ王国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TTO', 'トリニダード・トバゴ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TUN', 'チュニジア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TUR', 'トルコ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TUV', 'ツバル', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TWN', '台湾', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('TZA', 'タンザニア連合共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('UGA', 'ウガンダ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('UKR', 'ウクライナ', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('UMI', '米領太平洋諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('URY', 'ウルグアイ東方共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('USA', 'アメリカ合衆国(米国)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('UZB', 'ウズベキスタン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VAT', 'バチカン市国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VCT', 'セントビンセント及びグレナディーン諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VEN', 'ベネズエラ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VGB', '英領バージン諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VIR', '米領バージン諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VNM', 'ベトナム社会主義共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('VUT', 'バヌアツ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('WLF', 'ワリス・フテュナ諸島', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('WSM', '西サモア', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('YEM', 'イエメン共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('YUG', '(ユーゴスラビア連邦共和国)', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ZAF', '南アフリカ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ZAR', 'ザイール共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ZMB', 'ザンビア共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1),
('ZWE', 'ジンバブエ共和国', NULL, 'system', '2019-10-09 05:12:42.982039', NULL, '0000-00-00 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TMST_NOTICE_KIND`
--

CREATE TABLE `TMST_NOTICE_KIND` (
  `NOTICE_CD` varchar(2) NOT NULL,
  `NOTICE_NAME` varchar(50) DEFAULT NULL,
  `DAIHYO_FL` decimal(1,0) DEFAULT '0',
  `BUNTAN_FL` decimal(1,0) DEFAULT '0',
  `RENRAKU_FL` decimal(1,0) DEFAULT '0',
  `JIMU_FL` decimal(1,0) DEFAULT '0',
  `KIKAKU_FL` decimal(1,0) DEFAULT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) DEFAULT '0',
  `NOTICE_SYUBETSU_CD` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_NOTICE_KIND`
--

INSERT INTO `TMST_NOTICE_KIND` (`NOTICE_CD`, `NOTICE_NAME`, `DAIHYO_FL`, `BUNTAN_FL`, `RENRAKU_FL`, `JIMU_FL`, `KIKAKU_FL`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`, `NOTICE_SYUBETSU_CD`) VALUES
('10', '採択通知メール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', '1'),
('20', '不採択通知\r\nメール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', '1'),
('30', '条件付採択通知メール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', '1'),
('10', '暫定通知メール（配分額決定）', '1', '0', '1', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', '2'),
('20', '暫定通知メール（執行可能）', '1', '0', '1', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', '2'),
('30', '予算決定メール', '1', '0', '1', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', '2'),
('10', 'ID登録', '1', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'A'),
('20', '承諾書提出', '1', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'A'),
('30', '実施報告書提出', '1', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'A'),
('40', 'リポート提出', '1', '0', '1', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'A'),
('10', 'ID登録依頼メール', '0', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('11', '真正確認メール', '0', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('12', '研究参加承諾依頼', '0', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('21', '本申請通知メール', '0', '0', '0', '1', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('22', '申請受理メール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('23', '承諾書受理メール', '1', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('30', '実施報告提出通知メール', '0', '0', '0', '1', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('31', '実施報告受理通知メール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('32', '実施報告差戻通知メール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('40', 'リポート番号発番通知メール', '0', '0', '0', '1', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('41', 'リポート受理通知メール', '1', '0', '1', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('50', '異動申請通知メール', '0', '0', '0', '1', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('51', '異動申請承諾通知メール', '1', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('60', '分担者変更申請通知メール', '0', '0', '0', '1', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('61', '分担者変更承諾通知メール', '0', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('70', '課題中止通知メール', '1', '0', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('71', '代表者変更通知メール', '1', '1', '0', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('72', '予算執行責任者変更通知メール', '1', '0', '1', '0', '0', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('80', '研究者ID通知メール', '1', '1', '1', '1', '1', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('81', 'パスワード再設定メール', '1', '1', '1', '1', '1', 'system', '2019-10-09 05:12:59', NULL, '2019-10-09 05:12:59', '1', 'B'),
('24', '申請差戻しメール', '1', '0', '0', '0', '0', 'system', '2019-11-18 02:15:45', NULL, '0000-00-00 00:00:00', '1', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `TMST_PERMISSION`
--

CREATE TABLE `TMST_PERMISSION` (
  `PERMISSION_CD` varchar(2) NOT NULL,
  `PERMISSION_NAME` varchar(50) NOT NULL,
  `KIKAN_CD` varchar(2) DEFAULT NULL,
  `HYOJI_LEVEL` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_REPLI_CHARACTER`
--

CREATE TABLE `TMST_REPLI_CHARACTER` (
  `CHAR_NO` int(11) NOT NULL,
  `NOTICE_ID` varchar(1) NOT NULL,
  `NOTICE_CD` varchar(2) NOT NULL,
  `CHAR` varchar(100) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `UPDATED_COUNT` decimal(10,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_SHINSEI_TYPE`
--

CREATE TABLE `TMST_SHINSEI_TYPE` (
  `SHINSEI_TYPE_CD` varchar(1) NOT NULL,
  `SHINSEI_TYPE_NAME` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_SHINSEI_TYPE`
--

INSERT INTO `TMST_SHINSEI_TYPE` (`SHINSEI_TYPE_CD`, `SHINSEI_TYPE_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('1', '異動申請', 'system', '2019-10-09 05:13:18.580631', NULL, '2019-10-09 05:13:18.580631', 1),
('2', '分担者変更申請', 'system', '2019-10-09 05:13:18.580631', NULL, '2019-10-09 05:13:18.580631', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TMST_SHOZOKU_BUKYOKU`
--

CREATE TABLE `TMST_SHOZOKU_BUKYOKU` (
  `SHOZOKU_KIKAN_CD` varchar(10) NOT NULL,
  `SHOZOKU_BUKYOKU_CD` varchar(10) NOT NULL,
  `SHOZOKU_BUKYOKU_NAME` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TMST_SHOZOKU_KIKAN`
--

CREATE TABLE `TMST_SHOZOKU_KIKAN` (
  `SHOZOKU_KIKAN_CD` varchar(10) NOT NULL,
  `SHOZOKU_KIKAN_NAME` varchar(50) NOT NULL,
  `SHOZOKU_RUIBETSU_CD` varchar(10) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_SHOZOKU_KIKAN`
--

INSERT INTO `TMST_SHOZOKU_KIKAN` (`SHOZOKU_KIKAN_CD`, `SHOZOKU_KIKAN_NAME`, `SHOZOKU_RUIBETSU_CD`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('10101', '北海道大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('10102', '北海道教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('10103', '室蘭工業大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('10104', '小樽商科大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('10105', '帯広畜産大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('10106', '北見工業大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('10107', '旭川医科大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11101', '弘前大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11201', '岩手大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11301', '東北大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11302', '宮城教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11401', '秋田大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11501', '山形大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('11601', '福島大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12101', '茨城大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12102', '筑波大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12103', '筑波技術大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12201', '宇都宮大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12301', '群馬大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12401', '埼玉大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12501', '千葉大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12601', '東京大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12602', '東京医科歯科大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12603', '東京外国語大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12604', '東京学芸大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12605', '東京農工大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12606', '東京藝術大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12608', '東京工業大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12611', 'お茶の水女子大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12612', '電気通信大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12613', '一橋大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12614', '東京海洋大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12701', '横浜国立大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12702', '総合研究大学院大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('12703', '政策研究大学院大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13101', '新潟大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13102', '長岡技術科学大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13103', '上越教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13201', '富山大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13301', '金沢大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13302', '北陸先端科学技術大学院大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13401', '福井大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13501', '山梨大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13601', '信州大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13701', '岐阜大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13801', '静岡大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13802', '浜松医科大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13901', '名古屋大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13902', '愛知教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13903', '名古屋工業大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('13904', '豊橋技術科学大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14101', '三重大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14201', '滋賀大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14202', '滋賀医科大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14301', '京都大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14302', '京都教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14303', '京都工芸繊維大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14401', '大阪大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14403', '大阪教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14501', '神戸大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14503', '兵庫教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14601', '奈良教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14602', '奈良女子大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14603', '奈良先端科学技術大学院大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('14701', '和歌山大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('15101', '鳥取大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('15201', '島根大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('15301', '岡山大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('15401', '広島大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('15501', '山口大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('16101', '徳島大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('16102', '鳴門教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('16201', '香川大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('16301', '愛媛大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('16401', '高知大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17101', '福岡教育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17102', '九州大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17104', '九州工業大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17201', '佐賀大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17301', '長崎大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17401', '熊本大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17501', '大分大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17601', '宮崎大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17701', '鹿児島大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('17702', '鹿屋体育大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('18001', '琉球大学', '1', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('20101', '札幌医科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('20102', '釧路公立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('20103', '公立はこだて未来大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('20104', '名寄市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('20105', '札幌市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21101', '青森公立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21102', '青森県立保健大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21201', '岩手県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21301', '宮城大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21401', '秋田県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21402', '国際教養大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21501', '山形県立保健医療大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21601', '福島県立医科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('21602', '会津大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22101', '茨城県立医療大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22301', '高崎経済大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22302', '群馬県立女子大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22303', '前橋工科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22304', '群馬県立県民健康科学大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22401', '埼玉県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22501', '千葉県立保健医療大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22604', '首都大学東京', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22605', '産業技術大学院大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22701', '横浜市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('22702', '神奈川県立保健福祉大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23101', '新潟県立看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23102', '新潟県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23201', '富山県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23301', '金沢美術工芸大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23302', '石川県立看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23303', '石川県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23401', '福井県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23501', '都留文科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23503', '山梨県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23601', '長野県看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23602', '長野大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23701', '岐阜薬科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23702', '岐阜県立看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23703', '情報科学芸術大学院大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23803', '静岡県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23804', '静岡文化芸術大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23901', '愛知県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23902', '愛知県立芸術大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('23903', '名古屋市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24102', '三重県立看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24201', '滋賀県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24301', '京都市立芸術大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24302', '京都府立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24303', '京都府立医科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24402', '大阪市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24403', '大阪府立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24501', '神戸市外国語大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24505', '神戸市看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24506', '兵庫県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24601', '奈良県立医科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24602', '奈良県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('24701', '和歌山県立医科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25101', '公立鳥取環境大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25201', '島根県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25301', '岡山県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25302', '新見公立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25403', '広島市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25406', '県立広島大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25407', '福山市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25501', '下関市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25502', '山口県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('25503', '山陽小野田市立山口東京理科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('26201', '香川県立保健医療大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('26301', '愛媛県立医療技術大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('26401', '高知県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('26402', '高知工科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27101', '北九州市立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27102', '九州歯科大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27103', '福岡女子大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27104', '福岡県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27301', '長崎県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27401', '熊本県立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27501', '大分県立看護科学大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27601', '宮崎公立大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('27602', '宮崎県立看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('28001', '沖縄県立芸術大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('28002', '沖縄県立看護大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('28003', '名桜大学', '2', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30101', '旭川大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30102', '札幌大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30103', '札幌学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30104', '函館大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30105', '藤女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30106', '北星学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30107', '北海学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30108', '北海道科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30109', '酪農学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30110', '北海道医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30111', '北海道薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30112', '北海商科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30114', '道都大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30115', '北海道情報大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30116', '札幌国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30117', '北翔大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30118', '千歳科学技術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30119', '苫小牧駒澤大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30120', '日本赤十字北海道看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30121', '北海道文教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30122', '天使大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30123', '稚内北星学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30124', '星槎大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30125', '札幌大谷大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('30127', '日本医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31101', '青森大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31102', '東北女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31103', '八戸工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31104', '弘前学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31105', '八戸大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31106', '青森中央学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31107', '弘前医療福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31201', '岩手医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31202', '富士大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31203', '盛岡大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31301', '仙台大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31302', '東北学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31303', '東北工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31304', '東北福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31305', '東北医科薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31306', '東北生活文化大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31307', '宮城学院女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31308', '石巻専修大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31309', '仙台白百合女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31310', '東北文化学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31311', '尚絅学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31401', '秋田経済法科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31402', '秋田看護福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31403', '日本赤十字秋田看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31501', '東北芸術工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31502', '東北公益文科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31601', '郡山女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31602', '奥羽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31603', 'いわき明星大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31604', '東日本国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('31605', '福島学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32101', '茨城キリスト教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32102', '流通経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32103', '常磐大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32104', 'つくば国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32105', '筑波学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32201', '足利工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32202', '自治医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32203', '獨協医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32204', '白鴎大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32205', '作新学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32206', '国際医療福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32207', '宇都宮共和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32208', '文星芸術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32301', '上武大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32302', '関東学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32303', '共愛学園前橋国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32304', '東京福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32305', '高崎健康福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32306', '高崎商科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32308', '創造学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32309', '群馬パース大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32310', '桐生大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32401', '跡見学園女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32402', '東京国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32403', '城西大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32404', '明海大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32405', '東邦音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32406', '獨協大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32407', '日本工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32408', '文教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32409', '埼玉医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32410', '埼玉工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32411', '駿河台大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32412', '聖学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32413', '文京学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32414', '目白大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32415', '十文字学園女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32416', '平成国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32417', '西武文理大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32418', '尚美学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32419', '人間総合科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32420', '共栄大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32421', '埼玉学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32422', 'ものつくり大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32423', '浦和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32424', '大宮法科大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32425', '日本薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32426', '武蔵野学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32427', '日本医療科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32428', '東都医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32501', '淑徳大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32502', '敬愛大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32503', '千葉工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32504', '千葉商科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32505', '中央学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32506', '麗澤大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32507', '和洋女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32508', '放送大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32509', '国際武道大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32510', '神田外語大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32511', '帝京平成大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32512', '千葉経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32513', '秀明大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32514', '川村学園女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32515', '東京情報大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32516', '東京基督教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32517', '聖徳大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32518', '江戸川大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32519', '城西国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32520', '東洋学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32521', '東京成徳大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32522', '清和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32523', '愛国学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32524', '日本橋学館大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32525', '千葉科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32526', '了徳寺大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32527', '植草学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32528', '三育学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32601', '青山学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32602', '亜細亜大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32603', '上野学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32604', '大妻女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32605', '桜美林大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32606', '学習院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32607', '北里大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32608', '共立女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32610', '杏林大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32611', '国立音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32612', '慶應義塾大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32613', '工学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32614', '國學院大學', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32615', '国際基督教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32616', '国士舘大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32617', '駒澤大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32618', '実践女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32619', '芝浦工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32620', '順天堂大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32621', '上智大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32622', '昭和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32623', '昭和女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32624', '昭和薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32625', '女子栄養大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32626', '女子美術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32627', '白百合女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32628', '杉野服飾大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32629', '成蹊大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32630', '成城大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32631', '聖心女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32632', '清泉女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32633', '聖路加国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32634', '専修大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32635', '大正大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32636', '大東文化大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32637', '高千穂大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32638', '拓殖大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32639', '玉川大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32640', '多摩美術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32641', '中央大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32642', '津田塾大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32643', '帝京大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32644', '東海大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32645', '東京医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32646', '東京音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32647', '東京家政大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32648', '東京家政学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32649', '東京経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32650', '東京歯科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32651', '東京慈恵会医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32652', '東京女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32653', '東京女子医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32654', '東京女子体育大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32655', '東京神学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32656', '東京造形大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32657', '東京電機大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32658', '東京農業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32659', '東京薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32660', '東京理科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32661', '東邦大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32662', '桐朋学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32663', '東洋大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32664', '二松學舎大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32665', '日本大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32666', '日本医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32667', '日本歯科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32668', '日本社会事業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32669', '日本獣医生命科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32670', '日本女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32671', '日本女子体育大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32672', '日本体育大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32673', 'ルーテル学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32674', '文化学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32675', '法政大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32676', '星薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32677', '武蔵大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32678', '東京都市大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32679', '武蔵野音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32680', '武蔵野大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32681', '武蔵野美術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32682', '明治大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32683', '明治学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32684', '明治薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32685', '明星大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32686', '立教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32687', '立正大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32688', '和光大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32689', '早稲田大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32690', '創価大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32691', '日本文化大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32692', '東京工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32693', '日本赤十字看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32694', '恵泉女学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32695', '多摩大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32696', '駒沢女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32697', '国際仏教学大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32698', '東京純心女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32699', '学習院女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32701', '麻布大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32702', '神奈川大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32703', '神奈川歯科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32704', '関東学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32705', '鎌倉女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32706', '湘南工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32707', '相模女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32708', '東京工芸大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32709', '洗足学園音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32710', '鶴見大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32711', 'フェリス女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32712', '横浜商科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32713', '聖マリアンナ医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32714', '神奈川工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32715', '産能大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32716', '昭和音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32717', '桐蔭横浜大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32718', '東洋英和女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32719', '松蔭大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32720', '田園調布学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32721', '情報セキュリティ大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32722', '八洲学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32723', '横浜薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32724', 'ＳＢＩ大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32801', '嘉悦大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32802', '東京女学館大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32803', '東京富士大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32804', '聖母大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32805', 'デジタルハリウッド大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32806', 'LEC東京リーガルマインド大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32808', '白梅学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32809', '東京医療保健大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32810', '東京聖栄大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32812', '映画専門大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32813', 'グロービス経営大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32814', '日本教育大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32815', '文化ファッション大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32816', '東京未来大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32817', 'サイバー大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32819', 'ハリウッド大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32820', 'こども教育宝仙大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32821', '東京有明医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('32822', 'ヤマザキ学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33101', '新潟薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33102', '国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33103', '新潟産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33104', '敬和学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33105', '長岡造形大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33106', '新潟経営大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33107', '新潟国際情報大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33108', '新潟工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33109', '新潟青陵大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33110', '長岡大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33111', '新潟医療福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33112', '事業創造大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33201', '高岡法科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33202', '富山国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33203', '桐朋学園大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33301', '金沢星稜大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33302', '金沢工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33303', '金沢医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33304', '北陸大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33305', '金沢学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33306', '金城大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33307', '北陸学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33401', '福井工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33402', '山梨学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33403', '仁愛大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33501', '帝京科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33502', '身延山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33503', '山梨英和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33504', '健康科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33602', '松本歯科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33603', '諏訪東京理科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33604', '松本大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33605', '清泉女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33606', '佐久大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33701', '岐阜経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33702', '岐阜女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33703', '朝日大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33704', '岐阜聖徳学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1);
INSERT INTO `TMST_SHOZOKU_KIKAN` (`SHOZOKU_KIKAN_CD`, `SHOZOKU_KIKAN_NAME`, `SHOZOKU_RUIBETSU_CD`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('33705', '東海学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33706', '中京学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33707', '中部学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33708', '岐阜医療科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33801', '常葉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33802', '浜松大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33803', '静岡理工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33804', '聖隷クリストファー大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33805', '静岡産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33807', '富士常葉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33808', '静岡英和学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33809', '静岡福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33810', '浜松学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33811', '光産業創成大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33901', '愛知大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33902', '愛知学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33903', '愛知工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33904', '愛知学泉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33905', '金城学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33906', '椙山女学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33907', '大同大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33908', '中京大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33910', '中部大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33911', '同朋大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33912', '名古屋学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33913', '名古屋芸術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33914', '名古屋商科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33915', '名古屋女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33916', '藤田保健衛生大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33917', '南山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33918', '日本福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33919', '名城大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33920', '愛知医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33921', '愛知淑徳大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33922', '名古屋音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33923', '名古屋経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33924', '豊田工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33925', '名古屋外国語大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33927', '愛知産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33928', '愛知みずほ大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33929', '東海学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33930', '豊橋創造大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33931', '愛知文教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33932', '桜花学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33933', '名古屋文理大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33934', '愛知工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33935', '名古屋産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33936', '人間環境大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33937', '東邦学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33938', '星城大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33939', '名古屋学芸大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33940', '愛知新城大谷大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33941', '日本赤十字豊田看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('33942', '修文大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34101', '皇學館大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34102', '三重中京大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34103', '四日市大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34104', '鈴鹿医療科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34105', '鈴鹿国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34106', '四日市看護医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34201', '成安造形大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34202', '平安女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34203', '聖泉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34204', '長浜バイオ大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34205', 'びわこ成蹊スポーツ大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34206', 'びわこ学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34301', '大谷大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34302', '京都外国語大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34303', '京都学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34304', '京都産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34305', '京都女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34306', '京都薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34307', '京都光華女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34308', '種智院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34309', '京都橘大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34310', '同志社大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34311', '同志社女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34312', '京都ノートルダム女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34313', '花園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34314', '佛教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34315', '立命館大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34316', '龍谷大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34317', '京都精華大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34318', '明治国際医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34319', '京都造形芸術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34320', '京都文教大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34322', '京都嵯峨芸術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34323', '京都情報大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34324', '京都医療科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34401', '大阪医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34402', '大阪音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34403', '大阪学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34404', '大阪経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34405', '大阪芸術大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34406', '大阪工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34407', '大阪産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34408', '大阪歯科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34409', '大阪樟蔭女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34410', '大阪商業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34411', '大阪体育大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34412', '大阪電気通信大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34413', '大阪薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34414', '大阪大谷大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34415', '追手門学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34416', '関西大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34417', '関西医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34418', '関西外国語大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34419', '近畿大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34420', '四天王寺大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34421', '相愛大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34423', '帝塚山学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34424', '梅花女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34425', '阪南大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34426', '桃山学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34427', '大阪経済法科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34428', '摂南大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34429', '大阪国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34430', 'プール学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34431', '関西福祉科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34432', '太成学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34433', '常盤会学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34434', '大阪観光大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34435', '大阪人間科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34436', '羽衣国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34437', '大阪成蹊大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34438', '関西鍼灸大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34439', '千里金蘭大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34440', '東大阪大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34441', '藍野大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34442', '大阪女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34443', '大阪青山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34444', '四條畷学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34445', '大阪総合保育大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34447', '大阪河崎リハビリテーション大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34448', '森ノ宮医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34449', '大阪保健医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34451', '滋慶医療科学大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34453', '大和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34501', '芦屋大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34502', '英知大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34503', '大手前大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34504', '関西学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34505', '甲子園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34506', '甲南大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34507', '甲南女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34508', '神戸海星女子学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34509', '神戸学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34510', '神戸女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34511', '神戸女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34512', '神戸薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34513', '神戸松蔭女子学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34514', '神戸親和女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34516', '園田学園女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34517', '武庫川女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34518', '神戸国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34519', '兵庫医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34521', '姫路獨協大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34522', '流通科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34523', '神戸芸術工科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34524', '兵庫大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34525', '関西福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34526', '関西国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34527', '神戸山手大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34528', '近畿福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34529', '神戸情報大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34530', '神戸ファッション造形大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34531', '関西看護医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34532', '神戸夙川学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34533', '兵庫医療大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34534', '近大姫路大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34535', '神戸常盤大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34601', '帝塚山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34602', '天理大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34603', '奈良大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34604', '奈良産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34605', '畿央大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('34701', '高野山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35301', '岡山商科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35302', '岡山理科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35303', '川崎医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35304', 'くらしき作陽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35305', 'ノートルダム清心女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35306', '美作大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35307', '就実大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35308', '吉備国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35309', '川崎医療福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35310', '山陽学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35311', '倉敷芸術科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35312', '岡山学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35313', '中国学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35314', '環太平洋大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35401', 'エリザベト音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35402', '広島経済大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35403', '広島工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35404', '広島修道大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35405', '広島女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35406', '広島国際学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35407', '広島文教女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35408', '安田女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35409', '福山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35410', '比治山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35411', '福山平成大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35412', '広島文化学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35413', '広島国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35414', '日本赤十字広島看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35415', '広島都市学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35501', '梅光学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35502', '徳山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35503', '東亜大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35504', '山口東京理科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35505', '萩国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35506', '宇部フロンティア大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('35507', '山口学芸大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36101', '四国大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36102', '徳島文理大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36201', '四国学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36202', '高松大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36301', '松山大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36302', '聖カタリナ大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('36303', '松山東雲女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37101', '九州共立大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37102', '九州産業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37103', '九州女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37104', '久留米大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37105', '西南学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37107', '第一薬科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37108', '東和大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37109', '中村学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37110', '西日本工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37111', '福岡大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37112', '福岡工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37113', '九州国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37114', '福岡歯科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37115', '久留米工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37116', '産業医科大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37117', '筑紫女学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37118', '福岡女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37119', '西南女学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37120', '九州情報大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37121', '福岡国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37122', '九州栄養福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37123', '日本赤十字九州国際看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37124', '福岡医療福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37125', '聖マリア学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37126', '福岡女学院看護大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37127', '保健医療経営大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37128', '純真学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37201', '西九州大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37301', '長崎総合科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37302', '長崎純心大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37303', '長崎国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37304', '長崎外国語大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37305', '長崎ウエスレヤン大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37401', '崇城大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37402', '熊本学園大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37404', '尚絅大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37405', '活水女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37406', '九州ルーテル学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37407', '九州看護福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37408', '平成音楽大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37409', '熊本保健科学大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37501', '日本文理大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37502', '別府大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37503', '立命館アジア太平洋大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37601', '南九州大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37602', '宮崎産業経営大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37603', '宮崎国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37604', '九州保健福祉大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37701', '鹿児島国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37702', '第一工業大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37703', '志學館大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('37704', '鹿児島純心女子大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('38001', '沖縄国際大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('38002', '沖縄大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('38004', '沖縄キリスト教学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('38005', '沖縄科学技術大学院大学', '3', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('4011', '大学共同利用機関法人自然科学研究機構', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('40118', '北星学園大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('40122', '北翔大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('40128', '札幌大学女子短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('41201', '岩手県立大学盛岡短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('41204', '盛岡大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('41402', '聖園学園短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42104', '常磐短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42208', '佐野短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42608', '青山学院女子短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42621', '駒沢女子短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42628', '女子栄養大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42629', '女子美術大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42630', '白梅学園短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42647', '東京女子体育短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42652', '東京立正短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42658', '亜細亜大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42663', '日本体育大学女子短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42674', '共立女子短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42675', '文教大学女子短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42676', '大妻女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42677', '昭和女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42686', '日本大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42721', '鎌倉女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42722', '相模女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('42723', '鶴見大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43103', '新潟青陵大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43206', '富山福祉短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43301', '金沢学院短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43305', '金沢星稜大学女子短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43701', '岐阜市立女子短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43706', '中京学院大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43916', '名古屋文理大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('43922', '名古屋短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44309', '京都光華女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44312', '平安女学院大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44315', '大谷大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44316', '京都女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44317', '龍谷大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44405', '大阪学院大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44409', '大阪女学院短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44413', '大阪成蹊短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44417', '関西外国語大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44420', '千里金蘭大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44421', '四條畷学園短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44434', 'プール学院大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44443', '藍野学院短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44512', '神戸常盤大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44521', '兵庫大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('44523', '武庫川女子大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('45411', '安田女子短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('46101', '四国大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('46401', '高知短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('46402', '高知学園短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('47106', '九州女子短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('47117', '筑紫女学園大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('47122', '福岡女学院大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('47605', '別府大学短期大学部', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('47701', '鹿児島県立短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('48001', '沖縄キリスト教短期大学', '4', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('50101', '函館工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('50102', '苫小牧工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('50103', '釧路工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('50104', '旭川工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('51101', '八戸工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('51201', '一関工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('51303', '仙台高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('51401', '秋田工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('51501', '鶴岡工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('51601', '福島工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52101', '茨城工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52201', '小山工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52301', '群馬工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52501', '木更津工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52601', '東京工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52604', '育英工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('52605', '東京都立産業技術高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53101', '長岡工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53203', '富山高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53301', '石川工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53302', '金沢工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53401', '福井工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53601', '長野工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53701', '岐阜工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53801', '沼津工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('53901', '豊田工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54101', '鈴鹿工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54102', '鳥羽商船高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54103', '近畿大学工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54301', '国立舞鶴工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54501', '明石工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54502', '神戸市立工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54601', '奈良工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('54701', '和歌山工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55101', '米子工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55201', '松江工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55301', '津山工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55401', '呉工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55402', '広島商船高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55501', '宇部工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55502', '大島商船高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('55503', '徳山工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('56101', '阿南工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('56203', '香川高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('56301', '新居浜工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('56302', '弓削商船高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('56401', '高知工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57101', '久留米工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57102', '有明工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57103', '北九州工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57301', '佐世保工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57403', '熊本高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57501', '大分工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57601', '都城工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('57701', '鹿児島工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('58001', '沖縄工業高等専門学校', '5', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62501', '大学共同利用機関法人人間文化研究機構　国立歴史民俗博物館', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62601', '国立教育政策研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62603', '大学共同利用機関法人情報・システム研究機構　統計数理研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62608', '大学共同利用機関法人人間文化研究機構　国文学研究資料館', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62611', '大学共同利用機関法人情報・システム研究機構　国立極地研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62615', '大学共同利用機関法人情報・システム研究機構　国立情報学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62616', '大学共同利用機関法人自然科学研究機構　国立天文台', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('62618', '大学共同利用機関法人人間文化研究機構　国立国語研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('63801', '大学共同利用機関法人情報・システム研究機構　国立遺伝学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('63902', '大学共同利用機関法人自然科学研究機構　核融合科学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('63903', '大学共同利用機関法人自然科学研究機構　分子科学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('63904', '大学共同利用機関法人自然科学研究機構　基礎生物学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('63905', '大学共同利用機関法人自然科学研究機構　生理学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('64302', '大学共同利用機関法人人間文化研究機構　国際日本文化研究センター', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('64303', '大学共同利用機関法人人間文化研究機構　総合地球環境学研究所', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('64401', '大学共同利用機関法人人間文化研究機構　国立民族学博物館', '6', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('71303', '（財）かき研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72101', '公益財団法人国際科学振興財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72601', '（財）古代オリエント博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72602', '公益財団法人　がん研究会', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72608', '一般財団法人　小林理学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72611', '公益財団法人実験動物中央研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72622', '公益財団法人東洋文庫', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72623', '公益財団法人徳川黎明会', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72633', '一般財団法人日本生物科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72641', '公益財団法人山階鳥類研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72645', '公益財団法人目黒寄生虫館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72672', '（財）心臓血管研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72692', '（財）深田地質研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72696', '公益財団法人 冲中記念成人病研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72801', '公益財団法人　微生物化学研究会', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72810', '（財）中近東文化センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('72811', '（財）国際メディア研究財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('73901', '（財）日本モンキーセンター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74301', '公益財団法人応用科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74302', '（財）生産開発科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74306', '（財）古代學協会', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74314', '公益財団法人田附興風会', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74330', '公益財団法人国際高等研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74408', '公益財団法人サントリー生命科学財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74415', '公益財団法人大阪バイオサイエンス研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74417', '公益財団法人レーザー技術総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('74502', '（財）建設工学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('75101', '一般財団法人日本きのこセンター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('77102', '公益財団法人アジア成長研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('77103', '（財）ファジィシステム研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('77601', '公益財団法人服部植物研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('80101', '北海道開拓記念館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('80106', '北海道立衛生研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('80107', '独立行政法人国立病院機構函館病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('80122', '地方独立行政法人北海道立総合研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81101', '地方独立行政法人青森県産業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81201', '独立行政法人国立病院機構花巻病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81202', '公益財団法人岩手生物工学研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81204', '地方独立行政法人岩手県工業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81301', '独立行政法人国立病院機構仙台医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81302', '独立行政法人国立病院機構宮城病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81303', '地方独立行政法人宮城県立病院機構宮城県立がんセンター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81304', '独立行政法人国立病院機構西多賀病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81404', '秋田県立脳血管研究センター（研究局）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81406', '秋田県産業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81409', '秋田県総合食品研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81601', '福島県ハイテクプラザ', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('81602', '独立行政法人家畜改良センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82101', '国立研究開発法人国立環境研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82102', '国立研究開発法人防災科学技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82104', '国立研究開発法人国際農林水産業研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82105', '国立研究開発法人森林研究・整備機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82107', '国立研究開発法人農業環境技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82108', '国立研究開発法人物質・材料研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82109', '気象庁気象研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82110', '国立研究開発法人日本原子力研究開発機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82111', '国立研究開発法人農業・食品産業技術総合研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82112', '国立研究開発法人農業生物資源研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82113', '国立研究開発法人建築研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82114', '国立研究開発法人土木研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82115', '国土技術政策総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1);
INSERT INTO `TMST_SHOZOKU_KIKAN` (`SHOZOKU_KIKAN_CD`, `SHOZOKU_KIKAN_NAME`, `SHOZOKU_RUIBETSU_CD`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('82116', '国土地理院（地理地殻活動研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82118', '大学共同利用機関法人高エネルギー加速器研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82121', '一般財団法人総合科学研究機構（総合科学研究センター（総合科学研究室）及び中性子科', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82201', '栃木県立美術館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82301', '群馬県立ぐんま天文台', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82302', '群馬県衛生環境研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82401', '国立研究開発法人理化学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82402', '埼玉県立がんセンター（臨床腫瘍研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82403', '独立行政法人国立女性教育会館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82404', '国立障害者リハビリテーションセンター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82405', '埼玉県環境科学国際センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82406', '防衛医科大学校', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82407', '国立研究開発法人科学技術振興機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82502', '国立研究開発法人量子科学技術研究開発機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82503', '千葉県立中央博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82504', '千葉県がんセンター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82505', '科学警察研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82506', '独立行政法人国立病院機構千葉東病院（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82507', '千葉県衛生研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82508', '公益財団法人かずさＤＮＡ研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82509', '（財）川村理化学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82510', '独立行政法人国立大学財務・経営センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82512', '独立行政法人日本貿易振興機構アジア経済研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82516', '公益財団法人モラロジー研究所研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82601', '国立医薬品食品衛生研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82602', '国立保健医療科学院', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82603', '国立感染症研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82606', '国立研究開発法人国立がん研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82609', '公益財団法人東京都医学総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82610', '国立研究開発法人国立国際医療研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82611', '国立研究開発法人国立精神・神経医療研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82612', '国立研究開発法人国立成育医療研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82613', '独立行政法人国立健康・栄養研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82616', '独立行政法人大学入試センター　', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82617', '独立行政法人国立科学博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82619', '独立行政法人国立文化財機構東京国立博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82620', '独立行政法人国立文化財機構東京文化財研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82621', '独立行政法人国立美術館東京国立近代美術館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82622', '独立行政法人国立美術館国立西洋美術館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82624', '文部科学省科学技術政策研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82625', '農林水産省農林水産政策研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82626', '国立研究開発法人産業技術総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82627', '国立研究開発法人海上・港湾・航空技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82628', '国立社会保障・人口問題研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82629', '独立行政法人労働者健康安全機構労働安全衛生総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82632', '独立行政法人日本スポーツ振興センター（国立スポーツ科学センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82635', '（財）濱野生命科学研究財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82636', '国立研究開発法人情報通信研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82640', '独立行政法人経済産業研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82641', '一般財団法人電力中央研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82642', '国立研究開発法人電子航法研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82643', '独立行政法人国立病院機構東京医療センター（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82644', '公益財団法人神経研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82645', '国立研究開発法人宇宙航空研究開発機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82646', '独立行政法人大学評価・学位授与機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82648', '大学共同利用機関法人自然科学研究機構　岡崎共通研究施設', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82651', '大学共同利用機関法人人間文化研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82654', '公益財団法人朝日生命成人病研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82655', '独立行政法人交通安全環境研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82657', '大学共同利用機関法人情報・システム研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82658', '公益財団法人鉄道総合技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82659', '一般財団法人日本自動車研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82660', '独立行政法人国立病院機構村山医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82663', '公益財団法人明治安田厚生事業団体力医学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82664', '一般財団法人運輸総合研究所総合研究部', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82665', '消防大学校消防研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82669', '公益財団法人地震予知総合研究振興会', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82670', '地方独立行政法人東京都立産業技術研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82674', '地方独立行政法人東京都健康長寿医療センター（東京都健康長寿医療センター研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82675', '大学共同利用機関法人自然科学研究機構（新分野、アストロバイオ、生命創成）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82676', '公益財団法人年金シニアプラン総合研究機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82677', '（財）都市緑化機構　都市緑化技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82678', '(財)海洋生物環境研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82679', '公益財団法人ダイヤ高齢社会研究財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82680', '一般財団法人医療経済研究所・社会保険福祉協会（医療経済研究機構（研究部））', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82686', '東京都立小児総合医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82689', '公益財団法人 中曽根康弘世界平和研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82691', '国際連合大学サステイナビリティ高等研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82701', '横須賀市自然・人文博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82702', '神奈川県立歴史博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82704', '公益財団法人神奈川科学技術アカデミー', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82705', '独立行政法人国立特別支援教育総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82706', '国立研究開発法人海洋研究開発機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82707', '国立研究開発法人港湾空港技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82708', '国立研究開発法人水産研究・教育機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82709', '神奈川県立生命の星・地球博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82710', '独立行政法人国立病院機構相模原病院（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82711', '公益財団法人地球環境戦略研究機関', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82712', '独立行政法人国立病院機構（久里浜医療センター臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82713', '地方独立行政法人神奈川県立病院機構神奈川県立がんセンター（臨床研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82714', '神奈川県衛生研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82715', '神奈川県立近代美術館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82716', '神奈川県温泉地学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82717', '公益財団法人相模中央化学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82718', '地方独立行政法人神奈川県立産業技術総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82723', '防衛大学校（総合教育学群、人文社会科学群、応用科学群、電気情報学群及びシステム工', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82726', '国際連合大学高等研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82731', '公益財団法人川崎市産業振興財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('82801', '公益財団法人結核予防会結核研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83101', '新潟県立歴史博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83102', '一般財団法人日本環境衛生センターアジア大気汚染研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83103', '公益財団法人環日本海経済研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83201', '富山県衛生研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83203', '富山県環境科学センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83205', '富山県工業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83207', '富山県林業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83208', '（財）立山カルデラ砂防博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83301', '独立行政法人国立病院機構金沢医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83401', '（財）若狭湾エネルギー研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83501', '山梨県富士山科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83502', '山梨県森林総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83801', '独立行政法人国立病院機構静岡てんかん・神経医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83802', '静岡県立静岡がんセンター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83804', '静岡県農業試験場', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83811', 'ふじのくに地球環境史ミュージアム', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83901', '愛知県がんセンター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83902', '愛知県心身障害者コロニー発達障害研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83903', '国立研究開発法人国立長寿医療研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83904', '独立行政法人国立病院機構名古屋医療センター（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83905', '独立行政法人国立病院機構東名古屋病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83906', '（財）ファインセラミックスセンター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('83909', '公益財団法人豊田都市交通研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84101', '独立行政法人国立病院機構三重中央医療センター（臨床研究部)', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84201', '滋賀県琵琶湖環境科学研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84202', '滋賀県立琵琶湖博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84203', '滋賀県立成人病センター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84301', '独立行政法人国立文化財機構京都国立博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84302', '独立行政法人国立美術館京都国立近代美術館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84303', '独立行政法人国立病院機構宇多野病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84305', '独立行政法人国立病院機構京都医療センター（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84306', '京都府保健環境研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84308', '京都府農業資源研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84402', '大阪市立自然史博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84404', '国立研究開発法人国立循環器病研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84405', '大阪府教育センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84406', '大阪市立環境科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84407', '地方独立行政法人　大阪健康安全基盤研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84408', '地方独立行政法人大阪府立病院機構大阪母子医療センター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84409', '地方独立行政法人大阪府立病院機構大阪府立成人病センター（研究所）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84411', '独立行政法人国立美術館国立国際美術館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84412', '独立行政法人国立病院機構近畿中央胸部疾患センター（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84414', '独立行政法人国立病院機構大阪医療センター（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84415', '大阪府立産業技術総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84416', '独立行政法人国立病院機構大阪南医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84419', '公益財団法人大和文華館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84420', '国立研究開発法人医薬基盤・健康・栄養研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84431', '地方独立行政法人　大阪産業技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84501', '兵庫県立人と自然の博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84502', '公益財団法人高輝度光科学研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84503', '公益財団法人神戸医療産業都市推進機構', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84504', '（財）ひょうご震災記念２１世紀研究機構人と防災未来センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84505', '神戸市環境保健研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84506', '兵庫県立福祉のまちづくり研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84508', '兵庫県立農林水産技術総合センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84601', '（財）元興寺文化財研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84602', '奈良県立橿原考古学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84603', '独立行政法人国立文化財機構奈良国立博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84604', '独立行政法人国立文化財機構奈良文化財研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('84605', '奈良県農業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85202', '島根県産業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85301', '岡山県農林水産総合センター生物科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85302', '独立行政法人国立病院機構南岡山医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85303', '岡山光量子科学研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85306', '独立行政法人国立病院機構岡山医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85401', '公益財団法人放射線影響研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85402', '独立行政法人国立病院機構呉医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85403', '独立行政法人酒類総合研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('85502', '独立行政法人水産大学校', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('86101', '徳島県立博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('86201', '独立行政法人国立病院機構善通寺病院（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('86202', '独立行政法人国立病院機構香川小児病院', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('86301', '独立行政法人国立病院機構四国がんセンター（臨床研究部)', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('86401', '公益財団法人高知県牧野記念財団', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87101', '北九州市立自然史・歴史博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87102', '独立行政法人国立病院機構九州がんセンター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87103', '公益財団法人九州先端科学技術研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87104', '福岡県工業技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87105', '独立行政法人国立病院機構九州医療センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87106', '独立行政法人国立文化財機構九州国立博物館', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87107', '福岡県保健環境研究所', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87112', '独立行政法人国立病院機構福岡東医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87114', '独立行政法人労働者健康安全機構総合せき損センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87204', '独立行政法人国立病院機構肥前精神医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87205', '佐賀県有明水産振興センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87301', '独立行政法人国立病院機構長崎医療センター（臨床研究センター）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87401', '国立水俣病総合研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87502', '独立行政法人国立病院機構別府医療センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87601', '宮崎県木材利用技術センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('87701', '独立行政法人国立病院機構鹿児島医療センター（臨床研究部）', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('88002', '沖縄県農業研究センター', '7', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92102', '日本電気株式会社　中央研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92601', '株式会社三菱化学生命科学研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92605', '清水建設株式会社技術研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92630', '株式会社ＩＩＪイノベーションインスティテュート（技術研究所）', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92631', '特定非営利活動法人環境防災総合政策研究機構環境・防災研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92644', '株式会社北村メンタルヘルス研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92648', '協同乳業株式会社研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92654', '株式会社LSIメディエンス（アンチドーピングラボラトリー）', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('92704', '日本電信電話株式会社ＮＴＴ物性科学基礎研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('93601', '株式会社ナノ炭素研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94301', '株式会社国際電気通信基礎技術研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94305', '日本電信電話株式会社ＮＴＴコミュニケーション科学基礎研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94307', '特定非営利活動法人 国際斜面災害研究機構', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94309', '特定非営利活動法人量子化学研究協会', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94313', '株式会社関西メディカルネット（関西電力医学研究所）', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94404', '株式会社生命誌研究館', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94407', '大道会森之宮病院神経リハビリテーション研究部', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94408', '株式会社ペプチド研究所', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1),
('94416', '医療法人徳洲会野崎徳洲会病院（附属研究所）', '9', 'system', '2019-10-09 05:14:01.055473', NULL, '0000-00-00 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TMST_SHOZOKU_RUIBETSU`
--

CREATE TABLE `TMST_SHOZOKU_RUIBETSU` (
  `SHOZOKU_RUIBETSU_CD` varchar(10) NOT NULL,
  `SHOZOKU_RUIBETSU_NAME` varchar(200) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000',
  `UPDATED_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_SHOZOKU_RUIBETSU`
--

INSERT INTO `TMST_SHOZOKU_RUIBETSU` (`SHOZOKU_RUIBETSU_CD`, `SHOZOKU_RUIBETSU_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `UPDATED_COUNT`) VALUES
('1', '国立大学 / National University', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('2', '公立大学 / Public University', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('3', '私立大学 / Private University', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('4', '短期大学 / Junior College', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('5', '高等専門学校 / National Institute of Technology', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('6', '大学共同利用機関法人 / Inter-University Research Institute Corporation', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('7', '研究機関 / Research Institute', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1),
('9', 'その他 / Others', 'system', '2019-11-15 06:07:48.660915', NULL, '0000-00-00 00:00:00.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `TMST_STATUS`
--

CREATE TABLE `TMST_STATUS` (
  `STATUS_CD` char(1) NOT NULL,
  `STATUS_NAME` varchar(50) NOT NULL,
  `CREATED_BY` varchar(20) DEFAULT NULL,
  `CREATED_DATE` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `UPDATED_BY` varchar(20) DEFAULT NULL,
  `UPDATED_DATE` timestamp(6) NOT NULL DEFAULT '0000-00-00 00:00:00.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TMST_STATUS`
--

INSERT INTO `TMST_STATUS` (`STATUS_CD`, `STATUS_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`) VALUES
('0', '一時保存', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('1', '仮登録', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('2', '\r\n提出', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('3', '受理', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('4', '更新', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('5', '（未使用\r\n）', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('6', '（未使用）', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('7', '（未使用）', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('8', '取下げ', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479'),
('9', '差戻', 'system', '2019-10-09 05:14:29.885479', NULL, '2019-10-09 05:14:29.885479');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TDAT_ALLOTMENTS`
--
ALTER TABLE `TDAT_ALLOTMENTS`
  ADD PRIMARY KEY (`SHINSEI_NO`);

--
-- Indexes for table `TDAT_APPLICATION_REPORT`
--
ALTER TABLE `TDAT_APPLICATION_REPORT`
  ADD PRIMARY KEY (`SHINSEI_NO`);

--
-- Indexes for table `TDAT_EVALUATION`
--
ALTER TABLE `TDAT_EVALUATION`
  ADD PRIMARY KEY (`SHINSEI_NO`,`RIYOSHA_NO`);

--
-- Indexes for table `TDAT_EVALUATION_ITEM`
--
ALTER TABLE `TDAT_EVALUATION_ITEM`
  ADD PRIMARY KEY (`SHINSEI_NO`,`RIYOSHA_NO`,`ITEM_NO`);

--
-- Indexes for table `TDAT_EXPENSES`
--
ALTER TABLE `TDAT_EXPENSES`
  ADD PRIMARY KEY (`EXPENSES_NO`);

--
-- Indexes for table `TDAT_EXPENSES_ALLOTMENT`
--
ALTER TABLE `TDAT_EXPENSES_ALLOTMENT`
  ADD PRIMARY KEY (`SHINSEI_NO`,`EXPENSES_KBN`);

--
-- Indexes for table `TDAT_FUND`
--
ALTER TABLE `TDAT_FUND`
  ADD PRIMARY KEY (`SHIKIN_UKEIRE_NO`);

--
-- Indexes for table `TDAT_IDO_APPLICATION`
--
ALTER TABLE `TDAT_IDO_APPLICATION`
  ADD PRIMARY KEY (`IDO_NO`);

--
-- Indexes for table `TDAT_JUDGEMENT`
--
ALTER TABLE `TDAT_JUDGEMENT`
  ADD PRIMARY KEY (`SHINSEI_NO`);

--
-- Indexes for table `TDAT_KENKYU_GYOSEKI`
--
ALTER TABLE `TDAT_KENKYU_GYOSEKI`
  ADD PRIMARY KEY (`KENKYU_GYOSEKI_NO`);

--
-- Indexes for table `TDAT_KENKYU_KEIREKI`
--
ALTER TABLE `TDAT_KENKYU_KEIREKI`
  ADD PRIMARY KEY (`KENKYU_KEIREKI_NO`);

--
-- Indexes for table `TDAT_KOBO`
--
ALTER TABLE `TDAT_KOBO`
  ADD PRIMARY KEY (`KOBO_NO`);

--
-- Indexes for table `TDAT_MAIL_REQUEST`
--
ALTER TABLE `TDAT_MAIL_REQUEST`
  ADD PRIMARY KEY (`MAIL_REQUEST_NO`);

--
-- Indexes for table `TDAT_MAIL_STATUS`
--
ALTER TABLE `TDAT_MAIL_STATUS`
  ADD PRIMARY KEY (`MAIL_REQUEST_NO`,`MAIL_ADDRESS`);

--
-- Indexes for table `TDAT_MAIL_TEMPLATE`
--
ALTER TABLE `TDAT_MAIL_TEMPLATE`
  ADD PRIMARY KEY (`MAIL_TEMPLATE_NO`);

--
-- Indexes for table `TDAT_NINSYO`
--
ALTER TABLE `TDAT_NINSYO`
  ADD PRIMARY KEY (`RIYOSHA_NO`);

--
-- Indexes for table `TDAT_NOTICE`
--
ALTER TABLE `TDAT_NOTICE`
  ADD PRIMARY KEY (`NOTICE_NO`);

--
-- Indexes for table `TDAT_NOTICE_TEMPLATE`
--
ALTER TABLE `TDAT_NOTICE_TEMPLATE`
  ADD PRIMARY KEY (`NOTICE_TEMPLATE_NO`);

--
-- Indexes for table `TDAT_NOTIFICATION_TARGET`
--
ALTER TABLE `TDAT_NOTIFICATION_TARGET`
  ADD PRIMARY KEY (`NOTIFICATION_NO`);

--
-- Indexes for table `TDAT_NOTIFICATION_TARGET_MAIL`
--
ALTER TABLE `TDAT_NOTIFICATION_TARGET_MAIL`
  ADD PRIMARY KEY (`SEPARATE_NO`);

--
-- Indexes for table `TDAT_NOTIFICATION_TARGET_SUBJECT`
--
ALTER TABLE `TDAT_NOTIFICATION_TARGET_SUBJECT`
  ADD PRIMARY KEY (`NOTIFICATION_NO`);

--
-- Indexes for table `TDAT_NUMBERING`
--
ALTER TABLE `TDAT_NUMBERING`
  ADD PRIMARY KEY (`NENDO`,`KIKAN_CD`,`KENKYU_SYUBETSU_CD`,`THEME_CD`);

--
-- Indexes for table `TDAT_PERFORMANCE_CONFERENCE`
--
ALTER TABLE `TDAT_PERFORMANCE_CONFERENCE`
  ADD PRIMARY KEY (`PERFORMANCE_NO`,`CONFERENCE_NO`);

--
-- Indexes for table `TDAT_PERFORMANCE_EXPERIMENT`
--
ALTER TABLE `TDAT_PERFORMANCE_EXPERIMENT`
  ADD PRIMARY KEY (`PERFORMNCE_NO`,`EXPERIMENT_NO`);

--
-- Indexes for table `TDAT_PERFORMANCE_FUNDS`
--
ALTER TABLE `TDAT_PERFORMANCE_FUNDS`
  ADD PRIMARY KEY (`PERFORMANCE_NO`,`FUND_NO`);

--
-- Indexes for table `TDAT_PERFORMANCE_MONOGRAPH`
--
ALTER TABLE `TDAT_PERFORMANCE_MONOGRAPH`
  ADD PRIMARY KEY (`PERFORMANCE_NO`,`MONOGRAPH_NO`);

--
-- Indexes for table `TDAT_PERFORMANCE_REPORT`
--
ALTER TABLE `TDAT_PERFORMANCE_REPORT`
  ADD PRIMARY KEY (`PERFORMANCE_NO`);

--
-- Indexes for table `TDAT_PROPERTY_RIGHTS`
--
ALTER TABLE `TDAT_PROPERTY_RIGHTS`
  ADD PRIMARY KEY (`PERFORMANCE_NO`,`PROPERTY_RIGHTS_NO`);

--
-- Indexes for table `TDAT_REPORT`
--
ALTER TABLE `TDAT_REPORT`
  ADD PRIMARY KEY (`REPORT_NO`);

--
-- Indexes for table `TDAT_REPORT_ISSUE`
--
ALTER TABLE `TDAT_REPORT_ISSUE`
  ADD PRIMARY KEY (`KIKAN_CD`);

--
-- Indexes for table `TDAT_RIYOSYA`
--
ALTER TABLE `TDAT_RIYOSYA`
  ADD PRIMARY KEY (`RIYOSHA_NO`);

--
-- Indexes for table `TDAT_SANKA_KENKYUIN`
--
ALTER TABLE `TDAT_SANKA_KENKYUIN`
  ADD PRIMARY KEY (`SANKA_KENKYUSHA_NO`);

--
-- Indexes for table `TDAT_SHINSEI`
--
ALTER TABLE `TDAT_SHINSEI`
  ADD PRIMARY KEY (`SHINSEI_NO`,`STATUS_CD`);

--
-- Indexes for table `TDAT_SIKIBETU`
--
ALTER TABLE `TDAT_SIKIBETU`
  ADD PRIMARY KEY (`RIYOSHA_NO`,`VALID_DATE`);

--
-- Indexes for table `TMST_EXOENSES`
--
ALTER TABLE `TMST_EXOENSES`
  ADD PRIMARY KEY (`KIKAN_CD`,`KENKYU_SYUBETSU_CD`,`EXPENSES_KBN`);

--
-- Indexes for table `TMST_EXOENSES_NAME`
--
ALTER TABLE `TMST_EXOENSES_NAME`
  ADD PRIMARY KEY (`EXPENSES_KBN`);

--
-- Indexes for table `TMST_IDO_STATUS`
--
ALTER TABLE `TMST_IDO_STATUS`
  ADD PRIMARY KEY (`IDO_STATUS_CD`);

--
-- Indexes for table `TMST_KENKYU_BUNYA`
--
ALTER TABLE `TMST_KENKYU_BUNYA`
  ADD PRIMARY KEY (`KIKAN_CD`,`BUNYA_KBN`,`BUNYA_CD`);

--
-- Indexes for table `TMST_KENKYU_SYUBETSU`
--
ALTER TABLE `TMST_KENKYU_SYUBETSU`
  ADD PRIMARY KEY (`KIKAN_CD`,`KENKYU_SYUBETSU_CD`);

--
-- Indexes for table `TMST_KENKYU_THEME`
--
ALTER TABLE `TMST_KENKYU_THEME`
  ADD PRIMARY KEY (`KIKAN_CD`,`NENDO`,`KENKYU_SYUBETSU_CD`,`THEME_CD`);

--
-- Indexes for table `TMST_KIKAN`
--
ALTER TABLE `TMST_KIKAN`
  ADD PRIMARY KEY (`KIKAN_CD`);

--
-- Indexes for table `TMST_NATIONAL`
--
ALTER TABLE `TMST_NATIONAL`
  ADD PRIMARY KEY (`NATIONAL_CD`);

--
-- Indexes for table `TMST_PERMISSION`
--
ALTER TABLE `TMST_PERMISSION`
  ADD PRIMARY KEY (`PERMISSION_CD`);

--
-- Indexes for table `TMST_REPLI_CHARACTER`
--
ALTER TABLE `TMST_REPLI_CHARACTER`
  ADD PRIMARY KEY (`CHAR_NO`),
  ADD KEY `KY1` (`NOTICE_ID`,`NOTICE_CD`) USING BTREE;

--
-- Indexes for table `TMST_SHINSEI_TYPE`
--
ALTER TABLE `TMST_SHINSEI_TYPE`
  ADD PRIMARY KEY (`SHINSEI_TYPE_CD`);

--
-- Indexes for table `TMST_SHOZOKU_BUKYOKU`
--
ALTER TABLE `TMST_SHOZOKU_BUKYOKU`
  ADD PRIMARY KEY (`SHOZOKU_BUKYOKU_CD`);

--
-- Indexes for table `TMST_SHOZOKU_KIKAN`
--
ALTER TABLE `TMST_SHOZOKU_KIKAN`
  ADD PRIMARY KEY (`SHOZOKU_KIKAN_CD`);

--
-- Indexes for table `TMST_SHOZOKU_RUIBETSU`
--
ALTER TABLE `TMST_SHOZOKU_RUIBETSU`
  ADD PRIMARY KEY (`SHOZOKU_RUIBETSU_CD`);

--
-- Indexes for table `TMST_STATUS`
--
ALTER TABLE `TMST_STATUS`
  ADD PRIMARY KEY (`STATUS_CD`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `TDAT_EXPENSES`
--
ALTER TABLE `TDAT_EXPENSES`
  MODIFY `EXPENSES_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `TDAT_FUND`
--
ALTER TABLE `TDAT_FUND`
  MODIFY `SHIKIN_UKEIRE_NO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_IDO_APPLICATION`
--
ALTER TABLE `TDAT_IDO_APPLICATION`
  MODIFY `IDO_NO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_KENKYU_GYOSEKI`
--
ALTER TABLE `TDAT_KENKYU_GYOSEKI`
  MODIFY `KENKYU_GYOSEKI_NO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_KENKYU_KEIREKI`
--
ALTER TABLE `TDAT_KENKYU_KEIREKI`
  MODIFY `KENKYU_KEIREKI_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `TDAT_MAIL_REQUEST`
--
ALTER TABLE `TDAT_MAIL_REQUEST`
  MODIFY `MAIL_REQUEST_NO` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_MAIL_TEMPLATE`
--
ALTER TABLE `TDAT_MAIL_TEMPLATE`
  MODIFY `MAIL_TEMPLATE_NO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_NOTICE`
--
ALTER TABLE `TDAT_NOTICE`
  MODIFY `NOTICE_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `TDAT_NOTIFICATION_TARGET`
--
ALTER TABLE `TDAT_NOTIFICATION_TARGET`
  MODIFY `NOTIFICATION_NO` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_NOTIFICATION_TARGET_MAIL`
--
ALTER TABLE `TDAT_NOTIFICATION_TARGET_MAIL`
  MODIFY `SEPARATE_NO` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TDAT_SANKA_KENKYUIN`
--
ALTER TABLE `TDAT_SANKA_KENKYUIN`
  MODIFY `SANKA_KENKYUSHA_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `TDAT_SHINSEI`
--
ALTER TABLE `TDAT_SHINSEI`
  MODIFY `SHINSEI_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
