-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 06 2018 г., 19:48
-- Версия сервера: 5.7.19
-- Версия PHP: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `reklama_sentr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id`, `link`, `image`, `created_at`, `updated_at`) VALUES
(1, 'https://www.google.com.ua/', 'clients/June2018/cjGmwn95SH5xzUZrS9q1.png', '2018-06-06 10:36:44', '2018-06-06 10:36:44'),
(2, 'https://www.google.com.ua/', 'clients/June2018/zQ09UZfZL1sFQ0pe1AYe.png', '2018-06-06 10:37:00', '2018-06-06 10:37:00'),
(3, 'https://www.google.com.ua/', 'clients/June2018/lglc3dxsY79MKvhJEOeL.png', '2018-06-06 10:37:12', '2018-06-06 10:37:12'),
(4, 'https://www.google.com.ua/', 'clients/June2018/zgK3k5qF87euMN1nBIqz.png', '2018-06-06 10:37:23', '2018-06-06 10:37:23'),
(5, 'https://www.google.com.ua/', 'clients/June2018/0YkT5pLskyQMwAZfVLVz.png', '2018-06-06 10:37:44', '2018-06-06 10:37:44');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '', 2),
(3, 1, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, '', 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '', 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '', 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 8),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, NULL, 2),
(16, 2, 'title', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле :attribute является обязательным.\"}}}', 5),
(17, 2, 'excerpt', 'text_area', 'Краткое описание', 0, 0, 1, 1, 1, 1, NULL, 6),
(18, 2, 'body', 'rich_text_box', 'Содержимое страницы', 0, 0, 1, 1, 1, 1, NULL, 7),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"}}', 8),
(22, 2, 'status', 'select_dropdown', 'Статус', 1, 1, 1, 1, 1, 1, '{\"default\":\"ACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(23, 2, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 11),
(24, 2, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 12),
(25, 2, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, NULL, 10),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, '', 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, '', 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, '', 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, '', 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, '', 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, '', 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, '', 15),
(53, 3, 'role_id', 'text', 'role_id', 1, 1, 1, 1, 1, 1, '', 9),
(54, 7, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(55, 7, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле :attribute является обязательным.\"}}}', 2),
(56, 7, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 3),
(57, 7, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 4),
(58, 2, 'page_belongsto_service_relationship', 'relationship', 'Категория', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Service\",\"table\":\"services\",\"type\":\"belongsTo\",\"column\":\"service_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 4),
(59, 2, 'service_id', 'hidden', 'Service Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(60, 2, 'header', 'radio_btn', 'Добавить пункт в шапку', 1, 0, 1, 1, 1, 1, '{\"default\":\"Enable\",\"options\":{\"Enable\":\"Отображать\",\"Disable\":\"Не отображать\"}}', 13),
(61, 2, 'link', 'radio_btn', 'Добавить пункт в быстрый доступ', 1, 0, 1, 1, 1, 1, '{\"default\":\"Enable\",\"options\":{\"Enable\":\"Отображать\",\"Disable\":\"Не отображать\"}}', 14),
(62, 2, 'footer', 'radio_btn', 'Добавить пункт в футер', 1, 0, 1, 1, 1, 1, '{\"default\":\"Enable\",\"options\":{\"Enable\":\"Отображать\",\"Disable\":\"Не отображать\"}}', 15),
(63, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(64, 8, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле :attribute является обязательным.\"}}}', 2),
(65, 8, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\",\"messages\":{\"required\":\"Поле :attribute является обязательным.\"}}}', 3),
(66, 8, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"70%\",\"upsize\":true}', 4),
(67, 8, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 5),
(68, 8, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 6),
(69, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(70, 9, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(71, 9, 'position', 'text', 'Должность', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(72, 9, 'description', 'text_area', 'Описание', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:2000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(73, 9, 'image', 'image', 'Фото', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 5),
(74, 9, 'twitter', 'text', 'Twitter', 0, 0, 1, 1, 1, 1, NULL, 6),
(75, 9, 'facebook', 'text', 'Facebook', 0, 0, 1, 1, 1, 1, NULL, 7),
(76, 9, 'google', 'text', 'Google', 0, 0, 1, 1, 1, 1, NULL, 8),
(77, 9, 'behance', 'text', 'Behance', 0, 0, 1, 1, 1, 1, NULL, 9),
(78, 9, 'pinterest', 'text', 'Pinterest', 0, 0, 1, 1, 1, 1, NULL, 10),
(79, 9, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 11),
(80, 9, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 12),
(81, 10, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(82, 10, 'link', 'text', 'Ссылка на клиента', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(83, 10, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 3),
(84, 10, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(85, 10, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(86, 11, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(87, 11, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(88, 11, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 3),
(89, 11, 'subject', 'text', 'Тема', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 4),
(90, 11, 'message', 'text_area', 'Сообщение', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:2000\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 5),
(91, 11, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 6),
(92, 11, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 7),
(93, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(94, 12, 'category', 'text', 'Категория', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Поле обязательное к заполнению\",\"max\":\"Поле :attribute максимум :max символов.\"}}}', 2),
(96, 12, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 4),
(97, 12, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 5),
(98, 13, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(100, 13, 'image', 'image', 'Картинка', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":null},\"quality\":\"65%\",\"upsize\":true}', 4),
(101, 13, 'created_at', 'timestamp', 'Время создания', 0, 1, 1, 0, 0, 0, NULL, 5),
(102, 13, 'updated_at', 'timestamp', 'Время обновления', 0, 0, 0, 0, 0, 0, NULL, 6),
(103, 13, 'photo_belongsto_galery_relationship', 'relationship', 'Категоия', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Galery\",\"table\":\"galeries\",\"type\":\"belongsTo\",\"column\":\"galery_id\",\"key\":\"id\",\"label\":\"category\",\"pivot_table\":\"categories\",\"pivot\":\"0\"}', 3),
(104, 13, 'galery_id', 'hidden', 'Galery Id', 1, 0, 1, 1, 1, 1, NULL, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '2018-04-02 09:45:36', '2018-04-02 09:53:53'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(7, 'services', 'services', 'Service', 'Services', 'voyager-categories', 'App\\Service', NULL, NULL, NULL, 1, 0, '2018-04-02 09:49:36', '2018-04-02 09:49:36'),
(8, 'sliders', 'sliders', 'Slider', 'Sliders', 'voyager-images', 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-04-02 10:05:19', '2018-04-02 10:05:53'),
(9, 'teams', 'teams', 'Team', 'Teams', 'voyager-people', 'App\\Team', NULL, NULL, NULL, 1, 0, '2018-06-06 10:12:14', '2018-06-06 10:12:14'),
(10, 'clients', 'clients', 'Client', 'Clients', 'voyager-group', 'App\\Client', NULL, NULL, NULL, 1, 0, '2018-06-06 10:36:02', '2018-06-06 10:36:02'),
(11, 'feedbacks', 'feedbacks', 'Feedback', 'Feedback', 'voyager-mail', 'App\\Feedback', NULL, NULL, NULL, 1, 0, '2018-06-06 11:22:06', '2018-06-06 11:22:30'),
(12, 'galeries', 'galeries', 'Galery', 'Galeries', 'voyager-images', 'App\\Galery', NULL, NULL, NULL, 1, 0, '2018-06-06 12:34:08', '2018-06-06 12:34:08'),
(13, 'photos', 'photos', 'Photo', 'Photos', 'voyager-photos', 'App\\Photo', NULL, NULL, NULL, 1, 0, '2018-06-06 12:55:32', '2018-06-06 12:55:32');

-- --------------------------------------------------------

--
-- Структура таблицы `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `galeries`
--

CREATE TABLE `galeries` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `galeries`
--

INSERT INTO `galeries` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'ДИЗАЙН', '2018-06-06 12:36:03', '2018-06-06 12:36:03'),
(2, 'ПОЛИГРАФИЯ', '2018-06-06 12:36:52', '2018-06-06 12:36:52');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-02 09:45:36', '2018-04-02 09:45:36');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Приборная панель', '', '_self', 'voyager-boat', '#000000', NULL, 1, '2018-04-02 09:45:36', '2018-06-06 11:04:51', 'voyager.dashboard', 'null'),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-02 09:45:36', '2018-04-02 09:55:46', 'voyager.media.index', NULL),
(3, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 5, '2018-04-02 09:45:36', '2018-04-02 09:55:46', 'voyager.posts.index', NULL),
(4, 1, 'Пользователи', '', '_self', 'voyager-person', '#000000', NULL, 3, '2018-04-02 09:45:36', '2018-06-06 11:05:01', 'voyager.users.index', 'null'),
(5, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 6, '2018-04-02 09:45:36', '2018-06-06 11:05:16', 'voyager.categories.index', NULL),
(6, 1, 'Страницы', '', '_self', 'voyager-file-text', '#000000', NULL, 10, '2018-04-02 09:45:36', '2018-06-06 13:00:04', 'voyager.pages.index', 'null'),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-02 09:45:36', '2018-04-02 09:45:36', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2018-04-02 09:45:36', '2018-06-06 11:05:16', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-04-02 09:45:36', '2018-04-02 09:55:46', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, NULL, 8, '2018-04-02 09:45:36', '2018-06-06 11:05:16', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 2, '2018-04-02 09:45:36', '2018-04-02 09:55:46', 'voyager.compass.index', NULL),
(12, 1, 'Настройки', '', '_self', 'voyager-settings', '#000000', NULL, 16, '2018-04-02 09:45:36', '2018-06-06 13:00:04', 'voyager.settings.index', 'null'),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 3, '2018-04-02 09:45:36', '2018-04-02 09:55:46', 'voyager.hooks', NULL),
(14, 1, 'Сервисы', '/admin/services', '_self', 'voyager-categories', '#000000', NULL, 9, '2018-04-02 09:49:36', '2018-06-06 13:00:04', NULL, ''),
(15, 1, 'Слайдер', '/admin/sliders', '_self', 'voyager-youtube-play', '#000000', NULL, 12, '2018-04-02 10:05:19', '2018-06-06 13:00:04', NULL, ''),
(16, 1, 'Команда', '/admin/teams', '_self', 'voyager-people', '#000000', NULL, 13, '2018-06-06 10:12:14', '2018-06-06 13:00:04', NULL, ''),
(17, 1, 'Клиенты', '/admin/clients', '_self', 'voyager-group', '#000000', NULL, 14, '2018-06-06 10:36:02', '2018-06-06 13:00:04', NULL, ''),
(18, 1, 'Обратная связь', '/admin/feedbacks', '_self', 'voyager-mail', '#000000', NULL, 15, '2018-06-06 11:22:06', '2018-06-06 13:00:04', NULL, ''),
(19, 1, 'Категории', '/admin/galeries', '_self', 'voyager-images', '#000000', 21, 1, '2018-06-06 12:34:08', '2018-06-06 12:59:54', NULL, ''),
(20, 1, 'Фото', '/admin/photos', '_self', 'voyager-photos', '#000000', 21, 2, '2018-06-06 12:55:32', '2018-06-06 12:59:58', NULL, ''),
(21, 1, 'Галерея', '', '_self', 'voyager-images', '#000000', NULL, 11, '2018-06-06 12:59:40', '2018-06-06 13:00:04', NULL, '');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `header` enum('Enable','Disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable',
  `link` enum('Enable','Disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable',
  `footer` enum('Enable','Disable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Enable',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `service_id`, `title`, `excerpt`, `body`, `image`, `slug`, `status`, `header`, `link`, `footer`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Изготовление вывесок в г Сумы', NULL, '<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Для владельцев фирм, магазинов и ресторанов города&nbsp;<strong>Сумы изготовление вывесок&nbsp;</strong>всегда большая расходная статья. Но как показывает практика экономить на вывеске нельзя, иначе многие потенциальные клиенты просто не смогут Вас отыскать среди громадного количества рекламы.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Компания &laquo;Реклама Центр&raquo; уже много лет производит качественное изготовление вывесок в г Сумы<strong>.</strong>&nbsp;В своей работе мы используем современные материалы и передовые технологии. Поэтому мы уверенны, что вывески, изготовленные у нас, прослужат не один год и принесут Вам весомую прибыль.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Стоимость в городе Сумы изготовления вывесок сильно варьируется и определяется, прежде всего, типом вывески. Вывески могут быть световыми и несветовыми. Световые вывески более сложны в изготовлении, так как кроме каркаса вывески еще необходимо подобрать и правильно распределить освещение. Только правильное освещение вывески позволит ей эффектно выделяться на фоне остальной рекламы. В качестве светового оборудования используются диодные, люминесцентные лампы, а также неон.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Среди световых вывесок выделяют&nbsp;<em>лайтбоксы</em>,&nbsp;<em>световые буквы</em>,&nbsp;<em>акрилайты&nbsp;</em>и&nbsp;<em>фреймлайты</em>.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Для бюджетного варианта в городе Сумы изготовление вывесок производится без внутренней подсветки. В таком случае используется самоклеющаяся пленка, а также полноцветная печать на композитных материалах или пластике. В качестве внешней подсветки могут быть использованы специальные светодиодные лампы на держателях. К таким вывескам относят плоские вывески, баннеры настенные, а также таблички и указатели, изготовленные из пластика или металла.</p>', NULL, 'izgotovlenie-vyvesok-v-g-sumy', 'ACTIVE', 'Enable', 'Enable', 'Enable', '2018-04-02 10:13:49', '2018-04-02 11:45:29'),
(2, 1, 1, 'Наружная реклама в г Сумы', NULL, '<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Как и для большинства городов мира, для города Сумы наружная реклама стала неотъемлемой частью. Она настолько плотно вплелась в архитектуру города, что представить современные улицы без всего этого рекламного разнообразия просто невозможно.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">В городе&nbsp;<strong>Сумы наружные рекламы</strong>&nbsp;повсюду: на крышах и фасадах зданий, на столбах и на тротуарах, на проезжающих по улицам машинах и автобусах. И если раньше для привлечения клиентов достаточно было сделать яркую вывеску или установить лайтбокс, сейчас рекламная вывеска должна быть максимально эффектной и неординарной, чтобы выделяться из всего многообразия наружной рекламы.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">Наружная реклама в г Сумы &ndash; это способ громко заявить о себе. Кто-то для этих целей заказывает рекламу на всех доступных носителях, а кому-то для узнаваемости достаточно небольшой изысканной вывески.</p>\r\n<p style=\"font-family: Ubuntu, sans-serif; color: #777777; margin: 0px 0px 15px; font-size: 16px; line-height: 24px;\">У многих компаний и магазинов в городе Сумы наружные рекламы бывают очень схожи и люди часто начинают путать вывески. Во избежание такого мы всегда предлагаем нашим клиентам все новые виды вывесок, материалов, освещения и способов размещения. Именно поэтому реклама,&nbsp; изготовленная нашей компанией всегда выгодно выделяется на фоне остальных и дает нашим клиентам максимальный эффект от ее использования. Для жителей города Сумы наружные рекламы &ndash; это места для встреч, ориентиры на местности, арт-объекты и фоны для фотографий.</p>', NULL, 'naruzhnaya-reklama-v-g-sumy', 'ACTIVE', 'Enable', 'Enable', 'Enable', '2018-04-02 11:34:59', '2018-04-02 11:34:59');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(2, 'browse_database', NULL, '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(3, 'browse_media', NULL, '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(4, 'browse_compass', NULL, '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(5, 'browse_menus', 'menus', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(6, 'read_menus', 'menus', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(7, 'edit_menus', 'menus', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(8, 'add_menus', 'menus', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(9, 'delete_menus', 'menus', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(10, 'browse_pages', 'pages', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(11, 'read_pages', 'pages', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(12, 'edit_pages', 'pages', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(13, 'add_pages', 'pages', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(14, 'delete_pages', 'pages', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(15, 'browse_roles', 'roles', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(16, 'read_roles', 'roles', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(17, 'edit_roles', 'roles', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(18, 'add_roles', 'roles', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(19, 'delete_roles', 'roles', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(20, 'browse_users', 'users', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(21, 'read_users', 'users', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(22, 'edit_users', 'users', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(23, 'add_users', 'users', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(24, 'delete_users', 'users', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(25, 'browse_posts', 'posts', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(26, 'read_posts', 'posts', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(27, 'edit_posts', 'posts', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(28, 'add_posts', 'posts', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(29, 'delete_posts', 'posts', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(30, 'browse_categories', 'categories', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(31, 'read_categories', 'categories', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(32, 'edit_categories', 'categories', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(33, 'add_categories', 'categories', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(34, 'delete_categories', 'categories', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(35, 'browse_settings', 'settings', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(36, 'read_settings', 'settings', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(37, 'edit_settings', 'settings', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(38, 'add_settings', 'settings', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(39, 'delete_settings', 'settings', '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(40, 'browse_hooks', NULL, '2018-04-02 09:45:36', '2018-04-02 09:45:36', NULL),
(41, 'browse_services', 'services', '2018-04-02 09:49:36', '2018-04-02 09:49:36', NULL),
(42, 'read_services', 'services', '2018-04-02 09:49:36', '2018-04-02 09:49:36', NULL),
(43, 'edit_services', 'services', '2018-04-02 09:49:36', '2018-04-02 09:49:36', NULL),
(44, 'add_services', 'services', '2018-04-02 09:49:36', '2018-04-02 09:49:36', NULL),
(45, 'delete_services', 'services', '2018-04-02 09:49:36', '2018-04-02 09:49:36', NULL),
(46, 'browse_sliders', 'sliders', '2018-04-02 10:05:19', '2018-04-02 10:05:19', NULL),
(47, 'read_sliders', 'sliders', '2018-04-02 10:05:19', '2018-04-02 10:05:19', NULL),
(48, 'edit_sliders', 'sliders', '2018-04-02 10:05:19', '2018-04-02 10:05:19', NULL),
(49, 'add_sliders', 'sliders', '2018-04-02 10:05:19', '2018-04-02 10:05:19', NULL),
(50, 'delete_sliders', 'sliders', '2018-04-02 10:05:19', '2018-04-02 10:05:19', NULL),
(51, 'browse_teams', 'teams', '2018-06-06 10:12:14', '2018-06-06 10:12:14', NULL),
(52, 'read_teams', 'teams', '2018-06-06 10:12:14', '2018-06-06 10:12:14', NULL),
(53, 'edit_teams', 'teams', '2018-06-06 10:12:14', '2018-06-06 10:12:14', NULL),
(54, 'add_teams', 'teams', '2018-06-06 10:12:14', '2018-06-06 10:12:14', NULL),
(55, 'delete_teams', 'teams', '2018-06-06 10:12:14', '2018-06-06 10:12:14', NULL),
(56, 'browse_clients', 'clients', '2018-06-06 10:36:02', '2018-06-06 10:36:02', NULL),
(57, 'read_clients', 'clients', '2018-06-06 10:36:02', '2018-06-06 10:36:02', NULL),
(58, 'edit_clients', 'clients', '2018-06-06 10:36:02', '2018-06-06 10:36:02', NULL),
(59, 'add_clients', 'clients', '2018-06-06 10:36:02', '2018-06-06 10:36:02', NULL),
(60, 'delete_clients', 'clients', '2018-06-06 10:36:02', '2018-06-06 10:36:02', NULL),
(61, 'browse_feedbacks', 'feedbacks', '2018-06-06 11:22:06', '2018-06-06 11:22:06', NULL),
(62, 'read_feedbacks', 'feedbacks', '2018-06-06 11:22:06', '2018-06-06 11:22:06', NULL),
(63, 'edit_feedbacks', 'feedbacks', '2018-06-06 11:22:06', '2018-06-06 11:22:06', NULL),
(64, 'add_feedbacks', 'feedbacks', '2018-06-06 11:22:06', '2018-06-06 11:22:06', NULL),
(65, 'delete_feedbacks', 'feedbacks', '2018-06-06 11:22:06', '2018-06-06 11:22:06', NULL),
(66, 'browse_galeries', 'galeries', '2018-06-06 12:34:08', '2018-06-06 12:34:08', NULL),
(67, 'read_galeries', 'galeries', '2018-06-06 12:34:08', '2018-06-06 12:34:08', NULL),
(68, 'edit_galeries', 'galeries', '2018-06-06 12:34:08', '2018-06-06 12:34:08', NULL),
(69, 'add_galeries', 'galeries', '2018-06-06 12:34:08', '2018-06-06 12:34:08', NULL),
(70, 'delete_galeries', 'galeries', '2018-06-06 12:34:08', '2018-06-06 12:34:08', NULL),
(71, 'browse_photos', 'photos', '2018-06-06 12:55:32', '2018-06-06 12:55:32', NULL),
(72, 'read_photos', 'photos', '2018-06-06 12:55:32', '2018-06-06 12:55:32', NULL),
(73, 'edit_photos', 'photos', '2018-06-06 12:55:32', '2018-06-06 12:55:32', NULL),
(74, 'add_photos', 'photos', '2018-06-06 12:55:32', '2018-06-06 12:55:32', NULL),
(75, 'delete_photos', 'photos', '2018-06-06 12:55:32', '2018-06-06 12:55:32', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
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
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(64, 3),
(65, 1),
(65, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(74, 3),
(75, 1),
(75, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `galery_id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `galery_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'photos/June2018/UXHZVcwClOwhYYz0TvOO.png', '2018-06-06 12:58:16', '2018-06-06 13:14:44'),
(2, 2, 'photos/June2018/1v50agaSu9MuwVagepS6.png', '2018-06-06 12:58:29', '2018-06-06 13:14:35'),
(3, 1, 'photos/June2018/6PUtszNwSoO96Rpnp5sS.png', '2018-06-06 13:24:23', '2018-06-06 13:24:23'),
(4, 2, 'photos/June2018/7wbcZKinxWIPL63sRtYn.png', '2018-06-06 13:24:36', '2018-06-06 13:24:36');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(2, 'user', 'Normal User', '2018-04-02 09:45:36', '2018-04-02 09:45:36'),
(3, 'moderator', 'Moderator', '2018-06-06 13:43:03', '2018-06-06 13:43:03');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'УСЛУГИ', '2018-04-02 09:49:56', '2018-04-02 09:49:56'),
(2, 'ПРОДУКЦИЯ', '2018-04-02 09:50:06', '2018-04-02 09:50:06');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'site.facebook_link', 'Ссылка facebook', 'https://facebook.com', NULL, 'text', 6, 'Site'),
(12, 'site.twitter_link', 'Ссылка twitter', 'https://twitter.com/?lang=en', NULL, 'text', 6, 'Site'),
(13, 'site.google_link', 'Ссылка google', 'http://google.com.ua', NULL, 'text', 6, 'Site'),
(14, 'site.youtube_link', 'Ссылка youtube', 'https://www.youtube.com/', NULL, 'text', 6, 'Site'),
(15, 'site.linkedin_link', 'Ссылка linkedin', 'https://www.linkedin.com/', NULL, 'text', 6, 'Site'),
(16, 'site.phone_1', 'Телефон', '(050) 239-21-94', NULL, 'text', 7, 'Site'),
(17, 'site.phone_2', 'Телефон', '(0542) 659-111', NULL, 'text', 7, 'Site'),
(18, 'site.email', 'Email', 'hello@rc.sumy.ua', NULL, 'text', 8, 'Site'),
(19, 'site.address', 'Адрес', 'ул. Соборная, 29Г\r\nул. Горького, 17\r\nг. Сумы\r\nУкраина', NULL, 'text_area', 9, 'Site'),
(20, 'site.map', 'Карта', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1057.7421277912772!2d34.80059356552262!3d50.909861612092435!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x41290220afa075b1%3A0xf06dfe1153232586!2s29H%2C+Soborna+St%2C+29%D0%93%2C+Sumy%2C+Sums&#39;ka+oblast%2C+40000!5e0!3m2!1sen!2sua!4v1528295997037\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, 'text', 10, 'Site');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Лайтбокс', 'Самый популярный вид световой рекламы в городе Сумы - лайтбокс, и доказательством этого служит огромное количество световых рекламных коробов, размещенных вдоль тротуаров и на столбах, на фасадах и на крышах зданий.', 'sliders/April2018/bUJyPRof7qJO0ULX12T1.png', '2018-04-02 13:24:25', '2018-04-02 13:24:25');

-- --------------------------------------------------------

--
-- Структура таблицы `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `behance` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `teams`
--

INSERT INTO `teams` (`id`, `name`, `position`, `description`, `image`, `twitter`, `facebook`, `google`, `behance`, `pinterest`, `created_at`, `updated_at`) VALUES
(1, 'ИМЯ', 'Директор/основатель.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum. Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'teams/June2018/konwP00bcfBatKHtHaWa.png', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://plus.google.com/discover', 'https://www.behance.net/', 'https://www.pinterest.com/', '2018-06-06 10:15:44', '2018-06-06 10:15:44'),
(2, 'ИМЯ', 'Начальник производства.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum. Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'teams/June2018/konwP00bcfBatKHtHaWa.png', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://plus.google.com/discover', 'https://www.behance.net/', 'https://www.pinterest.com/', '2018-06-06 10:15:44', '2018-06-06 10:15:44'),
(3, 'ИМЯ', 'Ведущий дизайнер.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum. Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'teams/June2018/konwP00bcfBatKHtHaWa.png', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://plus.google.com/discover', 'https://www.behance.net/', 'https://www.pinterest.com/', '2018-06-06 10:15:44', '2018-06-06 10:15:44'),
(4, 'ИМЯ', 'Директор/основатель.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum. Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'teams/June2018/konwP00bcfBatKHtHaWa.png', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://plus.google.com/discover', 'https://www.behance.net/', 'https://www.pinterest.com/', '2018-06-06 10:15:44', '2018-06-06 10:15:44'),
(5, 'ИМЯ', 'Начальник производства.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum. Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'teams/June2018/konwP00bcfBatKHtHaWa.png', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://plus.google.com/discover', 'https://www.behance.net/', 'https://www.pinterest.com/', '2018-06-06 10:15:44', '2018-06-06 10:15:44'),
(6, 'ИМЯ', 'Ведущий дизайнер.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ac augue at erat hendrerit dictum. Praesent porta, purus eget sagittis imperdiet, nulla mi ullamcorper metus, id hendrerit metus diam vitae est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'teams/June2018/konwP00bcfBatKHtHaWa.png', 'https://twitter.com/?lang=en', 'https://www.facebook.com/', 'https://plus.google.com/discover', 'https://www.behance.net/', 'https://www.pinterest.com/', '2018-06-06 10:15:44', '2018-06-06 10:15:44');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$ESeLy58jHYwbTxVAINPez.vFD018R6E4vgyAkpDgIEu4bnsbeqOPy', NULL, '2018-04-02 09:47:38', '2018-04-02 09:47:38'),
(2, 3, 'Administrator', 'rc@admin.com', 'users/June2018/qRKGiQ8GWztfEAAdneT0.png', '$2y$10$ECtQJodHJhM60CmBBeCz5ezFlYhgdPO06eRbHkj7FswoV6j9XBarG', NULL, '2018-06-06 13:44:23', '2018-06-06 13:44:23');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
