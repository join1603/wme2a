-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;



--
-- Definition of table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primärschlüssel',
  `photo_id` int(10) unsigned default NULL,
  `user_id` int(10) unsigned default NULL,
  `created` datetime NOT NULL COMMENT 'Erstellungsdatum',
  `title` varchar(255) default NULL,
  `comment_text` text NOT NULL COMMENT '''''''Kommentart',
  `modified` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Kommentare zu einem Foto';

--
-- Dumping data for table `comments`
--

/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`,`photo_id`,`user_id`,`created`,`title`,`comment_text`,`modified`) VALUES 
 (1,1,1,'2010-03-22 14:19:02','Sparkurs','Dass die Uni so sehr sparen muss...',NULL),
 (2,1,2,'2010-03-23 15:19:02','Sparen','Sparen, Sparen, ....',NULL),
 (3,4,2,'2010-03-25 14:24:53','test','Dies ist ein Testkommentar',NULL);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;


--
-- Definition of table `photos`
--

DROP TABLE IF EXISTS `photos`;
CREATE TABLE `photos` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primärschlüssel',
  `created` datetime NOT NULL COMMENT 'Erstellungsdatum',
  `title` varchar(200) NOT NULL COMMENT 'Titel des Fotos',
  `description` text NOT NULL COMMENT 'Kurzbeschreibung',
  `width` int(10) unsigned NOT NULL COMMENT 'Breite (in Pixel)',
  `height` int(10) unsigned NOT NULL COMMENT 'Höhe (in Pixel)',
  `geo_lat` double default NULL COMMENT 'Geoposition (Breitengrad zwischen -90 und +90°)',
  `geo_long` double default NULL COMMENT 'Geoposition (Längengrad zwischen -180 und +180°)',
  `aperture` varchar(10) default NULL COMMENT 'Blendenöffnung',
  `exposuretime` varchar(10) default NULL COMMENT 'Belichtungszeit',
  `focallength` varchar(10) default NULL COMMENT 'Brennweite',
  `views` int(10) unsigned NOT NULL COMMENT 'Aufrufe durch Benutzer',
  `original_filename` varchar(45) NOT NULL COMMENT 'Originaler Dateiname',
  `user_id` int(10) unsigned default NULL COMMENT 'Fremdschlüssel auf den Autor',
  `user_name` varchar(45) NOT NULL COMMENT 'Benutzername des Autors (als Fallback, für externe Fotos)',
  `upload_complete` tinyint(1) NOT NULL default '0' COMMENT '0 = Upload unfertig, 1 = alle Daten hochgeladen',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='Fotos';

--
-- Dumping data for table `photos`
--

/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` (`id`,`created`,`title`,`description`,`width`,`height`,`geo_lat`,`geo_long`,`aperture`,`exposuretime`,`focallength`,`views`,`original_filename`,`user_id`,`user_name`,`upload_complete`) VALUES 
 (1,'2010-01-16 16:24:29','Campus auf Eis','Aufnahme aus dem Inneren des HSZ im Winter 2009/2010.',1200,800,51.0288651599628,13.729691509997,'F/7','1/6s','220mm',3,'eis.jpg',1,'MaNi',1),
 (2,'2009-03-29 10:57:05','Leckere Beeren','Ob sie essbar sind oder nicht, wer weiß das schon?',1200,800,28.0949108499942,-16.7265933800091,'F/8','1/25s','55mm',0,'beeren.jpg',1,'MaNi',1),
 (3,'2009-06-27 14:24:11','Crossing Bilbao','Eine schöne Brücke in Bilbao, in der Nähe des Guggenheim-Museums.',1200,800,43.2665637501613,-2.92753458003458,'F/16','1/100s','18mm',0,'bilbao.jpg',1,'MaNi',1),
 (4,'2009-06-26 16:34:13','Bohnen!','Was gibt es mehr zu sagen?',1200,800,43.3130242000322,-1.99367791005291,'F/7','1/400s','55mm',0,'bohnen.jpg',1,'MaNi',1),
 (5,'2009-10-19 12:54:55','Boule','Männersport mit Reflektionen',1200,800,51.0252212700778,13.7232542000144,'F/5','1/250s','250mm',0,'boule.jpg',1,'MaNi',1),
 (6,'2009-06-21 17:33:20','Catedral del buen pastor','Kathedrale in Donostia, Spanien.',1200,800,43.31721809,-1.98207736000229,'F/8','1/250s','24mm',0,'catedraldelbuenpastor.jpg',1,'MaNi',1),
 (7,'2009-06-21 14:38:08','This is Donostia!','Das \"Wahrzeichen\" von Donostia, oder ein Teil davon (an der Küste gibt es noch mehr).',1200,800,43.3217560999943,-2.00558825995807,'F/10','1/125s','35mm',0,'donostia.jpg',1,'MaNi',1),
 (8,'2009-03-31 12:09:02','Falke','... hat sich gerade einen Menschen geangelt.',1200,871,28.0796622300352,-16.6952598099959,'F/7','1/500s','55mm',0,'falke.jpg',1,'MaNi',1),
 (9,'2009-03-29 18:47:08','Feuerblume','Nicht anfassen, heiß!',1200,800,28.0941205499526,-16.7263224700323,'F/11','1/100s','55mm',0,'feuerbluete.jpg',1,'MaNi',1),
 (10,'2009-06-27 12:49:53','7 Jahre Unglück','...',1200,800,43.260888720027,-2.93545111999334,'F/3','1/250s','18mm',0,'fractions.jpg',1,'MaNi',1),
 (11,'2009-04-03 16:19:16','Der Frosch','sitzt im Teich.',1200,767,51.0252212700778,13.7232542000144,'F/5','1/100s','55mm',0,'frosch.jpg',1,'MaNi',1),
 (12,'2009-05-25 06:46:43','Frühling an der Fakultät','...',1200,800,51.0252212700778,13.7232542000144,'F/10','1/125s','18mm',0,'fruehling.jpg',1,'MaNi',1),
 (13,'2009-12-15 18:02:35','GridLayout','...alles gerastert.',1200,800,51.0252212700778,13.7232542000144,'F/8','1/0s','18mm',0,'gridlayout.jpg',1,'MaNi',1),
 (14,'2009-03-22 12:35:13','Grün','Die Farbe des Lebens.',1200,800,28.0744865700024,-16.734119650001,'F/8','1/200s','55mm',0,'leben.jpg',1,'MaNi',1),
 (15,'2009-03-31 13:40:55','Leckerbissen','Jetzt auch als Snack für zwischendurch!',1200,800,28.0800550600154,-16.6958337999907,'F/7','1/60s','47mm',0,'leckerbissen.jpg',1,'MaNi',1),
 (16,'2009-06-19 20:56:51','Chaos','Lange Nacht der Wissenschaften 2009.',800,1200,51.0252212700778,13.7232542000144,'F/4','1/40s','18mm',0,'lndw.jpg',1,'MaNi',1),
 (17,'2010-03-11 08:14:02','Morgenstund hat Gold im Mund','So sagt man sich. In der Fakultät kann man auch dem Edelmetall nachjagen, wenn das Licht richtig hereinfällt...',1200,800,51.0252212700778,13.7232542000144,'F/6','1/25s','250mm',0,'morninggold.jpg',1,'MaNi',1),
 (18,'2009-04-27 06:52:12','Output','Gesammelte Werke',1200,800,51.025217900011,13.7233078499962,'F/4','1/50s','33mm',0,'output.jpg',1,'MaNi',1),
 (19,'2009-06-25 23:55:05','Puente de la Zurriola','Letzte Brücke vor der Küste in Donostia.',1200,800,43.3208770200263,-1.97832227006339,'F/8','1/0s','20mm',0,'puentedelazurriola.jpg',1,'MaNi',1),
 (20,'2009-03-20 12:17:59','Robo-Draisine','Im Einführungspraktikum sollen diese selbstgebauten Roboter einer schwarzen Linie folgen und dabei viele Tücken umgehen.',1200,800,51.0252212700778,13.7232542000144,'F/14','1/15s','27mm',0,'roboter.jpg',1,'MaNi',1),
 (21,'2009-09-01 13:17:29','Seerose','Fakultätsteichflora',1200,800,51.0252212700778,13.7232542000144,'F/5','1/400s','250mm',0,'seerose.jpg',1,'MaNi',1),
 (22,'2009-03-22 18:47:44','Splash!','t(x) = t(nass) - 0.2s',1200,800,28.0926842700258,-16.7472571100512,'F/10','1/500s','35mm',0,'splash.jpg',1,'MaNi',1),
 (23,'2009-03-22 20:14:26','Balance','Steintürmchen am Strand',800,1200,28.0876535900328,-16.7381563799762,'F/7','1/160s','30mm',0,'steine.jpg',1,'MaNi',1),
 (24,'2009-03-26 19:49:28','Strelizie','Die bekannteste Pflanze Teneriffas.',1200,800,28.0945393599822,-16.7361527700056,'F/9','1/13s','41mm',0,'strelizie.jpg',1,'MaNi',1),
 (25,'2009-03-31 11:48:51','Schalk im Nacken','...',1200,800,28.0800550600154,-16.6958337999907,'F/5','1/100s','55mm',0,'teufelchen.jpg',1,'MaNi',1),
 (26,'2008-06-16 18:12:09','Amsterdam street life','Alltag in Amsterdam...',1024,683,52.3723225299989,4.89447891999814,'F/8','1/125s','38mm',0,'amsterdam.jpg',2,'Donald',1),
 (27,'2008-07-20 11:00:08','Arena','Aufgenommen bei Katusice, Tschechische Republik.',1280,1938,50.4713679400012,14.7943568199686,'F/16','1/640s','21mm',0,'arena.jpg',2,'Donald',1),
 (28,'2008-07-22 16:25:21','Buschberg','Freihand-Panorama vom Buschberg in Österreich, nahe der tschechischen Grenze.',1600,248,48.5758192,16.3965475600182,'F/16','1/400','31mm',0,'buschberg.jpg',2,'Donald',1),
 (29,'2007-10-05 08:56:36','Ökodrache','Drachenfigur aus gepressten Dosen im Jardin des Plantes, Paris.',1024,768,48.8441545500579,2.36373558989453,'F/9','1/100s','6mm',0,'drachen.jpg',2,'Donald',1),
 (30,'2009-02-02 12:41:17','Eis','Ziemlich kalt...',1280,854,51.0252212700778,13.7232542000144,'F/5','1/50s','55mm',0,'eisbrocken.jpg',2,'Donald',1),
 (31,'2009-01-19 12:59:59','Gletscherplanken','Steg hinter der Fakultät an einem Wintertag.',1280,853,51.0252212700778,13.7232542000144,'F/9','1/60s','33mm',0,'eisholz.jpg',2,'Donald',1),
 (32,'2008-07-20 12:44:11','Kornfeld','Kornfeld in Tschechien',1280,853,NULL,NULL,'F/18','1/640s','55mm',0,'feld.jpg',2,'Donald',1),
 (33,'2009-01-22 07:23:42','Der Gang','Der Ausgang befindet sich in dieser Richtung.',1280,853,51.0252212700778,13.7232542000144,'F/9','1/5s','18mm',0,'gang.jpg',2,'Donald',1),
 (34,'2008-12-17 07:45:00','Green IT','Durch eines der grünen Fenster im Foyer aufgenommen.',1280,853,51.0252212700778,13.7232542000144,'F/5','1/50s','18mm',0,'gruen.jpg',2,'Donald',1),
 (35,'2009-01-08 07:23:20','HDR Test','...',1280,853,51.0252212700778,13.7232542000144,'F/4',NULL,'28mm',0,'hdr.jpg',2,'Donald',1),
 (36,'2008-06-17 20:09:53','Straßenlampe','So sehen Straßenlampen in den Niederlanden aus... Delft, NL.',533,800,52.0149740800071,4.35676575001325,'F/9','1/200s','55mm',0,'lampe.jpg',2,'Donald',1),
 (37,'2009-02-01 14:49:04','Mainframe','Ausstellungsstück anlässlich des Mainframe Summit 2009.',1280,853,51.0252212700778,13.7232542000144,'F/4','1/40s','18mm',0,'mainframe.jpg',2,'Donald',1),
 (38,'2008-07-21 13:20:13','Mohn','Mohnfeld in Tschechien bei Humpolec.',1280,1920,49.4961170600233,15.3289318099383,'F/14','1/140s','33mm',0,'mohn.jpg',2,'Donald',1),
 (39,'2008-07-21 17:52:24','Geöffnet','Wir haben geöffnet - Telc, Tschechische Republik.',1280,1687,49.1835688200017,15.4525065399972,'F/11','1/250s','25mm',0,'open.jpg',2,'Donald',1),
 (40,'2009-01-20 15:49:33','Dresden-Plauen','HDR-Foto der Tharandter Straße.',1024,683,51.0239542800061,13.7030786300048,NULL,NULL,'18mm',0,'plauen.jpg',2,'Donald',1),
 (41,'2009-01-26 17:52:22','Schilf','Schilf am Teich hinter der Fakultät.',1280,853,51.0252212700778,13.7232542000144,'F/3','1/25s','22mm',0,'schilf.jpg',2,'Donald',1),
 (42,'2009-01-11 13:07:20','Schneedünen','Sowas kennt man sonst nur mit Sand.',1280,853,NULL,NULL,'F/5','1/100s','35mm',0,'schnee.jpg',2,'Donald',1),
 (43,'2009-03-07 20:57:44','CeBIT Skywalk','Der Skywalk zur CeBIT in Hannover.',1280,853,52.3186876499968,9.79822486993683,'F/9','1/1s','18mm',0,'skywalk.jpg',2,'Donald',1),
 (44,'2010-03-19 14:50:13','SoundNexus','Forschungsprototyp einer adaptiven Webanwendung.',800,541,NULL,NULL,NULL,NULL,NULL,0,'soundnexus.png',2,'Donald',1),
 (45,'2009-03-07 19:37:26','Straße','Langzeitbelichtung von einer Brücke bei Hannover.',1280,853,52.2958953000135,9.82000709000075,'F/8','8/1s','18mm',0,'strasse.jpg',2,'Donald',1),
 (46,'2008-07-21 17:49:44','Telc','Weltkulturerbestadt Telc, Tschechische Republik.',1280,850,49.18335844,15.4511117899977,'F/14','1/500s','22mm',0,'telc.jpg',3,'Karl',1),
 (47,'2009-02-22 21:24:55','Tunnelsicht','...',1280,853,51.023750140009,13.7003052199974,'F/8','8/1s','18mm',0,'tunnel.jpg',3,'Karl',1),
 (48,'2009-01-28 19:51:07','WTC Dresden','Das World Trade Center Dresden im Winter.',1280,853,51.0495017000257,13.7203788799741,'F/8','2/1s','18mm',0,'wtc.jpg',3,'Karl',1),
 (54,'2010-04-08 23:58:45','Petronas Towers','Dies ist ein Testeintrag.',19,180,NULL,NULL,'5.6','125','70',0,'IMG_0155.JPG',1,'MaNi',1),
 (55,'2010-05-20 08:12:33','Die Preise','Die zwei besten Ergebnisse jeder Teilaufgabe dürfen sich an diesen Kakaoprodukten laben - wer wird der Sieger sein?',1200,800,0,0,'F/4','1/30s','33mm',0,'preise.jpg',1,'MaNi',1);
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;


--
-- Definition of table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primärschlüssel',
  `photo_id` int(10) unsigned default NULL,
  `user_id` int(10) unsigned default NULL,
  `value` tinyint(3) unsigned NOT NULL COMMENT '''Bewertung (1-5',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8 COMMENT='Bewertungen eines Fotos';

--
-- Dumping data for table `ratings`
--

/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` (`id`,`photo_id`,`user_id`,`value`) VALUES 
 (1,29,1,4),
 (2,25,2,5),
 (3,39,1,4),
 (4,22,2,5),
 (5,43,1,4),
 (6,7,2,4),
 (7,47,3,2),
 (8,23,2,2),
 (9,21,1,2),
 (10,38,2,1),
 (11,31,1,3),
 (14,3,3,2),
 (15,1,1,2),
 (16,45,2,2),
 (17,28,1,2),
 (18,6,2,1),
 (21,42,3,2),
 (22,47,2,1),
 (23,16,1,2),
 (24,34,2,2),
 (25,27,1,2),
 (26,32,2,2),
 (28,13,3,1),
 (29,17,1,3),
 (30,1,2,2),
 (31,47,1,2),
 (32,39,2,2),
 (33,10,1,2),
 (39,20,1,2),
 (41,12,1,2),
 (42,46,3,2),
 (43,3,1,3),
 (44,20,2,3),
 (45,41,1,4),
 (48,41,2,3),
 (49,26,3,4),
 (52,27,2,2),
 (53,40,1,3),
 (55,38,1,5),
 (56,30,3,4),
 (57,33,1,4),
 (58,30,2,5),
 (59,2,1,5),
 (60,18,2,5),
 (61,35,1,5),
 (62,24,2,5),
 (63,15,3,5),
 (68,26,2,5),
 (70,21,3,4),
 (71,18,1,5),
 (72,29,2,5),
 (74,21,2,3),
 (75,30,1,2),
 (77,17,3,3),
 (78,9,2,2),
 (79,42,1,5),
 (81,24,1,5),
 (83,26,1,5),
 (84,31,3,3),
 (87,6,1,3),
 (88,14,2,3),
 (90,37,2,3),
 (91,22,3,3),
 (92,46,2,2),
 (94,15,2,2),
 (96,16,2,2),
 (97,44,1,2),
 (98,29,3,3),
 (99,11,1,4),
 (100,19,2,3),
 (103,0,1,4),
 (104,12,2,3),
 (105,11,3,2),
 (107,7,1,3),
 (108,33,2,2),
 (109,45,1,3),
 (110,31,2,3),
 (118,40,2,4),
 (119,23,3,3),
 (121,34,1,1),
 (122,5,2,2),
 (123,19,1,3),
 (126,8,3,2),
 (127,5,1,2),
 (128,48,2,2),
 (129,32,1,2),
 (133,18,3,2),
 (135,36,1,2),
 (136,2,2,2),
 (143,22,1,3),
 (148,17,2,4),
 (150,44,2,1),
 (154,6,3,2),
 (161,20,3,2),
 (168,14,3,5),
 (175,43,3,4),
 (178,0,2,4),
 (182,41,3,5),
 (183,15,1,5),
 (188,3,2,2),
 (189,44,3,1),
 (192,36,2,2),
 (193,25,1,2),
 (196,9,3,2),
 (202,13,2,4),
 (217,34,3,2),
 (221,37,1,3),
 (225,4,1,3),
 (226,35,2,2),
 (232,4,2,2),
 (235,9,1,1),
 (236,28,2,2),
 (237,14,1,5),
 (238,35,3,5),
 (241,13,1,5);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;


--
-- Definition of table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `photo_id` int(10) unsigned default NULL,
  `tag_name` varchar(45) NOT NULL COMMENT '''Vergebenes Tag',
  PRIMARY KEY  USING BTREE (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='Tags zu einem Foto';

--
-- Dumping data for table `tags`
--

/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` (`id`,`photo_id`,`tag_name`) VALUES 
 (1,26,'Amsterdam'),
 (2,3,'Architektur'),
 (3,6,'Architektur'),
 (4,10,'Architektur'),
 (5,19,'Architektur'),
 (6,5,'Boule'),
 (7,43,'Cebit'),
 (8,36,'Delft'),
 (9,4,'Donostia'),
 (10,6,'Donostia'),
 (11,7,'Donostia'),
 (12,19,'Donostia'),
 (13,40,'Dresden'),
 (14,47,'Dresden'),
 (15,48,'Dresden'),
 (16,1,'Eis'),
 (17,30,'Eis'),
 (18,31,'Eis'),
 (19,11,'Fakultät'),
 (20,12,'Fakultät'),
 (21,13,'Fakultät'),
 (22,16,'Fakultät'),
 (23,17,'Fakultät'),
 (24,18,'Fakultät'),
 (25,20,'Fakultät'),
 (26,21,'Fakultät'),
 (27,33,'Fakultät'),
 (28,34,'Fakultät'),
 (29,35,'Fakultät'),
 (30,37,'Fakultät'),
 (31,41,'Fakultät'),
 (32,29,'Frankreich'),
 (33,12,'Frühling'),
 (34,43,'Hannover'),
 (35,45,'Hannover'),
 (36,35,'hdr'),
 (37,40,'hdr'),
 (38,31,'Holz'),
 (39,33,'Nacht'),
 (40,43,'Nacht'),
 (41,45,'Nacht'),
 (42,47,'Nacht'),
 (43,48,'Nacht'),
 (44,26,'Niederlande'),
 (45,36,'Niederlande'),
 (46,28,'Österreich'),
 (47,28,'Panorama'),
 (48,29,'Paris'),
 (49,2,'Pflanzen'),
 (50,4,'Pflanzen'),
 (51,9,'Pflanzen'),
 (52,14,'Pflanzen'),
 (53,21,'Pflanzen'),
 (54,24,'Pflanzen'),
 (55,38,'Pflanzen'),
 (56,41,'Pflanzen'),
 (57,44,'Screenshot'),
 (58,5,'Sport'),
 (59,26,'Street'),
 (60,40,'Street'),
 (61,45,'Street'),
 (62,39,'Telc'),
 (63,46,'Telc'),
 (64,2,'Teneriffa'),
 (65,8,'Teneriffa'),
 (66,9,'Teneriffa'),
 (67,14,'Teneriffa'),
 (68,15,'Teneriffa'),
 (69,22,'Teneriffa'),
 (70,23,'Teneriffa'),
 (71,24,'Teneriffa'),
 (72,25,'Teneriffa'),
 (73,8,'Tiere'),
 (74,11,'Tiere'),
 (75,15,'Tiere'),
 (76,25,'Tiere'),
 (77,27,'Tschechien'),
 (78,32,'Tschechien'),
 (79,38,'Tschechien'),
 (80,39,'Tschechien'),
 (81,46,'Tschechien'),
 (82,7,'Wahrzeichen'),
 (83,7,'Wasser'),
 (84,22,'Wasser'),
 (85,46,'Weltkulturerbe'),
 (86,1,'Winter'),
 (87,30,'Winter'),
 (88,31,'Winter'),
 (89,35,'Winter'),
 (90,42,'Winter');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primärschlüssel',
  `username` varchar(45) NOT NULL COMMENT 'Benutzername',
  `password` varchar(45) NOT NULL COMMENT 'Passwort (verschlüsselt)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Benutzer von PhotonPainter';

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`username`,`password`) VALUES 
 (1,'MaNi','e10adc3949ba59abbe56e057f20f883e'),
 (2,'Donald','36846677e3a8f4c0b16d8bdf8ef18608'),
 (3,'Karl','0dfb5e07a60754c7d9c294abc91d5395');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `ws_users`
--

DROP TABLE IF EXISTS `ws_users`;
CREATE TABLE `ws_users` (
  `id` int(10) unsigned NOT NULL auto_increment COMMENT 'Primärschlüssel',
  `user_label` varchar(45) default NULL COMMENT 'Benutzername',
  `api_key` varchar(45) NOT NULL COMMENT 'Passwort (verschlüsselt)',
  `privileges` enum('NONE','READ','WRITE','READ_OR_WRITE') NOT NULL COMMENT 'Berechtigungen des Benutzers',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Autorisierte Benutzer von PhotonEmitter';

--
-- Dumping data for table `ws_users`
--

/*!40000 ALTER TABLE `ws_users` DISABLE KEYS */;
INSERT INTO `ws_users` (`id`,`user_label`,`api_key`,`privileges`) VALUES 
 (1,'PhotonPainter','e10adc3949ba59abbe56e057f20f883e','READ_OR_WRITE');
/*!40000 ALTER TABLE `ws_users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
