-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Авг 14 2022 г., 19:39
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `guest_book`
--

-- --------------------------------------------------------

--
-- Структура таблицы `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(350) DEFAULT NULL,
  `homePage` varchar(350) DEFAULT NULL,
  `text` text,
  `ip` varchar(250) DEFAULT NULL,
  `browser` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `guest`
--

INSERT INTO `guest` (`id`, `userName`, `email`, `homePage`, `text`, `ip`, `browser`, `date`) VALUES
(1, 'пре123', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-13 22:51:02'),
(2, 'пре123', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-13 22:55:25'),
(3, 'пре123', '221222222222222221@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-13 22:56:12'),
(4, 'пре123', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-13 22:56:19'),
(5, 'Игнат', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-13 22:58:23'),
(6, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(31, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(32, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(34, 'Александр', 'qwe@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:57:23'),
(36, 'Владимир', 'qwe@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:54:23'),
(37, 'Владимир', 'w2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:18:23'),
(38, 'Владимир', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(39, 'Алексей', 'qw@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2020-08-13 22:58:23'),
(40, 'Алексей', 'qwe2@mail.com', 'vk.com', '', '127.0.1.1', 'Хром', '2022-08-13 22:13:23'),
(43, 'Алексей', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:21'),
(45, 'Алексей', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(46, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2021-08-13 22:58:23'),
(47, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:12:23'),
(48, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 12:58:23'),
(49, 'Елена', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 14:58:23'),
(50, 'Елена', 'w@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(52, 'Елена', 'w@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(53, 'Олег', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(54, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(55, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(58, 'Владимир', 'wq@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:56:23'),
(60, 'Владимир', 'w2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:18:23'),
(61, 'Владимир', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:38:23'),
(62, 'Алексей', 'qw@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2020-08-13 22:38:23'),
(63, 'Алексей', 'qwe2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:13:23'),
(64, 'Алексейр', 'qw2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2021-08-13 22:18:23'),
(65, 'Алексейр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:48:23'),
(66, 'Алексей', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:48:21'),
(68, 'Алексей', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:08:23'),
(69, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2021-08-13 22:08:23'),
(70, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:12:23'),
(71, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 12:18:23'),
(72, 'Елена', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 14:08:23'),
(73, 'Елена', 'w@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:08:23'),
(74, 'Елена', 'www2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 20:18:23'),
(76, 'Олег', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:18:23'),
(77, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(78, 'Александр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(79, 'Александр', 'w@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:58:23'),
(82, 'Владимир', 'qwe@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:54:23'),
(83, 'Владимир', 'w2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:18:23'),
(84, 'Владимир', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:38:23'),
(85, 'Алексей', 'qw@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2020-08-13 22:38:23'),
(86, 'Алексей', 'qwe2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:13:23'),
(87, 'Алексейр', 'qw2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2021-08-13 22:18:23'),
(88, 'Алексейр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:48:23'),
(89, 'Алексей', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:48:21'),
(90, 'Алексейр', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:48:26'),
(91, 'Алексей', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:08:23'),
(92, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2021-08-13 22:08:23'),
(93, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:12:23'),
(94, 'Игорь', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 12:18:23'),
(95, 'Елена', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 14:08:23'),
(96, 'Елена', 'w@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:08:23'),
(97, 'Елена', 'www2@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 20:18:23'),
(98, 'Елена', 'w@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:18:23'),
(99, 'Олег', '22@mail.com', 'vk.com', 'Привет', '127.0.1.1', 'Хром', '2022-08-13 22:18:23'),
(100, 'пре123', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 13:21:04'),
(101, 'Эдуард', 'suroviy@admin.php', 'suroviy.ru', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 13:42:50'),
(102, 'Павел', 'pavel@mail.com', 'pavel', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 14:53:15'),
(103, 'Игнат', 'admin@admin.com', 'http://example.com', 'Lorem ipsum dolor sit amet,', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 16:39:58'),
(104, 'Ефим', 'admin@admin.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 16:41:01'),
(105, 'Андрей', 'admin@admin.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 16:44:02'),
(107, 'Елисей', '22@mail.com', 'http://example.com', 'Привет', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 16:46:01'),
(108, 'Георгий', 'admin@admin.com', 'http://example.com', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 18:56:43'),
(130, 'Терентий', 'w22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 19:20:23'),
(131, 'Терентий', 'w22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 19:20:36'),
(132, 'пре123', '22@mail.com', 'http://example.com', 'wwww', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 19:21:30'),
(133, 'Дмитрий', 'admin@admin.com', '', 'sss', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 19:27:52'),
(134, 'пре123', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 19:35:20'),
(135, 'Юрий', '22@mail.com', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36', '2022-08-14 19:36:53');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
