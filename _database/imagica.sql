-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 12 2019 г., 16:05
-- Версия сервера: 5.7.13-log
-- Версия PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `imagica`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `description`, `author`, `date`) VALUES
(1, 'Публий Вергилий Марон', '																															Пу́блий Верги́лий Маро́н (лат. Publius Vergilius Maro; 15 октября 70 года до н. э., Анды близ Мантуи, Цизальпийская Галлия — 21 сентября 19 года до н. э., Брундизий, Италия) — римский поэт. Родился в незнатной, но зажиточной семье, в юности переехал в Медиолан, а позже перебрался в Италию. Большую часть своей небогатой событиями жизни Вергилий провёл в Неаполе и его окрестностях, время от времени появляясь в Риме. Писать стихи он начал ещё в 50-е годы до н. э. Известный впоследствии сборник Appendix Vergiliana содержит ряд небольших ранних произведений, принадлежность которых Вергилию оспаривается многими исследователями. В 39 году до н. э. был опубликован цикл пастушеских стихов «Буколики», имевший большой успех и сделавший его автора самым популярным поэтом своей эпохи. Примерно тогда же Вергилий стал, вместе со своим другом Квинтом Горацием Флакком, членом литературного кружка, сформировавшегося вокруг Гая Цильния Мецената; этот кружок объединяло отношение к Октавиану, позже получившему имя Август, как к человеку, спасшему Рим от ужасов гражданской войны. К 29 году до н. э. Публий закончил дидактический эпос о земледелии «Георгики» и начал работу над «Энеидой» — поэмой об истоках римской истории, задуманной как латинский «ответ Гомеру». Он не успел закончить это произведение и хотел сжечь рукопись перед смертью, но «Энеида» всё же была издана и стала для Рима основополагающим национальным эпосом.\r\n\r\nДля всех последующих эпох Вергилий стал лучшим поэтом Рима. Как автор трёх великих поэм он затмил греков Феокрита («Буколики»), Гесиода («Георгики») и Гомера («Энеида»). Его стихи уже во времена Ранней Империи были включены в школьную программу, его влияние стало определяющим для развития всей латинской поэзии. В эпоху Средневековья и Раннего Нового времени «Энеида» была одним из немногих античных текстов, остававшихся в обращении: её читали, перерабатывали, а в отдельных случаях пародировали. Вергилий приобрёл репутацию чародея и психопомпа (в частности, именно его Данте изобразил в «Божественной комедии» как своего проводника по загробному миру). Четвёртая эклога «Буколик» дала средневековым комментаторам повод, чтобы видеть в Вергилии предвестника христианства, который предсказал рождение Спасителя. В эпоху Возрождения и барокко на основе «Буколик» развивалась пасторальная литература, а «Энеида» оказала огромное влияние на развитие эпической традиции в национальных литературах Европы. Сюжеты произведений Вергилия активно использовались в живописи и в оперном жанре.																									', 'Пу́блий Верги́лий Маро́н (лат. Publius Vergilius Maro; 15 октября 70 года до н. э., Анды близ Мантуи, Цизальпийская Галлия — 21 сентября 19 года до н. э., Брундизий, Италия) — римский поэт. Родился в незнатной, но зажиточной семье, в юности переехал в Медиолан, а позже перебрался в Италию. Большую часть своей небогатой событиями жизни Вергилий провёл в Неаполе и его окрестностях, время от времени появляясь в Риме.', 'lady luck', '2019-06-03');

-- --------------------------------------------------------

--
-- Структура таблицы `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `id` int(11) NOT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `meta`
--

INSERT INTO `meta` (`id`, `module`, `title`, `description`, `keywords`) VALUES
(1, 'static_main', 'Главная', 'Стандартный шаблон на базе каркасса Imagica', 'template, CMS'),
(2, 'posts_main', 'Записи блога', 'Записи блога', 'posts'),
(3, 'posts_single', 'Блог - материал', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` smallint(6) NOT NULL,
  `sex` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('user','admin','banned') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `active` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `email`, `name`, `age`, `sex`, `hash`, `role`, `active`) VALUES
(1, 'admin', 'wt.5Mlo.Ohbvk', 'kido_koiin@mail.ru', 'Tim', 24, 'm', 'wtSqh6rBv99qs', 'admin', 1),
(2, 'dio', 'wt.5Mlo.Ohbvk', 'murza@mail.ru', 'R.J.Dio', 344, 'm', 'wtqPVtRESogM2', 'user', 0),
(4, 'vivi', 'wt.5Mlo.Ohbvk', 'maidzzi@mail.ru', 'yii', 0, 'm', 'wtItQi3lFUzCY', 'user', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `meta`
--
ALTER TABLE `meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
