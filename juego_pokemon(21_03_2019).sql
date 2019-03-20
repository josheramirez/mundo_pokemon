-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2019 a las 15:45:37
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juego_pokemon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ataques`
--

CREATE TABLE `ataques` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `contest` varchar(50) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `accuracy` varchar(10) DEFAULT NULL,
  `generation` varchar(10) DEFAULT NULL,
  `name_esp` varchar(50) DEFAULT NULL,
  `name_jap` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ataques`
--

INSERT INTO `ataques` (`id`, `name`, `type`, `category`, `contest`, `pp`, `power`, `accuracy`, `generation`, `name_esp`, `name_jap`) VALUES
(1, 'Absorb', 'Grass', 'Special', 'Clever', 15, 40, '1,00', '1', NULL, NULL),
(2, 'Accelerock', 'Rock', 'Physical', '', 20, 40, '1,00', '7', NULL, NULL),
(3, 'Acid', 'Poison', 'Special', 'Clever', 30, 40, '1,00', '1', NULL, NULL),
(4, 'Acid Armor', 'Poison', 'Status', 'Tough', 20, NULL, '', '1', NULL, NULL),
(5, 'Acid Downpour', 'Poison', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(6, 'Acid Downpour', 'Poison', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(7, 'Acid Spray', 'Poison', 'Special', 'Beautiful', 20, 40, '1,00', '5', NULL, NULL),
(8, 'Acrobatics', 'Flying', 'Physical', 'Cool', 15, 55, '1,00', '5', NULL, NULL),
(9, 'Acupressure', 'Normal', 'Status', 'Tough', 30, NULL, '', '4', NULL, NULL),
(10, 'Aerial Ace', 'Flying', 'Physical', 'Cool', 20, 60, '', '3', NULL, NULL),
(11, 'Aeroblast', 'Flying', 'Special', 'Cool', 5, 100, '0,95', '2', NULL, NULL),
(12, 'After You', 'Normal', 'Status', 'Cute', 15, NULL, '', '5', NULL, NULL),
(13, 'Agility', 'Psychic', 'Status', 'Cool', 30, NULL, '', '1', NULL, NULL),
(14, 'Air Cutter', 'Flying', 'Special', 'Cool', 25, 60, '0,95', '3', NULL, NULL),
(15, 'Air Slash', 'Flying', 'Special', 'Cool', 15, 75, '0,95', '4', NULL, NULL),
(16, 'All-Out Pummeling', 'Fighting', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(17, 'All-Out Pummeling', 'Fighting', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(18, 'Ally Switch', 'Psychic', 'Status', 'Clever', 15, NULL, '', '5', NULL, NULL),
(19, 'Amnesia', 'Psychic', 'Status', 'Cute', 20, NULL, '', '1', NULL, NULL),
(20, 'Anchor Shot', 'Steel', 'Physical', '', 20, 80, '1,00', '7', NULL, NULL),
(21, 'Ancient Power', 'Rock', 'Special', 'Tough', 5, 60, '1,00', '2', NULL, NULL),
(22, 'Aqua Jet', 'Water', 'Physical', 'Cool', 20, 40, '1,00', '4', NULL, NULL),
(23, 'Aqua Ring', 'Water', 'Status', 'Beautiful', 20, NULL, '', '4', NULL, NULL),
(24, 'Aqua Tail', 'Water', 'Physical', 'Beautiful', 10, 90, '0,90', '4', NULL, NULL),
(25, 'Arm Thrust', 'Fighting', 'Physical', 'Tough', 20, 15, '1,00', '3', NULL, NULL),
(26, 'Aromatherapy', 'Grass', 'Status', 'Clever', 5, NULL, '', '3', NULL, NULL),
(27, 'Aromatic Mist', 'Fairy', 'Status', 'Beautiful', 20, NULL, '', '6', NULL, NULL),
(28, 'Assist', 'Normal', 'Status', 'Cute', 20, NULL, '', '3', NULL, NULL),
(29, 'Assurance', 'Dark', 'Physical', 'Clever', 10, 60, '1,00', '4', NULL, NULL),
(30, 'Astonish', 'Ghost', 'Physical', 'Cute', 15, 30, '1,00', '3', NULL, NULL),
(31, 'Attack Order', 'Bug', 'Physical', 'Clever', 15, 90, '1,00', '4', NULL, NULL),
(32, 'Attract', 'Normal', 'Status', 'Cute', 15, NULL, '1,00', '2', NULL, NULL),
(33, 'Aura Sphere', 'Fighting', 'Special', 'Beautiful', 20, 80, '', '4', NULL, NULL),
(34, 'Aurora Beam', 'Ice', 'Special', 'Beautiful', 20, 65, '1,00', '1', NULL, NULL),
(35, 'Aurora Veil', 'Ice', 'Status', '', 20, NULL, '', '7', NULL, NULL),
(36, 'Autotomize', 'Steel', 'Status', 'Beautiful', 15, NULL, '', '5', NULL, NULL),
(37, 'Avalanche', 'Ice', 'Physical', 'Beautiful', 10, 60, '1,00', '4', NULL, NULL),
(38, 'Baby-Doll Eyes', 'Fairy', 'Status', 'Cute', 30, NULL, '1,00', '6', NULL, NULL),
(39, 'Baddy Bad', 'Dark', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(40, 'Baneful Bunker', 'Poison', 'Status', '', 10, NULL, '', '7', NULL, NULL),
(41, 'Barrage', 'Normal', 'Physical', 'Cute', 20, 15, '0,85', '1', NULL, NULL),
(42, 'Barrier', 'Psychic', 'Status', 'Cool', 20, NULL, '', '1', NULL, NULL),
(43, 'Baton Pass', 'Normal', 'Status', 'Cute', 40, NULL, '', '2', NULL, NULL),
(44, 'Beak Blast', 'Flying', 'Physical', '', 15, 100, '1,00', '7', NULL, NULL),
(45, 'Beat Up', 'Dark', 'Physical', 'Clever', 10, NULL, '1,00', '2', NULL, NULL),
(46, 'Belch', 'Poison', 'Special', 'Tough', 10, 120, '0,90', '6', NULL, NULL),
(47, 'Belly Drum', 'Normal', 'Status', 'Cute', 10, NULL, '', '2', NULL, NULL),
(48, 'Bestow', 'Normal', 'Status', 'Cute', 15, NULL, '', '5', NULL, NULL),
(49, 'Bide', 'Normal', 'Physical', 'Tough', 10, NULL, '', '1', NULL, NULL),
(50, 'Bind', 'Normal', 'Physical', 'Tough', 20, 15, '0,85', '1', NULL, NULL),
(51, 'Bite', 'Dark', 'Physical', 'Tough', 25, 60, '1,00', '1', NULL, NULL),
(52, 'Black Hole Eclipse', 'Dark', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(53, 'Black Hole Eclipse', 'Dark', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(54, 'Blast Burn', 'Fire', 'Special', 'Beautiful', 5, 150, '0,90', '3', NULL, NULL),
(55, 'Blaze Kick', 'Fire', 'Physical', 'Cool', 10, 85, '0,90', '3', NULL, NULL),
(56, 'Blizzard', 'Ice', 'Special', 'Beautiful', 5, 110, '0,70', '1', NULL, NULL),
(57, 'Block', 'Normal', 'Status', 'Cute', 5, NULL, '', '3', NULL, NULL),
(58, 'Bloom Doom', 'Grass', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(59, 'Bloom Doom', 'Grass', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(60, 'Blue Flare', 'Fire', 'Special', 'Beautiful', 5, 130, '0,85', '5', NULL, NULL),
(61, 'Body Slam', 'Normal', 'Physical', 'Tough', 15, 85, '1,00', '1', NULL, NULL),
(62, 'Bolt Strike', 'Electric', 'Physical', 'Beautiful', 5, 130, '0,85', '5', NULL, NULL),
(63, 'Bone Club', 'Ground', 'Physical', 'Tough', 20, 65, '0,85', '1', NULL, NULL),
(64, 'Bone Rush', 'Ground', 'Physical', 'Tough', 10, 25, '0,90', '2', NULL, NULL),
(65, 'Bonemerang', 'Ground', 'Physical', 'Tough', 10, 50, '0,90', '1', NULL, NULL),
(66, 'Boomburst', 'Normal', 'Special', 'Tough', 10, 140, '1,00', '6', NULL, NULL),
(67, 'Bounce', 'Flying', 'Physical', 'Cute', 5, 85, '0,85', '3', NULL, NULL),
(68, 'Bouncy Bubble', 'Water', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(69, 'Brave Bird', 'Flying', 'Physical', 'Cool', 15, 120, '1,00', '4', NULL, NULL),
(70, 'Breakneck Blitz', 'Normal', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(71, 'Breakneck Blitz', 'Normal', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(72, 'Brick Break', 'Fighting', 'Physical', 'Cool', 15, 75, '1,00', '3', NULL, NULL),
(73, 'Brine', 'Water', 'Special', 'Tough', 10, 65, '1,00', '4', NULL, NULL),
(74, 'Brutal Swing', 'Dark', 'Physical', '', 20, 60, '1,00', '7', NULL, NULL),
(75, 'Bubble', 'Water', 'Special', 'Cute', 30, 40, '1,00', '1', NULL, NULL),
(76, 'Bubble Beam', 'Water', 'Special', 'Beautiful', 20, 65, '1,00', '1', NULL, NULL),
(77, 'Bug Bite', 'Bug', 'Physical', 'Cute', 20, 60, '1,00', '4', NULL, NULL),
(78, 'Bug Buzz', 'Bug', 'Special', 'Beautiful', 10, 90, '1,00', '4', NULL, NULL),
(79, 'Bulk Up', 'Fighting', 'Status', 'Cool', 20, NULL, '', '3', NULL, NULL),
(80, 'Bulldoze', 'Ground', 'Physical', 'Tough', 20, 60, '1,00', '5', NULL, NULL),
(81, 'Bullet Punch', 'Steel', 'Physical', 'Tough', 30, 40, '1,00', '4', NULL, NULL),
(82, 'Bullet Seed', 'Grass', 'Physical', 'Cool', 30, 25, '1,00', '3', NULL, NULL),
(83, 'Burn Up', 'Fire', 'Special', '', 5, 130, '1,00', '7', NULL, NULL),
(84, 'Buzzy Buzz', 'Electric', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(85, 'Calm Mind', 'Psychic', 'Status', 'Clever', 20, NULL, '', '3', NULL, NULL),
(86, 'Camouflage', 'Normal', 'Status', 'Clever', 20, NULL, '', '3', NULL, NULL),
(87, 'Captivate', 'Normal', 'Status', 'Cute', 20, NULL, '1,00', '4', NULL, NULL),
(88, 'Catastropika', 'Electric', 'Physical', '', 1, 210, '', '7', NULL, NULL),
(89, 'Celebrate', 'Normal', 'Status', 'Cute', 40, NULL, '', '6', NULL, NULL),
(90, 'Charge', 'Electric', 'Status', 'Clever', 20, NULL, '', '3', NULL, NULL),
(91, 'Charge Beam', 'Electric', 'Special', 'Beautiful', 10, 50, '0,90', '4', NULL, NULL),
(92, 'Charm', 'Fairy', 'Status', 'Cute', 20, NULL, '1,00', '2', NULL, NULL),
(93, 'Chatter', 'Flying', 'Special', 'Cute', 20, 65, '1,00', '4', NULL, NULL),
(94, 'Chip Away', 'Normal', 'Physical', 'Tough', 20, 70, '1,00', '5', NULL, NULL),
(95, 'Circle Throw', 'Fighting', 'Physical', 'Cool', 10, 60, '0,90', '5', NULL, NULL),
(96, 'Clamp', 'Water', 'Physical', 'Tough', 15, 35, '0,85', '1', NULL, NULL),
(97, 'Clanging Scales', 'Dragon', 'Special', '', 5, 110, '1,00', '7', NULL, NULL),
(98, 'Clangorous Soulblaze', 'Dragon', 'Special', '', 1, 185, '', '7', NULL, NULL),
(99, 'Clear Smog', 'Poison', 'Special', 'Beautiful', 15, 50, '', '5', NULL, NULL),
(100, 'Close Combat', 'Fighting', 'Physical', 'Tough', 5, 120, '1,00', '4', NULL, NULL),
(101, 'Coil', 'Poison', 'Status', 'Tough', 20, NULL, '', '5', NULL, NULL),
(102, 'Comet Punch', 'Normal', 'Physical', 'Tough', 15, 18, '0,85', '1', NULL, NULL),
(103, 'Confide', 'Normal', 'Status', 'Cute', 20, NULL, '', '6', NULL, NULL),
(104, 'Confuse Ray', 'Ghost', 'Status', 'Clever', 10, NULL, '1,00', '1', NULL, NULL),
(105, 'Confusion', 'Psychic', 'Special', 'Clever', 25, 50, '1,00', '1', NULL, NULL),
(106, 'Constrict', 'Normal', 'Physical', 'Tough', 35, 10, '1,00', '1', NULL, NULL),
(107, 'Continental Crush', 'Rock', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(108, 'Continental Crush', 'Rock', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(109, 'Conversion', 'Normal', 'Status', 'Beautiful', 30, NULL, '', '1', NULL, NULL),
(110, 'Conversion 2', 'Normal', 'Status', 'Beautiful', 30, NULL, '', '2', NULL, NULL),
(111, 'Copycat', 'Normal', 'Status', 'Cute', 20, NULL, '', '4', NULL, NULL),
(112, 'Core Enforcer', 'Dragon', 'Special', '', 10, 100, '1,00', '7', NULL, NULL),
(113, 'Corkscrew Crash', 'Steel', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(114, 'Corkscrew Crash', 'Steel', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(115, 'Cosmic Power', 'Psychic', 'Status', 'Beautiful', 20, NULL, '', '3', NULL, NULL),
(116, 'Cotton Guard', 'Grass', 'Status', 'Cute', 10, NULL, '', '5', NULL, NULL),
(117, 'Cotton Spore', 'Grass', 'Status', 'Beautiful', 40, NULL, '1,00', '2', NULL, NULL),
(118, 'Counter', 'Fighting', 'Physical', 'Tough', 20, NULL, '1,00', '1', NULL, NULL),
(119, 'Covet', 'Normal', 'Physical', 'Cute', 25, 60, '1,00', '3', NULL, NULL),
(120, 'Crabhammer', 'Water', 'Physical', 'Tough', 10, 100, '0,90', '1', NULL, NULL),
(121, 'Crafty Shield', 'Fairy', 'Status', 'Clever', 10, NULL, '', '6', NULL, NULL),
(122, 'Cross Chop', 'Fighting', 'Physical', 'Cool', 5, 100, '0,80', '2', NULL, NULL),
(123, 'Cross Poison', 'Poison', 'Physical', 'Cool', 20, 70, '1,00', '4', NULL, NULL),
(124, 'Crunch', 'Dark', 'Physical', 'Tough', 15, 80, '1,00', '2', NULL, NULL),
(125, 'Crush Claw', 'Normal', 'Physical', 'Cool', 10, 75, '0,95', '3', NULL, NULL),
(126, 'Crush Grip', 'Normal', 'Physical', 'Tough', 5, NULL, '1,00', '4', NULL, NULL),
(127, 'Curse', 'Ghost', 'Status', 'Tough', 10, NULL, '', '2', NULL, NULL),
(128, 'Cut', 'Normal', 'Physical', 'Cool', 30, 50, '0,95', '1', NULL, NULL),
(129, 'Dark Pulse', 'Dark', 'Special', 'Cool', 15, 80, '1,00', '4', NULL, NULL),
(130, 'Dark Void', 'Dark', 'Status', 'Clever', 10, NULL, '0,50', '4', NULL, NULL),
(131, 'Darkest Lariat', 'Dark', 'Physical', '', 10, 85, '1,00', '7', NULL, NULL),
(132, 'Dazzling Gleam', 'Fairy', 'Special', 'Beautiful', 10, 80, '1,00', '6', NULL, NULL),
(133, 'Defend Order', 'Bug', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(134, 'Defense Curl', 'Normal', 'Status', 'Cute', 40, NULL, '', '1', NULL, NULL),
(135, 'Defog', 'Flying', 'Status', 'Cool', 15, NULL, '', '4', NULL, NULL),
(136, 'Destiny Bond', 'Ghost', 'Status', 'Clever', 5, NULL, '', '2', NULL, NULL),
(137, 'Detect', 'Fighting', 'Status', 'Cool', 5, NULL, '', '2', NULL, NULL),
(138, 'Devastating Drake', 'Dragon', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(139, 'Devastating Drake', 'Dragon', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(140, 'Diamond Storm', 'Rock', 'Physical', 'Beautiful', 5, 100, '0,95', '6', NULL, NULL),
(141, 'Dig', 'Ground', 'Physical', 'Tough', 10, 80, '1,00', '1', NULL, NULL),
(142, 'Disable', 'Normal', 'Status', 'Clever', 20, NULL, '1,00', '1', NULL, NULL),
(143, 'Disarming Voice', 'Fairy', 'Special', 'Cute', 15, 40, '', '6', NULL, NULL),
(144, 'Discharge', 'Electric', 'Special', 'Beautiful', 15, 80, '1,00', '4', NULL, NULL),
(145, 'Dive', 'Water', 'Physical', 'Beautiful', 10, 80, '1,00', '3', NULL, NULL),
(146, 'Dizzy Punch', 'Normal', 'Physical', 'Cute', 10, 70, '1,00', '1', NULL, NULL),
(147, 'Doom Desire', 'Steel', 'Special', 'Beautiful', 5, 140, '1,00', '3', NULL, NULL),
(148, 'Double Hit', 'Normal', 'Physical', 'Cool', 10, 35, '0,90', '4', NULL, NULL),
(149, 'Double Iron Bash', 'Steel', 'Physical', '', 5, 60, '1,00', '7', NULL, NULL),
(150, 'Double Kick', 'Fighting', 'Physical', 'Cool', 30, 30, '1,00', '1', NULL, NULL),
(151, 'Double Slap', 'Normal', 'Physical', 'Cute', 10, 15, '0,85', '1', NULL, NULL),
(152, 'Double Team', 'Normal', 'Status', 'Cool', 15, NULL, '', '1', NULL, NULL),
(153, 'Double-Edge', 'Normal', 'Physical', 'Tough', 15, 120, '1,00', '1', NULL, NULL),
(154, 'Draco Meteor', 'Dragon', 'Special', 'Beautiful', 5, 130, '0,90', '4', NULL, NULL),
(155, 'Dragon Ascent', 'Flying', 'Physical', 'Beautiful', 5, 120, '1,00', '6', NULL, NULL),
(156, 'Dragon Breath', 'Dragon', 'Special', 'Cool', 20, 60, '1,00', '2', NULL, NULL),
(157, 'Dragon Claw', 'Dragon', 'Physical', 'Cool', 15, 80, '1,00', '3', NULL, NULL),
(158, 'Dragon Dance', 'Dragon', 'Status', 'Cool', 20, NULL, '', '3', NULL, NULL),
(159, 'Dragon Hammer', 'Dragon', 'Physical', '', 15, 90, '1,00', '7', NULL, NULL),
(160, 'Dragon Pulse', 'Dragon', 'Special', 'Beautiful', 10, 85, '1,00', '4', NULL, NULL),
(161, 'Dragon Rage', 'Dragon', 'Special', 'Cool', 10, NULL, '1,00', '1', NULL, NULL),
(162, 'Dragon Rush', 'Dragon', 'Physical', 'Tough', 10, 100, '0,75', '4', NULL, NULL),
(163, 'Dragon Tail', 'Dragon', 'Physical', 'Tough', 10, 60, '0,90', '5', NULL, NULL),
(164, 'Drain Punch', 'Fighting', 'Physical', 'Tough', 10, 75, '1,00', '4', NULL, NULL),
(165, 'Draining Kiss', 'Fairy', 'Special', 'Cute', 10, 50, '1,00', '6', NULL, NULL),
(166, 'Dream Eater', 'Psychic', 'Special', 'Clever', 15, 100, '1,00', '1', NULL, NULL),
(167, 'Drill Peck', 'Flying', 'Physical', 'Cool', 20, 80, '1,00', '1', NULL, NULL),
(168, 'Drill Run', 'Ground', 'Physical', 'Tough', 10, 80, '0,95', '5', NULL, NULL),
(169, 'Dual Chop', 'Dragon', 'Physical', 'Tough', 15, 40, '0,90', '5', NULL, NULL),
(170, 'Dynamic Punch', 'Fighting', 'Physical', 'Cool', 5, 100, '0,50', '2', NULL, NULL),
(171, 'Earth Power', 'Ground', 'Special', 'Beautiful', 10, 90, '1,00', '4', NULL, NULL),
(172, 'Earthquake', 'Ground', 'Physical', 'Tough', 10, 100, '1,00', '1', NULL, NULL),
(173, 'Echoed Voice', 'Normal', 'Special', 'Beautiful', 15, 40, '1,00', '5', NULL, NULL),
(174, 'Eerie Impulse', 'Electric', 'Status', 'Clever', 15, NULL, '1,00', '6', NULL, NULL),
(175, 'Egg Bomb', 'Normal', 'Physical', 'Cute', 10, 100, '0,75', '1', NULL, NULL),
(176, 'Electric Terrain', 'Electric', 'Status', 'Clever', 10, NULL, '', '6', NULL, NULL),
(177, 'Electrify', 'Electric', 'Status', 'Clever', 20, NULL, '', '6', NULL, NULL),
(178, 'Electro Ball', 'Electric', 'Special', 'Cool', 10, NULL, '1,00', '5', NULL, NULL),
(179, 'Electroweb', 'Electric', 'Special', 'Beautiful', 15, 55, '0,95', '5', NULL, NULL),
(180, 'Embargo', 'Dark', 'Status', 'Clever', 15, NULL, '1,00', '4', NULL, NULL),
(181, 'Ember', 'Fire', 'Special', 'Cute', 25, 40, '1,00', '1', NULL, NULL),
(182, 'Encore', 'Normal', 'Status', 'Cute', 5, NULL, '1,00', '2', NULL, NULL),
(183, 'Endeavor', 'Normal', 'Physical', 'Tough', 5, NULL, '1,00', '3', NULL, NULL),
(184, 'Endure', 'Normal', 'Status', 'Tough', 10, NULL, '', '2', NULL, NULL),
(185, 'Energy Ball', 'Grass', 'Special', 'Beautiful', 10, 90, '1,00', '4', NULL, NULL),
(186, 'Entrainment', 'Normal', 'Status', 'Cute', 15, NULL, '1,00', '5', NULL, NULL),
(187, 'Eruption', 'Fire', 'Special', 'Beautiful', 5, 150, '1,00', '3', NULL, NULL),
(188, 'Explosion', 'Normal', 'Physical', 'Beautiful', 5, 250, '1,00', '1', NULL, NULL),
(189, 'Extrasensory', 'Psychic', 'Special', 'Cool', 20, 80, '1,00', '3', NULL, NULL),
(190, 'Extreme Evoboost', 'Normal', 'Status', '', 1, NULL, '', '7', NULL, NULL),
(191, 'Extreme Speed', 'Normal', 'Physical', 'Cool', 5, 80, '1,00', '2', NULL, NULL),
(192, 'Facade', 'Normal', 'Physical', 'Cute', 20, 70, '1,00', '3', NULL, NULL),
(193, 'Fairy Lock', 'Fairy', 'Status', 'Clever', 10, NULL, '', '6', NULL, NULL),
(194, 'Fairy Wind', 'Fairy', 'Special', 'Beautiful', 30, 40, '1,00', '6', NULL, NULL),
(195, 'Fake Out', 'Normal', 'Physical', 'Cute', 10, 40, '1,00', '3', NULL, NULL),
(196, 'Fake Tears', 'Dark', 'Status', 'Cute', 20, NULL, '1,00', '3', NULL, NULL),
(197, 'False Swipe', 'Normal', 'Physical', 'Cool', 40, 40, '1,00', '2', NULL, NULL),
(198, 'Feather Dance', 'Flying', 'Status', 'Beautiful', 15, NULL, '1,00', '3', NULL, NULL),
(199, 'Feint', 'Normal', 'Physical', 'Clever', 10, 30, '1,00', '4', NULL, NULL),
(200, 'Feint Attack', 'Dark', 'Physical', 'Clever', 20, 60, '', '2', NULL, NULL),
(201, 'Fell Stinger', 'Bug', 'Physical', 'Cool', 25, 50, '1,00', '6', NULL, NULL),
(202, 'Fiery Dance', 'Fire', 'Special', 'Beautiful', 10, 80, '1,00', '5', NULL, NULL),
(203, 'Final Gambit', 'Fighting', 'Special', 'Tough', 5, NULL, '1,00', '5', NULL, NULL),
(204, 'Fire Blast', 'Fire', 'Special', 'Beautiful', 5, 110, '0,85', '1', NULL, NULL),
(205, 'Fire Fang', 'Fire', 'Physical', 'Cool', 15, 65, '0,95', '4', NULL, NULL),
(206, 'Fire Lash', 'Fire', 'Physical', '', 15, 80, '1,00', '7', NULL, NULL),
(207, 'Fire Pledge', 'Fire', 'Special', 'Beautiful', 10, 80, '1,00', '5', NULL, NULL),
(208, 'Fire Punch', 'Fire', 'Physical', 'Tough', 15, 75, '1,00', '1', NULL, NULL),
(209, 'Fire Spin', 'Fire', 'Special', 'Beautiful', 15, 35, '0,85', '1', NULL, NULL),
(210, 'First Impression', 'Bug', 'Physical', '', 10, 90, '1,00', '7', NULL, NULL),
(211, 'Fissure', 'Ground', 'Physical', 'Tough', 5, NULL, ' ', '1', NULL, NULL),
(212, 'Flail', 'Normal', 'Physical', 'Cute', 15, NULL, '1,00', '2', NULL, NULL),
(213, 'Flame Burst', 'Fire', 'Special', 'Beautiful', 15, 70, '1,00', '5', NULL, NULL),
(214, 'Flame Charge', 'Fire', 'Physical', 'Cool', 20, 50, '1,00', '5', NULL, NULL),
(215, 'Flame Wheel', 'Fire', 'Physical', 'Beautiful', 25, 60, '1,00', '2', NULL, NULL),
(216, 'Flamethrower', 'Fire', 'Special', 'Beautiful', 15, 90, '1,00', '1', NULL, NULL),
(217, 'Flare Blitz', 'Fire', 'Physical', 'Cool', 15, 120, '1,00', '4', NULL, NULL),
(218, 'Flash', 'Normal', 'Status', 'Beautiful', 20, NULL, '1,00', '1', NULL, NULL),
(219, 'Flash Cannon', 'Steel', 'Special', 'Beautiful', 10, 80, '1,00', '4', NULL, NULL),
(220, 'Flatter', 'Dark', 'Status', 'Clever', 15, NULL, '1,00', '3', NULL, NULL),
(221, 'Fleur Cannon', 'Fairy', 'Special', '', 5, 130, '0,90', '7', NULL, NULL),
(222, 'Fling', 'Dark', 'Physical', 'Cute', 10, NULL, '1,00', '4', NULL, NULL),
(223, 'Floaty Fall', 'Flying', 'Physical', '', 15, 90, '0,95', '7', NULL, NULL),
(224, 'Floral Healing', 'Fairy', 'Status', '', 10, NULL, '', '7', NULL, NULL),
(225, 'Flower Shield', 'Fairy', 'Status', 'Beautiful', 10, NULL, '', '6', NULL, NULL),
(226, 'Fly', 'Flying', 'Physical', 'Clever', 15, 90, '0,95', '1', NULL, NULL),
(227, 'Flying Press', 'Fighting', 'Physical', 'Tough', 10, 100, '0,95', '6', NULL, NULL),
(228, 'Focus Blast', 'Fighting', 'Special', 'Cool', 5, 120, '0,70', '4', NULL, NULL),
(229, 'Focus Energy', 'Normal', 'Status', 'Cool', 30, NULL, '', '1', NULL, NULL),
(230, 'Focus Punch', 'Fighting', 'Physical', 'Tough', 20, 150, '1,00', '3', NULL, NULL),
(231, 'Follow Me', 'Normal', 'Status', 'Cute', 20, NULL, '', '3', NULL, NULL),
(232, 'Force Palm', 'Fighting', 'Physical', 'Cool', 10, 60, '1,00', '4', NULL, NULL),
(233, 'Foresight', 'Normal', 'Status', 'Clever', 40, NULL, '', '2', NULL, NULL),
(234, 'Forest\'s Curse', 'Grass', 'Status', 'Clever', 20, NULL, '1,00', '6', NULL, NULL),
(235, 'Foul Play', 'Dark', 'Physical', 'Clever', 15, 95, '1,00', '5', NULL, NULL),
(236, 'Freeze Shock', 'Ice', 'Physical', 'Beautiful', 5, 140, '0,90', '5', NULL, NULL),
(237, 'Freeze-Dry', 'Ice', 'Special', 'Beautiful', 20, 70, '1,00', '6', NULL, NULL),
(238, 'Freezy Frost', 'Ice', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(239, 'Frenzy Plant', 'Grass', 'Special', 'Cool', 5, 150, '0,90', '3', NULL, NULL),
(240, 'Frost Breath', 'Ice', 'Special', 'Beautiful', 10, 60, '0,90', '5', NULL, NULL),
(241, 'Frustration', 'Normal', 'Physical', 'Cute', 20, NULL, '1,00', '2', NULL, NULL),
(242, 'Fury Attack', 'Normal', 'Physical', 'Cool', 20, 15, '0,85', '1', NULL, NULL),
(243, 'Fury Cutter', 'Bug', 'Physical', 'Cool', 20, 40, '0,95', '2', NULL, NULL),
(244, 'Fury Swipes', 'Normal', 'Physical', 'Tough', 15, 18, '0,80', '1', NULL, NULL),
(245, 'Fusion Bolt', 'Electric', 'Physical', 'Cool', 5, 100, '1,00', '5', NULL, NULL),
(246, 'Fusion Flare', 'Fire', 'Special', 'Beautiful', 5, 100, '1,00', '5', NULL, NULL),
(247, 'Future Sight', 'Psychic', 'Special', 'Clever', 10, 120, '1,00', '2', NULL, NULL),
(248, 'Gastro Acid', 'Poison', 'Status', 'Tough', 10, NULL, '1,00', '4', NULL, NULL),
(249, 'Gear Grind', 'Steel', 'Physical', 'Clever', 15, 50, '0,85', '5', NULL, NULL),
(250, 'Gear Up', 'Steel', 'Status', '', 20, NULL, '', '7', NULL, NULL),
(251, 'Genesis Supernova', 'Psychic', 'Special', '', 1, 185, '', '7', NULL, NULL),
(252, 'Geomancy', 'Fairy', 'Status', 'Beautiful', 10, NULL, '', '6', NULL, NULL),
(253, 'Giga Drain', 'Grass', 'Special', 'Clever', 10, 75, '1,00', '2', NULL, NULL),
(254, 'Giga Impact', 'Normal', 'Physical', 'Tough', 5, 150, '0,90', '4', NULL, NULL),
(255, 'Gigavolt Havoc', 'Electric', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(256, 'Gigavolt Havoc', 'Electric', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(257, 'Glaciate', 'Ice', 'Special', 'Beautiful', 10, 65, '0,95', '5', NULL, NULL),
(258, 'Glare', 'Normal', 'Status', 'Tough', 30, NULL, '1,00', '1', NULL, NULL),
(259, 'Glitzy Glow', 'Psychic', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(260, 'Grass Knot', 'Grass', 'Special', 'Cute', 20, NULL, '1,00', '4', NULL, NULL),
(261, 'Grass Pledge', 'Grass', 'Special', 'Beautiful', 10, 80, '1,00', '5', NULL, NULL),
(262, 'Grass Whistle', 'Grass', 'Status', 'Clever', 15, NULL, '0,55', '3', NULL, NULL),
(263, 'Grassy Terrain', 'Grass', 'Status', 'Beautiful', 10, NULL, '', '6', NULL, NULL),
(264, 'Gravity', 'Psychic', 'Status', 'Clever', 5, NULL, '', '4', NULL, NULL),
(265, 'Growl', 'Normal', 'Status', 'Cute', 40, NULL, '1,00', '1', NULL, NULL),
(266, 'Growth', 'Normal', 'Status', 'Beautiful', 20, NULL, '', '1', NULL, NULL),
(267, 'Grudge', 'Ghost', 'Status', 'Tough', 5, NULL, '', '3', NULL, NULL),
(268, 'Guard Split', 'Psychic', 'Status', 'Clever', 10, NULL, '', '5', NULL, NULL),
(269, 'Guard Swap', 'Psychic', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(270, 'Guardian of Alola', 'Fairy', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(271, 'Guillotine', 'Normal', 'Physical', 'Cool', 5, NULL, ' ', '1', NULL, NULL),
(272, 'Gunk Shot', 'Poison', 'Physical', 'Tough', 5, 120, '0,80', '4', NULL, NULL),
(273, 'Gust', 'Flying', 'Special', 'Clever', 35, 40, '1,00', '1', NULL, NULL),
(274, 'Gyro Ball', 'Steel', 'Physical', 'Cool', 5, NULL, '1,00', '4', NULL, NULL),
(275, 'Hail', 'Ice', 'Status', 'Beautiful', 10, NULL, '', '3', NULL, NULL),
(276, 'Hammer Arm', 'Fighting', 'Physical', 'Tough', 10, 100, '0,90', '4', NULL, NULL),
(277, 'Happy Hour', 'Normal', 'Status', 'Cute', 30, NULL, '', '6', NULL, NULL),
(278, 'Harden', 'Normal', 'Status', 'Tough', 30, NULL, '', '1', NULL, NULL),
(279, 'Haze', 'Ice', 'Status', 'Beautiful', 30, NULL, '', '1', NULL, NULL),
(280, 'Head Charge', 'Normal', 'Physical', 'Tough', 15, 120, '1,00', '5', NULL, NULL),
(281, 'Head Smash', 'Rock', 'Physical', 'Tough', 5, 150, '0,80', '4', NULL, NULL),
(282, 'Headbutt', 'Normal', 'Physical', 'Tough', 15, 70, '1,00', '1', NULL, NULL),
(283, 'Heal Bell', 'Normal', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(284, 'Heal Block', 'Psychic', 'Status', 'Clever', 15, NULL, '1,00', '4', NULL, NULL),
(285, 'Heal Order', 'Bug', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(286, 'Heal Pulse', 'Psychic', 'Status', 'Beautiful', 10, NULL, '', '5', NULL, NULL),
(287, 'Healing Wish', 'Psychic', 'Status', 'Beautiful', 10, NULL, '', '4', NULL, NULL),
(288, 'Heart Stamp', 'Psychic', 'Physical', 'Cute', 25, 60, '1,00', '5', NULL, NULL),
(289, 'Heart Swap', 'Psychic', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(290, 'Heat Crash', 'Fire', 'Physical', 'Tough', 10, NULL, '1,00', '5', NULL, NULL),
(291, 'Heat Wave', 'Fire', 'Special', 'Beautiful', 10, 95, '0,90', '3', NULL, NULL),
(292, 'Heavy Slam', 'Steel', 'Physical', 'Tough', 10, NULL, '1,00', '5', NULL, NULL),
(293, 'Helping Hand', 'Normal', 'Status', 'Clever', 20, NULL, '', '3', NULL, NULL),
(294, 'Hex', 'Ghost', 'Special', 'Clever', 10, 65, '1,00', '5', NULL, NULL),
(295, 'Hidden Power', 'Normal', 'Special', 'Clever', 15, 60, '1,00', '2', NULL, NULL),
(296, 'High Horsepower', 'Ground', 'Physical', '', 10, 95, '0,95', '7', NULL, NULL),
(297, 'High Jump Kick', 'Fighting', 'Physical', 'Cool', 10, 130, '0,90', '1', NULL, NULL),
(298, 'Hold Back', 'Normal', 'Physical', 'Cool', 40, 40, '1,00', '6', NULL, NULL),
(299, 'Hold Hands', 'Normal', 'Status', 'Cute', 40, NULL, '', '6', NULL, NULL),
(300, 'Hone Claws', 'Dark', 'Status', 'Cute', 15, NULL, '', '5', NULL, NULL),
(301, 'Horn Attack', 'Normal', 'Physical', 'Cool', 25, 65, '1,00', '1', NULL, NULL),
(302, 'Horn Drill', 'Normal', 'Physical', 'Cool', 5, NULL, ' ', '1', NULL, NULL),
(303, 'Horn Leech', 'Grass', 'Physical', 'Tough', 10, 75, '1,00', '5', NULL, NULL),
(304, 'Howl', 'Normal', 'Status', 'Cool', 40, NULL, '', '3', NULL, NULL),
(305, 'Hurricane', 'Flying', 'Special', 'Tough', 10, 110, '0,70', '5', NULL, NULL),
(306, 'Hydro Cannon', 'Water', 'Special', 'Beautiful', 5, 150, '0,90', '3', NULL, NULL),
(307, 'Hydro Pump', 'Water', 'Special', 'Beautiful', 5, 110, '0,80', '1', NULL, NULL),
(308, 'Hydro Vortex', 'Water', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(309, 'Hydro Vortex', 'Water', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(310, 'Hyper Beam', 'Normal', 'Special', 'Cool', 5, 150, '0,90', '1', NULL, NULL),
(311, 'Hyper Fang', 'Normal', 'Physical', 'Cool', 15, 80, '0,90', '1', NULL, NULL),
(312, 'Hyper Voice', 'Normal', 'Special', 'Cool', 10, 90, '1,00', '3', NULL, NULL),
(313, 'Hyperspace Fury', 'Dark', 'Physical', 'Tough', 5, 100, '', '6', NULL, NULL),
(314, 'Hyperspace Hole', 'Psychic', 'Special', 'Clever', 5, 80, '', '6', NULL, NULL),
(315, 'Hypnosis', 'Psychic', 'Status', 'Clever', 20, NULL, '0,60', '1', NULL, NULL),
(316, 'Ice Ball', 'Ice', 'Physical', 'Beautiful', 20, 30, '0,90', '3', NULL, NULL),
(317, 'Ice Beam', 'Ice', 'Special', 'Beautiful', 10, 90, '1,00', '1', NULL, NULL),
(318, 'Ice Burn', 'Ice', 'Special', 'Beautiful', 5, 140, '0,90', '5', NULL, NULL),
(319, 'Ice Fang', 'Ice', 'Physical', 'Cool', 15, 65, '0,95', '4', NULL, NULL),
(320, 'Ice Hammer', 'Ice', 'Physical', '', 10, 100, '0,90', '7', NULL, NULL),
(321, 'Ice Punch', 'Ice', 'Physical', 'Beautiful', 15, 75, '1,00', '1', NULL, NULL),
(322, 'Ice Shard', 'Ice', 'Physical', 'Beautiful', 30, 40, '1,00', '4', NULL, NULL),
(323, 'Icicle Crash', 'Ice', 'Physical', 'Beautiful', 10, 85, '0,90', '5', NULL, NULL),
(324, 'Icicle Spear', 'Ice', 'Physical', 'Beautiful', 30, 25, '1,00', '3', NULL, NULL),
(325, 'Icy Wind', 'Ice', 'Special', 'Beautiful', 15, 55, '0,95', '2', NULL, NULL),
(326, 'Imprison', 'Psychic', 'Status', 'Clever', 10, NULL, '', '3', NULL, NULL),
(327, 'Incinerate', 'Fire', 'Special', 'Tough', 15, 60, '1,00', '5', NULL, NULL),
(328, 'Inferno', 'Fire', 'Special', 'Beautiful', 5, 100, '0,50', '5', NULL, NULL),
(329, 'Inferno Overdrive', 'Fire', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(330, 'Inferno Overdrive', 'Fire', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(331, 'Infestation', 'Bug', 'Special', 'Cute', 20, 20, '1,00', '6', NULL, NULL),
(332, 'Ingrain', 'Grass', 'Status', 'Clever', 20, NULL, '', '3', NULL, NULL),
(333, 'Instruct', 'Psychic', 'Status', '', 15, NULL, '', '7', NULL, NULL),
(334, 'Ion Deluge', 'Electric', 'Status', 'Beautiful', 25, NULL, '', '6', NULL, NULL),
(335, 'Iron Defense', 'Steel', 'Status', 'Tough', 15, NULL, '', '3', NULL, NULL),
(336, 'Iron Head', 'Steel', 'Physical', 'Tough', 15, 80, '1,00', '4', NULL, NULL),
(337, 'Iron Tail', 'Steel', 'Physical', 'Cool', 15, 100, '0,75', '2', NULL, NULL),
(338, 'Judgment', 'Normal', 'Special', 'Beautiful', 10, 100, '1,00', '4', NULL, NULL),
(339, 'Jump Kick', 'Fighting', 'Physical', 'Cool', 10, 100, '0,95', '1', NULL, NULL),
(340, 'Karate Chop', 'Fighting', 'Physical', 'Tough', 25, 50, '1,00', '1', NULL, NULL),
(341, 'Kinesis', 'Psychic', 'Status', 'Clever', 15, NULL, '0,80', '1', NULL, NULL),
(342, 'King\'s Shield', 'Steel', 'Status', 'Cool', 10, NULL, '', '6', NULL, NULL),
(343, 'Knock Off', 'Dark', 'Physical', 'Clever', 20, 65, '1,00', '3', NULL, NULL),
(344, 'Land\'s Wrath', 'Ground', 'Physical', 'Beautiful', 10, 90, '1,00', '6', NULL, NULL),
(345, 'Laser Focus', 'Normal', 'Status', '', 30, NULL, '', '7', NULL, NULL),
(346, 'Last Resort', 'Normal', 'Physical', 'Cute', 5, 140, '1,00', '4', NULL, NULL),
(347, 'Lava Plume', 'Fire', 'Special', 'Tough', 15, 80, '1,00', '4', NULL, NULL),
(348, 'Leaf Blade', 'Grass', 'Physical', 'Cool', 15, 90, '1,00', '3', NULL, NULL),
(349, 'Leaf Storm', 'Grass', 'Special', 'Beautiful', 5, 130, '0,90', '4', NULL, NULL),
(350, 'Leaf Tornado', 'Grass', 'Special', 'Cool', 10, 65, '0,90', '5', NULL, NULL),
(351, 'Leafage', 'Grass', 'Physical', '', 40, 40, '1,00', '7', NULL, NULL),
(352, 'Leech Life', 'Bug', 'Physical', 'Clever', 10, 80, '1,00', '1', NULL, NULL),
(353, 'Leech Seed', 'Grass', 'Status', 'Clever', 10, NULL, '0,90', '1', NULL, NULL),
(354, 'Leer', 'Normal', 'Status', 'Cool', 30, NULL, '1,00', '1', NULL, NULL),
(355, 'Let\'s Snuggle Forever', 'Fairy', 'Physical', '', 1, 190, '', '7', NULL, NULL),
(356, 'Lick', 'Ghost', 'Physical', 'Cute', 30, 30, '1,00', '1', NULL, NULL),
(357, 'Light of Ruin', 'Fairy', 'Special', 'Beautiful', 5, 140, '0,90', '6', NULL, NULL),
(358, 'Light Screen', 'Psychic', 'Status', 'Beautiful', 30, NULL, '', '1', NULL, NULL),
(359, 'Light That Burns the Sky', 'Psychic', 'Special', '', 1, 200, '', '7', NULL, NULL),
(360, 'Liquidation', 'Water', 'Physical', '', 10, 85, '1,00', '7', NULL, NULL),
(361, 'Lock-On', 'Normal', 'Status', 'Clever', 5, NULL, '', '2', NULL, NULL),
(362, 'Lovely Kiss', 'Normal', 'Status', 'Beautiful', 10, NULL, '0,75', '1', NULL, NULL),
(363, 'Low Kick', 'Fighting', 'Physical', 'Tough', 20, NULL, '1,00', '1', NULL, NULL),
(364, 'Low Sweep', 'Fighting', 'Physical', 'Clever', 20, 65, '1,00', '5', NULL, NULL),
(365, 'Lucky Chant', 'Normal', 'Status', 'Cute', 30, NULL, '', '4', NULL, NULL),
(366, 'Lunar Dance', 'Psychic', 'Status', 'Beautiful', 10, NULL, '', '4', NULL, NULL),
(367, 'Lunge', 'Bug', 'Physical', '', 15, 80, '1,00', '7', NULL, NULL),
(368, 'Luster Purge', 'Psychic', 'Special', 'Clever', 5, 70, '1,00', '3', NULL, NULL),
(369, 'Mach Punch', 'Fighting', 'Physical', 'Cool', 30, 40, '1,00', '2', NULL, NULL),
(370, 'Magic Coat', 'Psychic', 'Status', 'Beautiful', 15, NULL, '', '3', NULL, NULL),
(371, 'Magic Room', 'Psychic', 'Status', 'Clever', 10, NULL, '', '5', NULL, NULL),
(372, 'Magical Leaf', 'Grass', 'Special', 'Beautiful', 20, 60, '', '3', NULL, NULL),
(373, 'Magma Storm', 'Fire', 'Special', 'Tough', 5, 100, '0,75', '4', NULL, NULL),
(374, 'Magnet Bomb', 'Steel', 'Physical', 'Cool', 20, 60, '', '4', NULL, NULL),
(375, 'Magnet Rise', 'Electric', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(376, 'Magnetic Flux', 'Electric', 'Status', 'Clever', 20, NULL, '', '6', NULL, NULL),
(377, 'Magnitude', 'Ground', 'Physical', 'Tough', 30, NULL, '1,00', '2', NULL, NULL),
(378, 'Malicious Moonsault', 'Dark', 'Physical', '', 1, 180, '', '7', NULL, NULL),
(379, 'Mat Block', 'Fighting', 'Status', 'Cool', 10, NULL, '', '6', NULL, NULL),
(380, 'Me First', 'Normal', 'Status', 'Clever', 20, NULL, '', '4', NULL, NULL),
(381, 'Mean Look', 'Normal', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(382, 'Meditate', 'Psychic', 'Status', 'Beautiful', 40, NULL, '', '1', NULL, NULL),
(383, 'Mega Drain', 'Grass', 'Special', 'Clever', 10, 75, '1,00', '1', NULL, NULL),
(384, 'Mega Kick', 'Normal', 'Physical', 'Cool', 5, 120, '0,75', '1', NULL, NULL),
(385, 'Mega Punch', 'Normal', 'Physical', 'Tough', 20, 80, '0,85', '1', NULL, NULL),
(386, 'Megahorn', 'Bug', 'Physical', 'Cool', 10, 120, '0,85', '2', NULL, NULL),
(387, 'Memento', 'Dark', 'Status', 'Tough', 10, NULL, '1,00', '3', NULL, NULL),
(388, 'Menacing Moonraze Maelstrom', 'Ghost', 'Special', '', 1, 200, '', '7', NULL, NULL),
(389, 'Metal Burst', 'Steel', 'Physical', 'Cool', 10, NULL, '1,00', '4', NULL, NULL),
(390, 'Metal Claw', 'Steel', 'Physical', 'Cool', 35, 50, '0,95', '2', NULL, NULL),
(391, 'Metal Sound', 'Steel', 'Status', 'Clever', 40, NULL, '0,85', '3', NULL, NULL),
(392, 'Meteor Mash', 'Steel', 'Physical', 'Cool', 10, 90, '0,90', '3', NULL, NULL),
(393, 'Metronome', 'Normal', 'Status', 'Cute', 10, NULL, '', '1', NULL, NULL),
(394, 'Milk Drink', 'Normal', 'Status', 'Cute', 10, NULL, '', '2', NULL, NULL),
(395, 'Mimic', 'Normal', 'Status', 'Cute', 10, NULL, '', '1', NULL, NULL),
(396, 'Mind Blown', 'Fire', 'Special', '', 5, 150, '1,00', '7', NULL, NULL),
(397, 'Mind Reader', 'Normal', 'Status', 'Clever', 5, NULL, '', '2', NULL, NULL),
(398, 'Minimize', 'Normal', 'Status', 'Cute', 10, NULL, '', '1', NULL, NULL),
(399, 'Miracle Eye', 'Psychic', 'Status', 'Clever', 40, NULL, '', '4', NULL, NULL),
(400, 'Mirror Coat', 'Psychic', 'Special', 'Beautiful', 20, NULL, '1,00', '2', NULL, NULL),
(401, 'Mirror Move', 'Flying', 'Status', 'Clever', 20, NULL, '', '1', NULL, NULL),
(402, 'Mirror Shot', 'Steel', 'Special', 'Beautiful', 10, 65, '0,85', '4', NULL, NULL),
(403, 'Mist', 'Ice', 'Status', 'Beautiful', 30, NULL, '', '1', NULL, NULL),
(404, 'Mist Ball', 'Psychic', 'Special', 'Clever', 5, 70, '1,00', '3', NULL, NULL),
(405, 'Misty Terrain', 'Fairy', 'Status', 'Beautiful', 10, NULL, '', '6', NULL, NULL),
(406, 'Moonblast', 'Fairy', 'Special', 'Beautiful', 15, 95, '1,00', '6', NULL, NULL),
(407, 'Moongeist Beam', 'Ghost', 'Special', '', 5, 100, '1,00', '7', NULL, NULL),
(408, 'Moonlight', 'Fairy', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(409, 'Morning Sun', 'Normal', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(410, 'Mud Bomb', 'Ground', 'Special', 'Cute', 10, 65, '0,85', '4', NULL, NULL),
(411, 'Mud Shot', 'Ground', 'Special', 'Tough', 15, 55, '0,95', '3', NULL, NULL),
(412, 'Mud Sport', 'Ground', 'Status', 'Cute', 15, NULL, '', '3', NULL, NULL),
(413, 'Mud-Slap', 'Ground', 'Special', 'Cute', 10, 20, '1,00', '2', NULL, NULL),
(414, 'Muddy Water', 'Water', 'Special', 'Tough', 10, 90, '0,85', '3', NULL, NULL),
(415, 'Multi-Attack', 'Normal', 'Physical', '', 10, 90, '1,00', '7', NULL, NULL),
(416, 'Mystical Fire', 'Fire', 'Special', 'Beautiful', 10, 75, '1,00', '6', NULL, NULL),
(417, 'Nasty Plot', 'Dark', 'Status', 'Clever', 20, NULL, '', '4', NULL, NULL),
(418, 'Natural Gift', 'Normal', 'Physical', 'Clever', 15, NULL, '1,00', '4', NULL, NULL),
(419, 'Nature Power', 'Normal', 'Status', 'Beautiful', 20, NULL, '', '3', NULL, NULL),
(420, 'Nature\'s Madness', 'Fairy', 'Special', '', 10, NULL, '0,90', '7', NULL, NULL),
(421, 'Needle Arm', 'Grass', 'Physical', 'Clever', 15, 60, '1,00', '3', NULL, NULL),
(422, 'Never-Ending Nightmare', 'Ghost', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(423, 'Never-Ending Nightmare', 'Ghost', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(424, 'Night Daze', 'Dark', 'Special', 'Cool', 10, 85, '0,95', '5', NULL, NULL),
(425, 'Night Shade', 'Ghost', 'Special', 'Clever', 15, NULL, '1,00', '1', NULL, NULL),
(426, 'Night Slash', 'Dark', 'Physical', 'Cool', 15, 70, '1,00', '4', NULL, NULL),
(427, 'Nightmare', 'Ghost', 'Status', 'Clever', 15, NULL, '1,00', '2', NULL, NULL),
(428, 'Noble Roar', 'Normal', 'Status', 'Tough', 30, NULL, '1,00', '6', NULL, NULL),
(429, 'Nuzzle', 'Electric', 'Physical', 'Cute', 20, 20, '1,00', '6', NULL, NULL),
(430, 'Oblivion Wing', 'Flying', 'Special', 'Cool', 10, 80, '1,00', '6', NULL, NULL),
(431, 'Oceanic Operetta', 'Water', 'Special', '', 1, 195, '', '7', NULL, NULL),
(432, 'Octazooka', 'Water', 'Special', 'Tough', 10, 65, '0,85', '2', NULL, NULL),
(433, 'Odor Sleuth', 'Normal', 'Status', 'Clever', 40, NULL, '', '3', NULL, NULL),
(434, 'Ominous Wind', 'Ghost', 'Special', 'Beautiful', 5, 60, '1,00', '4', NULL, NULL),
(435, 'Origin Pulse', 'Water', 'Special', 'Beautiful', 10, 110, '0,85', '6', NULL, NULL),
(436, 'Outrage', 'Dragon', 'Physical', 'Cool', 10, 120, '1,00', '2', NULL, NULL),
(437, 'Overheat', 'Fire', 'Special', 'Beautiful', 5, 130, '0,90', '3', NULL, NULL),
(438, 'Pain Split', 'Normal', 'Status', 'Clever', 20, NULL, '', '2', NULL, NULL),
(439, 'Parabolic Charge', 'Electric', 'Special', 'Clever', 20, 65, '1,00', '6', NULL, NULL),
(440, 'Parting Shot', 'Dark', 'Status', 'Cool', 20, NULL, '1,00', '6', NULL, NULL),
(441, 'Pay Day', 'Normal', 'Physical', 'Clever', 20, 40, '1,00', '1', NULL, NULL),
(442, 'Payback', 'Dark', 'Physical', 'Tough', 10, 50, '1,00', '4', NULL, NULL),
(443, 'Peck', 'Flying', 'Physical', 'Cool', 35, 35, '1,00', '1', NULL, NULL),
(444, 'Perish Song', 'Normal', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(445, 'Petal Blizzard', 'Grass', 'Physical', 'Beautiful', 15, 90, '1,00', '6', NULL, NULL),
(446, 'Petal Dance', 'Grass', 'Special', 'Beautiful', 10, 120, '1,00', '1', NULL, NULL),
(447, 'Phantom Force', 'Ghost', 'Physical', 'Cool', 10, 90, '1,00', '6', NULL, NULL),
(448, 'Photon Geyser', 'Psychic', 'Special', '', 5, 100, '1,00', '7', NULL, NULL),
(449, 'Pika Papow', 'Electric', 'Special', '', 20, NULL, '', '7', NULL, NULL),
(450, 'Pin Missile', 'Bug', 'Physical', 'Cool', 20, 25, '0,95', '1', NULL, NULL),
(451, 'Plasma Fists', 'Electric', 'Physical', '', 15, 100, '1,00', '7', NULL, NULL),
(452, 'Play Nice', 'Normal', 'Status', 'Cute', 20, NULL, '', '6', NULL, NULL),
(453, 'Play Rough', 'Fairy', 'Physical', 'Cute', 10, 90, '0,90', '6', NULL, NULL),
(454, 'Pluck', 'Flying', 'Physical', 'Cute', 20, 60, '1,00', '4', NULL, NULL),
(455, 'Poison Fang', 'Poison', 'Physical', 'Clever', 15, 50, '1,00', '3', NULL, NULL),
(456, 'Poison Gas', 'Poison', 'Status', 'Clever', 40, NULL, '0,90', '1', NULL, NULL),
(457, 'Poison Jab', 'Poison', 'Physical', 'Tough', 20, 80, '1,00', '4', NULL, NULL),
(458, 'Poison Powder', 'Poison', 'Status', 'Clever', 35, NULL, '0,75', '1', NULL, NULL),
(459, 'Poison Sting', 'Poison', 'Physical', 'Clever', 35, 15, '1,00', '1', NULL, NULL),
(460, 'Poison Tail', 'Poison', 'Physical', 'Clever', 25, 50, '1,00', '3', NULL, NULL),
(461, 'Pollen Puff', 'Bug', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(462, 'Pound', 'Normal', 'Physical', 'Tough', 35, 40, '1,00', '1', NULL, NULL),
(463, 'Powder', 'Bug', 'Status', 'Clever', 20, NULL, '1,00', '6', NULL, NULL),
(464, 'Powder Snow', 'Ice', 'Special', 'Beautiful', 25, 40, '1,00', '2', NULL, NULL),
(465, 'Power Gem', 'Rock', 'Special', 'Beautiful', 20, 80, '1,00', '4', NULL, NULL),
(466, 'Power Split', 'Psychic', 'Status', 'Clever', 10, NULL, '', '5', NULL, NULL),
(467, 'Power Swap', 'Psychic', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(468, 'Power Trick', 'Psychic', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(469, 'Power Trip', 'Dark', 'Physical', '', 10, 20, '1,00', '7', NULL, NULL),
(470, 'Power Whip', 'Grass', 'Physical', 'Tough', 10, 120, '0,85', '4', NULL, NULL),
(471, 'Power-Up Punch', 'Fighting', 'Physical', 'Tough', 20, 40, '1,00', '6', NULL, NULL),
(472, 'Precipice Blades', 'Ground', 'Physical', 'Cool', 10, 120, '0,85', '6', NULL, NULL),
(473, 'Present', 'Normal', 'Physical', 'Cute', 15, NULL, '0,90', '2', NULL, NULL),
(474, 'Prismatic Laser', 'Psychic', 'Special', '', 10, 160, '1,00', '7', NULL, NULL),
(475, 'Protect', 'Normal', 'Status', 'Cute', 10, NULL, '', '2', NULL, NULL),
(476, 'Psybeam', 'Psychic', 'Special', 'Beautiful', 20, 65, '1,00', '1', NULL, NULL),
(477, 'Psych Up', 'Normal', 'Status', 'Clever', 10, NULL, '', '2', NULL, NULL),
(478, 'Psychic', 'Psychic', 'Special', 'Clever', 10, 90, '1,00', '1', NULL, NULL),
(479, 'Psychic Fangs', 'Psychic', 'Physical', '', 10, 85, '1,00', '7', NULL, NULL),
(480, 'Psychic Terrain', 'Psychic', 'Status', '', 10, NULL, '', '7', NULL, NULL),
(481, 'Psycho Boost', 'Psychic', 'Special', 'Clever', 5, 140, '0,90', '3', NULL, NULL),
(482, 'Psycho Cut', 'Psychic', 'Physical', 'Cool', 20, 70, '1,00', '4', NULL, NULL),
(483, 'Psycho Shift', 'Psychic', 'Status', 'Clever', 10, NULL, '1,00', '4', NULL, NULL),
(484, 'Psyshock', 'Psychic', 'Special', 'Beautiful', 10, 80, '1,00', '5', NULL, NULL),
(485, 'Psystrike', 'Psychic', 'Special', 'Cool', 10, 100, '1,00', '5', NULL, NULL),
(486, 'Psywave', 'Psychic', 'Special', 'Clever', 15, NULL, '1,00', '1', NULL, NULL),
(487, 'Pulverizing Pancake', 'Normal', 'Physical', '', 1, 210, '', '7', NULL, NULL),
(488, 'Punishment', 'Dark', 'Physical', 'Cool', 5, NULL, '1,00', '4', NULL, NULL),
(489, 'Purify', 'Poison', 'Status', '', 20, NULL, '', '7', NULL, NULL),
(490, 'Pursuit', 'Dark', 'Physical', 'Clever', 20, 40, '1,00', '2', NULL, NULL),
(491, 'Quash', 'Dark', 'Status', 'Clever', 15, NULL, '1,00', '5', NULL, NULL),
(492, 'Quick Attack', 'Normal', 'Physical', 'Cool', 30, 40, '1,00', '1', NULL, NULL),
(493, 'Quick Guard', 'Fighting', 'Status', 'Cool', 15, NULL, '', '5', NULL, NULL),
(494, 'Quiver Dance', 'Bug', 'Status', 'Beautiful', 20, NULL, '', '5', NULL, NULL),
(495, 'Rage', 'Normal', 'Physical', 'Tough', 20, 20, '1,00', '1', NULL, NULL),
(496, 'Rage Powder', 'Bug', 'Status', 'Clever', 20, NULL, '', '5', NULL, NULL),
(497, 'Rain Dance', 'Water', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(498, 'Rapid Spin', 'Normal', 'Physical', 'Cool', 40, 20, '1,00', '2', NULL, NULL),
(499, 'Razor Leaf', 'Grass', 'Physical', 'Cool', 25, 55, '0,95', '1', NULL, NULL),
(500, 'Razor Shell', 'Water', 'Physical', 'Cool', 10, 75, '0,95', '5', NULL, NULL),
(501, 'Razor Wind', 'Normal', 'Special', 'Cool', 10, 80, '1,00', '1', NULL, NULL),
(502, 'Recover', 'Normal', 'Status', 'Clever', 10, NULL, '', '1', NULL, NULL),
(503, 'Recycle', 'Normal', 'Status', 'Clever', 10, NULL, '', '3', NULL, NULL),
(504, 'Reflect', 'Psychic', 'Status', 'Clever', 20, NULL, '', '1', NULL, NULL),
(505, 'Reflect Type', 'Normal', 'Status', 'Clever', 15, NULL, '', '5', NULL, NULL),
(506, 'Refresh', 'Normal', 'Status', 'Cute', 20, NULL, '', '3', NULL, NULL),
(507, 'Relic Song', 'Normal', 'Special', 'Beautiful', 10, 75, '1,00', '5', NULL, NULL),
(508, 'Rest', 'Psychic', 'Status', 'Cute', 10, NULL, '', '1', NULL, NULL),
(509, 'Retaliate', 'Normal', 'Physical', 'Cool', 5, 70, '1,00', '5', NULL, NULL),
(510, 'Return', 'Normal', 'Physical', 'Cute', 20, NULL, '1,00', '2', NULL, NULL),
(511, 'Revelation Dance', 'Normal', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(512, 'Revenge', 'Fighting', 'Physical', 'Tough', 10, 60, '1,00', '3', NULL, NULL),
(513, 'Reversal', 'Fighting', 'Physical', 'Cool', 15, NULL, '1,00', '2', NULL, NULL),
(514, 'Roar', 'Normal', 'Status', 'Cool', 20, NULL, '', '1', NULL, NULL),
(515, 'Roar of Time', 'Dragon', 'Special', 'Beautiful', 5, 150, '0,90', '4', NULL, NULL),
(516, 'Rock Blast', 'Rock', 'Physical', 'Tough', 10, 25, '0,90', '3', NULL, NULL),
(517, 'Rock Climb', 'Normal', 'Physical', 'Tough', 20, 90, '0,85', '4', NULL, NULL),
(518, 'Rock Polish', 'Rock', 'Status', 'Tough', 20, NULL, '', '4', NULL, NULL),
(519, 'Rock Slide', 'Rock', 'Physical', 'Tough', 10, 75, '0,90', '1', NULL, NULL),
(520, 'Rock Smash', 'Fighting', 'Physical', 'Tough', 15, 40, '1,00', '2', NULL, NULL),
(521, 'Rock Throw', 'Rock', 'Physical', 'Tough', 15, 50, '0,90', '1', NULL, NULL),
(522, 'Rock Tomb', 'Rock', 'Physical', 'Clever', 15, 60, '0,95', '3', NULL, NULL),
(523, 'Rock Wrecker', 'Rock', 'Physical', 'Tough', 5, 150, '0,90', '4', NULL, NULL),
(524, 'Role Play', 'Psychic', 'Status', 'Cute', 10, NULL, '', '3', NULL, NULL),
(525, 'Rolling Kick', 'Fighting', 'Physical', 'Cool', 15, 60, '0,85', '1', NULL, NULL),
(526, 'Rollout', 'Rock', 'Physical', 'Cute', 20, 30, '0,90', '2', NULL, NULL),
(527, 'Roost', 'Flying', 'Status', 'Clever', 10, NULL, '', '4', NULL, NULL),
(528, 'Rototiller', 'Ground', 'Status', 'Tough', 10, NULL, '', '6', NULL, NULL),
(529, 'Round', 'Normal', 'Special', 'Beautiful', 15, 60, '1,00', '5', NULL, NULL),
(530, 'Sacred Fire', 'Fire', 'Physical', 'Beautiful', 5, 100, '0,95', '2', NULL, NULL),
(531, 'Sacred Sword', 'Fighting', 'Physical', 'Cool', 15, 90, '1,00', '5', NULL, NULL),
(532, 'Safeguard', 'Normal', 'Status', 'Beautiful', 25, NULL, '', '2', NULL, NULL),
(533, 'Sand Attack', 'Ground', 'Status', 'Cute', 15, NULL, '1,00', '1', NULL, NULL),
(534, 'Sand Tomb', 'Ground', 'Physical', 'Clever', 15, 35, '0,85', '3', NULL, NULL),
(535, 'Sandstorm', 'Rock', 'Status', 'Tough', 10, NULL, '', '2', NULL, NULL),
(536, 'Sappy Seed', 'Grass', 'Physical', '', 15, 90, '1,00', '7', NULL, NULL),
(537, 'Savage Spin-Out', 'Bug', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(538, 'Savage Spin-Out', 'Bug', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(539, 'Scald', 'Water', 'Special', 'Tough', 15, 80, '1,00', '5', NULL, NULL),
(540, 'Scary Face', 'Normal', 'Status', 'Tough', 10, NULL, '1,00', '2', NULL, NULL),
(541, 'Scratch', 'Normal', 'Physical', 'Tough', 35, 40, '1,00', '1', NULL, NULL),
(542, 'Screech', 'Normal', 'Status', 'Clever', 40, NULL, '0,85', '1', NULL, NULL),
(543, 'Searing Shot', 'Fire', 'Special', 'Cool', 5, 100, '1,00', '5', NULL, NULL),
(544, 'Searing Sunraze Smash', 'Steel', 'Special', '', 1, 200, '', '7', NULL, NULL),
(545, 'Secret Power', 'Normal', 'Physical', 'Clever', 20, 70, '1,00', '3', NULL, NULL),
(546, 'Secret Sword', 'Fighting', 'Special', 'Beautiful', 10, 85, '1,00', '5', NULL, NULL),
(547, 'Seed Bomb', 'Grass', 'Physical', 'Tough', 15, 80, '1,00', '4', NULL, NULL),
(548, 'Seed Flare', 'Grass', 'Special', 'Beautiful', 5, 120, '0,85', '4', NULL, NULL),
(549, 'Seismic Toss', 'Fighting', 'Physical', 'Tough', 20, NULL, '1,00', '1', NULL, NULL),
(550, 'Self-Destruct', 'Normal', 'Physical', 'Beautiful', 5, 200, '1,00', '1', NULL, NULL),
(551, 'Shadow Ball', 'Ghost', 'Special', 'Clever', 15, 80, '1,00', '2', NULL, NULL),
(552, 'Shadow Bone', 'Ghost', 'Physical', '', 10, 85, '1,00', '7', NULL, NULL),
(553, 'Shadow Claw', 'Ghost', 'Physical', 'Cool', 15, 70, '1,00', '4', NULL, NULL),
(554, 'Shadow Force', 'Ghost', 'Physical', 'Cool', 5, 120, '1,00', '4', NULL, NULL),
(555, 'Shadow Punch', 'Ghost', 'Physical', 'Clever', 20, 60, '', '3', NULL, NULL),
(556, 'Shadow Sneak', 'Ghost', 'Physical', 'Clever', 30, 40, '1,00', '4', NULL, NULL),
(557, 'Sharpen', 'Normal', 'Status', 'Cute', 30, NULL, '', '1', NULL, NULL),
(558, 'Shattered Psyche', 'Psychic', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(559, 'Shattered Psyche', 'Psychic', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(560, 'Sheer Cold', 'Ice', 'Special', 'Beautiful', 5, NULL, '', '3', NULL, NULL),
(561, 'Shell Smash', 'Normal', 'Status', 'Tough', 15, NULL, '', '5', NULL, NULL),
(562, 'Shell Trap', 'Fire', 'Special', '', 5, 150, '1,00', '7', NULL, NULL),
(563, 'Shift Gear', 'Steel', 'Status', 'Clever', 10, NULL, '', '5', NULL, NULL),
(564, 'Shock Wave', 'Electric', 'Special', 'Cool', 20, 60, '', '3', NULL, NULL),
(565, 'Shore Up', 'Ground', 'Status', '', 10, NULL, '', '7', NULL, NULL),
(566, 'Signal Beam', 'Bug', 'Special', 'Beautiful', 15, 75, '1,00', '3', NULL, NULL),
(567, 'Silver Wind', 'Bug', 'Special', 'Beautiful', 5, 60, '1,00', '3', NULL, NULL),
(568, 'Simple Beam', 'Normal', 'Status', 'Cute', 15, NULL, '1,00', '5', NULL, NULL),
(569, 'Sing', 'Normal', 'Status', 'Cute', 15, NULL, '0,55', '1', NULL, NULL),
(570, 'Sinister Arrow Raid', 'Ghost', 'Physical', '', 1, 180, '', '7', NULL, NULL),
(571, 'Sizzly Slide', 'Fire', 'Physical', '', 15, 90, '1,00', '7', NULL, NULL),
(572, 'Sketch', 'Normal', 'Status', 'Clever', 1, NULL, '', '2', NULL, NULL),
(573, 'Skill Swap', 'Psychic', 'Status', 'Clever', 10, NULL, '', '3', NULL, NULL),
(574, 'Skull Bash', 'Normal', 'Physical', 'Tough', 10, 130, '1,00', '1', NULL, NULL),
(575, 'Sky Attack', 'Flying', 'Physical', 'Cool', 5, 200, '0,90', '1', NULL, NULL),
(576, 'Sky Drop', 'Flying', 'Physical', 'Tough', 10, 60, '1,00', '5', NULL, NULL),
(577, 'Sky Uppercut', 'Fighting', 'Physical', 'Cool', 15, 85, '0,90', '3', NULL, NULL),
(578, 'Slack Off', 'Normal', 'Status', 'Cute', 10, NULL, '', '3', NULL, NULL),
(579, 'Slam', 'Normal', 'Physical', 'Tough', 20, 80, '0,75', '1', NULL, NULL),
(580, 'Slash', 'Normal', 'Physical', 'Cool', 20, 70, '1,00', '1', NULL, NULL),
(581, 'Sleep Powder', 'Grass', 'Status', 'Clever', 15, NULL, '0,75', '1', NULL, NULL),
(582, 'Sleep Talk', 'Normal', 'Status', 'Cute', 10, NULL, '', '2', NULL, NULL),
(583, 'Sludge', 'Poison', 'Special', 'Tough', 20, 65, '1,00', '1', NULL, NULL),
(584, 'Sludge Bomb', 'Poison', 'Special', 'Tough', 10, 90, '1,00', '2', NULL, NULL),
(585, 'Sludge Wave', 'Poison', 'Special', 'Tough', 10, 95, '1,00', '5', NULL, NULL),
(586, 'Smack Down', 'Rock', 'Physical', 'Tough', 15, 50, '1,00', '5', NULL, NULL),
(587, 'Smart Strike', 'Steel', 'Physical', '', 10, 70, '', '7', NULL, NULL),
(588, 'Smelling Salts', 'Normal', 'Physical', 'Tough', 10, 70, '1,00', '3', NULL, NULL),
(589, 'Smog', 'Poison', 'Special', 'Tough', 20, 30, '0,70', '1', NULL, NULL),
(590, 'Smokescreen', 'Normal', 'Status', 'Clever', 20, NULL, '1,00', '1', NULL, NULL),
(591, 'Snarl', 'Dark', 'Special', 'Tough', 15, 55, '0,95', '5', NULL, NULL),
(592, 'Snatch', 'Dark', 'Status', 'Clever', 10, NULL, '', '3', NULL, NULL),
(593, 'Snore', 'Normal', 'Special', 'Cute', 15, 50, '1,00', '2', NULL, NULL),
(594, 'Soak', 'Water', 'Status', 'Cute', 20, NULL, '1,00', '5', NULL, NULL),
(595, 'Soft-Boiled', 'Normal', 'Status', 'Cute', 10, NULL, '', '1', NULL, NULL),
(596, 'Solar Beam', 'Grass', 'Special', 'Cool', 10, 200, '1,00', '1', NULL, NULL),
(597, 'Solar Blade', 'Grass', 'Physical', '', 10, 125, '1,00', '7', NULL, NULL),
(598, 'Sonic Boom', 'Normal', 'Special', 'Cool', 20, NULL, '0,90', '1', NULL, NULL),
(599, 'Soul-Stealing 7-Star Strike', 'Ghost', 'Physical', '', 1, 195, '', '7', NULL, NULL),
(600, 'Spacial Rend', 'Dragon', 'Special', 'Beautiful', 5, 100, '0,95', '4', NULL, NULL),
(601, 'Spark', 'Electric', 'Physical', 'Cool', 20, 65, '1,00', '2', NULL, NULL),
(602, 'Sparkling Aria', 'Water', 'Special', '', 10, 90, '1,00', '7', NULL, NULL),
(603, 'Sparkly Swirl', 'Fairy', 'Special', '', 15, 90, '1,00', '7', NULL, NULL),
(604, 'Spectral Thief', 'Ghost', 'Physical', '', 10, 90, '1,00', '7', NULL, NULL),
(605, 'Speed Swap', 'Psychic', 'Status', '', 10, NULL, '', '7', NULL, NULL),
(606, 'Spider Web', 'Bug', 'Status', 'Clever', 10, NULL, '', '2', NULL, NULL),
(607, 'Spike Cannon', 'Normal', 'Physical', 'Cool', 15, 20, '1,00', '1', NULL, NULL),
(608, 'Spikes', 'Ground', 'Status', 'Clever', 20, NULL, '', '2', NULL, NULL),
(609, 'Spiky Shield', 'Grass', 'Status', 'Tough', 10, NULL, '', '6', NULL, NULL),
(610, 'Spirit Shackle', 'Ghost', 'Physical', '', 10, 80, '1,00', '7', NULL, NULL),
(611, 'Spit Up', 'Normal', 'Special', 'Tough', 10, NULL, '1,00', '3', NULL, NULL),
(612, 'Spite', 'Ghost', 'Status', 'Tough', 10, NULL, '1,00', '2', NULL, NULL),
(613, 'Splash', 'Normal', 'Status', 'Cute', 40, NULL, '', '1', NULL, NULL),
(614, 'Splintered Stormshards', 'Rock', 'Physical', '', 1, 190, '', '7', NULL, NULL),
(615, 'Splishy Splash', 'Water', 'Special', '', 15, 90, '1,00', '7', NULL, NULL);
INSERT INTO `ataques` (`id`, `name`, `type`, `category`, `contest`, `pp`, `power`, `accuracy`, `generation`, `name_esp`, `name_jap`) VALUES
(616, 'Spore', 'Grass', 'Status', 'Beautiful', 15, NULL, '1,00', '1', NULL, NULL),
(617, 'Spotlight', 'Normal', 'Status', '', 15, NULL, '', '7', NULL, NULL),
(618, 'Stealth Rock', 'Rock', 'Status', 'Cool', 20, NULL, '', '4', NULL, NULL),
(619, 'Steam Eruption', 'Water', 'Special', 'Beautiful', 5, 110, '0,95', '6', NULL, NULL),
(620, 'Steamroller', 'Bug', 'Physical', 'Tough', 20, 65, '1,00', '5', NULL, NULL),
(621, 'Steel Wing', 'Steel', 'Physical', 'Cool', 25, 70, '0,90', '2', NULL, NULL),
(622, 'Sticky Web', 'Bug', 'Status', 'Tough', 20, NULL, '', '6', NULL, NULL),
(623, 'Stockpile', 'Normal', 'Status', 'Tough', 20, NULL, '', '3', NULL, NULL),
(624, 'Stoked Sparksurfer', 'Electric', 'Special', '', 1, 175, '', '7', NULL, NULL),
(625, 'Stomp', 'Normal', 'Physical', 'Tough', 20, 65, '1,00', '1', NULL, NULL),
(626, 'Stomping Tantrum', 'Ground', 'Physical', '', 10, 75, '1,00', '7', NULL, NULL),
(627, 'Stone Edge', 'Rock', 'Physical', 'Tough', 5, 100, '0,80', '4', NULL, NULL),
(628, 'Stored Power', 'Psychic', 'Special', 'Clever', 10, 20, '1,00', '5', NULL, NULL),
(629, 'Storm Throw', 'Fighting', 'Physical', 'Cool', 10, 60, '1,00', '5', NULL, NULL),
(630, 'Strength', 'Normal', 'Physical', 'Tough', 15, 80, '1,00', '1', NULL, NULL),
(631, 'Strength Sap', 'Grass', 'Status', '', 10, NULL, '1,00', '7', NULL, NULL),
(632, 'String Shot', 'Bug', 'Status', 'Clever', 40, NULL, '0,95', '1', NULL, NULL),
(633, 'Struggle', 'Normal', 'Physical', 'Tough', 1, 50, '', '1', NULL, NULL),
(634, 'Struggle Bug', 'Bug', 'Special', 'Cute', 20, 50, '1,00', '5', NULL, NULL),
(635, 'Stun Spore', 'Grass', 'Status', 'Clever', 30, NULL, '0,75', '1', NULL, NULL),
(636, 'Submission', 'Fighting', 'Physical', 'Cool', 20, 80, '0,80', '1', NULL, NULL),
(637, 'Substitute', 'Normal', 'Status', 'Cute', 10, NULL, '', '1', NULL, NULL),
(638, 'Subzero Slammer', 'Ice', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(639, 'Subzero Slammer', 'Ice', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(640, 'Sucker Punch', 'Dark', 'Physical', 'Clever', 5, 70, '1,00', '4', NULL, NULL),
(641, 'Sunny Day', 'Fire', 'Status', 'Beautiful', 5, NULL, '', '2', NULL, NULL),
(642, 'Sunsteel Strike', 'Steel', 'Physical', '', 5, 100, '1,00', '7', NULL, NULL),
(643, 'Super Fang', 'Normal', 'Physical', 'Tough', 10, NULL, '0,90', '1', NULL, NULL),
(644, 'Superpower', 'Fighting', 'Physical', 'Tough', 5, 120, '1,00', '3', NULL, NULL),
(645, 'Supersonic', 'Normal', 'Status', 'Clever', 20, NULL, '0,55', '1', NULL, NULL),
(646, 'Supersonic Skystrike', 'Flying', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(647, 'Supersonic Skystrike', 'Flying', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(648, 'Surf', 'Water', 'Special', 'Beautiful', 15, 90, '1,00', '1', NULL, NULL),
(649, 'Swagger', 'Normal', 'Status', 'Cute', 15, NULL, '0,85', '2', NULL, NULL),
(650, 'Swallow', 'Normal', 'Status', 'Tough', 10, NULL, '', '3', NULL, NULL),
(651, 'Sweet Kiss', 'Fairy', 'Status', 'Cute', 10, NULL, '0,75', '2', NULL, NULL),
(652, 'Sweet Scent', 'Normal', 'Status', 'Cute', 20, NULL, '1,00', '2', NULL, NULL),
(653, 'Swift', 'Normal', 'Special', 'Cool', 20, 60, '', '1', NULL, NULL),
(654, 'Switcheroo', 'Dark', 'Status', 'Clever', 10, NULL, '1,00', '4', NULL, NULL),
(655, 'Swords Dance', 'Normal', 'Status', 'Beautiful', 20, NULL, '', '1', NULL, NULL),
(656, 'Synchronoise', 'Psychic', 'Special', 'Clever', 10, 120, '1,00', '5', NULL, NULL),
(657, 'Synthesis', 'Grass', 'Status', 'Clever', 5, NULL, '', '2', NULL, NULL),
(658, 'Tackle', 'Normal', 'Physical', 'Tough', 35, 40, '1,00', '1', NULL, NULL),
(659, 'Tail Glow', 'Bug', 'Status', 'Beautiful', 20, NULL, '', '3', NULL, NULL),
(660, 'Tail Slap', 'Normal', 'Physical', 'Cute', 10, 25, '0,85', '5', NULL, NULL),
(661, 'Tail Whip', 'Normal', 'Status', 'Cute', 30, NULL, '1,00', '1', NULL, NULL),
(662, 'Tailwind', 'Flying', 'Status', 'Cool', 15, NULL, '', '4', NULL, NULL),
(663, 'Take Down', 'Normal', 'Physical', 'Tough', 20, 90, '0,85', '1', NULL, NULL),
(664, 'Taunt', 'Dark', 'Status', 'Clever', 20, NULL, '1,00', '3', NULL, NULL),
(665, 'Tearful Look', 'Normal', 'Status', '', 20, NULL, '', '7', NULL, NULL),
(666, 'Techno Blast', 'Normal', 'Special', 'Cool', 5, 120, '1,00', '5', NULL, NULL),
(667, 'Tectonic Rage', 'Ground', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(668, 'Tectonic Rage', 'Ground', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(669, 'Teeter Dance', 'Normal', 'Status', 'Cute', 20, NULL, '1,00', '3', NULL, NULL),
(670, 'Telekinesis', 'Psychic', 'Status', 'Clever', 15, NULL, '', '5', NULL, NULL),
(671, 'Teleport', 'Psychic', 'Status', 'Cool', 20, NULL, '', '1', NULL, NULL),
(672, 'Thief', 'Dark', 'Physical', 'Tough', 25, 60, '1,00', '2', NULL, NULL),
(673, 'Thousand Arrows', 'Ground', 'Physical', 'Beautiful', 10, 90, '1,00', '6', NULL, NULL),
(674, 'Thousand Waves', 'Ground', 'Physical', 'Tough', 10, 90, '1,00', '6', NULL, NULL),
(675, 'Thrash', 'Normal', 'Physical', 'Tough', 10, 120, '1,00', '1', NULL, NULL),
(676, 'Throat Chop', 'Dark', 'Physical', '', 15, 80, '1,00', '7', NULL, NULL),
(677, 'Thunder', 'Electric', 'Special', 'Cool', 10, 110, '0,70', '1', NULL, NULL),
(678, 'Thunder Fang', 'Electric', 'Physical', 'Cool', 15, 65, '0,95', '4', NULL, NULL),
(679, 'Thunder Punch', 'Electric', 'Physical', 'Cool', 15, 75, '1,00', '1', NULL, NULL),
(680, 'Thunder Shock', 'Electric', 'Special', 'Cool', 30, 40, '1,00', '1', NULL, NULL),
(681, 'Thunder Wave', 'Electric', 'Status', 'Cool', 20, NULL, '0,90', '1', NULL, NULL),
(682, 'Thunderbolt', 'Electric', 'Special', 'Cool', 15, 90, '1,00', '1', NULL, NULL),
(683, 'Tickle', 'Normal', 'Status', 'Cute', 20, NULL, '1,00', '3', NULL, NULL),
(684, 'Topsy-Turvy', 'Dark', 'Status', 'Clever', 20, NULL, '', '6', NULL, NULL),
(685, 'Torment', 'Dark', 'Status', 'Tough', 15, NULL, '1,00', '3', NULL, NULL),
(686, 'Toxic', 'Poison', 'Status', 'Clever', 10, NULL, '0,90', '1', NULL, NULL),
(687, 'Toxic Spikes', 'Poison', 'Status', 'Clever', 20, NULL, '', '4', NULL, NULL),
(688, 'Toxic Thread', 'Poison', 'Status', '', 20, NULL, '1,00', '7', NULL, NULL),
(689, 'Transform', 'Normal', 'Status', 'Clever', 10, NULL, '', '1', NULL, NULL),
(690, 'Tri Attack', 'Normal', 'Special', 'Beautiful', 10, 80, '1,00', '1', NULL, NULL),
(691, 'Trick', 'Psychic', 'Status', 'Clever', 10, NULL, '1,00', '3', NULL, NULL),
(692, 'Trick Room', 'Psychic', 'Status', 'Clever', 5, NULL, '', '4', NULL, NULL),
(693, 'Trick-or-Treat', 'Ghost', 'Status', 'Cute', 20, NULL, '1,00', '6', NULL, NULL),
(694, 'Triple Kick', 'Fighting', 'Physical', 'Cool', 10, 10, '0,90', '2', NULL, NULL),
(695, 'Trop Kick', 'Grass', 'Physical', '', 15, 70, '1,00', '7', NULL, NULL),
(696, 'Trump Card', 'Normal', 'Special', 'Cool', 5, NULL, '', '4', NULL, NULL),
(697, 'Twineedle', 'Bug', 'Physical', 'Cool', 20, 25, '1,00', '1', NULL, NULL),
(698, 'Twinkle Tackle', 'Fairy', 'Physical', '', 1, NULL, '', '7', NULL, NULL),
(699, 'Twinkle Tackle', 'Fairy', 'Special', '', 1, NULL, '', '7', NULL, NULL),
(700, 'Twister', 'Dragon', 'Special', 'Cool', 20, 40, '1,00', '2', NULL, NULL),
(701, 'U-turn', 'Bug', 'Physical', 'Cute', 20, 70, '1,00', '4', NULL, NULL),
(702, 'Uproar', 'Normal', 'Special', 'Cute', 10, 90, '1,00', '3', NULL, NULL),
(703, 'V-create', 'Fire', 'Physical', 'Cool', 5, 180, '0,95', '5', NULL, NULL),
(704, 'Vacuum Wave', 'Fighting', 'Special', 'Cool', 30, 40, '1,00', '4', NULL, NULL),
(705, 'Veevee Volley', 'Normal', 'Physical', '', 20, NULL, '', '7', NULL, NULL),
(706, 'Venom Drench', 'Poison', 'Status', 'Clever', 20, NULL, '1,00', '6', NULL, NULL),
(707, 'Venoshock', 'Poison', 'Special', 'Beautiful', 10, 65, '1,00', '5', NULL, NULL),
(708, 'Vice Grip', 'Normal', 'Physical', 'Tough', 30, 55, '1,00', '1', NULL, NULL),
(709, 'Vine Whip', 'Grass', 'Physical', 'Cool', 25, 45, '1,00', '1', NULL, NULL),
(710, 'Vital Throw', 'Fighting', 'Physical', 'Cool', 10, 70, '', '2', NULL, NULL),
(711, 'Volt Switch', 'Electric', 'Special', 'Cool', 20, 70, '1,00', '5', NULL, NULL),
(712, 'Volt Tackle', 'Electric', 'Physical', 'Cool', 15, 120, '1,00', '3', NULL, NULL),
(713, 'Wake-Up Slap', 'Fighting', 'Physical', 'Tough', 10, 70, '1,00', '4', NULL, NULL),
(714, 'Water Gun', 'Water', 'Special', 'Cute', 25, 40, '1,00', '1', NULL, NULL),
(715, 'Water Pledge', 'Water', 'Special', 'Beautiful', 10, 80, '1,00', '5', NULL, NULL),
(716, 'Water Pulse', 'Water', 'Special', 'Beautiful', 20, 60, '1,00', '3', NULL, NULL),
(717, 'Water Shuriken', 'Water', 'Special', 'Cool', 20, 15, '1,00', '6', NULL, NULL),
(718, 'Water Sport', 'Water', 'Status', 'Cute', 15, NULL, '', '3', NULL, NULL),
(719, 'Water Spout', 'Water', 'Special', 'Beautiful', 5, 150, '1,00', '3', NULL, NULL),
(720, 'Waterfall', 'Water', 'Physical', 'Tough', 15, 80, '1,00', '1', NULL, NULL),
(721, 'Weather Ball', 'Normal', 'Special', 'Beautiful', 10, 50, '1,00', '3', NULL, NULL),
(722, 'Whirlpool', 'Water', 'Special', 'Beautiful', 15, 35, '0,85', '2', NULL, NULL),
(723, 'Whirlwind', 'Normal', 'Status', 'Clever', 20, NULL, '', '1', NULL, NULL),
(724, 'Wide Guard', 'Rock', 'Status', 'Tough', 10, NULL, '', '5', NULL, NULL),
(725, 'Wild Charge', 'Electric', 'Physical', 'Tough', 15, 90, '1,00', '5', NULL, NULL),
(726, 'Will-O-Wisp', 'Fire', 'Status', 'Beautiful', 15, NULL, '0,85', '3', NULL, NULL),
(727, 'Wing Attack', 'Flying', 'Physical', 'Cool', 35, 60, '1,00', '1', NULL, NULL),
(728, 'Wish', 'Normal', 'Status', 'Cute', 10, NULL, '', '3', NULL, NULL),
(729, 'Withdraw', 'Water', 'Status', 'Cute', 40, NULL, '', '1', NULL, NULL),
(730, 'Wonder Room', 'Psychic', 'Status', 'Clever', 10, NULL, '', '5', NULL, NULL),
(731, 'Wood Hammer', 'Grass', 'Physical', 'Tough', 15, 120, '1,00', '4', NULL, NULL),
(732, 'Work Up', 'Normal', 'Status', 'Tough', 30, NULL, '', '5', NULL, NULL),
(733, 'Worry Seed', 'Grass', 'Status', 'Clever', 10, NULL, '1,00', '4', NULL, NULL),
(734, 'Wrap', 'Normal', 'Physical', 'Tough', 20, 15, '0,90', '1', NULL, NULL),
(735, 'Wring Out', 'Normal', 'Special', 'Tough', 5, NULL, '1,00', '4', NULL, NULL),
(736, 'X-Scissor', 'Bug', 'Physical', 'Cool', 15, 80, '1,00', '4', NULL, NULL),
(737, 'Yawn', 'Normal', 'Status', 'Cute', 10, NULL, '', '3', NULL, NULL),
(738, 'Zap Cannon', 'Electric', 'Special', 'Cool', 5, 120, '0,50', '2', NULL, NULL),
(739, 'Zen Headbutt', 'Psychic', 'Physical', 'Clever', 15, 80, '0,90', '4', NULL, NULL),
(740, 'Zing Zap', 'Electric', 'Physical', '', 10, 80, '1,00', '7', NULL, NULL),
(741, 'Zippy Zap', 'Electric', 'Physical', '', 15, 50, '1,00', '7', NULL, NULL),
(742, '10,000,000 Volt Thunderbolt', 'Electric', 'Special', '', 1, 195, '', '7', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medallas`
--

CREATE TABLE `medallas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `origen` varchar(100) DEFAULT NULL,
  `lider_original` varchar(100) DEFAULT NULL,
  `nombre_ingles` varchar(100) DEFAULT NULL,
  `nombre_japones` varchar(100) DEFAULT NULL,
  `imagen` varchar(300) NOT NULL,
  `liga` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `medallas`
--

INSERT INTO `medallas` (`id`, `nombre`, `origen`, `lider_original`, `nombre_ingles`, `nombre_japones`, `imagen`, `liga`) VALUES
(1, 'roca', 'plateada', 'brock', 'boulder', '', 'https://vignette.wikia.nocookie.net/es.pokemon/images/3/39/Medalla_Roca.png/revision/latest?cb=20130327173400', 'kanto'),
(3, 'cascada', 'celeste', 'misty', 'Cascade', NULL, 'https://vignette.wikia.nocookie.net/es.pokemon/images/6/60/Medalla_Cascada.png/revision/latest?cb=20130327173411', 'kanto'),
(4, 'trueno', 'carmin', 'Lt. Surge', 'thunder', NULL, 'https://vignette.wikia.nocookie.net/es.pokemon/images/e/e6/Medalla_Trueno.png/revision/latest?cb=20130915183203', 'kanto'),
(5, 'arcoiris', 'azulona', 'erika', 'rainbow', NULL, 'https://vignette.wikia.nocookie.net/es.pokemon/images/0/09/Medalla_Arco%C3%ADris.png/revision/latest?cb=20130327173435', 'kanto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medallas_personajes`
--

CREATE TABLE `medallas_personajes` (
  `id` int(11) NOT NULL,
  `fk_personaje` int(11) NOT NULL,
  `fk_medalla` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `medallas_personajes`
--

INSERT INTO `medallas_personajes` (`id`, `fk_personaje`, `fk_medalla`, `fecha`) VALUES
(1, 2, 3, '2019-02-28 17:31:35'),
(2, 1, 4, '2019-02-28 17:31:35'),
(3, 2, 3, '2019-02-28 17:31:50'),
(4, 1, 4, '2019-02-28 17:31:50'),
(5, 2, 5, '2019-02-28 17:32:13'),
(6, 1, 3, '2019-02-28 17:32:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_ataques`
--

CREATE TABLE `nivel_ataques` (
  `id` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `ataque` varchar(30) DEFAULT NULL,
  `pokemon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `nivel_ataques`
--

INSERT INTO `nivel_ataques` (`id`, `nivel`, `ataque`, `pokemon`) VALUES
(1, 1, 'Aqua Jet', 9),
(2, 1, 'Bubble', 9),
(3, 1, 'Fake Out', 9),
(4, 1, 'Flash Cannon', 9),
(5, 1, 'Tackle', 9),
(6, 1, 'Tail Whip', 9),
(7, 1, 'Withdraw', 9),
(8, 5, 'Tail Whip', 9),
(9, 9, 'Bubble', 9),
(10, 14, 'Withdraw', 9),
(11, 20, 'Water Gun', 9),
(12, 27, 'Bite', 9),
(13, 33, 'Bubble Beam', 9),
(14, 44, 'Protect', 9),
(15, 54, 'Headbutt', 9),
(16, 65, 'Hydro Pump', 9),
(17, 75, 'Skull Bash', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `nivel` int(11) DEFAULT '1',
  `fk_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `nombre`, `nivel`, `fk_usuario`) VALUES
(1, 'poke_joshe', 1, 1),
(2, 'poke_david', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokedexs`
--

CREATE TABLE `pokedexs` (
  `id` int(11) NOT NULL,
  `alias` varchar(30) DEFAULT NULL,
  `nivel` int(11) DEFAULT '1',
  `fk_pokemon` int(11) NOT NULL,
  `fk_personaje` int(11) NOT NULL,
  `salud` int(11) NOT NULL,
  `estado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokedexs`
--

INSERT INTO `pokedexs` (`id`, `alias`, `nivel`, `fk_pokemon`, `fk_personaje`, `salud`, `estado`) VALUES
(108, NULL, 1, 3, 2, 80, 1),
(110, NULL, 1, 1, 2, 45, 1),
(115, NULL, 1, 2, 2, 60, 1),
(135, NULL, 1, 3, 2, 80, 1),
(136, NULL, 1, 2, 2, 60, 1),
(141, NULL, 1, 3, 2, 80, 1),
(142, NULL, 1, 2, 2, 60, 1),
(143, NULL, 1, 1, 2, 45, 1),
(144, NULL, 1, 3, 2, 80, 1),
(145, NULL, 1, 1, 2, 45, 1),
(146, NULL, 1, 3, 2, 80, 1),
(147, NULL, 1, 2, 2, 60, 1),
(148, NULL, 1, 1, 2, 45, 1),
(149, NULL, 1, 2, 2, 60, 1),
(150, NULL, 1, 3, 2, 80, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemones(de_baja)`
--

CREATE TABLE `pokemones(de_baja)` (
  `id` int(11) NOT NULL,
  `pokedex` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `hp` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defence` int(11) NOT NULL,
  `special_attack` int(11) NOT NULL,
  `special_defence` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `type_1` varchar(50) NOT NULL,
  `type_2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemones(de_baja)`
--

INSERT INTO `pokemones(de_baja)` (`id`, `pokedex`, `name`, `hp`, `attack`, `defence`, `special_attack`, `special_defence`, `speed`, `total`, `type_1`, `type_2`) VALUES
(1, '1', 'Bulbasaur', 45, 49, 49, 65, 65, 45, 318, 'Grass', 'Poison'),
(2, '2', 'Ivysaur', 60, 62, 63, 80, 80, 60, 405, 'Grass', 'Poison'),
(3, '3', 'Venusaur', 80, 82, 83, 100, 100, 80, 525, 'Grass', 'Poison'),
(4, '4', 'Charmander', 39, 52, 43, 60, 50, 65, 309, 'Fire', ''),
(5, '5', 'Charmeleon', 58, 64, 58, 80, 65, 80, 405, 'Fire', ''),
(6, '6', 'Charizard', 78, 84, 78, 109, 85, 100, 534, 'Fire', 'Flying'),
(7, '7', 'Squirtle', 44, 48, 65, 60, 54, 43, 314, 'Water', ''),
(8, '8', 'Wartortle', 59, 63, 80, 65, 80, 58, 405, 'Water', ''),
(9, '9', 'Blastoise', 79, 83, 100, 85, 105, 78, 530, 'Water', ''),
(10, '10', 'Caterpie', 45, 30, 35, 20, 20, 45, 195, 'Bug', ''),
(11, '11', 'Metapod', 50, 20, 55, 25, 25, 30, 205, 'Bug', ''),
(12, '12', 'Butterfree', 60, 45, 50, 80, 80, 70, 385, 'Bug', 'Flying'),
(13, '13', 'Weedle', 40, 35, 30, 20, 20, 50, 195, 'Bug', 'Poison'),
(14, '14', 'Kakuna', 45, 25, 50, 25, 25, 35, 205, 'Bug', 'Poison'),
(15, '15', 'Beedrill', 65, 80, 40, 40, 80, 75, 380, 'Bug', 'Poison'),
(16, '16', 'Pidgey', 40, 45, 40, 35, 35, 56, 251, 'Normal', 'Flying'),
(17, '17', 'Pidgeotto', 63, 60, 55, 50, 50, 71, 349, 'Normal', 'Flying'),
(18, '18', 'Pidgeot', 83, 80, 75, 70, 70, 91, 469, 'Normal', 'Flying'),
(19, '19', 'Rattata', 30, 56, 35, 25, 35, 72, 253, 'Normal', ''),
(20, '20', 'Raticate', 55, 81, 60, 50, 70, 97, 413, 'Normal', ''),
(21, '21', 'Spearow', 40, 60, 30, 31, 31, 70, 262, 'Normal', 'Flying'),
(22, '22', 'Fearow', 65, 90, 65, 61, 61, 100, 442, 'Normal', 'Flying'),
(23, '23', 'Ekans', 30, 60, 44, 40, 54, 55, 283, 'Poison', ''),
(24, '24', 'Arbok', 60, 85, 69, 65, 79, 80, 438, 'Poison', ''),
(25, '25', 'Pikachu', 35, 55, 30, 50, 40, 90, 300, 'Electric', ''),
(26, '26', 'Raichu', 60, 90, 55, 90, 80, 100, 475, 'Electric', ''),
(27, '27', 'Sandshrew', 50, 75, 85, 20, 30, 40, 300, 'Ground', ''),
(28, '28', 'Sandslash', 75, 100, 110, 45, 55, 65, 450, 'Ground', ''),
(29, '29', 'Nidoran (?)', 55, 47, 52, 40, 40, 41, 275, 'Poison', ''),
(30, '30', 'Nidorina', 70, 62, 67, 55, 55, 56, 365, 'Poison', ''),
(31, '31', 'Nidoqueen', 90, 82, 87, 75, 85, 76, 495, 'Poison', 'Ground'),
(32, '32', 'Nidoran (?)', 46, 57, 40, 40, 40, 50, 273, 'Poison', ''),
(33, '33', 'Nidorino', 61, 72, 57, 55, 55, 65, 365, 'Poison', ''),
(34, '34', 'Nidoking', 81, 92, 77, 85, 75, 85, 495, 'Poison', 'Ground'),
(35, '35', 'Clefairy', 70, 45, 48, 60, 65, 35, 323, 'Normal', ''),
(36, '36', 'Clefable', 95, 70, 73, 85, 90, 60, 473, 'Normal', ''),
(37, '37', 'Vulpix', 38, 41, 40, 50, 65, 65, 299, 'Fire', ''),
(38, '38', 'Ninetales', 73, 76, 75, 81, 100, 100, 505, 'Fire', ''),
(39, '39', 'Jigglypuff', 115, 45, 20, 45, 25, 20, 270, 'Normal', ''),
(40, '40', 'Wigglytuff', 140, 70, 45, 75, 50, 45, 425, 'Normal', ''),
(41, '41', 'Zubat', 40, 45, 35, 30, 40, 55, 245, 'Poison', 'Flying'),
(42, '42', 'Golbat', 75, 80, 70, 65, 75, 90, 455, 'Poison', 'Flying'),
(43, '43', 'Oddish', 45, 50, 55, 75, 65, 30, 320, 'Grass', 'Poison'),
(44, '44', 'Gloom', 60, 65, 70, 85, 75, 40, 395, 'Grass', 'Poison'),
(45, '45', 'Vileplume', 75, 80, 85, 100, 90, 50, 480, 'Grass', 'Poison'),
(46, '46', 'Paras', 35, 70, 55, 45, 55, 25, 285, 'Bug', 'Grass'),
(47, '47', 'Parasect', 60, 95, 80, 60, 80, 30, 405, 'Bug', 'Grass'),
(48, '48', 'Venonat', 60, 55, 50, 40, 55, 45, 305, 'Bug', 'Poison'),
(49, '49', 'Venomoth', 70, 65, 60, 90, 75, 90, 450, 'Bug', 'Poison'),
(50, '50', 'Diglett', 10, 55, 25, 35, 45, 95, 265, 'Ground', ''),
(51, '51', 'Dugtrio', 35, 80, 50, 50, 70, 120, 405, 'Ground', ''),
(52, '52', 'Meowth', 40, 45, 35, 40, 40, 90, 290, 'Normal', ''),
(53, '53', 'Persian', 65, 70, 60, 65, 65, 115, 440, 'Normal', ''),
(54, '54', 'Psyduck', 50, 52, 48, 65, 50, 55, 320, 'Water', ''),
(55, '55', 'Golduck', 80, 82, 78, 95, 80, 85, 500, 'Water', ''),
(56, '56', 'Mankey', 40, 80, 35, 35, 45, 70, 305, 'Fighting', ''),
(57, '57', 'Primeape', 65, 105, 60, 60, 70, 95, 455, 'Fighting', ''),
(58, '58', 'Growlithe', 55, 70, 45, 70, 50, 60, 350, 'Fire', ''),
(59, '59', 'Arcanine', 90, 110, 80, 100, 80, 95, 555, 'Fire', ''),
(60, '60', 'Poliwag', 40, 50, 40, 40, 40, 90, 300, 'Water', ''),
(61, '61', 'Poliwhirl', 65, 65, 65, 50, 50, 90, 385, 'Water', ''),
(62, '62', 'Poliwrath', 90, 85, 95, 70, 90, 70, 500, 'Water', 'Fighting'),
(63, '63', 'Abra', 25, 20, 15, 105, 55, 90, 310, 'Psychic', ''),
(64, '64', 'Kadabra', 40, 35, 30, 120, 70, 105, 400, 'Psychic', ''),
(65, '65', 'Alakazam', 55, 50, 45, 135, 85, 120, 490, 'Psychic', ''),
(66, '66', 'Machop', 70, 80, 50, 35, 35, 35, 305, 'Fighting', ''),
(67, '67', 'Machoke', 80, 100, 70, 50, 60, 45, 405, 'Fighting', ''),
(68, '68', 'Machamp', 90, 130, 80, 65, 85, 55, 505, 'Fighting', ''),
(69, '69', 'Bellsprout', 50, 75, 35, 70, 30, 40, 300, 'Grass', 'Poison'),
(70, '70', 'Weepinbell', 65, 90, 50, 85, 45, 55, 390, 'Grass', 'Poison'),
(71, '71', 'Victreebel', 80, 105, 65, 100, 60, 70, 480, 'Grass', 'Poison'),
(72, '72', 'Tentacool', 40, 40, 35, 50, 100, 70, 335, 'Water', 'Poison'),
(73, '73', 'Tentacruel', 80, 70, 65, 80, 120, 100, 515, 'Water', 'Poison'),
(74, '74', 'Geodude', 40, 80, 100, 30, 30, 20, 300, 'Rock', 'Ground'),
(75, '75', 'Graveler', 55, 95, 115, 45, 45, 35, 390, 'Rock', 'Ground'),
(76, '76', 'Golem', 80, 110, 130, 55, 65, 45, 485, 'Rock', 'Ground'),
(77, '77', 'Ponyta', 50, 85, 55, 65, 65, 90, 410, 'Fire', ''),
(78, '78', 'Rapidash', 65, 100, 70, 80, 80, 105, 500, 'Fire', ''),
(79, '79', 'Slowpoke', 90, 65, 65, 40, 40, 15, 315, 'Water', 'Psychic'),
(80, '80', 'Slowbro', 95, 75, 110, 100, 80, 30, 490, 'Water', 'Psychic'),
(81, '81', 'Magnemite', 25, 35, 70, 95, 55, 45, 325, 'Electric', 'Steel'),
(82, '82', 'Magneton', 50, 60, 95, 120, 70, 70, 465, 'Electric', 'Steel'),
(83, '83', 'Farfetch\'d', 52, 65, 55, 58, 62, 60, 352, 'Normal', 'Flying'),
(84, '84', 'Doduo', 35, 85, 45, 35, 35, 75, 310, 'Normal', 'Flying'),
(85, '85', 'Dodrio', 60, 110, 70, 60, 60, 100, 460, 'Normal', 'Flying'),
(86, '86', 'Seel', 65, 45, 55, 45, 70, 45, 325, 'Water', ''),
(87, '87', 'Dewgong', 90, 70, 80, 70, 95, 70, 475, 'Water', 'Ice'),
(88, '88', 'Grimer', 80, 80, 50, 40, 50, 25, 325, 'Poison', ''),
(89, '89', 'Muk', 105, 105, 75, 65, 100, 50, 500, 'Poison', ''),
(90, '90', 'Shellder', 30, 65, 100, 45, 25, 40, 305, 'Water', ''),
(91, '91', 'Cloyster', 50, 90, 180, 85, 45, 70, 520, 'Water', 'Ice'),
(92, '92', 'Gastly', 30, 35, 30, 100, 35, 80, 310, 'Ghost', 'Poison'),
(93, '93', 'Haunter', 45, 50, 45, 115, 55, 95, 405, 'Ghost', 'Poison'),
(94, '94', 'Gengar', 60, 65, 60, 130, 75, 110, 500, 'Ghost', 'Poison'),
(95, '95', 'Onix', 35, 45, 160, 30, 45, 70, 385, 'Rock', 'Ground'),
(96, '96', 'Drowzee', 60, 48, 45, 43, 90, 42, 328, 'Psychic', ''),
(97, '97', 'Hypno', 85, 73, 70, 73, 115, 67, 483, 'Psychic', ''),
(98, '98', 'Krabby', 30, 105, 90, 25, 25, 50, 325, 'Water', ''),
(99, '99', 'Kingler', 55, 130, 115, 50, 50, 75, 475, 'Water', ''),
(100, '100', 'Voltorb', 40, 30, 50, 55, 55, 100, 330, 'Electric', ''),
(101, '101', 'Electrode', 60, 50, 70, 80, 80, 140, 480, 'Electric', ''),
(102, '102', 'Exeggcute', 60, 40, 80, 60, 45, 40, 325, 'Grass', 'Psychic'),
(103, '103', 'Exeggutor', 95, 95, 85, 125, 65, 55, 520, 'Grass', 'Psychic'),
(104, '104', 'Cubone', 50, 50, 95, 40, 50, 35, 320, 'Ground', ''),
(105, '105', 'Marowak', 60, 80, 110, 50, 80, 45, 425, 'Ground', ''),
(106, '106', 'Hitmonlee', 50, 120, 53, 35, 110, 87, 455, 'Fighting', ''),
(107, '107', 'Hitmonchan', 50, 105, 79, 35, 110, 76, 455, 'Fighting', ''),
(108, '108', 'Lickitung', 90, 55, 75, 60, 75, 30, 385, 'Normal', ''),
(109, '109', 'Koffing', 40, 65, 95, 60, 45, 35, 340, 'Poison', ''),
(110, '110', 'Weezing', 65, 90, 120, 85, 70, 60, 490, 'Poison', ''),
(111, '111', 'Rhyhorn', 80, 85, 95, 30, 30, 25, 345, 'Ground', 'Rock'),
(112, '112', 'Rhydon', 105, 130, 120, 45, 45, 40, 485, 'Ground', 'Rock'),
(113, '113', 'Chansey', 250, 5, 5, 35, 105, 50, 450, 'Normal', ''),
(114, '114', 'Tangela', 65, 55, 115, 100, 40, 60, 435, 'Grass', ''),
(115, '115', 'Kangaskhan', 105, 95, 80, 40, 80, 90, 490, 'Normal', ''),
(116, '116', 'Horsea', 30, 40, 70, 70, 25, 60, 295, 'Water', ''),
(117, '117', 'Seadra', 55, 65, 95, 95, 45, 85, 440, 'Water', ''),
(118, '118', 'Goldeen', 45, 67, 60, 35, 50, 63, 320, 'Water', ''),
(119, '119', 'Seaking', 80, 92, 65, 65, 80, 68, 450, 'Water', ''),
(120, '120', 'Staryu', 30, 45, 55, 70, 55, 85, 340, 'Water', ''),
(121, '121', 'Starmie', 60, 75, 85, 100, 85, 115, 520, 'Water', 'Psychic'),
(122, '122', 'Mr. Mime', 40, 45, 65, 100, 120, 90, 460, 'Psychic', ''),
(123, '123', 'Scyther', 70, 110, 80, 55, 80, 105, 500, 'Bug', 'Flying'),
(124, '124', 'Jynx', 65, 50, 35, 115, 95, 95, 455, 'Ice', 'Psychic'),
(125, '125', 'Electabuzz', 65, 83, 57, 95, 85, 105, 490, 'Electric', ''),
(126, '126', 'Magmar', 65, 95, 57, 100, 85, 93, 495, 'Fire', ''),
(127, '127', 'Pinsir', 65, 125, 100, 55, 70, 85, 500, 'Bug', ''),
(128, '128', 'Tauros', 75, 100, 95, 40, 70, 110, 490, 'Normal', ''),
(129, '129', 'Magikarp', 20, 10, 55, 15, 20, 80, 200, 'Water', ''),
(130, '130', 'Gyarados', 95, 125, 79, 60, 100, 81, 540, 'Water', 'Flying'),
(131, '131', 'Lapras', 130, 85, 80, 85, 95, 60, 535, 'Water', 'Ice'),
(132, '132', 'Ditto', 48, 48, 48, 48, 48, 48, 288, 'Normal', ''),
(133, '133', 'Eevee', 55, 55, 50, 45, 65, 55, 325, 'Normal', ''),
(134, '134', 'Vaporeon', 130, 65, 60, 110, 95, 65, 525, 'Water', ''),
(135, '135', 'Jolteon', 65, 65, 60, 110, 95, 130, 525, 'Electric', ''),
(136, '136', 'Flareon', 65, 130, 60, 95, 110, 65, 525, 'Fire', ''),
(137, '137', 'Porygon', 65, 60, 70, 85, 75, 40, 395, 'Normal', ''),
(138, '138', 'Omanyte', 35, 40, 100, 90, 55, 35, 355, 'Rock', 'Water'),
(139, '139', 'Omastar', 70, 60, 125, 115, 70, 55, 495, 'Rock', 'Water'),
(140, '140', 'Kabuto', 30, 80, 90, 55, 45, 55, 355, 'Rock', 'Water'),
(141, '141', 'Kabutops', 60, 115, 105, 65, 70, 80, 495, 'Rock', 'Water'),
(142, '142', 'Aerodactyl', 80, 105, 65, 60, 75, 130, 515, 'Rock', 'Flying'),
(143, '143', 'Snorlax', 160, 110, 65, 65, 110, 30, 540, 'Normal', ''),
(144, '144', 'Articuno', 90, 85, 100, 95, 125, 85, 580, 'Ice', 'Flying'),
(145, '145', 'Zapdos', 90, 90, 85, 125, 90, 100, 580, 'Electric', 'Flying'),
(146, '146', 'Moltres', 90, 100, 90, 125, 85, 90, 580, 'Fire', 'Flying'),
(147, '147', 'Dratini', 41, 64, 45, 50, 50, 50, 300, 'Dragon', ''),
(148, '148', 'Dragonair', 61, 84, 65, 70, 70, 70, 420, 'Dragon', ''),
(149, '149', 'Dragonite', 91, 134, 95, 100, 100, 80, 600, 'Dragon', 'Flying'),
(150, '150', 'Mewtwo', 106, 110, 90, 154, 90, 130, 680, 'Psychic', ''),
(151, '151', 'Mew', 100, 100, 100, 100, 100, 100, 600, 'Psychic', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons`
--

CREATE TABLE `pokemons` (
  `id` int(11) NOT NULL,
  `pokedex` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `hp` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defence` int(11) NOT NULL,
  `special_attack` int(11) NOT NULL,
  `special_defence` int(11) NOT NULL,
  `speed` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `type_1` varchar(50) NOT NULL,
  `type_2` varchar(50) NOT NULL,
  `imagen` varchar(200) DEFAULT NULL,
  `alias` varchar(100) DEFAULT NULL,
  `especie` varchar(100) NOT NULL,
  `gif_front` varchar(300) DEFAULT NULL,
  `gif_back` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons`
--

INSERT INTO `pokemons` (`id`, `pokedex`, `name`, `hp`, `attack`, `defence`, `special_attack`, `special_defence`, `speed`, `total`, `type_1`, `type_2`, `imagen`, `alias`, `especie`, `gif_front`, `gif_back`) VALUES
(1, '1', 'Bulbasaur', 45, 49, 49, 65, 65, 45, 318, 'Grass', 'Poison', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/001.png', NULL, '', NULL, '0'),
(2, '2', 'Ivysaur', 60, 62, 63, 80, 80, 60, 405, 'Grass', 'Poison', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/002.png', NULL, '', NULL, '0'),
(3, '3', 'Venusaur', 80, 82, 83, 100, 100, 80, 525, 'Grass', 'Poison', 'https://assets.pokemon.com/assets/cms2/img/pokedex/full/003.png', NULL, '', 'https://img.pokemondb.net/sprites/black-white/anim/normal/venusaur.gif', 'https://img.pokemondb.net/sprites/black-white/anim/back-normal/venusaur-f.gif'),
(4, '4', 'Charmander', 39, 52, 43, 60, 50, 65, 309, 'Fire', '', NULL, NULL, '', NULL, '0'),
(5, '5', 'Charmeleon', 58, 64, 58, 80, 65, 80, 405, 'Fire', '', NULL, NULL, '', NULL, '0'),
(6, '6', 'Charizard', 78, 84, 78, 109, 85, 100, 534, 'Fire', 'Flying', NULL, NULL, '', NULL, '0'),
(7, '7', 'Squirtle', 44, 48, 65, 60, 54, 43, 314, 'Water', '', NULL, NULL, '', NULL, '0'),
(8, '8', 'Wartortle', 59, 63, 80, 65, 80, 58, 405, 'Water', '', NULL, NULL, '', NULL, '0'),
(9, '9', 'Blastoise', 79, 83, 100, 85, 105, 78, 530, 'Water', '', NULL, NULL, '', NULL, '0'),
(10, '10', 'Caterpie', 45, 30, 35, 20, 20, 45, 195, 'Bug', '', NULL, NULL, '', NULL, '0'),
(11, '11', 'Metapod', 50, 20, 55, 25, 25, 30, 205, 'Bug', '', NULL, NULL, '', NULL, '0'),
(12, '12', 'Butterfree', 60, 45, 50, 80, 80, 70, 385, 'Bug', 'Flying', NULL, NULL, '', NULL, '0'),
(13, '13', 'Weedle', 40, 35, 30, 20, 20, 50, 195, 'Bug', 'Poison', NULL, NULL, '', NULL, '0'),
(14, '14', 'Kakuna', 45, 25, 50, 25, 25, 35, 205, 'Bug', 'Poison', NULL, NULL, '', NULL, '0'),
(15, '15', 'Beedrill', 65, 80, 40, 40, 80, 75, 380, 'Bug', 'Poison', NULL, NULL, '', NULL, '0'),
(16, '16', 'Pidgey', 40, 45, 40, 35, 35, 56, 251, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(17, '17', 'Pidgeotto', 63, 60, 55, 50, 50, 71, 349, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(18, '18', 'Pidgeot', 83, 80, 75, 70, 70, 91, 469, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(19, '19', 'Rattata', 30, 56, 35, 25, 35, 72, 253, 'Normal', '', NULL, NULL, '', NULL, '0'),
(20, '20', 'Raticate', 55, 81, 60, 50, 70, 97, 413, 'Normal', '', NULL, NULL, '', NULL, '0'),
(21, '21', 'Spearow', 40, 60, 30, 31, 31, 70, 262, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(22, '22', 'Fearow', 65, 90, 65, 61, 61, 100, 442, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(23, '23', 'Ekans', 30, 60, 44, 40, 54, 55, 283, 'Poison', '', NULL, NULL, '', NULL, '0'),
(24, '24', 'Arbok', 60, 85, 69, 65, 79, 80, 438, 'Poison', '', NULL, NULL, '', NULL, '0'),
(25, '25', 'Pikachu', 35, 55, 30, 50, 40, 90, 300, 'Electric', '', NULL, NULL, '', NULL, '0'),
(26, '26', 'Raichu', 60, 90, 55, 90, 80, 100, 475, 'Electric', '', NULL, NULL, '', NULL, '0'),
(27, '27', 'Sandshrew', 50, 75, 85, 20, 30, 40, 300, 'Ground', '', NULL, NULL, '', NULL, '0'),
(28, '28', 'Sandslash', 75, 100, 110, 45, 55, 65, 450, 'Ground', '', NULL, NULL, '', NULL, '0'),
(29, '29', 'Nidoran (?)', 55, 47, 52, 40, 40, 41, 275, 'Poison', '', NULL, NULL, '', NULL, '0'),
(30, '30', 'Nidorina', 70, 62, 67, 55, 55, 56, 365, 'Poison', '', NULL, NULL, '', NULL, '0'),
(31, '31', 'Nidoqueen', 90, 82, 87, 75, 85, 76, 495, 'Poison', 'Ground', NULL, NULL, '', NULL, '0'),
(32, '32', 'Nidoran (?)', 46, 57, 40, 40, 40, 50, 273, 'Poison', '', NULL, NULL, '', NULL, '0'),
(33, '33', 'Nidorino', 61, 72, 57, 55, 55, 65, 365, 'Poison', '', NULL, NULL, '', NULL, '0'),
(34, '34', 'Nidoking', 81, 92, 77, 85, 75, 85, 495, 'Poison', 'Ground', NULL, NULL, '', NULL, '0'),
(35, '35', 'Clefairy', 70, 45, 48, 60, 65, 35, 323, 'Normal', '', NULL, NULL, '', NULL, '0'),
(36, '36', 'Clefable', 95, 70, 73, 85, 90, 60, 473, 'Normal', '', NULL, NULL, '', NULL, '0'),
(37, '37', 'Vulpix', 38, 41, 40, 50, 65, 65, 299, 'Fire', '', NULL, NULL, '', NULL, '0'),
(38, '38', 'Ninetales', 73, 76, 75, 81, 100, 100, 505, 'Fire', '', NULL, NULL, '', NULL, '0'),
(39, '39', 'Jigglypuff', 115, 45, 20, 45, 25, 20, 270, 'Normal', '', NULL, NULL, '', NULL, '0'),
(40, '40', 'Wigglytuff', 140, 70, 45, 75, 50, 45, 425, 'Normal', '', NULL, NULL, '', NULL, '0'),
(41, '41', 'Zubat', 40, 45, 35, 30, 40, 55, 245, 'Poison', 'Flying', NULL, NULL, '', NULL, '0'),
(42, '42', 'Golbat', 75, 80, 70, 65, 75, 90, 455, 'Poison', 'Flying', NULL, NULL, '', NULL, '0'),
(43, '43', 'Oddish', 45, 50, 55, 75, 65, 30, 320, 'Grass', 'Poison', NULL, NULL, '', NULL, '0'),
(44, '44', 'Gloom', 60, 65, 70, 85, 75, 40, 395, 'Grass', 'Poison', NULL, NULL, '', NULL, '0'),
(45, '45', 'Vileplume', 75, 80, 85, 100, 90, 50, 480, 'Grass', 'Poison', NULL, NULL, '', NULL, '0'),
(46, '46', 'Paras', 35, 70, 55, 45, 55, 25, 285, 'Bug', 'Grass', NULL, NULL, '', NULL, '0'),
(47, '47', 'Parasect', 60, 95, 80, 60, 80, 30, 405, 'Bug', 'Grass', NULL, NULL, '', NULL, '0'),
(48, '48', 'Venonat', 60, 55, 50, 40, 55, 45, 305, 'Bug', 'Poison', NULL, NULL, '', NULL, '0'),
(49, '49', 'Venomoth', 70, 65, 60, 90, 75, 90, 450, 'Bug', 'Poison', NULL, NULL, '', NULL, '0'),
(50, '50', 'Diglett', 10, 55, 25, 35, 45, 95, 265, 'Ground', '', NULL, NULL, '', NULL, '0'),
(51, '51', 'Dugtrio', 35, 80, 50, 50, 70, 120, 405, 'Ground', '', NULL, NULL, '', NULL, '0'),
(52, '52', 'Meowth', 40, 45, 35, 40, 40, 90, 290, 'Normal', '', NULL, NULL, '', NULL, '0'),
(53, '53', 'Persian', 65, 70, 60, 65, 65, 115, 440, 'Normal', '', NULL, NULL, '', NULL, '0'),
(54, '54', 'Psyduck', 50, 52, 48, 65, 50, 55, 320, 'Water', '', NULL, NULL, '', NULL, '0'),
(55, '55', 'Golduck', 80, 82, 78, 95, 80, 85, 500, 'Water', '', NULL, NULL, '', NULL, '0'),
(56, '56', 'Mankey', 40, 80, 35, 35, 45, 70, 305, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(57, '57', 'Primeape', 65, 105, 60, 60, 70, 95, 455, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(58, '58', 'Growlithe', 55, 70, 45, 70, 50, 60, 350, 'Fire', '', NULL, NULL, '', NULL, '0'),
(59, '59', 'Arcanine', 90, 110, 80, 100, 80, 95, 555, 'Fire', '', NULL, NULL, '', NULL, '0'),
(60, '60', 'Poliwag', 40, 50, 40, 40, 40, 90, 300, 'Water', '', NULL, NULL, '', NULL, '0'),
(61, '61', 'Poliwhirl', 65, 65, 65, 50, 50, 90, 385, 'Water', '', NULL, NULL, '', NULL, '0'),
(62, '62', 'Poliwrath', 90, 85, 95, 70, 90, 70, 500, 'Water', 'Fighting', NULL, NULL, '', NULL, '0'),
(63, '63', 'Abra', 25, 20, 15, 105, 55, 90, 310, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(64, '64', 'Kadabra', 40, 35, 30, 120, 70, 105, 400, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(65, '65', 'Alakazam', 55, 50, 45, 135, 85, 120, 490, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(66, '66', 'Machop', 70, 80, 50, 35, 35, 35, 305, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(67, '67', 'Machoke', 80, 100, 70, 50, 60, 45, 405, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(68, '68', 'Machamp', 90, 130, 80, 65, 85, 55, 505, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(69, '69', 'Bellsprout', 50, 75, 35, 70, 30, 40, 300, 'Grass', 'Poison', NULL, NULL, '', NULL, '0'),
(70, '70', 'Weepinbell', 65, 90, 50, 85, 45, 55, 390, 'Grass', 'Poison', NULL, NULL, '', NULL, '0'),
(71, '71', 'Victreebel', 80, 105, 65, 100, 60, 70, 480, 'Grass', 'Poison', NULL, NULL, '', NULL, '0'),
(72, '72', 'Tentacool', 40, 40, 35, 50, 100, 70, 335, 'Water', 'Poison', NULL, NULL, '', NULL, '0'),
(73, '73', 'Tentacruel', 80, 70, 65, 80, 120, 100, 515, 'Water', 'Poison', NULL, NULL, '', NULL, '0'),
(74, '74', 'Geodude', 40, 80, 100, 30, 30, 20, 300, 'Rock', 'Ground', NULL, NULL, '', NULL, '0'),
(75, '75', 'Graveler', 55, 95, 115, 45, 45, 35, 390, 'Rock', 'Ground', NULL, NULL, '', NULL, '0'),
(76, '76', 'Golem', 80, 110, 130, 55, 65, 45, 485, 'Rock', 'Ground', NULL, NULL, '', NULL, '0'),
(77, '77', 'Ponyta', 50, 85, 55, 65, 65, 90, 410, 'Fire', '', NULL, NULL, '', NULL, '0'),
(78, '78', 'Rapidash', 65, 100, 70, 80, 80, 105, 500, 'Fire', '', NULL, NULL, '', NULL, '0'),
(79, '79', 'Slowpoke', 90, 65, 65, 40, 40, 15, 315, 'Water', 'Psychic', NULL, NULL, '', NULL, '0'),
(80, '80', 'Slowbro', 95, 75, 110, 100, 80, 30, 490, 'Water', 'Psychic', NULL, NULL, '', NULL, '0'),
(81, '81', 'Magnemite', 25, 35, 70, 95, 55, 45, 325, 'Electric', 'Steel', NULL, NULL, '', NULL, '0'),
(82, '82', 'Magneton', 50, 60, 95, 120, 70, 70, 465, 'Electric', 'Steel', NULL, NULL, '', NULL, '0'),
(83, '83', 'Farfetch\'d', 52, 65, 55, 58, 62, 60, 352, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(84, '84', 'Doduo', 35, 85, 45, 35, 35, 75, 310, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(85, '85', 'Dodrio', 60, 110, 70, 60, 60, 100, 460, 'Normal', 'Flying', NULL, NULL, '', NULL, '0'),
(86, '86', 'Seel', 65, 45, 55, 45, 70, 45, 325, 'Water', '', NULL, NULL, '', NULL, '0'),
(87, '87', 'Dewgong', 90, 70, 80, 70, 95, 70, 475, 'Water', 'Ice', NULL, NULL, '', NULL, '0'),
(88, '88', 'Grimer', 80, 80, 50, 40, 50, 25, 325, 'Poison', '', NULL, NULL, '', NULL, '0'),
(89, '89', 'Muk', 105, 105, 75, 65, 100, 50, 500, 'Poison', '', NULL, NULL, '', NULL, '0'),
(90, '90', 'Shellder', 30, 65, 100, 45, 25, 40, 305, 'Water', '', NULL, NULL, '', NULL, '0'),
(91, '91', 'Cloyster', 50, 90, 180, 85, 45, 70, 520, 'Water', 'Ice', NULL, NULL, '', NULL, '0'),
(92, '92', 'Gastly', 30, 35, 30, 100, 35, 80, 310, 'Ghost', 'Poison', NULL, NULL, '', NULL, '0'),
(93, '93', 'Haunter', 45, 50, 45, 115, 55, 95, 405, 'Ghost', 'Poison', NULL, NULL, '', NULL, '0'),
(94, '94', 'Gengar', 60, 65, 60, 130, 75, 110, 500, 'Ghost', 'Poison', NULL, NULL, '', NULL, '0'),
(95, '95', 'Onix', 35, 45, 160, 30, 45, 70, 385, 'Rock', 'Ground', NULL, NULL, '', NULL, '0'),
(96, '96', 'Drowzee', 60, 48, 45, 43, 90, 42, 328, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(97, '97', 'Hypno', 85, 73, 70, 73, 115, 67, 483, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(98, '98', 'Krabby', 30, 105, 90, 25, 25, 50, 325, 'Water', '', NULL, NULL, '', NULL, '0'),
(99, '99', 'Kingler', 55, 130, 115, 50, 50, 75, 475, 'Water', '', NULL, NULL, '', NULL, '0'),
(100, '100', 'Voltorb', 40, 30, 50, 55, 55, 100, 330, 'Electric', '', NULL, NULL, '', NULL, '0'),
(101, '101', 'Electrode', 60, 50, 70, 80, 80, 140, 480, 'Electric', '', NULL, NULL, '', NULL, '0'),
(102, '102', 'Exeggcute', 60, 40, 80, 60, 45, 40, 325, 'Grass', 'Psychic', NULL, NULL, '', NULL, '0'),
(103, '103', 'Exeggutor', 95, 95, 85, 125, 65, 55, 520, 'Grass', 'Psychic', NULL, NULL, '', NULL, '0'),
(104, '104', 'Cubone', 50, 50, 95, 40, 50, 35, 320, 'Ground', '', NULL, NULL, '', NULL, '0'),
(105, '105', 'Marowak', 60, 80, 110, 50, 80, 45, 425, 'Ground', '', NULL, NULL, '', NULL, '0'),
(106, '106', 'Hitmonlee', 50, 120, 53, 35, 110, 87, 455, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(107, '107', 'Hitmonchan', 50, 105, 79, 35, 110, 76, 455, 'Fighting', '', NULL, NULL, '', NULL, '0'),
(108, '108', 'Lickitung', 90, 55, 75, 60, 75, 30, 385, 'Normal', '', NULL, NULL, '', NULL, '0'),
(109, '109', 'Koffing', 40, 65, 95, 60, 45, 35, 340, 'Poison', '', NULL, NULL, '', NULL, '0'),
(110, '110', 'Weezing', 65, 90, 120, 85, 70, 60, 490, 'Poison', '', NULL, NULL, '', NULL, '0'),
(111, '111', 'Rhyhorn', 80, 85, 95, 30, 30, 25, 345, 'Ground', 'Rock', NULL, NULL, '', NULL, '0'),
(112, '112', 'Rhydon', 105, 130, 120, 45, 45, 40, 485, 'Ground', 'Rock', NULL, NULL, '', NULL, '0'),
(113, '113', 'Chansey', 250, 5, 5, 35, 105, 50, 450, 'Normal', '', NULL, NULL, '', NULL, '0'),
(114, '114', 'Tangela', 65, 55, 115, 100, 40, 60, 435, 'Grass', '', NULL, NULL, '', NULL, '0'),
(115, '115', 'Kangaskhan', 105, 95, 80, 40, 80, 90, 490, 'Normal', '', NULL, NULL, '', NULL, '0'),
(116, '116', 'Horsea', 30, 40, 70, 70, 25, 60, 295, 'Water', '', NULL, NULL, '', NULL, '0'),
(117, '117', 'Seadra', 55, 65, 95, 95, 45, 85, 440, 'Water', '', NULL, NULL, '', NULL, '0'),
(118, '118', 'Goldeen', 45, 67, 60, 35, 50, 63, 320, 'Water', '', NULL, NULL, '', NULL, '0'),
(119, '119', 'Seaking', 80, 92, 65, 65, 80, 68, 450, 'Water', '', NULL, NULL, '', NULL, '0'),
(120, '120', 'Staryu', 30, 45, 55, 70, 55, 85, 340, 'Water', '', NULL, NULL, '', NULL, '0'),
(121, '121', 'Starmie', 60, 75, 85, 100, 85, 115, 520, 'Water', 'Psychic', NULL, NULL, '', NULL, '0'),
(122, '122', 'Mr. Mime', 40, 45, 65, 100, 120, 90, 460, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(123, '123', 'Scyther', 70, 110, 80, 55, 80, 105, 500, 'Bug', 'Flying', NULL, NULL, '', NULL, '0'),
(124, '124', 'Jynx', 65, 50, 35, 115, 95, 95, 455, 'Ice', 'Psychic', NULL, NULL, '', NULL, '0'),
(125, '125', 'Electabuzz', 65, 83, 57, 95, 85, 105, 490, 'Electric', '', NULL, NULL, '', NULL, '0'),
(126, '126', 'Magmar', 65, 95, 57, 100, 85, 93, 495, 'Fire', '', NULL, NULL, '', NULL, '0'),
(127, '127', 'Pinsir', 65, 125, 100, 55, 70, 85, 500, 'Bug', '', NULL, NULL, '', NULL, '0'),
(128, '128', 'Tauros', 75, 100, 95, 40, 70, 110, 490, 'Normal', '', NULL, NULL, '', NULL, '0'),
(129, '129', 'Magikarp', 20, 10, 55, 15, 20, 80, 200, 'Water', '', NULL, NULL, '', NULL, '0'),
(130, '130', 'Gyarados', 95, 125, 79, 60, 100, 81, 540, 'Water', 'Flying', NULL, NULL, '', NULL, '0'),
(131, '131', 'Lapras', 130, 85, 80, 85, 95, 60, 535, 'Water', 'Ice', NULL, NULL, '', NULL, '0'),
(132, '132', 'Ditto', 48, 48, 48, 48, 48, 48, 288, 'Normal', '', NULL, NULL, '', NULL, '0'),
(133, '133', 'Eevee', 55, 55, 50, 45, 65, 55, 325, 'Normal', '', NULL, NULL, '', NULL, '0'),
(134, '134', 'Vaporeon', 130, 65, 60, 110, 95, 65, 525, 'Water', '', NULL, NULL, '', NULL, '0'),
(135, '135', 'Jolteon', 65, 65, 60, 110, 95, 130, 525, 'Electric', '', NULL, NULL, '', NULL, '0'),
(136, '136', 'Flareon', 65, 130, 60, 95, 110, 65, 525, 'Fire', '', NULL, NULL, '', NULL, '0'),
(137, '137', 'Porygon', 65, 60, 70, 85, 75, 40, 395, 'Normal', '', NULL, NULL, '', NULL, '0'),
(138, '138', 'Omanyte', 35, 40, 100, 90, 55, 35, 355, 'Rock', 'Water', NULL, NULL, '', NULL, '0'),
(139, '139', 'Omastar', 70, 60, 125, 115, 70, 55, 495, 'Rock', 'Water', NULL, NULL, '', NULL, '0'),
(140, '140', 'Kabuto', 30, 80, 90, 55, 45, 55, 355, 'Rock', 'Water', NULL, NULL, '', NULL, '0'),
(141, '141', 'Kabutops', 60, 115, 105, 65, 70, 80, 495, 'Rock', 'Water', NULL, NULL, '', NULL, '0'),
(142, '142', 'Aerodactyl', 80, 105, 65, 60, 75, 130, 515, 'Rock', 'Flying', NULL, NULL, '', NULL, '0'),
(143, '143', 'Snorlax', 160, 110, 65, 65, 110, 30, 540, 'Normal', '', NULL, NULL, '', NULL, '0'),
(144, '144', 'Articuno', 90, 85, 100, 95, 125, 85, 580, 'Ice', 'Flying', NULL, NULL, '', NULL, '0'),
(145, '145', 'Zapdos', 90, 90, 85, 125, 90, 100, 580, 'Electric', 'Flying', NULL, NULL, '', NULL, '0'),
(146, '146', 'Moltres', 90, 100, 90, 125, 85, 90, 580, 'Fire', 'Flying', NULL, NULL, '', NULL, '0'),
(147, '147', 'Dratini', 41, 64, 45, 50, 50, 50, 300, 'Dragon', '', NULL, NULL, '', NULL, '0'),
(148, '148', 'Dragonair', 61, 84, 65, 70, 70, 70, 420, 'Dragon', '', NULL, NULL, '', NULL, '0'),
(149, '149', 'Dragonite', 91, 134, 95, 100, 100, 80, 600, 'Dragon', 'Flying', NULL, NULL, '', NULL, '0'),
(150, '150', 'Mewtwo', 106, 110, 90, 154, 90, 130, 680, 'Psychic', '', NULL, NULL, '', NULL, '0'),
(151, '151', 'Mew', 100, 100, 100, 100, 100, 100, 600, 'Psychic', '', NULL, NULL, '', NULL, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pokemons_ataques`
--

CREATE TABLE `pokemons_ataques` (
  `id` int(11) NOT NULL,
  `fk_pokedexs` int(11) DEFAULT NULL,
  `fk_ataque_1` int(11) NOT NULL,
  `fk_ataque_2` int(11) NOT NULL,
  `fk_ataque_3` int(11) NOT NULL,
  `fk_ataque_4` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pokemons_ataques`
--

INSERT INTO `pokemons_ataques` (`id`, `fk_pokedexs`, `fk_ataque_1`, `fk_ataque_2`, `fk_ataque_3`, `fk_ataque_4`) VALUES
(1, 108, 3, 14, 43, 22),
(2, 110, 43, 2, 11, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `contraseña` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contraseña`, `email`, `fecha_creacion`) VALUES
(1, 'joshe', '1234', 'joseinformatico2015@gmail.com', '2019-01-03 12:58:03'),
(2, 'daniel', '1234', 'daniel@gmail.com', '2019-01-03 12:58:03'),
(4, 'joshel', '1234', 'ojs@gmail.com', '2019-01-15 16:32:31'),
(5, 'hebreo', '1234', '', '2019-01-18 11:56:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ataques`
--
ALTER TABLE `ataques`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medallas`
--
ALTER TABLE `medallas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medallas_personajes`
--
ALTER TABLE `medallas_personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_personaje` (`fk_personaje`),
  ADD KEY `fk_medalla` (`fk_medalla`);

--
-- Indices de la tabla `nivel_ataques`
--
ALTER TABLE `nivel_ataques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pokemon` (`pokemon`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario` (`fk_usuario`);

--
-- Indices de la tabla `pokedexs`
--
ALTER TABLE `pokedexs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pokemon` (`fk_pokemon`),
  ADD KEY `fk_personaje` (`fk_personaje`);

--
-- Indices de la tabla `pokemones(de_baja)`
--
ALTER TABLE `pokemones(de_baja)`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pokemons_ataques`
--
ALTER TABLE `pokemons_ataques`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pok_per` (`fk_pokedexs`),
  ADD KEY `ataque_1` (`fk_ataque_1`),
  ADD KEY `ataque_2` (`fk_ataque_2`),
  ADD KEY `ataque_3` (`fk_ataque_3`),
  ADD KEY `ataque_4` (`fk_ataque_4`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ataques`
--
ALTER TABLE `ataques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=743;

--
-- AUTO_INCREMENT de la tabla `medallas`
--
ALTER TABLE `medallas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `medallas_personajes`
--
ALTER TABLE `medallas_personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `nivel_ataques`
--
ALTER TABLE `nivel_ataques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `pokedexs`
--
ALTER TABLE `pokedexs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de la tabla `pokemones(de_baja)`
--
ALTER TABLE `pokemones(de_baja)`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `pokemons`
--
ALTER TABLE `pokemons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT de la tabla `pokemons_ataques`
--
ALTER TABLE `pokemons_ataques`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `medallas_personajes`
--
ALTER TABLE `medallas_personajes`
  ADD CONSTRAINT `fk_medalla` FOREIGN KEY (`fk_medalla`) REFERENCES `medallas` (`id`),
  ADD CONSTRAINT `fk_personaje` FOREIGN KEY (`fk_personaje`) REFERENCES `personajes` (`id`);

--
-- Filtros para la tabla `nivel_ataques`
--
ALTER TABLE `nivel_ataques`
  ADD CONSTRAINT `pokemon` FOREIGN KEY (`pokemon`) REFERENCES `pokemons` (`id`);

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `pokedexs`
--
ALTER TABLE `pokedexs`
  ADD CONSTRAINT `pokedexs_ibfk_1` FOREIGN KEY (`fk_pokemon`) REFERENCES `pokemons` (`id`),
  ADD CONSTRAINT `pokedexs_ibfk_2` FOREIGN KEY (`fk_personaje`) REFERENCES `personajes` (`id`);

--
-- Filtros para la tabla `pokemons_ataques`
--
ALTER TABLE `pokemons_ataques`
  ADD CONSTRAINT `ataque_1` FOREIGN KEY (`fk_ataque_1`) REFERENCES `ataques` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ataque_2` FOREIGN KEY (`fk_ataque_2`) REFERENCES `ataques` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ataque_3` FOREIGN KEY (`fk_ataque_3`) REFERENCES `ataques` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ataque_4` FOREIGN KEY (`fk_ataque_4`) REFERENCES `ataques` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pok_per` FOREIGN KEY (`fk_pokedexs`) REFERENCES `pokedexs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
