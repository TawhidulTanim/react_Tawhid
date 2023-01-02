-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 08:18 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `react_tawhid`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`, `created_at`, `updated_at`) VALUES
(1, 'Business', NULL, NULL),
(2, 'Sports', NULL, NULL),
(3, 'International', NULL, NULL),
(4, 'Bangladesh', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_11_11_110340_create_roles_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_15_000000_create_users_table', 1),
(6, '2022_12_13_005937_create_frontends_table', 1),
(7, '2022_12_13_040952_create_user_details_table', 1),
(10, '2023_01_01_042600_create_categories_table', 2),
(11, '2023_01_01_042656_create_posts_table', 2);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_details` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `short_details`, `details`, `author`, `post_image`, `publish_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Fallen sky lanterns halt metro rail services for 2hrs', 'The authorities today suspended the operations of metro rail for two hours \"on safety ground\" as huge number of doused sky lanterns fell on the overhead electricity lines during last night\'s New Year celebrations.', 'The authorities today suspended the operations of metro rail for two hours \"on safety ground\" as huge number of doused sky lanterns fell on the overhead electricity lines during last night\'s New Year celebrations.\n\nMAN Siddique, managing director of Dhaka Mass Transit Company Ltd (DMTCL), the operating agency of metro rail, said huge number of doused sky lanterns fell on the electricity lines of the metro rail. So, they have kept the operations suspended since morning, he said.\n\nFor all latest news, follow The Daily Star\'s Google News channel.\nAlthough the sky lanterns did not cause any damage to the electricity lines, they have to remove the fallen sky lanterns to avoid any possible accident, he said at 9:30am.\n\nHowever, the metro rail services resumed around 10:10am, an official of DMTCL said', 'Local corespondent ', 'frontend/img/dhaka-metro-rail.jpg', '0000-00-00', NULL, NULL),
(2, 1, 'Fallen sky lanterns halt metro rail services for 2hrs', 'The authorities today suspended the operations of metro rail for two hours \"on safety ground\" as huge number of doused sky lanterns fell on the overhead electricity lines during last night\'s New Year celebrations.', 'The authorities today suspended the operations of metro rail for two hours \"on safety ground\" as huge number of doused sky lanterns fell on the overhead electricity lines during last night\'s New Year celebrations.\n\nMAN Siddique, managing director of Dhaka Mass Transit Company Ltd (DMTCL), the operating agency of metro rail, said huge number of doused sky lanterns fell on the electricity lines of the metro rail. So, they have kept the operations suspended since morning, he said.\n\nFor all latest news, follow The Daily Star\'s Google News channel.\nAlthough the sky lanterns did not cause any damage to the electricity lines, they have to remove the fallen sky lanterns to avoid any possible accident, he said at 9:30am.\n\nHowever, the metro rail services resumed around 10:10am, an official of DMTCL said', 'Local corespondent ', 'frontend/img/dhaka-metro-rail.jpg', '0000-00-00', NULL, NULL),
(3, 1, 'New year celebrations around the world as UK rings in 2023', 'New Zealand and the Pacific nation of Kiribati were among the first countries to mark the arrival of 2023. In the UK, Big Ben bonged in London as more than 100,000 people gathered', 'New Zealand and the Pacific nation of Kiribati were among the first countries to mark the arrival of 2023. In the UK, Big Ben bonged in London as more than 100,000 people gathered along the Thames Embankment to watch 12,000 fireworks streak across the sky.Crowds of people gathered in Sydney, Australia as it became one of the first major cities around the world to celebrate the start of 2023, following two years of disruptions caused by Covid.\n\nA huge fireworks bonanza lit up the skies of Sydney as Australia entered 2023 with the display inspired by the land, sea and sky. A rainbow waterfall was a prominent feature of the New Year’s Eve party.\n\nAfter the global pandemic curtailed New Year’s Eve festivities in 2020 and 2021, large crowds of people gathered in Australia’s largest city to watch the midnight fireworks', 'Biplab Uddin', 'frontend/img/SEI_138894268.webp', '0000-00-00', NULL, NULL),
(4, 1, 'New year celebrations around the world as UK rings in 2023', '', 'New Zealand and the Pacific nation of Kiribati were among the first countries to mark the arrival of 2023. In the UK, Big Ben bonged in London as more than 100,000 people gathered along the Thames Embankment to watch 12,000 fireworks streak across the sky.Crowds of people gathered in Sydney, Australia as it became one of the first major cities around the world to celebrate the start of 2023, following two years of disruptions caused by Covid.\r\n\r\nA huge fireworks bonanza lit up the skies of Sydney as Australia entered 2023 with the display inspired by the land, sea and sky. A rainbow waterfall was a prominent feature of the New Year’s Eve party.\r\n\r\nAfter the global pandemic curtailed New Year’s Eve festivities in 2020 and 2021, large crowds of people gathered in Australia’s largest city to watch the midnight fireworks', 'Biplab Uddin', 'frontend/img/SEI_138894268.webp', '0000-00-00', NULL, NULL),
(5, 2, 'Premier League table and results: Arsenal seven points clear, Man Utd into top four, Man City slip up at home', '', 'What a magician Arsenal’s Martin Odegaard is.\r\n\r\nThe Norway international orchestrated tonight’s win as Mikel Arteta’s side won 4-2 away to Brighton & Hove Albion.\r\n\r\nOdegaard scored Arsenal’s second of the evening and created their fourth, through Gabriel Martinelli.\r\n\r\nIt was quite simply a ridiculously-good ball to play in the Brazil international, who made it 4-0 at the time.\r\nOn this form, Odegaard is the modern-day version of Dennis Bergkamp for the Gunners.\r\n\r\nAnd here’s what Alan Smith said live on Sky Sports: “We’ve just seen one of the passes of the season from Odegaard. Just when it was looking a little dicey from Arsenal, absolutely superb. Martinelli is full of confidence in these situations.”', 'Sport corespondent', 'frontend/img/SEI_138920353.webp', '0000-00-00', NULL, NULL),
(6, 2, 'Premier League table and results: Arsenal seven points clear, Man Utd into top four, Man City slip up at home', '', 'What a magician Arsenal’s Martin Odegaard is.\r\n\r\nThe Norway international orchestrated tonight’s win as Mikel Arteta’s side won 4-2 away to Brighton & Hove Albion.\r\n\r\nOdegaard scored Arsenal’s second of the evening and created their fourth, through Gabriel Martinelli.\r\n\r\nIt was quite simply a ridiculously-good ball to play in the Brazil international, who made it 4-0 at the time.\r\nOn this form, Odegaard is the modern-day version of Dennis Bergkamp for the Gunners.\r\n\r\nAnd here’s what Alan Smith said live on Sky Sports: “We’ve just seen one of the passes of the season from Odegaard. Just when it was looking a little dicey from Arsenal, absolutely superb. Martinelli is full of confidence in these situations.”', 'Sport corespondent', 'frontend/img/SEI_138920353.webp', '0000-00-00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identify` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `identify`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin', 1, '2022-12-30 22:25:08', NULL, NULL),
(2, 'Doctor', 'doctor', 1, '2022-12-30 22:25:08', NULL, NULL),
(3, 'Nurse', 'nurse', 1, '2022-12-30 22:25:08', NULL, NULL),
(4, 'RECEPTIONIST', 'receptionist', 1, '2022-12-30 22:25:08', NULL, NULL),
(5, 'LAB-TECH', 'labtech', 1, '2022-12-30 22:25:08', NULL, NULL),
(6, 'Accountant', 'accountant', 1, '2022-12-30 22:25:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `profile_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contact_no`, `role_id`, `password`, `language`, `gender`, `birth_date`, `address`, `status`, `profile_pic`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tawhidul', NULL, '015', 1, 'eyJpdiI6IjFIbHQxT0VxSWVEeStXSGtUei9WMHc9PSIsInZhbHVlIjoiOGhubmlNV21KM1B1Zm5ob2VqTEdqdz09IiwibWFjIjoiZjMzMWQ2Nzk0MWI5MGUxOWEwMjQ0YThkOTMwZDc0YTNlZTdlMGZmMzlmNjRmMDA3NjVmNmY0NjQyZjRmNDdiMSIsInRhZyI6IiJ9', 'en', NULL, NULL, NULL, 1, NULL, NULL, '2022-12-30 22:26:28', '2022-12-30 22:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_role_unique` (`role`),
  ADD KEY `roles_identify_index` (`identify`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_contact_no_unique` (`contact_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_index` (`role_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
