-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Lug 01, 2016 alle 20:37
-- Versione del server: 5.6.29-log
-- PHP Version: 5.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `my_facchiniferrarigaboardi`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `asssistance_services`
--

CREATE TABLE IF NOT EXISTS `asssistance_services` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `categoria` text NOT NULL,
  `sottocategoria` text NOT NULL,
  `gruppo` text NOT NULL,
  `descrizione` text CHARACTER SET utf8 COLLATE utf8_bin,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `asssistance_services`
--

INSERT INTO `asssistance_services` (`id`, `nome`, `categoria`, `sottocategoria`, `gruppo`, `descrizione`) VALUES
(1, 'Attivazione linea di casa', 'lineaeservizi', 'Fisso', 'Gestione della linea', '<div class="col-sm-1"></div>\r\n    <div class="col-sm-10">\r\n    	<h1>ATTIVAZIONE LINEA DI CASA</h1>\r\n        <h3>DESCRIZIONE</h3>\r\n        <p>\r\n            Richiedere l’attivazione di una linea telefonica di casa è molto semplice, puoi:<br>\r\n\r\n            richiederla online<br>\r\n            chiamare il Servizio Clienti linea fissa 187<br>\r\n            recarti presso un Negozio TIM.<br>\r\n            Verifica la modalità di attivazione consultando on line le varie offerte disponibili.<br>\r\n\r\n            I dati necessari sono:<br>\r\n\r\n            nome e cognome<br>\r\n            codice fiscale<br>\r\n            indirizzo dell''abitazione per cui richiedi l''installazione della linea<br>\r\n            un recapito telefonico di cellulare<br>\r\n            indirizzo email (facoltativo).<br>\r\n            Il nostro personale tecnico ti contatterà quanto prima per concordare l’appuntamento per l’installazione dell’impianto<br> telefonico.<br>\r\n        </p>\r\n        \r\n        <h3>FAQ</h3>\r\n        <div class="panel-group" id="accordion">\r\n    <div class="panel panel-default">\r\n      <div class="panel-heading">\r\n        <h4 class="panel-title">\r\n          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Quali sono le diverse tipologie di linea telefonica di casa?</a>\r\n        </h4>\r\n      </div>\r\n      <div id="collapse1" class="panel-collapse collapse in">\r\n        <div class="panel-body"><br>•    LINEA TELEFONICA PRINCIPALE: è una linea telefonica principale di tipo tradizionale per i clienti che non svolgono attività professionali intestata a qualunque componente del nucleo familiare anagrafico.\r\n<br>•    LINEA TELEFONICA AGGIUNTIVA: è una linea telefonica aggiuntiva di tipo tradizionale intestata al medesimo titolare della linea principale, attivata nella stessa o in altra abitazione.\r\n<br>•    LINEA ISDN: è una linea telefonica principale che si differenzia dalla linea di tipo tradizionale in quanto include alcuni servizi telefonici specifici.\r\n<br>•    LINEA PER TRAFFICO ENTRANTE: è una linea telefonica di tipo tradizionale aggiuntiva a una linea principale, che consente la sola ricezione delle chiamate.\r\n<br>•    LINEA IN FIBRA OTTICA: è la nuova linea per telefonare e navigare in Internet grazie all’alta velocità della fibra ottica, connettere contemporaneamente e con prestazioni elevate Tablet, PC, Smartphone e TV con  più applicazioni e dispositivi, vedere video anche in alta definizione senza attese né interruzioni.\r\n\r\nConsulta online le varie offerte disponibili.</div>\r\n      </div>\r\n    </div>\r\n    <div class="panel panel-default">\r\n      <div class="panel-heading">\r\n        <h4 class="panel-title">\r\n          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Quanto costa attivare una linea telefonica di casa?</a>\r\n        </h4>\r\n      </div>\r\n      <div id="collapse2" class="panel-collapse collapse">\r\n        <div class="panel-body">l contributo per l’attivazione di una nuova linea tradizionale è pari a 97,60€ (IVA inclusa), salvo eventuali promozioni in corso\r\n            Con un costo di abbonamento mensile di 29 € (IVA inclusa) hai la linea di casa con incluse tutte le chiamate illimitate verso fissi e cellulari nazionali (TUTTO VOCE). \r\n            Con un costo di abbonamento mensile di 19 € (IVA inclusa) hai la linea di casa con chiamate valorizzate a consumo (VOCE).\r\n\r\n            Per conoscere le condizioni economiche agevolate riservate a particolari categorie di clientela clicca qui.\r\n\r\n            Nella sezione Offerte seleziona quella di tuo interesse anche per chiamare e navigare in Internet con ADSL e Fibra, verifica tutte le condizioni previste ed eventuali promozioni in corso sui contributi di attivazione (può essere previsto anche un contributo per l’attivazione di specifiche Offerte).  </div>\r\n      </div>\r\n    </div>\r\n    <div class="panel panel-default">\r\n      <div class="panel-heading">\r\n        <h4 class="panel-title">\r\n          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Se attivo una linea in una seconda casa, quanto pago di abbonamento?</a>\r\n        </h4>\r\n      </div>\r\n      <div id="collapse3" class="panel-collapse collapse">\r\n        <div class="panel-body">Il costo dell’abbonamento della linea in una seconda casa o nella stessa casa è uguale a quello previsto per la linea principale (Offerta Voce) pari a 19 €/mese (IVA inclusa).\r\n        </div>\r\n      </div>\r\n    </div>\r\n  </div>\r\n</div>\r\n    <div class="col-sm-1"></div>'),
(2, 'Trasloco', 'lineaeservizi', 'Fisso', 'Gestione della linea', NULL),
(3, 'Subentro', 'lineaeservizi', 'Fisso', 'Gestione della linea', NULL),
(4, 'Variazione abbonamento', 'lineaeservizi', 'Fisso', 'Gestione della linea', NULL),
(5, 'Restituzine prodotti', 'lineaeservizi', 'Fisso', 'Gestione della linea', NULL),
(6, 'Recesso', 'lineaeservizi', 'Fisso', 'Gestione della linea', NULL),
(7, 'Disattivare i servizi di linea fissa', 'lineaeservizi', 'Fisso', 'Attivare e disattivare servizi', NULL),
(8, 'Gli elenchi telefonici a casa tua', 'lineaeservizi', 'Fisso', 'Attivare e disattivare servizi', NULL),
(9, 'Tutto sulla tua SIM', 'lineaeservizi', 'Mobile', 'Gestione della tua SIM', NULL),
(10, 'Passaggio da Abbonamento a Ricaricabile', 'lineaeservizi', 'Mobile', 'Gestione della tua SIM', NULL),
(11, 'Variare i dati anagrafici di una TIM Card Ricaricabile', 'lineaeservizi', 'Mobile', 'Gestione della tua SIM', NULL),
(12, 'I documenti necessari per attivare una TIM Card', 'lineaeservizi', 'Mobile', 'Gestione della tua SIM', NULL),
(13, 'Passaggio da Ricaricabile ad Abbonamento', 'lineaeservizi', 'Mobile', 'Gestione della tua SIM', NULL),
(14, 'Servizi a valore aggiunto SMS/MMS/Internet', 'lineaeservizi', 'Mobile', 'Servizi a contenuto e telefonici', NULL),
(15, 'LoSai e ChiamaOra di TIM', 'lineaeservizi', 'Mobile', 'Servizi a contenuto e telefonici', NULL),
(16, 'Verificare la copertura', 'lineaeservizi', 'Mobile', 'Servizi a contenuto e telefonici', NULL),
(17, 'Ibox diventa TIM Mail', 'lineaeservizi', 'Mobile', 'Servizi a contenuto e telefonici', NULL),
(18, 'Gli MMS', 'lineaeservizi', 'Mobile', 'Servizi a contenuto e telefonici', NULL),
(19, 'Allestero con TIM', 'lineaeservizi', 'Mobile', 'Linea mobile allestero', NULL),
(20, 'Verifica il credito residuo mentre sei allestero', 'lineaeservizi', 'Mobile', 'Linea mobile allestero', NULL),
(21, 'Navigare in Internet quando sei allestero', 'lineaeservizi', 'Mobile', 'Linea mobile allestero', NULL),
(22, 'Sicurezza traffico dati allestero', 'lineaeservizi', 'Mobile', 'Linea mobile allestero', NULL),
(23, 'Come sostituire la tua Sim Card se sei allestero', 'lineaeservizi', 'Mobile', 'Linea mobile allestero', NULL),
(24, 'Tutti i modi di ricaricare', 'lineaeservizi', 'Mobile', 'Tutti i modi per ricaricare', NULL),
(25, 'Ricarica+', 'lineaeservizi', 'Mobile', 'Tutti i modi per ricaricare', NULL),
(26, 'Come ricevere il bonus per la Promo Ricarica Online', 'lineaeservizi', 'Mobile', 'Tutti i modi per ricaricare', NULL),
(27, 'Ricarica Veloce', 'lineaeservizi', 'Mobile', 'Tutti i modi per ricaricare', NULL),
(28, 'Ricarica su Misura', 'lineaeservizi', 'Mobile', 'Tutti i modi per ricaricare', NULL),
(29, 'MyTIM Fisso - gestione linea', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Fisso', NULL),
(30, 'Come registrarsi a MyTIM Fisso', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Fisso', NULL),
(31, 'Recupero username e password MyTIM Fisso', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Fisso', NULL),
(32, 'Recupero username e password MyTIM Fisso', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Fisso', NULL),
(33, 'Assistenza tecnica', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Fisso', NULL),
(34, 'Come accedere a MyTIM Fisso', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Fisso', NULL),
(35, 'MyTIM Mobile (gestione linea)', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Mobile', NULL),
(36, 'Accesso a MyTIM Mobile per sim inserite in allarme', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Mobile', NULL),
(37, 'Recupero password MyTIM Mobile', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Mobile', NULL),
(38, 'Come inserire il numero amico per TIM Young e TIM Special', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Mobile', NULL),
(39, 'Accesso a MyTIM Mobile da Tablet o Chiavetta', 'lineaeservizi', 'Cosa puoi fare online', 'MyTIM Mobile', NULL),
(40, 'Ricarica Veloce', 'lineaeservizi', 'Cosa puoi fare online', 'Ricarica online', NULL),
(41, 'Come funziona il servizio Passepartout di TIM', 'lineaeservizi', 'Cosa puoi fare online', 'Ricarica online', NULL),
(42, 'Acquisti e tempi di spedizione', 'lineaeservizi', 'Cosa puoi fare online', 'Acquisti online', NULL),
(43, 'Scopri come ottenere la fattura', 'lineaeservizi', 'Cosa puoi fare online', 'Acquisti online', NULL),
(44, 'Acquisti sul sito TIM', 'lineaeservizi', 'Cosa puoi fare online', 'Acquisti online', NULL),
(45, 'Attivazione offerta online', 'lineaeservizi', 'Cosa puoi fare online', 'Acquisti online', NULL),
(46, 'Diritto di recesso', 'lineaeservizi', 'Cosa puoi fare online', 'Acquisti online', NULL),
(47, 'Come entrare in TIM con la tua linea mobile', 'lineaeservizi', 'Passare in TIM', 'Passare in TIM con una linea mobile', NULL),
(48, 'Il riconoscimento del credito in caso di portabilita in TIM', 'lineaeservizi', 'Passare in TIM', 'Passare in TIM con una linea mobile', NULL),
(49, 'Accordo Telecom Italia-Noverca', 'lineaeservizi', 'Passare in TIM', 'Passare in TIM con una linea mobile', NULL),
(50, 'TIM smart', 'lineaeservizi', 'Passare in TIM', 'Nuova offerta Smart', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `categorie`
--

CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `categoria` int(11) NOT NULL,
  `immagine` text NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `categorie`
--

INSERT INTO `categorie` (`id`, `name`, `categoria`, `immagine`) VALUES
(1, 'smartphone', 1, 'smartphone.jpg'),
(2, 'smartwatch', 1, 'smartwatch.jpg'),
(3, 'tablet', 1, 'tablet.jpg'),
(4, 'smart living', 1, 'smart_living.jpg'),
(5, 'promotions', 1, 'promotions.jpg'),
(6, 'TV & Entertaiment', 2, 'tventertainment.jpg'),
(7, 'TIM Games', 2, 'timgames.jpg'),
(8, 'TIM Reading', 2, 'timreading.jpg'),
(9, 'Health & Wellness', 2, 'healthandwellness.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `idDevice` int(11) NOT NULL,
  `nome` text NOT NULL,
  `costo` float NOT NULL,
  `immagine` text NOT NULL,
  `categoria` int(11) NOT NULL,
  `descrizione` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `disponibile` int(11) NOT NULL,
  `specifiche` text CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `vetrina` varchar(800) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idDevice`),
  UNIQUE KEY `idDevice` (`idDevice`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `device`
--

INSERT INTO `device` (`idDevice`, `nome`, `costo`, `immagine`, `categoria`, `descrizione`, `disponibile`, `specifiche`, `vetrina`) VALUES
(1, 'Samsung Galaxy S7', 829.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungs7.jpg', 1, 'Samsung Galaxy S7 Edge ? uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!', 1, 'Tecnologia 4G cat.9/HSDPA42UMTS/EDGE/GPRS Frequenze 850/900/1800/1900/2100<br>\n                    Connettivita Wi-Fi - Bluetooth - Micro USB - NFC<br>\n                    GPS Integrato <br>\n                    Display 5.5? 16 Milioni colori Touch<br>\n                    Fotocamera 12 Mpixel/Flash<br>\n                    Memoria Interna 32GB <br>\n                    Processore OctaCore: (QuadCore 2.3 Ghz+QuadCore 1.6 Ghz)<br>\n                    Formato SIM Nano <br>\n                    Video Video Recorder&Playback <br>\n                    Musica MP3 Player <br>\n                    In dotazione Caricabatteria - Cavo Dati MicroUSB - Auricolare stereo - Guida di riferimento rapido <br>\n                    Dimensioni 150,9x72,6x7,7 mm <br>\n                    Peso 157 gr. <br>\n                    Autonomia(*) Stand-by fino a TBD ore - Conversazione fino a TBD min <br>\n                    Note\n                    * Le prestazioni delle batterie dipendono da vari fattori tra cui la vicinanza delle antenne, lo stato delle batterie, la posizione geografica e il tipo di rete utilizzata.', 'Abbiamo fatto grandi progressi, superando i limiti odierni e rendendo possibile quello che finora era impossibile, ascoltando sempre i vostri suggerimenti. Abbiamo trovato un perfetto equilibrio tra forma e tecnologia, sviluppando funzioni mai viste nei Galaxy precedenti, e di cui non potrete piu'' farne a meno. Galaxy S7 e S7 edge.\r\n\r\n'),
(2, 'iPad Pro 9.7" 128 GB', 1019.9, 'http://facchiniferrarigaboardi.altervista.org/img/ipad.jpg', 3, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, ? pronto ad allargare ancora una volta i tuoi orizzonti!', 0, '', ''),
(3, 'Apple iPhone 6', 989.9, 'http://facchiniferrarigaboardi.altervista.org/img/iphone.jpg', 1, 'iPhone 6 non ? solo pi? grande: ? ancora migliore, da ogni punto di vista. Pi? grande, eppure pi? sottile. Pi? potente, ma attento nei consumi. ? una nuova generazione di iPhone.\r\n', 0, '', ''),
(4, 'Microsoft Lumia 950', 689.9, 'http://facchiniferrarigaboardi.altervista.org/img/lumia950.jpg', 1, 'Microsoft Lumia 950 ? uno cellulare Touchscreen avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 2560x1440 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Microsoft Lumia 950 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(5, 'LG G5', 559.9, 'http://facchiniferrarigaboardi.altervista.org/img/lgg5.jpg', 1, 'LG G5 ? uno smartphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati. Dispone di un grande display da 5.3 pollici e di una risoluzione da 2560x1440 pixel, fra le pi? elevate attualmente in circolazione. Le funzionalit? offerte da questo LG G5 sono innumerevoli e tutte al top di gamma. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(6, 'Huawey P9', 349.9, 'http://facchiniferrarigaboardi.altervista.org/img/huaweyp9.jpg', 1, 'Huawei P9 ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Huawei P9 sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(7, 'Nexus 5x', 499.9, 'http://facchiniferrarigaboardi.altervista.org/img/nexus5x.jpg', 1, 'LG Nexus 5X ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.2 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo LG Nexus 5X sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(8, 'Yotaphone 2 32Gb', 390.9, 'http://facchiniferrarigaboardi.altervista.org/img/yotaphone.jpg', 1, 'YotaPhone 2 ? un smartphone Android di buon livello, fortemente votato all''imaging, in grado di soddisfare anche l''utente pi? esigente. Dispone di un grande display Touchscreen da 5 pollici con una risoluzione di 1920x1080 pixel. Sul versante delle funzionalit? a questo YotaPhone 2 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(9, 'Asus ZenPhone 2', 299.9, 'http://facchiniferrarigaboardi.altervista.org/img/asus.jpg', 1, 'Asus ZenFone 2 ZE551ML ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(10, 'Samsung Galaxy A3', 199.9, 'http://facchiniferrarigaboardi.altervista.org/img/galaxia3.jpg', 1, 'Samsung Galaxy A3 ? un smartphone Android completo, che non ha molto da invidare ai dispositivi pi? avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalit? a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(11, 'Huawey Mediapad', 429.9, 'http://facchiniferrarigaboardi.altervista.org/img/huaweymediapad.jpg', 3, '', 0, '', ''),
(12, 'Huawey Mediapad 10', 659.9, 'http://facchiniferrarigaboardi.altervista.org/img/huawey10.jpg', 3, '', 0, '', ''),
(13, 'Acer ICONIA', 399.9, 'http://facchiniferrarigaboardi.altervista.org/img/acericonia.jpg', 3, '', 0, '', ''),
(14, 'Alcatel One Touch', 299.9, 'http://facchiniferrarigaboardi.altervista.org/img/alcatel.jpg', 3, '', 0, '', ''),
(15, 'Galaxy TAB A 64 GB', 829.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungstaba.jpg', 3, '', 0, '', ''),
(16, 'iPad Pro 9.7" 256 GB', 1229.9, 'http://facchiniferrarigaboardi.altervista.org/img/ipad.jpg', 3, '', 0, '', ''),
(17, 'iPad Pro 9.7" 64 GB', 629.9, 'http://facchiniferrarigaboardi.altervista.org/img/ipad.jpg', 3, '', 0, '', ''),
(18, 'Galaxy TAB A 64 GB', 999.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungstaba.jpg', 3, '', 0, '', ''),
(19, 'Sony Smartband', 129.9, 'http://facchiniferrarigaboardi.altervista.org/img/sony.jpg', 2, '', 0, '', ''),
(20, 'Galaxy Gear', 229.9, 'http://facchiniferrarigaboardi.altervista.org/img/galaxygear7.jpg', 2, '', 0, '', ''),
(21, 'Samsung Galaxy Fit', 189.9, 'http://facchiniferrarigaboardi.altervista.org/img/galaxyfit.jpg', 2, '', 0, '', ''),
(22, 'PolarHR', 169.9, 'http://facchiniferrarigaboardi.altervista.org/img/polar.jpg', 2, '', 0, '', ''),
(23, 'Loop H7 HR', 49.9, 'http://facchiniferrarigaboardi.altervista.org/img/looph7.jpg', 2, '', 0, '', ''),
(24, 'Ihealth HS5', 99.9, 'http://facchiniferrarigaboardi.altervista.org/img/ihealth.jpg', 2, '', 0, '', ''),
(25, 'D-Link Smart Home', 129.9, 'http://facchiniferrarigaboardi.altervista.org/img/dlink.jpg', 4, '', 0, '', ''),
(26, 'SPhilips Friends', 229.9, 'http://facchiniferrarigaboardi.altervista.org/img/philips.jpg', 4, '', 0, '', ''),
(27, 'Samsung Galaxy VR', 179.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungsgalaxyvr.jpg', 4, '', 0, '', ''),
(28, 'Beats', 139.9, 'http://facchiniferrarigaboardi.altervista.org/img/beats.jpg', 4, '', 0, '', ''),
(29, 'Samsung Smart TV', 79.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungssmarttv.jpg', 4, '', 0, '', ''),
(30, 'Sandisk Falsh Drive', 239.9, 'http://facchiniferrarigaboardi.altervista.org/img/sandisk.jpg', 4, '', 0, '', ''),
(31, 'Samsung Galaxy S7', 829.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungs7.jpg', 5, 'Samsung Galaxy S7 Edge ? uno smarthphone Android con caratteristiche all''avanguardia che lo rendono una scelta eccellente per ogni tipo di utilizzo, rappresentando uno dei migliori dispositivi mobili mai realizzati!', 0, '', ''),
(32, 'iPad Pro 9.7" 128 GB', 1019.9, 'http://facchiniferrarigaboardi.altervista.org/img/ipad.jpg', 5, 'Con iPad hai scoperto un mondo completamente nuovo, semplice e coinvolgente. Oggi iPad Pro, con la tecnologia Multi-Touch perfezionata, il suo grande display Retina da 12.9" e prestazioni della CPU quasi raddoppiate rispetto a iPad Air 2, ? pronto ad allargare ancora una volta i tuoi orizzonti!', 0, '', ''),
(33, 'Apple iPhone 6', 989.9, 'http://facchiniferrarigaboardi.altervista.org/img/iphone.jpg', 5, 'iPhone 6 non ? solo pi? grande: ? ancora migliore, da ogni punto di vista. Pi? grande, eppure pi? sottile. Pi? potente, ma attento nei consumi. ? una nuova generazione di iPhone.\r\n', 0, '', ''),
(34, 'Asus ZenPhone 2', 299.9, 'http://facchiniferrarigaboardi.altervista.org/img/asus.jpg', 5, 'Asus ZenFone 2 ZE551ML ? uno smartphone Android avanzato e completo sotto tutti i punti di vista con alcune eccellenze. Dispone di un grande display da 5.5 pollici e di una risoluzione da 1920x1080 pixel che ? la pi? elevata attualmente in circolazione. Le funzionalit? offerte da questo Asus ZenFone 2 ZE551ML sono veramente tante e all''avanguardia. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente. ', 0, '', ''),
(35, 'Samsung Galaxy A3', 199.9, 'http://facchiniferrarigaboardi.altervista.org/img/galaxia3.jpg', 5, 'Samsung Galaxy A3 ? un smartphone Android completo, che non ha molto da invidare ai dispositivi pi? avanzati. Dispone di un display Touchscreen da 4.5 pollici con una risoluzione di 960x540 pixel non particolarmente elevata. Sul versante delle funzionalit? a questo Samsung Galaxy A3 non manca davvero nulla. A cominciare dal modulo LTE 4G che permette un trasferimento dati e una navigazione in internet eccellente, passando per la connettivit? Wi-fi e il GPS. ', 0, '', ''),
(36, 'Sony Smartband', 129.9, 'http://facchiniferrarigaboardi.altervista.org/img/sony.jpg', 5, '', 0, '', ''),
(37, 'Galaxy Gear', 229.9, 'http://facchiniferrarigaboardi.altervista.org/img/galaxygear7.jpg', 5, '', 0, '', ''),
(38, 'Samsung Galaxy Fit', 189.9, 'http://facchiniferrarigaboardi.altervista.org/img/galaxyfit.jpg', 5, '', 0, '', ''),
(39, 'Ihealth HS5', 99.9, 'http://facchiniferrarigaboardi.altervista.org/img/ihealth.jpg', 5, '', 0, '', ''),
(40, 'D-Link Smart Home', 129.9, 'http://facchiniferrarigaboardi.altervista.org/img/dlink.jpg', 5, '', 0, '', ''),
(41, 'SPhilips Friends', 229.9, 'http://facchiniferrarigaboardi.altervista.org/img/philips.jpg', 5, '', 0, '', ''),
(42, 'Samsung Galaxy VR', 179.9, 'http://facchiniferrarigaboardi.altervista.org/img/samsungsgalaxyvr.jpg', 5, '', 0, '', ''),
(43, 'Well Up', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/wllup.jpg', 9, '', 0, '', ''),
(44, 'Run App', 2.9, 'http://facchiniferrarigaboardi.altervista.org/img/runapp.jpg', 9, '', 0, '', ''),
(45, 'Serie A', 1.9, 'http://facchiniferrarigaboardi.altervista.org/img/seriea.jpg', 9, '', 0, '', ''),
(47, 'Netflix', 15.9, 'http://facchiniferrarigaboardi.altervista.org/img/netflix.jpg', 6, '', 1, 'Guarda film e programmi TV su Netflix online o direttamente su smart TV, console per videogiochi, PC, Mac, cellulare, tablet e molti altri dispositivi.', 'Il software di streaming di Netflix permette di guardare istantaneamente i contenuti disponibili utilizzando qualsiasi dispositivo connesso a Internet su cui e'' installata l''app Netflix. Il software puo'' variare a seconda del dispositivo e del mezzo di trasmissione e anche le funzionalita'' possono variare da un dispositivo all''altro. Ad esempio, il software puo'' essere incorporato sul dispositivo compatibile con Netflix oppure può essere disponibile come app da scaricare (caso dei dispositivi Apple iPad).'),
(46, 'TIM Vision', 5.9, 'http://facchiniferrarigaboardi.altervista.org/img/timvision.jpg', 6, '', 0, '', ''),
(48, 'TIM Sky', 20.9, 'http://facchiniferrarigaboardi.altervista.org/img/timsky.jpg', 6, '', 0, '', ''),
(49, 'TIM Premium', 7.9, 'http://facchiniferrarigaboardi.altervista.org/img/timpremium.jpg', 6, '', 0, '', ''),
(50, 'Chromecast', 30.9, 'http://facchiniferrarigaboardi.altervista.org/img/chromecast.jpg', 6, '', 0, '', ''),
(51, 'TIM Music', 7.9, 'http://facchiniferrarigaboardi.altervista.org/img/timmusic.jpg', 6, '', 0, '', ''),
(52, 'HealtApp', 5.9, 'http://facchiniferrarigaboardi.altervista.org/img/healthapp.jpg', 9, '', 0, '', ''),
(53, 'The Sims 3', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/thesims.jpg', 7, '', 0, '', ''),
(54, 'Solitario', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/solitario.jpg', 7, '', 0, '', ''),
(55, 'Need for Speed', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/needforspeed.jpg', 7, '', 0, '', ''),
(56, 'Pro Tennis', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/protennis.jpg', 7, '', 0, '', ''),
(57, 'Quotidiani', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/quotidiani.jpg', 8, '', 0, '', ''),
(58, 'Ebook', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/ebook.jpg', 8, '', 0, '', ''),
(59, 'Magazine', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/magazine.jpg', 8, '', 0, '', ''),
(60, 'Ebook Reader', 3.9, 'http://facchiniferrarigaboardi.altervista.org/img/ebookreader.jpg', 8, '', 0, '', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `devicecompresi`
--

CREATE TABLE IF NOT EXISTS `devicecompresi` (
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

CREATE TABLE IF NOT EXISTS `deviceconsigliati` (
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
-- Struttura della tabella `filter`
--

CREATE TABLE IF NOT EXISTS `filter` (
  `id` int(11) NOT NULL,
  `nome` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `tipo` tinyint(1) NOT NULL,
  `value` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`)
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

CREATE TABLE IF NOT EXISTS `plans` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `costo` text NOT NULL,
  `descrizione` text NOT NULL,
  `internet` int(11) NOT NULL,
  `voce` int(11) NOT NULL,
  `minuti` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `banner` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`),
  FULLTEXT KEY `nome` (`nome`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `plans`
--

INSERT INTO `plans` (`id`, `nome`, `costo`, `descrizione`, `internet`, `voce`, `minuti`, `categoria`, `banner`) VALUES
(1, 'TIM YOUNG', 'Se passi a TIM mantenendo il tuo numero o attivi una nuova linea e scegli di addebitare l''offerta su credito residuo, il costo di attivazione e'' di 3 euro.<br><br>\r\nSe l''offerta viene attivata online il costo di attivazione e le prime 4 settimane sono gratis. <br><br>\r\nPer i clienti TIM e'' previsto un costo di attivazione di 19 euro.<br><br>\r\n', '<b>Hai meno di 30 anni e ti senti Digital?</b><br><br>\r\n\r\nCon TIM Young&Music Summer Edition chiami, fai il pieno di Giga, navighi alla velocità della luce e ascolti musica in streaming illimitato sul tuo smartphone con TIMmusic, senza consumare i tuoi GB!\r\n<br><br>\r\nIn più, se attivi l’offerta da Negozio TIM con addebito dei pagamenti su conto corrente o carta di credito, per te 5GB di Internet 4G ogni 28gg.\r\n<br><br>\r\nPuoi avere TIM Young&Music Summer Edition a 14€ ogni 4 settimane, anziché 17€, se utilizzi la modalità DIGITAL:\r\n<br><br>\r\nricarichi da timyoung.it, tim.it, MyTIM Mobile (anche tramite App MyTIM Mobile),tramite la tua banca\r\nse addebiti la tua offerta su conto corrente o carta di credito.\r\nA te che attivi l’offerta TIM Young&Music Full  verrà attivata gratuitamente, l’opzione 3 Giga Estate che ti dà diritto a 3GB extra da utilizzare fino al 30/09/2016.\r\n<br><br>\r\nUna volta esauriti i 3GB extra prima della scadenza naturale della promozione  (30/09/2016), continuerai a navigare consumando i GB del pacchetto dati TIM Young&Music a tua disposizione.<br>', 4, 1000, 1000, 0, 'timyoung.jpg'),
(2, 'TIM INTERNATIONAL', '', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `plans_device`
--

CREATE TABLE IF NOT EXISTS `plans_device` (
  `plans` int(11) NOT NULL,
  `device` int(11) NOT NULL,
  UNIQUE KEY `plans` (`plans`,`device`)
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

CREATE TABLE IF NOT EXISTS `sferette` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `frase` varchar(5000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tipo` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dump dei dati per la tabella `sferette`
--

INSERT INTO `sferette` (`id`, `nome`, `img`, `frase`, `tipo`) VALUES
(1, 'Piero Angela', '/img/PieroAngela.png', '"The Future is Now"', 0),
(2, 'Marcello Macchia', '/img/macchia.png', '"Only the Best"', 0),
(3, 'Sigmund Roy', '/img/SigmundRoy.png', '"Innovation is the key of Perfection"', 0),
(4, 'Infrastrutture', '/img/fibra.png', 'Da 20 anni Telecom Italia si impegna per migliorare l''infrastruttura italiana per i servizi di rete e internet, migliorando la rete esistente con sempre nuove tecnologie. \r\n\r\nIl nostro obiettivo e'' di portare la velocita'' della fibra in tutto il territorio nazionale.', 1),
(5, 'TIM YOUNG Projects', '/img/hackaton.png', 'TIM e'' attiva nella promozione e nell''incentivo dei giovani ad entrare in contatto con il mondo dell''IT, finanziando e organizzando numerosi eventi, come l''Hackaton di Milano, il Summer Festival di Rimini e l''8B Music Festival di Urbino', 1),
(6, 'Reti Mobile', '/img/AntennaLTE.png', 'Lavoriamo per migliorare la copertura delle reti mobili, e disponiamo della piu'' ampia copertura 4G d''Italia. \r\n\r\nNell''ambito della telefonia mobile con il termine 4G (acronimo di 4th (fourth) Generation) si indicano relativamente a tale campo, le tecnologie e gli standard di quarta generazione successivi a quelli di terza generazione, che permettono quindi applicazioni multimediali avanzate e collegamenti dati con elevata banda passante.', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
