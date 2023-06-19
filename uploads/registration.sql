-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июн 15 2023 г., 12:15
-- Версия сервера: 8.0.33-0ubuntu0.22.04.2
-- Версия PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `registration`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

CREATE TABLE `about` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`id`, `title`, `description`, `filename`) VALUES
(1, 'O нас!!!', 'Outcome-centered products that reduce churn, optimize pricing, and grow your subscription.', 'services1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `contact`
--

CREATE TABLE `contact` (
  `id` int UNSIGNED NOT NULL,
  `city` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `contact`
--

INSERT INTO `contact` (`id`, `city`, `phone`, `email`, `filename`) VALUES
(1, 'Краснодар', '+89888888888', 'nailya26@gmail.com', '44.png');

-- --------------------------------------------------------

--
-- Структура таблицы `header`
--

CREATE TABLE `header` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `header`
--

INSERT INTO `header` (`id`, `name`, `filename`) VALUES
(1, 'Веб-студия Название', 'uploads/sky.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `uslugi`
--

CREATE TABLE `uslugi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `uslugi`
--

INSERT INTO `uslugi` (`id`, `title`, `price`, `filename`) VALUES
(1, 'Создание сайтов', '500 рублей', 'services.ipg'),
(2, 'Создание сайтов', '500 рублей', 'services.ipg'),
(3, 'Создание сайтов', '500 рублей', 'services.ipg'),
(4, 'Создание сайтов', '500 рублей', 'services.ipg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about`
--
ALTER TABLE `about`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `contact`
--
ALTER TABLE `contact`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `header`
--
ALTER TABLE `header`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `uslugi`
--
ALTER TABLE `uslugi`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about`
--
ALTER TABLE `about`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `header`
--
ALTER TABLE `header`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `uslugi`
--
ALTER TABLE `uslugi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
