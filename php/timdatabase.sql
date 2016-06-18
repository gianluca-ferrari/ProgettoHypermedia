-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2016 at 10:18 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `descrizione` text NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `caratteristichesl`
--

CREATE TABLE `caratteristichesl` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `caratteristichesl`
--

INSERT INTO `caratteristichesl` (`id`, `nome`, `immagine`) VALUES
(1, 'TV & Entertainment', 0),
(2, 'TIM Games', 0),
(3, 'TIM Reading', 0),
(4, 'Health & Wellness', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `categoria` int(11) NOT NULL,
  `immagine` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`id`, `name`, `categoria`, `immagine`) VALUES
(1, 'smartphone', 1, 'smartphone.jpg'),
(2, 'smartwatch', 1, 'smartwatch.jpg'),
(3, 'tablet', 1, 'tablet.jpg'),
(4, 'smart living', 1, 'smart living.jpg'),
(5, 'promotions', 1, 'promotions.jpg'),
(6, 'TV & Entertaiment', 2, 'tventertainment.jpg'),
(7, 'TIM Games', 2, 'timgames.jpg'),
(8, 'TIM Reading', 2, 'timreading.jpg'),
(9, 'Health & Wellness', 2, 'healthandwellness.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categorieassistenza`
--

CREATE TABLE `categorieassistenza` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `device`
--

CREATE TABLE `device` (
  `idDevice` int(11) NOT NULL,
  `nome` text NOT NULL,
  `costo` float NOT NULL,
  `immagine` text NOT NULL,
  `categoria` int(11) NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `device`
--

INSERT INTO `device` (`idDevice`, `nome`, `costo`, `immagine`, `categoria`, `descrizione`) VALUES
(1, 'Samsung Galaxy S7', 829.9, '../img/samsungs7.jpg', 1, 'Samsung Galaxy S7 Edge è uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!'),
(2, 'iPad Pro 9.7" 128 GB', 1019.9, '../img/ipad.jpg', 3, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, è pronto ad allargare ancora una volta i tuoi orizzonti!'),
(3, 'Apple iPhone 6', 989.9, '../img/iphone.jpg', 1, 'iPhone 6 non è solo più grande: è ancora migliore, da ogni punto di vista. Più grande, eppure più sottile. Più potente, ma attento nei consumi. È una nuova generazione di iPhone.\r\n'),
(4, 'Microsoft Lumia 950', 689.9, '../img/lumia950.jpg', 1, 'Microsoft Lumia 950 è uno cellulare Touchscreen avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 2560x1440 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Microsoft Lumia 950 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(5, 'LG G5', 559.9, '../img/lgg5.jpg', 1, 'LG G5 è uno smartphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati. Dispone di un grande display da 5.3 pollici e di una risoluzione da 2560x1440 pixel, fra le più elevate attualmente in circolazione. Le funzionalità offerte da questo LG G5 sono innumerevoli e tutte al top di gamma. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. '),
(6, 'Huawey P9', 349.9, '../img/huaweyp9.jpg', 1, 'Huawei P9 è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Huawei P9 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(7, 'Nexus 5x', 499.9, '../img/nexus5x.jpg', 1, 'LG Nexus 5X è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo LG Nexus 5X sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(8, 'Yotaphone 2 32Gb', 390.9, '../img/yotaphone.jpg', 1, 'YotaPhone 2 è un smartphone Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Dispone di un grande display Touchscreen da 5 pollici con una risoluzione di 1920x1080 pixel. Sul versante delle funzionalità a questo YotaPhone 2 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. '),
(9, 'Asus ZenPhone 2', 299.9, '../img/asus.jpg', 1, 'Asus ZenFone 2 ZE551ML è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(10, 'Samsung Galaxy A3', 199.9, '../img/galaxia3.jpg', 1, 'Samsung Galaxy A3 è un smartphone Android completo, che non ha molto da invidare ai dispositivi più avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalità a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. '),
(11, 'Huawey Mediapad', 429.9, '../img/huaweymediapad.jpg', 3, ''),
(12, 'Huawey Mediapad 10', 659.9, '../img/huawey10.jpg', 3, ''),
(13, 'Acer ICONIA', 399.9, '../img/acericonia.jpg', 3, ''),
(14, 'Alcatel One Touch', 299.9, '../img/alcatel.jpg', 3, ''),
(15, 'Galaxy TAB A 64 GB', 829.9, '../img/samsungstaba.jpg', 3, ''),
(16, 'iPad Pro 9.7" 256 GB', 1229.9, '../img/ipad.jpg', 3, ''),
(17, 'iPad Pro 9.7" 64 GB', 629.9, '../img/ipad.jpg', 3, ''),
(18, 'Galaxy TAB A 64 GB', 999.9, '../img/samsungstaba.jpg', 3, ''),
(19, 'Sony Smartband', 129.9, '../img/sony.jpg', 2, ''),
(20, 'Samsung Galaxy Gear', 229.9, '../img/galaxygear7.jpg', 2, ''),
(21, 'Samsung Galaxy Fit', 189.9, '../img/galaxyfit.jpg', 2, ''),
(22, 'PolarHR', 169.9, '../img/polar.jpg', 2, ''),
(23, 'Loop H7 HR', 49.9, '../img/looph7.jpg', 2, ''),
(24, 'Ihealth HS5', 99.9, '../img/ihealth.jpg', 2, ''),
(25, 'D-Link Smart Home', 129.9, '../img/dlink.jpg', 4, ''),
(26, 'SPhilips Friends of Hue', 229.9, '../img/philips.jpg', 4, ''),
(27, 'Samsung Galaxy VR', 179.9, '../img/samsungsgalaxyvr.jpg', 4, ''),
(28, 'Beats', 139.9, '../img/beats.jpg', 4, ''),
(29, 'Samsung Smart TV', 79.9, '../img/samsungssmarttv.jpg', 4, ''),
(30, 'Sandisk Falsh Drive WIFI', 239.9, '../img/sandisk.jpg', 4, ''),
(31, 'Samsung Galaxy S7', 829.9, '../img/samsungs7.jpg', 5, 'Samsung Galaxy S7 Edge è uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!'),
(32, 'iPad Pro 9.7" 128 GB', 1019.9, '../img/ipad.jpg', 5, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, è pronto ad allargare ancora una volta i tuoi orizzonti!'),
(33, 'Apple iPhone 6', 989.9, '../img/iphone.jpg', 5, 'iPhone 6 non è solo più grande: è ancora migliore, da ogni punto di vista. Più grande, eppure più sottile. Più potente, ma attento nei consumi. È una nuova generazione di iPhone.\r\n'),
(34, 'Asus ZenPhone 2', 299.9, '../img/asus.jpg', 5, 'Asus ZenFone 2 ZE551ML è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(35, 'Samsung Galaxy A3', 199.9, '../img/galaxia3.jpg', 5, 'Samsung Galaxy A3 è un smartphone Android completo, che non ha molto da invidare ai dispositivi più avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalità a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. '),
(36, 'Sony Smartband', 129.9, '../img/sony.jpg', 5, ''),
(37, 'Samsung Galaxy Gear', 229.9, '../img/galaxygear7.jpg', 5, ''),
(38, 'Samsung Galaxy Fit', 189.9, '../img/galaxyfit.jpg', 5, ''),
(39, 'Ihealth HS5', 99.9, '../img/ihealth.jpg', 5, ''),
(40, 'D-Link Smart Home', 129.9, '../img/dlink.jpg', 5, ''),
(41, 'SPhilips Friends of Hue', 229.9, '../img/philips.jpg', 5, ''),
(42, 'Samsung Galaxy VR', 179.9, '../img/samsungsgalaxyvr.jpg', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `devicecompresi`
--

CREATE TABLE `devicecompresi` (
  `device` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deviceconsigliati`
--

CREATE TABLE `deviceconsigliati` (
  `device` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `assistenza` int(11) NOT NULL,
  `domanda` int(11) NOT NULL,
  `risposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `nome`, `tipo`, `value`, `categoria`) VALUES
(1, 'Tipologia', 1, 0, 1),
(2, 'Promozione', 0, 1, 1),
(3, 'Novita''', 0, 2, 1),
(4, 'Marca', 1, 0, 1),
(5, 'Samsung', 0, 1, 1),
(6, 'Apple', 0, 2, 1),
(7, 'LG', 0, 3, 1),
(8, 'Altri', 0, 4, 1),
(9, 'Display', 1, 0, 1),
(10, 'meno di 5 pollici', 0, 1, 1),
(11, 'piu'' di 5 pollici', 0, 2, 1),
(12, 'Connessione', 1, 0, 1),
(13, '3G', 0, 1, 1),
(14, '4G LTE', 0, 2, 1),
(15, 'Fotocamera', 1, 0, 1),
(16, 'tra 2MP e 8MP', 0, 1, 1),
(17, 'piu'' di 8MP', 0, 2, 1),
(18, 'Tipologia', 1, 0, 2),
(19, 'Promozione', 0, 1, 2),
(20, 'Novita''', 0, 2, 2),
(21, 'Marca', 1, 0, 2),
(22, 'Samsung', 0, 1, 2),
(23, 'polar', 0, 2, 2),
(24, 'Altri', 0, 3, 2),
(25, 'Tipologia', 1, 0, 3),
(26, 'Promozione', 0, 1, 3),
(27, 'Novita''', 0, 2, 3),
(28, 'Marca', 1, 0, 3),
(29, 'Samsung', 0, 1, 3),
(30, 'Apple', 0, 2, 3),
(31, 'Altri', 0, 3, 3),
(32, 'Tipologia', 1, 0, 4),
(33, 'Promozione', 0, 1, 4),
(34, 'Novita''', 0, 2, 4),
(35, 'Marca', 1, 0, 4),
(36, 'Beats', 0, 1, 4),
(37, 'D-Link', 0, 2, 4),
(38, 'Altri', 0, 3, 4),
(39, 'Tipologia', 1, 0, 5),
(40, 'Promozione', 0, 1, 5),
(41, 'Novita''', 0, 2, 5),
(42, 'Marca', 1, 0, 5),
(43, 'Samsung', 0, 1, 5),
(44, 'Apple', 0, 2, 5),
(45, 'Altri', 0, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `costo` text NOT NULL,
  `descrizione` text NOT NULL,
  `internet` int(11) NOT NULL,
  `voce` int(11) NOT NULL,
  `minuti` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plans_device`
--

CREATE TABLE `plans_device` (
  `plans` int(11) NOT NULL,
  `device` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slservices`
--

CREATE TABLE `slservices` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `costo` int(11) NOT NULL,
  `immagine` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slservices`
--

INSERT INTO `slservices` (`id`, `nome`, `costo`, `immagine`, `categoria`) VALUES
(1, 'Netflix', 8, 0, 1),
(2, 'Tim Vision', 5, 0, 1),
(3, 'TIM Sky', 40, 0, 1),
(4, 'Tim Premium', 19, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sl_plans`
--

CREATE TABLE `sl_plans` (
  `sl` int(11) NOT NULL,
  `plans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `specifichetecniche`
--

CREATE TABLE `specifichetecniche` (
  `id` int(11) NOT NULL,
  `device` int(11) NOT NULL,
  `nome` text NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specifichetecniche`
--

INSERT INTO `specifichetecniche` (`id`, `device`, `nome`, `descrizione`) VALUES
(1, 1, 'Sistema Operativo', 'Android 6.0'),
(2, 1, 'Display', '5.5"'),
(3, 1, 'Processore', 'OctaCore (QuadCore 2.3 Ghz + QuadCore 1.6 Ghz)'),
(4, 1, 'Tecnologia', '4G cat.9/HSDPA42UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100'),
(5, 1, 'Connettività', 'Wi-Fi - Bluetooth - Micro USB - NFC'),
(6, 1, 'GPS', 'Integrato'),
(7, 1, 'Fotocamera', '12 Mpixel/Flash'),
(8, 1, 'Memoria Interna', '32GB'),
(9, 1, 'Formato Sim', 'Nano'),
(10, 1, 'Video', 'Video Recorder&Playback'),
(11, 1, 'Musica', 'MP3 Player'),
(12, 1, 'In dotazione', 'Caricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Guida di riferimento rapido'),
(13, 1, 'Dimensioni', '150,9x72,6x7,7 mm'),
(14, 1, 'Peso', '157 gr'),
(15, 1, 'Autonomia', 'Stand-by fino a TBD ore - Conversazione fino a TBD min');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `caratteristichesl`
--
ALTER TABLE `caratteristichesl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorieassistenza`
--
ALTER TABLE `categorieassistenza`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
