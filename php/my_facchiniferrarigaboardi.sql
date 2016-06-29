-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Creato il: Giu 29, 2016 alle 22:34
-- Versione del server: 10.1.13-MariaDB
-- Versione PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_facchiniferrarigaboardi`
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `categoria` int(11) NOT NULL,
  `immagine` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categorie`
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
-- Struttura della tabella `categorieassistenza`
--

CREATE TABLE `categorieassistenza` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `immagine` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `descrizione` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `disponibile` int(11) NOT NULL,
  `specifiche` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `highlights` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `device`
--

INSERT INTO `device` (`idDevice`, `nome`, `costo`, `immagine`, `categoria`, `descrizione`, `disponibile`, `specifiche`, `highlights`) VALUES
(1, 'Samsung Galaxy S7', 829.9, '../img/Samsung Galaxy S7.jpg', 1, 'Samsung Galaxy S7 Edge ? uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!', 1, 'Tecnologia 4G cat.9/HSDPA42UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100<br>\n                    Connettivita Wi-Fi - Bluetooth - Micro USB - NFC<br>\n                    GPS Integrato <br>\n                    Display 5.5? 16 Milioni colori Touch<br>\n                    Fotocamera 12 Mpixel/Flash<br>\n                    Memoria Interna 32GB <br>\n                    Processore OctaCore: (QuadCore 2.3 Ghz+QuadCore 1.6 Ghz)<br>\n                    Formato SIM Nano <br>\n                    Video Video Recorder&Playback <br>\n                    Musica MP3 Player <br>\n                    In dotazione Caricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Guida di riferimento rapido <br>\n                    Dimensioni 150,9x72,6x7,7 mm <br>\n                    Peso 157 gr. <br>\n                    Autonomia(*) Stand-by fino a TBD ore - Conversazione fino a TBD min <br>\n                    Note\n                    * Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 'Abbiamo fatto grandi progressi, superando i limiti odierni e rendendo possibile quello che finora era impossibile, ascoltando sempre i vostri suggerimenti. Abbiamo trovato un perfetto equilibrio tra forma e tecnologia, sviluppando funzioni mai viste nei Galaxy precedenti, e di cui non potrete più farne a meno. Galaxy S7 e S7 edge.\r\n\r\n'),
(2, 'iPad Pro 9.7" 128 GB', 1019.9, '../img/ipad.jpg', 3, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, ? pronto ad allargare ancora una volta i tuoi orizzonti!', 1, '', ''),
(3, 'Apple iPhone 6', 989.9, '../img/iphone.jpg', 1, 'iPhone 6 non ? solo pi? grande: ? ancora migliore, da ogni punto di vista. Pi? grande, eppure pi? sottile. Pi? potente, ma attento nei consumi. ? una nuova generazione di iPhone.\r\n', 0, '', ''),
(4, 'Microsoft Lumia 950', 689.9, '../img/lumia950.jpg', 1, 'Microsoft Lumia 950 ? uno cellulare Touchscreen avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 2560x1440 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Microsoft Lumia 950 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(5, 'LG G5', 559.9, '../img/lgg5.jpg', 1, 'LG G5 ? uno smartphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati. Dispone di un grande display da 5.3 pollici e di una risoluzione da 2560x1440 pixel, fra le pi? elevate attualmente in circolazione. Le funzionalit? offerte da questo LG G5 sono innumerevoli e tutte al top di gamma. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(6, 'Huawey P9', 349.9, '../img/huaweyp9.jpg', 1, 'Huawei P9 ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Huawei P9 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(7, 'Nexus 5x', 499.9, '../img/nexus5x.jpg', 1, 'LG Nexus 5X ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo LG Nexus 5X sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(8, 'Yotaphone 2 32Gb', 390.9, '../img/yotaphone.jpg', 1, 'YotaPhone 2 ? un smartphone Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente pi? esigente. Dispone di un grande display Touchscreen da 5 pollici con una risoluzione di 1920x1080 pixel. Sul versante delle funzionalit? a questo YotaPhone 2 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(9, 'Asus ZenPhone 2', 299.9, '../img/asus.jpg', 1, 'Asus ZenFone 2 ZE551ML ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(10, 'Samsung Galaxy A3', 199.9, '../img/galaxia3.jpg', 1, 'Samsung Galaxy A3 ? un smartphone Android completo, che non ha molto da invidare ai dispositivi pi? avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalit? a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(11, 'Huawey Mediapad', 429.9, '../img/huaweymediapad.jpg', 3, '', 0, '', ''),
(12, 'Huawey Mediapad 10', 659.9, '../img/huawey10.jpg', 3, '', 0, '', ''),
(13, 'Acer ICONIA', 399.9, '../img/acericonia.jpg', 3, '', 0, '', ''),
(14, 'Alcatel One Touch', 299.9, '../img/alcatel.jpg', 3, '', 0, '', ''),
(15, 'Galaxy TAB A 64 GB', 829.9, '../img/samsungstaba.jpg', 3, '', 0, '', ''),
(16, 'iPad Pro 9.7" 256 GB', 1229.9, '../img/ipad.jpg', 3, '', 0, '', ''),
(17, 'iPad Pro 9.7" 64 GB', 629.9, '../img/ipad.jpg', 3, '', 0, '', ''),
(18, 'Galaxy TAB A 64 GB', 999.9, '../img/samsungstaba.jpg', 3, '', 0, '', ''),
(19, 'Sony Smartband', 129.9, '../img/sony.jpg', 2, '', 0, '', ''),
(20, 'Galaxy Gear', 229.9, '../img/galaxygear7.jpg', 2, '', 0, '', ''),
(21, 'Samsung Galaxy Fit', 189.9, '../img/galaxyfit.jpg', 2, '', 0, '', ''),
(22, 'PolarHR', 169.9, '../img/polar.jpg', 2, '', 0, '', ''),
(23, 'Loop H7 HR', 49.9, '../img/looph7.jpg', 2, '', 0, '', ''),
(24, 'Ihealth HS5', 99.9, '../img/ihealth.jpg', 2, '', 0, '', ''),
(25, 'D-Link Smart Home', 129.9, '../img/dlink.jpg', 4, '', 0, '', ''),
(26, 'SPhilips Friends', 229.9, '../img/philips.jpg', 4, '', 0, '', ''),
(27, 'Samsung Galaxy VR', 179.9, '../img/samsungsgalaxyvr.jpg', 4, '', 0, '', ''),
(28, 'Beats', 139.9, '../img/beats.jpg', 4, '', 0, '', ''),
(29, 'Samsung Smart TV', 79.9, '../img/samsungssmarttv.jpg', 4, '', 0, '', ''),
(30, 'Sandisk Falsh Drive', 239.9, '../img/sandisk.jpg', 4, '', 0, '', ''),
(31, 'Samsung Galaxy S7', 829.9, '../img/samsungs7.jpg', 5, 'Samsung Galaxy S7 Edge ? uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!', 0, '', ''),
(32, 'iPad Pro 9.7" 128 GB', 1019.9, '../img/ipad.jpg', 5, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, ? pronto ad allargare ancora una volta i tuoi orizzonti!', 0, '', ''),
(33, 'Apple iPhone 6', 989.9, '../img/iphone.jpg', 5, 'iPhone 6 non ? solo pi? grande: ? ancora migliore, da ogni punto di vista. Pi? grande, eppure pi? sottile. Pi? potente, ma attento nei consumi. ? una nuova generazione di iPhone.\r\n', 0, '', ''),
(34, 'Asus ZenPhone 2', 299.9, '../img/asus.jpg', 5, 'Asus ZenFone 2 ZE551ML ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(35, 'Samsung Galaxy A3', 199.9, '../img/galaxia3.jpg', 5, 'Samsung Galaxy A3 ? un smartphone Android completo, che non ha molto da invidare ai dispositivi pi? avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalit? a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(36, 'Sony Smartband', 129.9, '../img/sony.jpg', 5, '', 0, '', ''),
(37, 'Galaxy Gear', 229.9, '../img/galaxygear7.jpg', 5, '', 0, '', ''),
(38, 'Samsung Galaxy Fit', 189.9, '../img/galaxyfit.jpg', 5, '', 0, '', ''),
(39, 'Ihealth HS5', 99.9, '../img/ihealth.jpg', 5, '', 0, '', ''),
(40, 'D-Link Smart Home', 129.9, '../img/dlink.jpg', 5, '', 0, '', ''),
(41, 'SPhilips Friends', 229.9, '../img/philips.jpg', 5, '', 0, '', ''),
(42, 'Samsung Galaxy VR', 179.9, '../img/samsungsgalaxyvr.jpg', 5, '', 0, '', ''),
(43, 'Well Up', 3.9, '../img/wllup.jpg', 9, '', 0, '', ''),
(44, 'Run App', 2.9, '../img/runapp.jpg', 9, '', 0, '', ''),
(45, 'Serie A', 1.9, '../img/seriea.jpg', 9, '', 0, '', ''),
(47, 'Netflix', 15.9, '../img/netflix.jpg', 6, '', 1, 'Guarda film e programmi TV su Netflix online o direttamente su smart TV, console per videogiochi, PC, Mac, cellulare, tablet e molti altri dispositivi.', ''),
(46, 'TIM Vision', 5.9, '../img/timvision.jpg', 6, '', 0, '', ''),
(48, 'TIM Sky', 20.9, '../img/timsky.jpg', 6, '', 0, '', ''),
(49, 'TIM Premium', 7.9, '../img/timpremium.jpg', 6, '', 0, '', ''),
(50, 'Chromecast', 30.9, '../img/chromecast.jpg', 6, '', 0, '', ''),
(51, 'TIM Music', 7.9, '../img/timmusic.jpg', 6, '', 0, '', ''),
(52, 'HealtApp', 5.9, '../img/healthapp.jpg', 9, '', 0, '', ''),
(53, 'The Sims 3', 3.9, '../img/thesims.jpg', 7, '', 0, '', ''),
(54, 'Solitario', 3.9, '../img/solitario.jpg', 7, '', 0, '', ''),
(55, 'Need for Speed', 3.9, '../img/needforspeed.jpg', 7, '', 0, '', ''),
(56, 'Pro Tennis', 3.9, '../img/protennis.jpg', 7, '', 0, '', ''),
(57, 'Quotidiani', 3.9, '../img/quotidiani.jpg', 8, '', 0, '', ''),
(58, 'Ebook', 3.9, '../img/ebook.jpg', 8, '', 0, '', ''),
(59, 'Magazine', 3.9, '../img/magazine.jpg', 8, '', 0, '', ''),
(60, 'Ebook Reader', 3.9, '../img/ebookreader.jpg', 8, '', 0, '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `devicecompresi`
--

CREATE TABLE `devicecompresi` (
  `device` int(11) NOT NULL,
  `sl` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `devicecompresi`
--

INSERT INTO `devicecompresi` (`device`, `sl`) VALUES
(1, 'TIM VISION'),
(2, 'TIM MAGAZINE'),
(1, 'TIM PREMIUM'),
(1, 'TIM MAGAZINE'),
(1, 'CHROMECAST');

-- --------------------------------------------------------

--
-- Struttura della tabella `deviceconsigliati`
--

CREATE TABLE `deviceconsigliati` (
  `device` int(11) NOT NULL,
  `sl` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `deviceconsigliati`
--

INSERT INTO `deviceconsigliati` (`device`, `sl`) VALUES
(3, 47),
(4, 47);

-- --------------------------------------------------------

--
-- Struttura della tabella `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `assistenza` int(11) NOT NULL,
  `domanda` int(11) NOT NULL,
  `risposta` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `plans`
--

INSERT INTO `plans` (`id`, `nome`, `costo`, `descrizione`, `internet`, `voce`, `minuti`, `categoria`) VALUES
(1, 'TIM YOUNG', '', '', 0, 0, 0, 0),
(2, 'TIM INTERNATIONAL', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `plans_device`
--

CREATE TABLE `plans_device` (
  `plans` int(11) NOT NULL,
  `device` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `plans_device`
--

INSERT INTO `plans_device` (`plans`, `device`) VALUES
(1, 1),
(1, 47),
(2, 1),
(2, 47);

-- --------------------------------------------------------

--
-- Struttura della tabella `sferette`
--

CREATE TABLE `sferette` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `frase` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tipo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `sferette`
--

INSERT INTO `sferette` (`id`, `nome`, `img`, `frase`, `tipo`) VALUES
(1, 'Piero Angela', '../img/PieroAngela.png', '"The Future is Now"', 0),
(2, 'Marcello Macchia', '../img/macchia.png', '"Only the Best"', 0),
(3, 'Sigmund Roy', '../img/SigmundRoy.png', '"Innovation is the key of Perfection"', 0),
(4, 'Infrastrutture', '../img/fibra.png', 'Da 20 anni Telecom Italia si impegna per migliorare l''infrastruttura italiana per i servizi di rete e internet, migliorando la rete esistente con sempre nuove tecnologie. \r\n\r\nIl nostro obiettivo e'' di portare la velocita'' della fibra in tutto il territorio nazionale.', 1),
(5, 'TIM YOUNG Projects', '../img/hackaton.png', 'TIM e'' attiva nella promozione e nell''incentivo dei giovani ad entrare in contatto con il mondo dell''IT, finanziando e organizzando numerosi eventi, come l''Hackaton di Milano, il Summer Festival di Rimini e l''8B Music Festival di Urbino', 1),
(6, 'Reti Mobile', '../img/AntennaLTE.png', 'Lavoriamo per migliorare la copertura delle reti mobili, e disponiamo della piu'' ampia copertura 4G d''Italia. \r\n\r\nNell''ambito della telefonia mobile con il termine 4G (acronimo di 4th (fourth) Generation) si indicano relativamente a tale campo, le tecnologie e gli standard di quarta generazione successivi a quelli di terza generazione, che permettono quindi applicazioni multimediali avanzate e collegamenti dati con elevata banda passante.', 1);

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `assistance`
--
ALTER TABLE `assistance`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `categorie`
--
ALTER TABLE `categorie`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `categorieassistenza`
--
ALTER TABLE `categorieassistenza`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`idDevice`),
  ADD UNIQUE KEY `idDevice` (`idDevice`);

--
-- Indici per le tabelle `filter`
--
ALTER TABLE `filter`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `plans`
--
ALTER TABLE `plans`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indici per le tabelle `plans_device`
--
ALTER TABLE `plans_device`
  ADD UNIQUE KEY `plans` (`plans`,`device`);

--
-- Indici per le tabelle `sferette`
--
ALTER TABLE `sferette`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `sferette`
--
ALTER TABLE `sferette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
