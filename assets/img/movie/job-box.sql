-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2023 at 12:26 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job-box`
--

-- --------------------------------------------------------

--
-- Table structure for table `applicants`
--

CREATE TABLE `applicants` (
  `id` bigint UNSIGNED NOT NULL,
  `job_id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `interview_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applicants`
--

INSERT INTO `applicants` (`id`, `job_id`, `company_id`, `name`, `email`, `phone_number`, `message`, `status`, `interview_date`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Lilah Riggs', 'hepazu@mailinator.com', '11 046 33 18 88', 'Anim inventore hic p', 'Pending', NULL, '2023-03-17 12:48:23', '2023-03-17 12:48:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_levels` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_salary` double DEFAULT NULL,
  `expected_salary` double DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_from_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `category_id`, `name`, `email`, `contact_number`, `website`, `bio`, `experience`, `education_levels`, `current_salary`, `expected_salary`, `country`, `city`, `address`, `address_from_map`, `latitude`, `longitude`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 'Candidate', 'candidate@sidora.eu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$SYg6KHFlbHKVdjSmGi8msuwSwriXn7vuc4M1GnVVWlKtrISJjKnVy', 'mULYS1jmZWWYdqchX1WlxWXxOaB3crG0akhnnELsUQX8p6yNy50zFW3FpxPw', '2023-03-03 08:57:09', '2023-03-03 08:57:09', NULL),
(2, NULL, 'testCandidte', 'hajdardushi@sidora.eu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$wGp5ouxPF.Nna5qCcB.OcuUNAQLqy/M9ItJKvzxvzWysQqm8u0jPa', '5QdIZ0OM12RX81x8gvudIEvIIwCLde6FDgO0SP2dVf79GtrbU8vIRG1gSlg1', '2023-03-17 12:43:44', '2023-03-17 12:43:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `candidates_languages`
--

CREATE TABLE `candidates_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `candidates_id` bigint UNSIGNED NOT NULL,
  `languages_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidates_skills`
--

CREATE TABLE `candidates_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `candidates_id` bigint UNSIGNED NOT NULL,
  `skills_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `_lft` int UNSIGNED NOT NULL DEFAULT '0',
  `_rgt` int UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'UI/UX designer', NULL, 3, 4, NULL, '2023-03-03 08:57:04', '2023-03-17 12:24:17', NULL),
(2, 'Mobile Developer', NULL, 1, 2, NULL, '2023-03-03 08:57:05', '2023-03-03 08:57:05', NULL),
(3, 'Web Developer', NULL, 5, 6, NULL, '2023-03-03 08:57:05', '2023-03-03 08:57:05', NULL),
(4, 'Aliquid Nam necessit', NULL, 7, 8, NULL, '2023-03-17 12:48:08', '2023-03-17 12:48:08', NULL),
(5, 'asdad', NULL, 9, 10, NULL, '2023-03-17 12:48:08', '2023-03-17 12:48:08', NULL),
(6, 'asd', NULL, 11, 12, NULL, '2023-03-17 12:48:08', '2023-03-17 12:48:08', NULL),
(7, 'asdasd', NULL, 13, 14, NULL, '2023-03-17 12:48:08', '2023-03-17 12:48:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `ceo_president` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_founded` int DEFAULT NULL,
  `number_office` int DEFAULT NULL,
  `number_employee` int DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_from_map` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `postal_code` int DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `content`, `ceo_president`, `email`, `phone_number`, `website`, `year_founded`, `number_office`, `number_employee`, `country`, `city`, `address`, `address_from_map`, `latitude`, `longitude`, `postal_code`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tanner and Gutierrez LLC', 'Molestias sit dolor', NULL, 'Moody and Morrison Plc', 'sifijec@mailinator.com', '19 188 86 59 57', 'https://www.subafawa.ca', 1986, 38, 934, 'KZ', 'ATY', 'Deleniti est veniam', 'East St, Bedminster, Bristol BS3 4JY, UK', 51.443679, -2.5943169, 59, 'Pending', '2023-03-17 12:46:34', '2023-03-17 12:46:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courses_certificates_skills`
--

CREATE TABLE `courses_certificates_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `courses_certificates_id` bigint UNSIGNED NOT NULL,
  `skills_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_certificates`
--

CREATE TABLE `course_certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `resume_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_separator` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placement` enum('before','after') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `symbol`, `decimal_separator`, `thousand_separator`, `placement`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'United States Dollar', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(2, 'Euro', '€', '.', ' ', 'before', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(3, 'Swiss Franc', 'CHF', '.', '', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(4, 'Japanese Yen', '¥', '.', ',', 'before', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(5, 'British Pound', '£', '.', ',', 'before', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(6, 'Chinese Yuan', '¥', '.', ',', 'before', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(7, 'Canadian Dollar', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(8, 'Australian Dollar', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(9, 'New Zealand Dollar', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(10, 'Indian Rupee', '₹', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(11, 'South African Rand', 'R', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(12, 'Brazilian Real', 'R$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(13, 'Mexican Peso', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(14, 'Russian Ruble', '₽', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(15, 'Singapore Dollar', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(16, 'Hong Kong Dollar', '$', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(17, 'South Korean Won', '₩', '.', ',', 'after', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `experience_industries`
--

CREATE TABLE `experience_industries` (
  `id` bigint UNSIGNED NOT NULL,
  `resume_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `years` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `company_id` bigint UNSIGNED DEFAULT NULL,
  `recruiter_id` bigint UNSIGNED DEFAULT NULL,
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `number_position` int DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_from_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `hide_salary` tinyint(1) NOT NULL DEFAULT '0',
  `salary_from` double DEFAULT NULL,
  `salary_to` double DEFAULT NULL,
  `salary_range` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `job_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_apply` text COLLATE utf8mb4_unicode_ci,
  `job_experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `company_id`, `recruiter_id`, `currency_id`, `title`, `description`, `content`, `number_position`, `country`, `city`, `address`, `address_from_map`, `latitude`, `longitude`, `hide_salary`, `salary_from`, `salary_to`, `salary_range`, `start_date`, `expire_date`, `job_type`, `url_apply`, `job_experience`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, NULL, 'Vitae quia ut conseq', 'Aliquid voluptatem e', '<p>Dolores mollitia arc.</p>', 898, 'KI', 'Central Gilberts', 'asd', '5, 5 Garibaldi, Prishtina 10000', 42.6595493, 21.158378, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'https://13810.hostserv.eu:8443/smb/file-manager/list/domainId/70', NULL, 'Published', '2023-03-17 12:48:08', '2023-03-17 12:48:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `jobs_id` bigint UNSIGNED NOT NULL,
  `categories_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `jobs_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '2023-03-17 12:48:08', '2023-03-17 12:48:08'),
(2, 1, 5, '2023-03-17 12:48:08', '2023-03-17 12:48:08'),
(3, 1, 6, '2023-03-17 12:48:08', '2023-03-17 12:48:08'),
(4, 1, 7, '2023-03-17 12:48:08', '2023-03-17 12:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_skills`
--

CREATE TABLE `jobs_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `jobs_id` bigint UNSIGNED NOT NULL,
  `skills_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_skills`
--

INSERT INTO `jobs_skills` (`id`, `jobs_id`, `skills_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-03-17 12:48:08', '2023-03-17 12:48:08'),
(2, 1, 2, '2023-03-17 12:48:08', '2023-03-17 12:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `native_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `native_name`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Abkhaz', 'аҧсуа', 'ab', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(2, 'Afar', 'Afaraf', 'aa', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(3, 'Afrikaans', 'Afrikaans', 'af', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(4, 'Akan', 'Akan', 'ak', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(5, 'Albanian', 'Shqip', 'sq', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(6, 'Amharic', 'አማርኛ', 'am', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(7, 'Arabic', 'العربية', 'ar', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(8, 'Aragonese', 'Aragonés', 'an', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(9, 'Armenian', 'Հայերեն', 'hy', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(10, 'Assamese', 'অসমীয়া', 'as', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(11, 'Avaric', 'авар мацӀ, магӀарул мацӀ', 'av', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(12, 'Avestan', 'avesta', 'ae', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(13, 'Aymara', 'aymar aru', 'ay', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(14, 'Azerbaijani', 'azərbaycan dili', 'az', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(15, 'Bambara', 'bamanankan', 'bm', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(16, 'Bashkir', 'башҡорт теле', 'ba', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(17, 'Basque', 'euskara, euskera', 'eu', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(18, 'Belarusian', 'Беларуская', 'be', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(19, 'Bengali', 'বাংলা', 'bn', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(20, 'Bihari', 'भोजपुरी', 'bh', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(21, 'Bislama', 'Bislama', 'bi', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(22, 'Bosnian', 'bosanski jezik', 'bs', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(23, 'Breton', 'brezhoneg', 'br', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(24, 'Bulgarian', 'български език', 'bg', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(25, 'Burmese', 'ဗမာစာ', 'my', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(26, 'Catalan; Valencian', 'Català', 'ca', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(27, 'Chamorro', 'Chamoru', 'ch', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(28, 'Chechen', 'нохчийн мотт', 'ce', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(29, 'Chichewa; Chewa; Nyanja', 'chiCheŵa, chinyanja', 'ny', '2023-03-03 08:57:03', '2023-03-03 08:57:03', NULL),
(30, 'Chinese', '中文 (Zhōngwén), 汉语, 漢語', 'zh', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(31, 'Chuvash', 'чӑваш чӗлхи', 'cv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(32, 'Cornish', 'Kernewek', 'kw', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(33, 'Corsican', 'corsu, lingua corsa', 'co', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(34, 'Cree', 'ᓀᐦᐃᔭᐍᐏᐣ', 'cr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(35, 'Croatian', 'hrvatski', 'hr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(36, 'Czech', 'česky, čeština', 'cs', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(37, 'Danish', 'dansk', 'da', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(38, 'Divehi; Dhivehi; Maldivian;', 'ދިވެހި', 'dv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(39, 'Dutch', 'Nederlands, Vlaams', 'nl', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(40, 'English', 'English', 'en', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(41, 'Esperanto', 'Esperanto', 'eo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(42, 'Estonian', 'eesti, eesti keel', 'et', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(43, 'Ewe', 'Eʋegbe', 'ee', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(44, 'Faroese', 'føroyskt', 'fo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(45, 'Fijian', 'vosa Vakaviti', 'fj', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(46, 'Finnish', 'suomi, suomen kieli', 'fi', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(47, 'French', 'français, langue française', 'fr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(48, 'Fula; Fulah; Pulaar; Pular', 'Fulfulde, Pulaar, Pular', 'ff', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(49, 'Galician', 'Galego', 'gl', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(50, 'Georgian', 'ქართული', 'ka', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(51, 'German', 'Deutsch', 'de', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(52, 'Greek, Modern', 'Ελληνικά', 'el', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(53, 'Guaraní', 'Avañeẽ', 'gn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(54, 'Gujarati', 'ગુજરાતી', 'gu', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(55, 'Haitian; Haitian Creole', 'Kreyòl ayisyen', 'ht', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(56, 'Hausa', 'Hausa, هَوُسَ', 'ha', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(57, 'Hebrew (modern)', 'עברית', 'he', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(58, 'Herero', 'Otjiherero', 'hz', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(59, 'Hindi', 'हिन्दी, हिंदी', 'hi', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(60, 'Hiri Motu', 'Hiri Motu', 'ho', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(61, 'Hungarian', 'Magyar', 'hu', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(62, 'Interlingua', 'Interlingua', 'ia', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(63, 'Indonesian', 'Bahasa Indonesia', 'id', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(64, 'Interlingue', 'Originally called Occidental; then Interlingue after WWII', 'ie', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(65, 'Irish', 'Gaeilge', 'ga', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(66, 'Igbo', 'Asụsụ Igbo', 'ig', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(67, 'Inupiaq', 'Iñupiaq, Iñupiatun', 'ik', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(68, 'Ido', 'Ido', 'io', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(69, 'Icelandic', 'Íslenska', 'is', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(70, 'Italian', 'Italiano', 'it', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(71, 'Inuktitut', 'ᐃᓄᒃᑎᑐᑦ', 'iu', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(72, 'Japanese', '日本語 (にほんご／にっぽんご)', 'ja', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(73, 'Javanese', 'basa Jawa', 'jv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(74, 'Kalaallisut, Greenlandic', 'kalaallisut, kalaallit oqaasii', 'kl', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(75, 'Kannada', 'ಕನ್ನಡ', 'kn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(76, 'Kanuri', 'Kanuri', 'kr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(77, 'Kashmiri', 'कश्मीरी, كشميري‎', 'ks', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(78, 'Kazakh', 'Қазақ тілі', 'kk', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(79, 'Khmer', 'ភាសាខ្មែរ', 'km', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(80, 'Kikuyu, Gikuyu', 'Gĩkũyũ', 'ki', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(81, 'Kinyarwanda', 'Ikinyarwanda', 'rw', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(82, 'Kirghiz, Kyrgyz', 'кыргыз тили', 'ky', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(83, 'Komi', 'коми кыв', 'kv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(84, 'Kongo', 'KiKongo', 'kg', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(85, 'Korean', '한국어 (韓國語), 조선말 (朝鮮語)', 'ko', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(86, 'Kurdish', 'Kurdî, كوردی‎', 'ku', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(87, 'Kwanyama, Kuanyama', 'Kuanyama', 'kj', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(88, 'Latin', 'latine, lingua latina', 'la', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(89, 'Luxembourgish, Letzeburgesch', 'Lëtzebuergesch', 'lb', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(90, 'Luganda', 'Luganda', 'lg', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(91, 'Limburgish, Limburgan, Limburger', 'Limburgs', 'li', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(92, 'Lingala', 'Lingála', 'ln', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(93, 'Lao', 'ພາສາລາວ', 'lo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(94, 'Lithuanian', 'lietuvių kalba', 'lt', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(95, 'Luba-Katanga', '', 'lu', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(96, 'Latvian', 'latviešu valoda', 'lv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(97, 'Manx', 'Gaelg, Gailck', 'gv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(98, 'Macedonian', 'македонски јазик', 'mk', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(99, 'Malagasy', 'Malagasy fiteny', 'mg', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(100, 'Malay', 'bahasa Melayu, بهاس ملايو‎', 'ms', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(101, 'Malayalam', 'മലയാളം', 'ml', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(102, 'Maltese', 'Malti', 'mt', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(103, 'Māori', 'te reo Māori', 'mi', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(104, 'Marathi (Marāṭhī)', 'मराठी', 'mr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(105, 'Marshallese', 'Kajin M̧ajeļ', 'mh', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(106, 'Mongolian', 'монгол', 'mn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(107, 'Nauru', 'Ekakairũ Naoero', 'na', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(108, 'Navajo, Navaho', 'Diné bizaad, Dinékʼehǰí', 'nv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(109, 'Norwegian Bokmål', 'Norsk bokmål', 'nb', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(110, 'North Ndebele', 'isiNdebele', 'nd', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(111, 'Nepali', 'नेपाली', 'ne', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(112, 'Ndonga', 'Owambo', 'ng', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(113, 'Norwegian Nynorsk', 'Norsk nynorsk', 'nn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(114, 'Norwegian', 'Norsk', 'no', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(115, 'Nuosu', 'ꆈꌠ꒿ Nuosuhxop', 'ii', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(116, 'South Ndebele', 'isiNdebele', 'nr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(117, 'Occitan', 'Occitan', 'oc', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(118, 'Ojibwe, Ojibwa', 'ᐊᓂᔑᓈᐯᒧᐎᓐ', 'oj', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(119, 'Old Church Slavonic, Church Slavic, Church Slavonic, Old Bulgarian, Old Slavonic', 'ѩзыкъ словѣньскъ', 'cu', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(120, 'Oromo', 'Afaan Oromoo', 'om', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(121, 'Oriya', 'ଓଡ଼ିଆ', 'or', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(122, 'Ossetian, Ossetic', 'ирон æвзаг', 'os', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(123, 'Panjabi, Punjabi', 'ਪੰਜਾਬੀ, پنجابی‎', 'pa', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(124, 'Pāli', 'पाऴि', 'pi', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(125, 'Persian', 'فارسی', 'fa', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(126, 'Polish', 'polski', 'pl', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(127, 'Pashto, Pushto', 'پښتو', 'ps', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(128, 'Portuguese', 'Português', 'pt', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(129, 'Quechua', 'Runa Simi, Kichwa', 'qu', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(130, 'Romansh', 'rumantsch grischun', 'rm', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(131, 'Kirundi', 'kiRundi', 'rn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(132, 'Romanian, Moldavian, Moldovan', 'română', 'ro', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(133, 'Russian', 'русский язык', 'ru', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(134, 'Sanskrit (Saṁskṛta)', 'संस्कृतम्', 'sa', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(135, 'Sardinian', 'sardu', 'sc', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(136, 'Sindhi', 'सिन्धी, سنڌي، سندھی‎', 'sd', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(137, 'Northern Sami', 'Davvisámegiella', 'se', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(138, 'Samoan', 'gagana faa Samoa', 'sm', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(139, 'Sango', 'yângâ tî sängö', 'sg', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(140, 'Serbian', 'српски језик', 'sr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(141, 'Scottish Gaelic; Gaelic', 'Gàidhlig', 'gd', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(142, 'Shona', 'chiShona', 'sn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(143, 'Sinhala, Sinhalese', 'සිංහල', 'si', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(144, 'Slovak', 'slovenčina', 'sk', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(145, 'Slovene', 'slovenščina', 'sl', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(146, 'Somali', 'Soomaaliga, af Soomaali', 'so', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(147, 'Southern Sotho', 'Sesotho', 'st', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(148, 'Spanish; Castilian', 'español, castellano', 'es', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(149, 'Sundanese', 'Basa Sunda', 'su', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(150, 'Swahili', 'Kiswahili', 'sw', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(151, 'Swati', 'SiSwati', 'ss', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(152, 'Swedish', 'svenska', 'sv', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(153, 'Tamil', 'தமிழ்', 'ta', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(154, 'Telugu', 'తెలుగు', 'te', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(155, 'Tajik', 'тоҷикӣ, toğikī, تاجیکی‎', 'tg', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(156, 'Thai', 'ไทย', 'th', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(157, 'Tigrinya', 'ትግርኛ', 'ti', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(158, 'Tibetan Standard, Tibetan, Central', 'བོད་ཡིག', 'bo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(159, 'Turkmen', 'Türkmen, Түркмен', 'tk', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(160, 'Tagalog', 'Wikang Tagalog, ᜏᜒᜃᜅ᜔ ᜆᜄᜎᜓᜄ᜔', 'tl', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(161, 'Tswana', 'Setswana', 'tn', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(162, 'Tonga (Tonga Islands)', 'faka Tonga', 'to', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(163, 'Turkish', 'Türkçe', 'tr', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(164, 'Tsonga', 'Xitsonga', 'ts', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(165, 'Tatar', 'татарча, tatarça, تاتارچا‎', 'tt', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(166, 'Twi', 'Twi', 'tw', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(167, 'Tahitian', 'Reo Tahiti', 'ty', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(168, 'Uighur, Uyghur', 'Uyƣurqə, ئۇيغۇرچە‎', 'ug', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(169, 'Ukrainian', 'українська', 'uk', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(170, 'Urdu', 'اردو', 'ur', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(171, 'Uzbek', 'zbek, Ўзбек, أۇزبېك‎', 'uz', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(172, 'Venda', 'Tshivenḓa', 've', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(173, 'Vietnamese', 'Tiếng Việt', 'vi', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(174, 'Volapük', 'Volapük', 'vo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(175, 'Walloon', 'Walon', 'wa', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(176, 'Welsh', 'Cymraeg', 'cy', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(177, 'Wolof', 'Wollof', 'wo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(178, 'Western Frisian', 'Frysk', 'fy', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(179, 'Xhosa', 'isiXhosa', 'xh', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(180, 'Yiddish', 'ייִדיש', 'yi', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(181, 'Yoruba', 'Yorùbá', 'yo', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL),
(182, 'Zhuang, Chuang', 'Saɯ cueŋƅ, Saw cuengh', 'za', '2023-03-03 08:57:04', '2023-03-03 08:57:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '3792ac00-a37f-4710-9b9b-11664632036b', 'user_avatar', '288962291_1417682858748034_681713206416045845_n', '288962291_1417682858748034_681713206416045845_n.jpg', 'image/jpeg', 'public', 'public', 156720, '[]', '[]', '[]', '[]', 1, '2023-03-03 11:16:35', '2023-03-03 11:16:35');

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE `meta` (
  `id` int UNSIGNED NOT NULL,
  `metable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metable_id` int UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `metable_type`, `metable_id`, `type`, `key`, `value`) VALUES
(1, 'App\\Models\\Company', 1, 'string', 'facebook', 'https://www.vihyrafuh.co'),
(2, 'App\\Models\\Company', 1, 'string', 'twitter', 'https://www.zufy.me'),
(3, 'App\\Models\\Company', 1, 'string', 'linkedin', 'https://www.fyjaz.cc'),
(4, 'App\\Models\\Company', 1, 'string', 'instagram', 'https://www.zejo.tv'),
(5, 'App\\Models\\Resume', 1, 'string', 'facebook', 'Sunt atque sed enim'),
(6, 'App\\Models\\Resume', 1, 'string', 'instagram', 'Dolor est qui volupt'),
(7, 'App\\Models\\Resume', 1, 'string', 'linkedin', 'Quia dicta est volup'),
(8, 'App\\Models\\Resume', 1, 'string', 'twitter', 'Enim voluptatem aspe');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_01_000000_create_meta_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_01_24_000000_modify_meta_indexes', 1),
(7, '2022_11_18_080308_create_recruiters_table', 1),
(8, '2022_11_18_080347_create_categories_table', 1),
(9, '2022_12_05_082544_create_skills_table', 1),
(10, '2022_12_06_141804_create_media_table', 1),
(11, '2022_12_07_100907_create_candidates_table', 1),
(12, '2022_12_19_135215_create_resumes_table', 1),
(13, '2022_12_19_140938_create_companies_table', 1),
(14, '2022_12_19_141011_create_languages_table', 1),
(15, '2022_12_19_141121_create_course_certificates_table', 1),
(16, '2022_12_19_141622_create_resumes_languages_table', 1),
(17, '2022_12_21_144427_create_courses_certificates_skills_table', 1),
(18, '2022_12_27_081719_create_experience_industries_table', 1),
(19, '2022_12_28_121647_create_candidates_languages_table', 1),
(20, '2022_12_29_140208_create_currencies_table', 1),
(21, '2023_01_05_075330_create_candidates_skills_table', 1),
(22, '2023_01_08_231942_create_sessions_table', 1),
(23, '2023_01_23_211128_create_jobs_table', 1),
(24, '2023_01_23_212105_create_jobs_skills_table', 1),
(25, '2023_01_24_082244_create_jobs_categories_table', 1),
(26, '2023_01_24_092937_create_recruiters_companies_table', 1),
(27, '2023_01_27_085118_create_applicants_table', 1),
(28, '2023_01_30_082148_create_resume_companies_table', 1),
(29, '2023_01_30_082238_create_resume_companies_skills_table', 1),
(30, '2023_02_15_090358_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(61, 'App\\Models\\Candidate', 1),
(104, 'App\\Models\\Candidate', 1),
(105, 'App\\Models\\Candidate', 1),
(106, 'App\\Models\\Candidate', 1),
(107, 'App\\Models\\Candidate', 1),
(121, 'App\\Models\\Recruiter', 1),
(139, 'App\\Models\\Recruiter', 1),
(148, 'App\\Models\\Recruiter', 1),
(149, 'App\\Models\\Recruiter', 1),
(150, 'App\\Models\\Recruiter', 1),
(151, 'App\\Models\\Recruiter', 1),
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 1),
(6, 'App\\Models\\User', 1),
(7, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 1),
(24, 'App\\Models\\User', 1),
(25, 'App\\Models\\User', 1),
(26, 'App\\Models\\User', 1),
(27, 'App\\Models\\User', 1),
(28, 'App\\Models\\User', 1),
(29, 'App\\Models\\User', 1),
(30, 'App\\Models\\User', 1),
(31, 'App\\Models\\User', 1),
(32, 'App\\Models\\User', 1),
(33, 'App\\Models\\User', 1),
(34, 'App\\Models\\User', 1),
(35, 'App\\Models\\User', 1),
(36, 'App\\Models\\User', 1),
(37, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 1),
(39, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 1),
(51, 'App\\Models\\User', 1),
(52, 'App\\Models\\User', 1),
(53, 'App\\Models\\User', 1),
(54, 'App\\Models\\User', 1),
(55, 'App\\Models\\User', 1),
(56, 'App\\Models\\User', 1),
(57, 'App\\Models\\User', 1),
(58, 'App\\Models\\User', 1),
(59, 'App\\Models\\User', 1),
(60, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\Candidate', 1),
(3, 'App\\Models\\Recruiter', 1),
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\Candidate', 2),
(1, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view dashboard', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(2, 'view users', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(3, 'create users', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(4, 'edit users', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(5, 'delete users', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(6, 'restore users', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(7, 'view roles', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(8, 'create roles', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(9, 'edit roles', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(10, 'delete roles', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(11, 'restore roles', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(12, 'view candidates', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(13, 'edit candidates', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(14, 'create candidates', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(15, 'delete candidates', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(16, 'restore candidates', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(17, 'view recruiters', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(18, 'create recruiters', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(19, 'edit recruiters', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(20, 'delete recruiters', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(21, 'restore recruiters', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(22, 'assign recruit companies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(23, 'view companies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(24, 'edit companies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(25, 'create companies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(26, 'delete companies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(27, 'restore companies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(28, 'view applicants', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(29, 'edit applicants', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(30, 'create applicants', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(31, 'delete applicants', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(32, 'restore applicants', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(33, 'view categories', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(34, 'create categories', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(35, 'edit categories', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(36, 'sort categories', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(37, 'delete categories', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(38, 'restore categories', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(39, 'view jobs', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(40, 'create jobs', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(41, 'edit jobs', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(42, 'delete jobs', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(43, 'restore jobs', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(44, 'view resumes', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(45, 'create resumes', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(46, 'edit resumes', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(47, 'delete resumes', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(48, 'restore resumes', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(49, 'view currencies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(50, 'create currencies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(51, 'edit currencies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(52, 'delete currencies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(53, 'restore currencies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(54, 'base currencies', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(55, 'view languages', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(56, 'create languages', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(57, 'edit languages', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(58, 'delete languages', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(59, 'restore languages', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(60, 'manage settings', 'web', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(61, 'view dashboard', 'candidate', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(62, 'view users', 'candidate', '2023-03-03 08:57:05', '2023-03-03 08:57:05'),
(63, 'create users', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(64, 'edit users', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(65, 'delete users', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(66, 'restore users', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(67, 'view roles', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(68, 'create roles', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(69, 'edit roles', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(70, 'delete roles', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(71, 'restore roles', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(72, 'view candidates', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(73, 'edit candidates', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(74, 'create candidates', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(75, 'delete candidates', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(76, 'restore candidates', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(77, 'view recruiters', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(78, 'create recruiters', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(79, 'edit recruiters', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(80, 'delete recruiters', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(81, 'restore recruiters', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(82, 'assign recruit companies', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(83, 'view companies', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(84, 'edit companies', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(85, 'create companies', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(86, 'delete companies', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(87, 'restore companies', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(88, 'view applicants', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(89, 'edit applicants', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(90, 'create applicants', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(91, 'delete applicants', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(92, 'restore applicants', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(93, 'view categories', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(94, 'create categories', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(95, 'edit categories', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(96, 'sort categories', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(97, 'delete categories', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(98, 'restore categories', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(99, 'view jobs', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(100, 'create jobs', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(101, 'edit jobs', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(102, 'delete jobs', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(103, 'restore jobs', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(104, 'view resumes', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(105, 'create resumes', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(106, 'edit resumes', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(107, 'delete resumes', 'candidate', '2023-03-03 08:57:06', '2023-03-03 08:57:06'),
(108, 'restore resumes', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(109, 'view currencies', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(110, 'create currencies', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(111, 'edit currencies', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(112, 'delete currencies', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(113, 'restore currencies', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(114, 'base currencies', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(115, 'view languages', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(116, 'create languages', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(117, 'edit languages', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(118, 'delete languages', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(119, 'restore languages', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(120, 'manage settings', 'candidate', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(121, 'view dashboard', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(122, 'view users', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(123, 'create users', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(124, 'edit users', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(125, 'delete users', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(126, 'restore users', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(127, 'view roles', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(128, 'create roles', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(129, 'edit roles', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(130, 'delete roles', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(131, 'restore roles', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(132, 'view candidates', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(133, 'edit candidates', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(134, 'create candidates', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(135, 'delete candidates', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(136, 'restore candidates', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(137, 'view recruiters', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(138, 'create recruiters', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(139, 'edit recruiters', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(140, 'delete recruiters', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(141, 'restore recruiters', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(142, 'assign recruit companies', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(143, 'view companies', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(144, 'edit companies', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(145, 'create companies', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(146, 'delete companies', 'recruiter', '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(147, 'restore companies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(148, 'view applicants', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(149, 'edit applicants', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(150, 'create applicants', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(151, 'delete applicants', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(152, 'restore applicants', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(153, 'view categories', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(154, 'create categories', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(155, 'edit categories', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(156, 'sort categories', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(157, 'delete categories', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(158, 'restore categories', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(159, 'view jobs', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(160, 'create jobs', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(161, 'edit jobs', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(162, 'delete jobs', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(163, 'restore jobs', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(164, 'view resumes', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(165, 'create resumes', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(166, 'edit resumes', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(167, 'delete resumes', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(168, 'restore resumes', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(169, 'view currencies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(170, 'create currencies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(171, 'edit currencies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(172, 'delete currencies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(173, 'restore currencies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(174, 'base currencies', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(175, 'view languages', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(176, 'create languages', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(177, 'edit languages', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(178, 'delete languages', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(179, 'restore languages', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08'),
(180, 'manage settings', 'recruiter', '2023-03-03 08:57:08', '2023-03-03 08:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recruiters`
--

CREATE TABLE `recruiters` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` text COLLATE utf8mb4_unicode_ci,
  `age` int DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_from_map` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recruiters`
--

INSERT INTO `recruiters` (`id`, `name`, `email`, `contact_number`, `age`, `website`, `bio`, `country`, `city`, `address`, `address_from_map`, `latitude`, `longitude`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Recruiter', 'recruiter@sidora.eu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$QvRzbXuLOA6s.nzhi.bRvecSm9GAnc6NNRdsppA6Ux07UabrqjaFq', 'dDjVtvdIc8aLCJhD4GXfKlZkxPaMVgFiSoP1rbyL49Ss5Ri4Uhz66iAyv9Z0', '2023-03-03 08:57:09', '2023-03-03 08:57:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiters_companies`
--

CREATE TABLE `recruiters_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `recruiters_id` bigint UNSIGNED NOT NULL,
  `companies_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resumes`
--

CREATE TABLE `resumes` (
  `id` bigint UNSIGNED NOT NULL,
  `candidate_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_nr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` double NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `special_knowledge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resumes`
--

INSERT INTO `resumes` (`id`, `candidate_id`, `name`, `email`, `contact_number`, `contact_number2`, `street_nr`, `zip_code`, `country`, `bio`, `special_knowledge`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Blair Gates', 'huzu@mailinator.com', '19-92-101-43-33', '13-75-398-82-26', 'Eveniet sit aut re', 82245, 'MM', 'Ut autem aliquid nis', 'Beatae beatae eos rem aute sunt non sint obcaecati soluta eos quibusdam', '2023-03-17 12:48:58', '2023-03-17 12:48:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resumes_languages`
--

CREATE TABLE `resumes_languages` (
  `id` bigint UNSIGNED NOT NULL,
  `resumes_id` bigint UNSIGNED NOT NULL,
  `languages_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resume_companies`
--

CREATE TABLE `resume_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `resume_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employment_relationship` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resume_companies_skills`
--

CREATE TABLE `resume_companies_skills` (
  `id` bigint UNSIGNED NOT NULL,
  `resume_companies_id` bigint UNSIGNED NOT NULL,
  `skills_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super admin', 'web', '2023-03-03 08:57:08', '2023-03-03 08:57:08', NULL),
(2, 'Candidate', 'candidate', '2023-03-03 08:57:09', '2023-03-03 08:57:09', NULL),
(3, 'Recruiter', 'recruiter', '2023-03-03 08:57:09', '2023-03-17 12:51:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 3),
(139, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(164, 3),
(165, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1KNYT09neBu6vD6rHKVHjiAYQu1oooqtNneaCIhq', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXVUcm5rWmpRZzhhSUNxcmFQM0s3UUxLcUhkd3pXV253VUVCRVZjYSI7czo1NjoibG9naW5fY2FuZGlkYXRlXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2pvYi1ib3gudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679152621),
('9Iw69hsjvGlLu0Xbg1qalFohYoJYrGYvjBrs9Nm2', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUUzT3BDa2hiTTFFcmVVWmF2SUVPSUZBQ1dOY1JLUXdQSlBGWUZUUiI7czo1NjoibG9naW5fY2FuZGlkYXRlXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2pvYi1ib3gudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679089869),
('aSPcaw5HZDXq4IWQyTkXqZ6zK0zh7m1PaFHZoD7D', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS1VpcktMb2h4S1Q5b0JJRGtFOUJBejhGQ2tpS1BvWmxYU1NpMU55biI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2pvYi1ib3gudGVzdC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679184254),
('GcpxHnQIxFnsCi2xW4hIuHInRn8FwmXqptVVSxhW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZGhwcUF0Qnl0YjJtUUtOTHhjazNwRnhYalF3dEFESTJMOTdYV2Z6RyI7czo1NjoibG9naW5fY2FuZGlkYXRlXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2pvYi1ib3gudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679142205),
('HlVbHKnuh3PlJ0y33Ra4h65Mpig3PBdAMtYPrnNz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRnp6dG5Hc2lpWjlsQnhFWFRhWENQSzNtbThiWGtsRnA5NnBmbmwxVSI7czo1NjoibG9naW5fY2FuZGlkYXRlXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2pvYi1ib3gudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679080532),
('i7CmzVyy3Cg3jCdJX4XGAKaOU1VGY4tPDSUvk2Wp', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR3A4bVZpb1l4UVpxN3R4VUtBSW5pTHExaDJDWk9zQW1MSjA0T1R4SSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2pvYi1ib3gudGVzdC9yb2xlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679142205),
('mpsMmceUAINYOdEyCs8UTkk4HpxFYlNgFYtwvJbm', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYTZ6T3NJbHg5bTBBSE5zS2t6YXY3MENKRmZxa205ZTR3eWU5ZkoybSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyOToiaHR0cDovL2pvYi1ib3gudGVzdC9kYXNoYm9hcmQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679159651),
('MtjtWi45haBElzXqQP9H86RjVBXjhNGtSmWq8Tub', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRTY5QUkwUTk5b3JveTVxdFA3TUpUS2NZeldmaXJIUWdtNjBDdUJlOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly9qb2ItYm94LnRlc3QvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1NjoibG9naW5fY2FuZGlkYXRlXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjt9', 1679065557),
('RkVcfQrTgYEV38qnIp1IAQMt4xnzTDhrQzA1rjy7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1lHTm1qM3RyRTFXdXZodkFMQXhWaXl0QnNSQmoxeGhSMWZtUXJSayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovL2pvYi1ib3gudGVzdC9yb2xlcy8yIjt9fQ==', 1679065428),
('TprhbKolqP8C75IdobKBv4NHJ7DSZrqJc408eMAx', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWprdXJOQ1JBSXFDU2NmT0thY1pSZzZJUHRlYjlXbldnTTROZzFRZSI7czo1NjoibG9naW5fY2FuZGlkYXRlXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1679152620),
('TulJB3dt71OPYjKJmNyJvsCinGTBglCe3GznLSUR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWXFtUE5oSG1MZkxzcGFqMHE5bk1sS0NQck1DY0dtRGI1d3hUTWdtUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1679061214),
('WpmfMGu48Mrxi1JpAk592oFbxpkBzUiKZ8OcwUSC', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUWczSHZzRTBjMHRQVG52UDkzMVpCdnVWWnVoUm5wTHl5dG9EbHBIYiI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2pvYi1ib3gudGVzdC9yb2xlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679089869),
('x4haYQGwBY4C59xluyx1S4skEbiSt0D2U6JT4b3B', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS1dWMk80NUJwN0FyUkxoN0kwTHF6ejdRWnNrQ2JFQkJhR2xnb0E5MSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2pvYi1ib3gudGVzdC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679171330),
('z8KeIi7wKEmKBQqbK7ljyKdjkHZbp63wLbfE1qoZ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZlJGbTY1WHFidWttVzBSYnZGNTRVbHJraDJ3eUhiWWJ0Wm1BSENZUyI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2pvYi1ib3gudGVzdC91c2VycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679231437),
('zR5yXXUtKPM49BF6p3RKR82iCXhkpKAwzWKQR2hA', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNmZHUXF5aUVUNDdlY1dNVk5xU05tOHRCOWMxUVc1dGRwdENsbGUxSSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNToiaHR0cDovL2pvYi1ib3gudGVzdC9yb2xlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1679080537);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', '2023-03-17 12:48:08', '2023-03-17 12:48:08'),
(2, 'asd', '2023-03-17 12:48:08', '2023-03-17 12:48:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sidora AG', 'support@sidora.eu', NULL, '$2y$10$V2BxQYYjca3xgD/gNX85out.yyRHCIWhXT.ZdfWItEuXwGEJp7Oha', 'JXr1CoIcHAhHPdyTkFUoptZ6IkhvKTHxNXkqpoCrNpNNn4RrOKHjvan6Oh3c', '2023-03-03 08:57:09', '2023-03-03 08:57:09', NULL),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$DGPWgJKusGI4hHP/PRDFweSaPz279DFa7z3MPJVfiQYIY3YfjCbS6', 'yZma4Scq0vW81JpY8ke6uOz7mCb8OAjPHg7hDdHLAcc9IE4IcRVo3kTHtona', '2023-03-17 12:35:43', '2023-03-17 12:51:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applicants`
--
ALTER TABLE `applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applicants_job_id_foreign` (`job_id`),
  ADD KEY `applicants_company_id_foreign` (`company_id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `candidates_email_unique` (`email`),
  ADD KEY `candidates_category_id_foreign` (`category_id`);

--
-- Indexes for table `candidates_languages`
--
ALTER TABLE `candidates_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_languages_candidates_id_foreign` (`candidates_id`),
  ADD KEY `candidates_languages_languages_id_foreign` (`languages_id`);

--
-- Indexes for table `candidates_skills`
--
ALTER TABLE `candidates_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `candidates_skills_candidates_id_foreign` (`candidates_id`),
  ADD KEY `candidates_skills_skills_id_foreign` (`skills_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses_certificates_skills`
--
ALTER TABLE `courses_certificates_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_certificates_skills_courses_certificates_id_foreign` (`courses_certificates_id`),
  ADD KEY `courses_certificates_skills_skills_id_foreign` (`skills_id`);

--
-- Indexes for table `course_certificates`
--
ALTER TABLE `course_certificates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_certificates_resume_id_foreign` (`resume_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience_industries`
--
ALTER TABLE `experience_industries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experience_industries_resume_id_foreign` (`resume_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_company_id_foreign` (`company_id`),
  ADD KEY `jobs_recruiter_id_foreign` (`recruiter_id`),
  ADD KEY `jobs_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_categories_jobs_id_foreign` (`jobs_id`),
  ADD KEY `jobs_categories_categories_id_foreign` (`categories_id`);

--
-- Indexes for table `jobs_skills`
--
ALTER TABLE `jobs_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_skills_jobs_id_foreign` (`jobs_id`),
  ADD KEY `jobs_skills_skills_id_foreign` (`skills_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meta_metable_type_metable_id_key_unique` (`metable_type`,`metable_id`,`key`),
  ADD KEY `meta_key_index` (`key`),
  ADD KEY `meta_key_metable_type_index` (`key`,`metable_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recruiters`
--
ALTER TABLE `recruiters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `recruiters_email_unique` (`email`);

--
-- Indexes for table `recruiters_companies`
--
ALTER TABLE `recruiters_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recruiters_companies_recruiters_id_foreign` (`recruiters_id`),
  ADD KEY `recruiters_companies_companies_id_foreign` (`companies_id`);

--
-- Indexes for table `resumes`
--
ALTER TABLE `resumes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumes_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `resumes_languages`
--
ALTER TABLE `resumes_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resumes_languages_resumes_id_foreign` (`resumes_id`),
  ADD KEY `resumes_languages_languages_id_foreign` (`languages_id`);

--
-- Indexes for table `resume_companies`
--
ALTER TABLE `resume_companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resume_companies_resume_id_foreign` (`resume_id`);

--
-- Indexes for table `resume_companies_skills`
--
ALTER TABLE `resume_companies_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resume_companies_skills_resume_companies_id_foreign` (`resume_companies_id`),
  ADD KEY `resume_companies_skills_skills_id_foreign` (`skills_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `applicants`
--
ALTER TABLE `applicants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidates_languages`
--
ALTER TABLE `candidates_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidates_skills`
--
ALTER TABLE `candidates_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses_certificates_skills`
--
ALTER TABLE `courses_certificates_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_certificates`
--
ALTER TABLE `course_certificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `experience_industries`
--
ALTER TABLE `experience_industries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs_skills`
--
ALTER TABLE `jobs_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meta`
--
ALTER TABLE `meta`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recruiters`
--
ALTER TABLE `recruiters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `recruiters_companies`
--
ALTER TABLE `recruiters_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resumes`
--
ALTER TABLE `resumes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resumes_languages`
--
ALTER TABLE `resumes_languages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume_companies`
--
ALTER TABLE `resume_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resume_companies_skills`
--
ALTER TABLE `resume_companies_skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applicants`
--
ALTER TABLE `applicants`
  ADD CONSTRAINT `applicants_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `applicants_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `candidates_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidates_languages`
--
ALTER TABLE `candidates_languages`
  ADD CONSTRAINT `candidates_languages_candidates_id_foreign` FOREIGN KEY (`candidates_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidates_languages_languages_id_foreign` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidates_skills`
--
ALTER TABLE `candidates_skills`
  ADD CONSTRAINT `candidates_skills_candidates_id_foreign` FOREIGN KEY (`candidates_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `candidates_skills_skills_id_foreign` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `courses_certificates_skills`
--
ALTER TABLE `courses_certificates_skills`
  ADD CONSTRAINT `courses_certificates_skills_courses_certificates_id_foreign` FOREIGN KEY (`courses_certificates_id`) REFERENCES `course_certificates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_certificates_skills_skills_id_foreign` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `course_certificates`
--
ALTER TABLE `course_certificates`
  ADD CONSTRAINT `course_certificates_resume_id_foreign` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `experience_industries`
--
ALTER TABLE `experience_industries`
  ADD CONSTRAINT `experience_industries_resume_id_foreign` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_recruiter_id_foreign` FOREIGN KEY (`recruiter_id`) REFERENCES `recruiters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD CONSTRAINT `jobs_categories_categories_id_foreign` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_categories_jobs_id_foreign` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jobs_skills`
--
ALTER TABLE `jobs_skills`
  ADD CONSTRAINT `jobs_skills_jobs_id_foreign` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jobs_skills_skills_id_foreign` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recruiters_companies`
--
ALTER TABLE `recruiters_companies`
  ADD CONSTRAINT `recruiters_companies_companies_id_foreign` FOREIGN KEY (`companies_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recruiters_companies_recruiters_id_foreign` FOREIGN KEY (`recruiters_id`) REFERENCES `recruiters` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resumes`
--
ALTER TABLE `resumes`
  ADD CONSTRAINT `resumes_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resumes_languages`
--
ALTER TABLE `resumes_languages`
  ADD CONSTRAINT `resumes_languages_languages_id_foreign` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resumes_languages_resumes_id_foreign` FOREIGN KEY (`resumes_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resume_companies`
--
ALTER TABLE `resume_companies`
  ADD CONSTRAINT `resume_companies_resume_id_foreign` FOREIGN KEY (`resume_id`) REFERENCES `resumes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resume_companies_skills`
--
ALTER TABLE `resume_companies_skills`
  ADD CONSTRAINT `resume_companies_skills_resume_companies_id_foreign` FOREIGN KEY (`resume_companies_id`) REFERENCES `resume_companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resume_companies_skills_skills_id_foreign` FOREIGN KEY (`skills_id`) REFERENCES `skills` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
