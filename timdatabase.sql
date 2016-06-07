-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 07, 2016 alle 11:03
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
  `immagine` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `descrizione` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `device`
--

INSERT INTO `device` (`idDevice`, `nome`, `costo`, `immagine`, `categoria`, `descrizione`) VALUES
(1, 'Samsung Galaxy S7', 829.9, 0, 1, 'Samsung Galaxy S7 Edge è uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!'),
(2, 'Apple iPad Pro 9.7" 128 GB', 1019.9, 0, 3, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, è pronto ad allargare ancora una volta i tuoi orizzonti!'),
(3, 'iPhone 6', 989.9, 0, 1, 'iPhone 6 non è solo più grande: è ancora migliore, da ogni punto di vista. Più grande, eppure più sottile. Più potente, ma attento nei consumi. È una nuova generazione di iPhone.\r\n');

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
