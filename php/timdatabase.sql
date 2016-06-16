-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 16, 2016 alle 21:01
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.21

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
-- Struttura della tabella `assistance`
--

CREATE TABLE `assistance` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `descrizione` text NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `caratteristichesl`
--

CREATE TABLE `caratteristichesl` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `caratteristichesl`
--

INSERT INTO `caratteristichesl` (`id`, `nome`, `immagine`) VALUES
(1, 'TV & Entertainment', 0),
(2, 'TIM Games', 0),
(3, 'TIM Reading', 0),
(4, 'Health & Wellness', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `categorieassistenza`
--

CREATE TABLE `categorieassistenza` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriedevice`
--

CREATE TABLE `categoriedevice` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `image` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriedevice`
--

INSERT INTO `categoriedevice` (`id`, `name`, `image`) VALUES
(1, 'smarthphone', 0),
(2, 'smarthwatch', 0),
(3, 'tablet', 0),
(4, 'smart living', 0),
(5, 'promotions', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `categorieplans`
--

CREATE TABLE `categorieplans` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `categoriesl`
--

CREATE TABLE `categoriesl` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categoriesl`
--

INSERT INTO `categoriesl` (`id`, `nome`, `immagine`) VALUES
(1, 'TV & Entertaiment', 0),
(2, 'TIM Games', 0),
(3, 'TIM Reading', 0),
(4, 'Health & Wellness', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `device`
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
-- Dump dei dati per la tabella `device`
--

INSERT INTO `device` (`idDevice`, `nome`, `costo`, `immagine`, `categoria`, `descrizione`) VALUES
(1, 'Samsung Galaxy S7', 829.9, '../img/samsungs7.jpg', 1, 'Samsung Galaxy S7 Edge è uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!'),
(2, 'Apple iPad Pro 9.7" 128 GB', 1019.9, '../img/ipad.jpg', 3, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, è pronto ad allargare ancora una volta i tuoi orizzonti!'),
(3, 'Apple iPhone 6', 989.9, '../img/iphone.jpg', 1, 'iPhone 6 non è solo più grande: è ancora migliore, da ogni punto di vista. Più grande, eppure più sottile. Più potente, ma attento nei consumi. È una nuova generazione di iPhone.\r\n'),
(4, 'Microsoft Lumia 950', 689.9, '../img/lumia950.jpg', 1, 'Microsoft Lumia 950 è uno cellulare Touchscreen avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 2560x1440 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Microsoft Lumia 950 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(5, 'LG G5', 559.9, '../img/lgg5.jpg', 1, 'LG G5 è uno smartphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati. Dispone di un grande display da 5.3 pollici e di una risoluzione da 2560x1440 pixel, fra le più elevate attualmente in circolazione. Le funzionalità offerte da questo LG G5 sono innumerevoli e tutte al top di gamma. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. '),
(6, 'Huawey P9', 349.9, '../img/huaweyp9.jpg', 1, 'Huawei P9 è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Huawei P9 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(7, 'Nexus 5x', 499.9, '../img/nexus5x.jpg', 1, 'LG Nexus 5X è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo LG Nexus 5X sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(8, 'Yotaphone 2 32Gb', 390.9, '../img/yotaphone.jpg', 1, 'YotaPhone 2 è un smartphone Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente più esigente. Dispone di un grande display Touchscreen da 5 pollici con una risoluzione di 1920x1080 pixel. Sul versante delle funzionalità a questo YotaPhone 2 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. '),
(9, 'Asus ZenPhone 2', 299.9, '../img/asus.jpg', 1, 'Asus ZenFone 2 ZE551ML è uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che è la più elevata attualmente in circolazione. Le funzionalità offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. '),
(10, 'Samsung Galaxy A3', 199.9, '../img/galaxia3.jpg', 1, 'Samsung Galaxy A3 è un smartphone Android completo, che non ha molto da invidare ai dispositivi più avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalità a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettività Wi-fi e il GPS. ');

-- --------------------------------------------------------

--
-- Struttura della tabella `devicecompresi`
--

CREATE TABLE `devicecompresi` (
  `device` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `deviceconsigliati`
--

CREATE TABLE `deviceconsigliati` (
  `device` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `assistenza` int(11) NOT NULL,
  `domanda` int(11) NOT NULL,
  `risposta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `filter`
--

CREATE TABLE `filter` (
  `id` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `filter`
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
(17, 'piu'' di 8MP', 0, 2, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `plans`
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
-- Struttura della tabella `plans_device`
--

CREATE TABLE `plans_device` (
  `plans` int(11) NOT NULL,
  `device` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `slservices`
--

CREATE TABLE `slservices` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `costo` int(11) NOT NULL,
  `immagine` int(11) NOT NULL,
  `categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `slservices`
--

INSERT INTO `slservices` (`id`, `nome`, `costo`, `immagine`, `categoria`) VALUES
(1, 'Netflix', 8, 0, 1),
(2, 'Tim Vision', 5, 0, 1),
(3, 'TIM Sky', 40, 0, 1),
(4, 'Tim Premium', 19, 0, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `sl_plans`
--

CREATE TABLE `sl_plans` (
  `sl` int(11) NOT NULL,
  `plans` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `specifichetecniche`
--

CREATE TABLE `specifichetecniche` (
  `id` int(11) NOT NULL,
  `device` int(11) NOT NULL,
  `nome` text NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `specifichetecniche`
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
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `caratteristichesl`
--
ALTER TABLE `caratteristichesl`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorieassistenza`
--
ALTER TABLE `categorieassistenza`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categoriedevice`
--
ALTER TABLE `categoriedevice`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categorieplans`
--
ALTER TABLE `categorieplans`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `categoriesl`
--
ALTER TABLE `categoriesl`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`idDevice`);

--
-- Indici per le tabelle `devicecompresi`
--
ALTER TABLE `devicecompresi`
  ADD PRIMARY KEY (`device`,`sl`);

--
-- Indici per le tabelle `deviceconsigliati`
--
ALTER TABLE `deviceconsigliati`
  ADD PRIMARY KEY (`device`,`sl`);

--
-- Indici per le tabelle `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `plans_device`
--
ALTER TABLE `plans_device`
  ADD PRIMARY KEY (`plans`,`device`);

--
-- Indici per le tabelle `slservices`
--
ALTER TABLE `slservices`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `sl_plans`
--
ALTER TABLE `sl_plans`
  ADD PRIMARY KEY (`sl`,`plans`);

--
-- Indici per le tabelle `specifichetecniche`
--
ALTER TABLE `specifichetecniche`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
