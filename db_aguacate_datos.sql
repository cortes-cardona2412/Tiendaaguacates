-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-11-2022 a las 02:28:25
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




CREATE TABLE `customers` (
  `id` int(15) NOT NULL,
  `name` varchar(300) NOT NULL,
  `last_name` varchar(300) NOT NULL,
  `document` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `address` varchar(300) NOT NULL,
  `phone` varchar(300) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `customers` (`id`, `name`, `last_name`, `document`, `email`, `address`, `phone`, `createdAt`, `updatedAt`) VALUES
(1, 'Stefani', 'Cortes', '1193043698', 'stefa24@gmail.com', 'Diag 63 44-39', '3158093726', '2022-11-18 ', '2022-11-18 '),
(2, 'Emilio', 'Bohorquez', '1269057526', 'Emiliob@gmail.com', 'cr 24 28-15', '3206601333', '2022-11-15 ', '2022-11-15 ');


CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `products` (`id`, `name`, `price`, `reference`, `amount`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Aguacate Picante', 2500, 'GP-250', 33, ' Picante', '2022-11-15 01:22:31', '2022-11-15 01:22:31'),
(2, 'Aguacate Natural', 1000, 'GN-500', 22, ' POCO VENDIDO', '2022-11-15 01:23:36', '2022-11-15 01:23:36'),
(3, 'Hummus', 500, 'HM-500', 11, 'LIQUIDACIÓN ', '2022-10-15 01:24:21', '2022-10-15 01:24:21');


ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `customers`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


