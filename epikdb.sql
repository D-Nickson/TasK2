-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Час створення: Вер 17 2021 р., 12:10
-- Версія сервера: 5.7.32
-- Версія PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `epikdb`
--

-- --------------------------------------------------------

--
-- Структура таблиці `Customers`
--

CREATE TABLE `Customers` (
  `idCustomer` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `secondName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `Customers`
--

INSERT INTO `Customers` (`idCustomer`, `email`, `firstName`, `secondName`) VALUES
(1, 'nick_cust@mail.com', 'nick_cust', 'nikolsen'),
(2, 'anatoliy@mail.com', 'anatoliy', 'anatoliyq'),
(3, 'izail@mail.com', 'izail', 'izailsky'),
(4, 'ivan_cust1@mail.com', 'ivan_cust', 'ivanchenko'),
(11, 'inesa@mail.com', 'inesa', 'potter'),
(12, 'kira@mail.com', 'kira', 'zamkova');

-- --------------------------------------------------------

--
-- Структура таблиці `OrderItems`
--

CREATE TABLE `OrderItems` (
  `idOrderItem` int(11) NOT NULL,
  `Order` int(11) NOT NULL,
  `Product` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `OrderItems`
--

INSERT INTO `OrderItems` (`idOrderItem`, `Order`, `Product`, `quantity`) VALUES
(1, 3, 2, 2),
(2, 1, 9, 5),
(3, 3, 10, 1),
(4, 2, 3, 8);

-- --------------------------------------------------------

--
-- Структура таблиці `Orders`
--

CREATE TABLE `Orders` (
  `idOrder` int(11) NOT NULL,
  `salesman` varchar(45) DEFAULT NULL,
  `dateOrder` datetime NOT NULL,
  `pyment` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `Orders`
--

INSERT INTO `Orders` (`idOrder`, `salesman`, `dateOrder`, `pyment`) VALUES
(1, 'ivan', '2021-09-15 13:09:18', 'yes'),
(2, 'tanya', '2021-09-16 13:09:18', 'yes'),
(3, 'Morgan', '2021-09-17 14:09:18', 'yes'),
(4, 'tanya', '2021-08-18 13:31:13', 'no'),
(5, 'tanya', '2021-07-06 13:31:13', 'yes'),
(6, 'ivan', '2021-09-17 10:48:34', 'yes'),
(7, 'tanya', '2021-09-17 13:54:53', 'yes');

-- --------------------------------------------------------

--
-- Структура таблиці `OrdersCustomers`
--

CREATE TABLE `OrdersCustomers` (
  `idOrdersCustumers` int(11) NOT NULL,
  `Orders` int(11) NOT NULL,
  `Custumers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `OrdersCustomers`
--

INSERT INTO `OrdersCustomers` (`idOrdersCustumers`, `Orders`, `Custumers`) VALUES
(1, 2, 2),
(2, 4, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `Products`
--

CREATE TABLE `Products` (
  `idProduct` int(11) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `manufacturer` varchar(30) DEFAULT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `discript` text,
  `dataCreated` datetime NOT NULL,
  `dateUpdate` datetime DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `User` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `Products`
--

INSERT INTO `Products` (`idProduct`, `productName`, `manufacturer`, `price`, `discript`, `dataCreated`, `dateUpdate`, `quantity`, `User`) VALUES
(1, 'screwdriver', 'bosh', '10.25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ma', '2021-09-08 04:33:09', '2021-09-17 11:09:09', 2, 2),
(2, 'hammer', 'makita', '25.35', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ma', '2021-09-17 09:09:09', '2021-09-18 11:13:09', 2, 2),
(3, 'drill', 'dnipro-M', '450.10', 'Lorem Ipsum is simply dummy text of ', '2021-09-17 09:16:19', NULL, 2, 3),
(4, 'wrench', 'bosh', '0.69', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '2021-09-21 12:16:19', NULL, 78, 2),
(5, 'drill', 'bosh', '45.10', 'Lorem Ipsum is simply dummy text of ', '2021-06-07 09:16:19', NULL, 5, 3),
(6, 'wrench', 'bosh', '0.69', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', '2021-09-21 12:16:19', NULL, 78, 2),
(7, 'perforator', 'makita', '110.67', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s scontaining Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-17 09:20:12', '2021-09-23 13:20:12', 52, 3),
(8, 'crowbar', 'dekker', '45.36', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s scontaining Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-17 09:20:12', NULL, 10, 6),
(9, 'perforator', 'makita', '100.67', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s scontaining Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-17 09:20:12', '2021-09-23 13:20:12', 5, 3),
(10, 'crowbar', 'makita', '45.36', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s scontaining Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2021-09-17 09:20:12', NULL, 5, 6),
(11, 'jackhammer', 'dnipro-M', '789.36', NULL, '2021-09-17 09:23:05', '2021-09-17 09:23:05', 3, 2),
(12, 'chainsaw', 'bosh', '98.23', NULL, '2021-08-02 12:23:05', '2021-09-17 09:23:05', 14, 1),
(13, 'jackhammer', 'dnipro-M', '789.36', NULL, '2021-09-17 09:23:05', '2021-09-17 09:23:05', 3, 2),
(14, 'chainsaw', 'bosh', '98.23', NULL, '2021-08-02 12:23:05', '2021-09-17 09:23:05', 78, 2);

-- --------------------------------------------------------

--
-- Структура таблиці `Users`
--

CREATE TABLE `Users` (
  `idUser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstName` varchar(20) DEFAULT NULL,
  `lastName` varchar(20) DEFAULT NULL,
  `role` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `Users`
--

INSERT INTO `Users` (`idUser`, `email`, `firstName`, `lastName`, `role`) VALUES
(1, 'Alex@mail.com', 'Alex', 'Alexo', 'admin'),
(2, 'Plex@mail.com', 'Plex', 'Plexo', 'manager'),
(3, 'nick@mail.com', 'nick', 'nicko', 'salesman'),
(6, 'ivan@mail.com', 'Ivan', 'Ivano', 'salesman'),
(8, 'inna@mail.com', 'Inna', 'Innao', 'manager'),
(9, 'morgan@mail.com', 'Morgan', 'Friman', 'salesman'),
(10, 'tanya@', 'tanya', 'pirogova', 'salesman');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`idCustomer`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Індекси таблиці `OrderItems`
--
ALTER TABLE `OrderItems`
  ADD PRIMARY KEY (`idOrderItem`),
  ADD KEY `orderitems_ibfk_1` (`Product`),
  ADD KEY `orderitems_ibfk_2` (`Order`);

--
-- Індекси таблиці `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`idOrder`);

--
-- Індекси таблиці `OrdersCustomers`
--
ALTER TABLE `OrdersCustomers`
  ADD PRIMARY KEY (`idOrdersCustumers`),
  ADD KEY `orderscustomers_ibfk_1` (`Custumers`),
  ADD KEY `Orders` (`Orders`);

--
-- Індекси таблиці `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`idProduct`),
  ADD KEY `products_ibfk_1` (`User`);

--
-- Індекси таблиці `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `Customers`
--
ALTER TABLE `Customers`
  MODIFY `idCustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблиці `OrderItems`
--
ALTER TABLE `OrderItems`
  MODIFY `idOrderItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `Orders`
--
ALTER TABLE `Orders`
  MODIFY `idOrder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `OrdersCustomers`
--
ALTER TABLE `OrdersCustomers`
  MODIFY `idOrdersCustumers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `Products`
--
ALTER TABLE `Products`
  MODIFY `idProduct` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблиці `Users`
--
ALTER TABLE `Users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `OrderItems`
--
ALTER TABLE `OrderItems`
  ADD CONSTRAINT `orderitems_ibfk_1` FOREIGN KEY (`Product`) REFERENCES `Products` (`idProduct`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderitems_ibfk_2` FOREIGN KEY (`Order`) REFERENCES `Orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `OrdersCustomers`
--
ALTER TABLE `OrdersCustomers`
  ADD CONSTRAINT `orderscustomers_ibfk_1` FOREIGN KEY (`Custumers`) REFERENCES `Customers` (`idCustomer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderscustomers_ibfk_2` FOREIGN KEY (`Orders`) REFERENCES `Orders` (`idOrder`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `Products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`User`) REFERENCES `Users` (`idUser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
