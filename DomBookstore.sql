CREATE DATABASE  IF NOT EXISTS `bookstoreapi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bookstoreapi`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstoreapi
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `billing_address`
--

DROP TABLE IF EXISTS `billing_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billing_address_city` varchar(255) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `billing_address_name` varchar(255) DEFAULT NULL,
  `billing_address_street1` varchar(255) DEFAULT NULL,
  `billing_address_street2` varchar(255) DEFAULT NULL,
  `billing_address_zipcode` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `billing_address_state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjg6ji2vsfuqlc9vhvy4yi449h` (`order_id`),
  CONSTRAINT `FKjg6ji2vsfuqlc9vhvy4yi449h` FOREIGN KEY (`order_id`) REFERENCES `user_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_address`
--

LOCK TABLES `billing_address` WRITE;
/*!40000 ALTER TABLE `billing_address` DISABLE KEYS */;
INSERT INTO `billing_address` VALUES (1,'Lima',NULL,'Diego Salas','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','diegosalasnoainnoain@gmail.com','Lima4',1,'AL'),(2,'Lima',NULL,'Diego Salas','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','diegosalasnoainnoain@gmail.com','Lima4',2,'AL'),(3,'Lima',NULL,'Diego Salas','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','diegosalasnoainnoain@gmail.com','Lima4',3,'AL'),(4,NULL,NULL,NULL,NULL,NULL,NULL,4,''),(5,NULL,NULL,NULL,NULL,NULL,NULL,5,''),(6,'Lima',NULL,'Diego Salas','Av nicolas de pierola','dfsdfsfdsdfsdf','Lima4',6,'AL'),(7,'Lima',NULL,'Diego Salas','Av nicolas de pierola','dfsdfsfdsdfsdf','Lima4',7,'AL'),(8,NULL,NULL,NULL,NULL,NULL,NULL,8,NULL),(9,NULL,NULL,NULL,NULL,NULL,NULL,9,NULL),(10,NULL,NULL,NULL,NULL,NULL,NULL,10,NULL),(11,NULL,NULL,NULL,NULL,NULL,NULL,11,NULL),(12,NULL,NULL,NULL,NULL,NULL,NULL,12,NULL),(13,NULL,NULL,NULL,NULL,NULL,NULL,13,NULL),(14,NULL,NULL,NULL,NULL,NULL,NULL,14,NULL),(15,NULL,NULL,NULL,NULL,NULL,NULL,15,NULL),(16,NULL,NULL,NULL,NULL,NULL,NULL,16,NULL),(17,NULL,NULL,NULL,NULL,NULL,NULL,17,NULL),(18,NULL,NULL,NULL,NULL,NULL,NULL,18,NULL),(19,NULL,NULL,NULL,NULL,NULL,NULL,19,NULL),(20,NULL,NULL,NULL,NULL,NULL,NULL,20,NULL),(21,NULL,NULL,NULL,NULL,NULL,NULL,21,NULL),(22,NULL,NULL,NULL,NULL,NULL,NULL,22,NULL),(23,NULL,NULL,NULL,NULL,NULL,NULL,23,NULL),(24,NULL,NULL,NULL,NULL,NULL,NULL,24,NULL),(25,NULL,NULL,NULL,NULL,NULL,NULL,25,NULL),(26,NULL,NULL,NULL,NULL,NULL,NULL,26,NULL),(27,NULL,NULL,NULL,NULL,NULL,NULL,27,NULL),(28,NULL,NULL,NULL,NULL,NULL,NULL,28,NULL),(29,'Boston',NULL,'Diego','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','1231',29,'AL'),(30,NULL,NULL,NULL,NULL,NULL,NULL,30,NULL),(31,NULL,NULL,NULL,NULL,NULL,NULL,31,NULL),(32,NULL,NULL,NULL,NULL,NULL,NULL,32,NULL),(33,NULL,NULL,NULL,NULL,NULL,NULL,33,NULL),(34,NULL,NULL,NULL,NULL,NULL,NULL,34,NULL),(35,NULL,NULL,NULL,NULL,NULL,NULL,35,NULL),(36,'Lima',NULL,'Victoria Noain','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',36,'AL');
/*!40000 ALTER TABLE `billing_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  `format` varchar(255) DEFAULT NULL,
  `in_stock_number` int(11) NOT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `list_price` double NOT NULL,
  `number_of_pages` int(11) NOT NULL,
  `our_price` double NOT NULL,
  `publication_date` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `shipping_weight` double NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'','Miles Davis','Arts & Literature','<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">(Guitar Solo). 15 jazzy solo guitar arrangements of Davis classics, including: All Blues * All of You * Blue in Green * Bye Bye Blackbird * Four * Freddie Freeloader * I Could Write a Book * Milestones * Nardis * Nefertiti * Seven Steps to Heaven * So What * Solar * There Is No Greater Love * When I Fall in Love. The CD includes full demos of each piece by Jamie Findlay.</span></p>','paperback',0,'634023020','english',21.95,96,17.51,'2006-02-01','Hal Leonard',12,'Miles Davis for Solo Guitar'),(2,'',' Leonardo Da Vinci','Arts & Literature','<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\"><strong>An all-new, jewel-like, reader-friendly format gives new life to this relaunch of an international best-seller.</strong></p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">Leonardo da Vinci?artist, inventor, and prototypical Renaissance man?is a perennial source of fascination because of his astonishing intellect and boundless curiosity about the natural and man-made world. During his life he created numerous works of art and kept voluminous notebooks that detailed his artistic and intellectual pursuits.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">The collection of writings and art in this magnificent book are drawn from his notebooks. The book organizes his wide range of interests into subjects such as human figures, light and shade, perspective and visual perception, anatomy, botany and landscape, geography, the physical sciences and astronomy, architecture, sculpture, and inventions. Nearly every piece of writing throughout the book is keyed to the piece of artwork it describes.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<p style=\"margin: -4px 0px 0px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">The writing and art is selected by art historian H. Anna Suh, who provides fascinating commentary and insight into the material, making&nbsp;<em>Leonardo\'s Notebooks</em>&nbsp;an exquisite single-volume compendium celebrating his enduring genius.</p>','paperback',6,'1579129463','english',19.99,448,17.06,'2013-09-24','Black Dog & Leventhal',2,'Leonardo\'s Notebooks: Writing and Art of the Great Master'),(3,'',' Benjamin Spock M.D.','Arts & Literature','<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">Dr. Benjamin Spock is America&rsquo;s most trusted name in child care and parenting, and his essential guidebook has topped bestseller lists for over sixty-five years. This fully revised and updated edition of the classic manual provides first time and experienced parents the best information about caring for new babies, toddlers, and adolescents in the twenty-first century.</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">All of Dr. Spock&rsquo;s invaluable, time-tested advice is here, along with the most current medical practices and advances in health care. While still covering key parenting issues like accidents, illnesses and injuries, this edition of the classic also contains the latest on:</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Immunizations</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Nutrition and childhood obesity</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Cultural diversity</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Alternative and non-traditional family structures</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Children&rsquo;s learning and brain development</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Raising children with special needs</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Environmental health</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Increasingly common disorders such as ADHD, childhood depression, and autism&mdash;including medications and behavioral interventions</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">* Children and the media, including screen time, video games, and the internet</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">Updated by leading pediatrician Robert Needlman, the book includes a revised glossary of common medications and a resource guide that compiles the most reliable online resources. This indispensable guide is still the next best thing to Dr. Spock&rsquo;s #1 rule of parenting: &ldquo;Trust yourself. You know more than you think you do.&rdquo;</span></p>','paperback',35,'1439189293','english',12.3,1168,8.71,'2011-12-27','Pocket Books',1,'Dr. Spock\'s Baby and Child Care: 9th Edition'),(5,'',' Danielle Krysa','Arts & Literature','<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">This book is duct tape for the mouth of every artist\'s inner critic. Silencing that stifling voice once and for all, this salve for creatives introduces ten truths they must face in order to defeat self-doubt. Each encouraging chapter deconstructs a pivotal moment on the path to success&mdash;fear of the blank page, the dangers of jealousy, sharing work with others&mdash;and explains how to navigate roadblock. Packed with helpful anecdotes, thoughts from successful creatives, and practical exercises gleaned from Danielle Krysa\'s years of working with professional and aspiring artists&mdash;plus riotously apt illustrations from art world darling Martha Rich&mdash;this book arms readers with the most essential tool for their toolbox: the confidence they need to get down to business and make good work.</span></p>','hardcover',60,'1452148449','english',16.95,136,12.55,'2016-10-11','Chronicle Books',14,'Your Inner Critic Is a Big Jerk: And Other Truths About Being Creative'),(6,'',' Loren B. Belker','Management','<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">What\'s a rookie manager to do? Faced with new responsibilities, and in need of quick, dependable guidance, novice managers can\'t afford to learn by trial and error.&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif;\">The First-Time Manager</em><span style=\"color: #333333; font-family: Arial, sans-serif;\">&nbsp;is the answer, dispensing the bottom-line wisdom they need to succeed. A true management classic, the book covers essential topics such as hiring and firing, leadership, motivation, managing time, dealing with superiors, and much more.</span></p>\r\n<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">Written in an inviting and accessible style, the revised sixth edition includes new material on increasing employee engagement, encouraging innovation and initiative, helping team members optimize their talents, improving outcomes, and distinguishing oneself as a leader.</span></p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">Packed with immediately usable insight on everything from building a team environment to conducting performance appraisals,&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif;\">The First-Time Manager</em><span style=\"color: #333333; font-family: Arial, sans-serif;\">&nbsp;remains the ultimate guide for anyone starting his or her career in management.</span></p>','paperback',41,'814417833','english',17.95,240,10,'2012-01-03','AMACOM',14,'The First-Time Manager'),(7,'','Dale Carnegie','Management','<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">For more than sixty years the rock-solid, time-tested advice in this book has carried thousands of now famous people up the ladder of success in their business and personal lives.</span></p>\r\n<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">Now this previously revised and updated bestseller is available in trade paperback for the first time to help you achieve your maximum potential throughout the next century! Learn:</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">* Three fundamental techniques in handling people</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">* The six ways to make people like you</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">* The twelve ways to win people to you way of thinking</p>\r\n<p style=\"margin: -4px 0px 0px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">* The nine ways to change people without arousing resentment</p>','paperback',54,'671027034','english',16,288,10,'1998-10-01','Pocket Books',7,'How to Win Friends & Influence People'),(8,'',' Bruce Tulgan','Management','<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">For more than twenty years, management expert Bruce Tulgan has been asking<em>, &ldquo;What are the most difficult challenges you face when it comes to managing people?&rdquo;</em></p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">Regardless of industry or job title, managers cite the same core issues&mdash;27 recurring challenges: the superstar whom the manager is afraid of losing, the slacker whom the manager cannot figure out how to motivate, the one with an attitude problem, and the two who cannot get along, to name just a few.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">It turns out that when things are going wrong in a management relationship, the common denominator is almost always unstructured, low substance, hit-or-miss communication.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">The real problem is that most managers are &ldquo;managing on autopilot&rdquo; without even realizing it&mdash;until something goes wrong. And if you are managing on autopilot, then something almost always does.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\"><em>The 27 Challenges Managers Face</em>&nbsp;shows exactly how to break the vicious cycle and gain control of management relationships. No matter what the issue, Tulgan shows that the fundamentals are all you need. The very best managers hold ongoing one-on-one conversations that make expectations clear, track performance, offer feedback, and hold people accountable.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">For every workplace problem&mdash;even the most awkward and difficult&mdash;<em>The 27 Challenges Managers Face</em>&nbsp;shows how to tailor conversations to solve situations familiar to every manager. Tulgan offers clear approaches for turning around bad attitudes, reducing friction and conflict, improving low performers, retaining top performers, and even addressing your own personal burnout.</p>\r\n<p style=\"margin: -4px 0px 0px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\"><em>The 27 Challenges Managers Face</em>&nbsp;is an indispensable resource for managers at all levels, one anyone managing anyone will want to keep on hand. One challenge at a time, you&rsquo;ll see how the most effective managers use the fundamentals of management to proactively resolve (nearly) any problem a manager could face.&nbsp;</p>','hardcover',32,'111872559','english',28,256,18.4,'2014-09-09','Jossey-Bass',28,'The 27 Challenges Managers Face: Step-by-Step Solutions to (Nearly) All of Your Management Problems'),(9,'',' Paul Scherz','Engineering','<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\"><strong>A Fully-Updated, No-Nonsense Guide to Electronics</strong></p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">Advance your electronics knowledge and gain the skills necessary to develop and construct your own functioning gadgets. Written by a pair of experienced engineers and dedicated hobbyists,&nbsp;<em>Practical Electronics for Inventors,</em>&nbsp;Fourth Edition, lays out the essentials and provides step-by-step instructions, schematics, and illustrations. Discover how to select the right components, design and build circuits, use microcontrollers and ICs, work with the latest software tools, and test and tweak your creations. This easy-to-follow book features new instruction on programmable logic, semiconductors, operational amplifiers, voltage regulators, power supplies, digital electronics, and more.<br />&nbsp;<br /><em>Practical Electronics for Inventors,</em>&nbsp;Fourth Edition, covers:</p>\r\n<ul style=\"padding: 0px; color: #333333; font-family: Arial, sans-serif; margin: 0px 0px 0px !important 20px;\">\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Resistors, capacitors, inductors, and transformers</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Diodes, transistors, and integrated circuits</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Optoelectronics, solar cells, and phototransistors</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Sensors, GPS modules, and touch screens</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Op amps, regulators, and power supplies</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Digital electronics, LCD displays, and logic gates</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Microcontrollers and prototyping platforms</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Combinational and sequential programmable logic</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">DC motors, RC servos, and stepper motors</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Microphones, audio amps, and speakers</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Modular electronics and prototypes</li>\r\n</ul>','paperback',22,'1259587541','english',40,1056,22.9,'2016-03-24','McGraw-Hill Education TAB',5,'Practical Electronics for Inventors, Fourth Edition'),(10,'','Jones & Bartlett Learning','Engineering','<p><span style=\"color: #333333; font-family: Arial, sans-serif;\">Ugly\'s Electrical References, 2014 Edition is designed to be used as an on-the-job reference. Used worldwide by electricians, engineers, contractors, designers, maintenance workers, instructors, and the military; Ugly\'s contains the most commonly required electrical information in an easy-to-read and easy-to-access format. Ugly\'s presents a succinct portrait of the most pertinent information all electricians need at their fingertips, including: mathematical formulas, National Electrical Code tables, wiring configurations, conduit bending, voltage drops, and life-saving first aid procedures.</span></p>','hardcover',12,'1449690777','english',21.95,198,14.93,'2014-03-21','Jones & Bartlett Learning',6,'Ugly\'s Electrical References, 2014 Edition'),(11,'','William Kent Krueger','Fiction','<p><em style=\"color: #333333; font-family: Arial, sans-serif;\">NEW YORK TIMES&nbsp;</em><span style=\"color: #333333; font-family: Arial, sans-serif;\">BESTSELLER</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">WINNER OF THE 2014 EDGAR AWARD FOR BEST NOVEL</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">WINNER OF THE 2014 DILYS AWARD</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">A&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif;\">SCHOOL LIBRARY JOURNAL&nbsp;</em><span style=\"color: #333333; font-family: Arial, sans-serif;\">BEST BOOK OF 2013</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><em style=\"color: #333333; font-family: Arial, sans-serif;\">&ldquo;That was it. That was all of it. A grace so ordinary there was no reason at all to remember it. Yet I have never across the forty years since it was spoken forgotten a single word.&rdquo;&nbsp;</em><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">New Bremen, Minnesota, 1961. The Twins were playing their debut season, ice-cold root beers were selling out at the soda counter of Halderson&rsquo;s Drugstore, and Hot Stuff comic books were a mainstay on every barbershop magazine rack. It was a time of innocence and hope for a country with a new, young president. But for thirteen-year-old Frank Drum it was a grim summer in which death visited frequently and assumed many forms. Accident. Nature. Suicide. Murder.&nbsp;</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">Frank begins the season preoccupied with the concerns of any teenage boy, but when tragedy unexpectedly strikes his family&mdash;which includes his Methodist minister father; his passionate, artistic mother; Juilliard-bound older sister; and wise-beyond-his-years kid brother&mdash;he finds himself thrust into an adult world full of secrets, lies, adultery, and betrayal, suddenly called upon to demonstrate a maturity and gumption beyond his years.&nbsp;</span><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><br style=\"color: #333333; font-family: Arial, sans-serif;\" /><span style=\"color: #333333; font-family: Arial, sans-serif;\">Told from Frank&rsquo;s perspective forty years after that fateful summer,&nbsp;</span><em style=\"color: #333333; font-family: Arial, sans-serif;\">Ordinary Grace</em><span style=\"color: #333333; font-family: Arial, sans-serif;\">&nbsp;is a brilliantly moving account of a boy standing at the door of his young manhood, trying to understand a world that seems to be falling apart around him. It is an unforgettable novel about discovering the terrible price of wisdom and the enduring grace of God.</span></p>','paperback',23,'1451645856','english',16,336,10,'2014-03-04','Atria Books',10,'Ordinary Grace'),(12,'',' Herbert Schildt','Programming','<h4 style=\"margin: 0px; padding: 0px 0px 4px; font-family: Arial, sans-serif; text-rendering: optimizeLegibility; color: #333333;\">Essential Java Programming Skills--Made Easy!</h4>\r\n<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">Fully updated for Java Platform, Standard Edition 8 (Java SE 8),&nbsp;<em>Java: A Beginner\'s Guide</em>, Sixth Edition gets you started programming in Java right away. Bestselling programming author Herb Schildt begins with the basics, such as how to create, compile, and run a Java program. He then moves on to the keywords, syntax, and constructs that form the core of the Java language. This Oracle Press resource also covers some of Java\'s more advanced features, including multithreaded programming, generics, and Swing. Of course, new Java SE 8 features such as lambda expressions and default interface methods are described. An introduction to JavaFX, Java\'s newest GUI, concludes this step-by-step tutorial.</p>\r\n<p style=\"margin: -4px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\"><strong>Designed for Easy Learning:</strong></p>\r\n<ul style=\"margin: 0px 0px 18px 20px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Key Skills &amp; Concepts -- Chapter-opening lists of specific skills covered in the chapter</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Ask the Expert -- Q&amp;A sections filled with bonus information and helpful tips</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Try This -- Hands-on exercises that show you how to apply your skills</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Self Tests -- End-of-chapter quizzes to reinforce your skills</li>\r\n<li style=\"margin: 0px 0px 0px 20px; word-wrap: break-word;\">Annotated Syntax -- Example code with commentary that describes the programming techniques being illustrated</li>\r\n</ul>\r\n<p style=\"margin: 0px 0px 14px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">&nbsp;</p>\r\n<p style=\"margin: -4px 0px 0px; padding: 0px; color: #333333; font-family: Arial, sans-serif;\">The book\'s code examples are available FREE for download.</p>','paperback',33,'71809252','english',40,728,20.83,'2014-05-06','McGraw-Hill Education',3,'Java: A Beginner\'s Guide, Sixth Edition'),(13,'',NULL,'Management',NULL,'paperback',0,NULL,'english',0,0,0,NULL,NULL,0,NULL),(14,'',NULL,'Management',NULL,'paperback',0,NULL,'english',0,0,0,NULL,NULL,0,NULL),(15,'',NULL,'Management',NULL,'paperback',0,NULL,'english',0,0,0,NULL,NULL,0,NULL),(16,'',NULL,'Management',NULL,'paperback',0,NULL,'english',0,0,0,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_to_cart_item`
--

DROP TABLE IF EXISTS `book_to_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_to_cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) DEFAULT NULL,
  `cart_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK254kg9aacrs8uqa93ijc3garu` (`book_id`),
  KEY `FKbdyqr108hc7c06xtem0dhv9mk` (`cart_item_id`),
  CONSTRAINT `FK254kg9aacrs8uqa93ijc3garu` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `FKbdyqr108hc7c06xtem0dhv9mk` FOREIGN KEY (`cart_item_id`) REFERENCES `cart_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_to_cart_item`
--

LOCK TABLES `book_to_cart_item` WRITE;
/*!40000 ALTER TABLE `book_to_cart_item` DISABLE KEYS */;
INSERT INTO `book_to_cart_item` VALUES (5,1,5),(6,2,6),(7,6,7),(8,6,8),(9,1,9),(10,1,10),(11,1,11),(12,2,12),(13,3,13),(14,5,14),(15,6,15),(16,3,16),(17,2,17),(18,2,18),(19,2,19),(20,2,20),(21,2,21),(22,2,22),(23,2,23),(24,2,24),(25,2,25),(26,2,26),(27,2,27),(28,2,28),(29,2,29),(30,2,30),(31,3,31),(32,5,32),(33,3,33),(34,5,34),(35,3,35),(36,3,36),(37,5,37),(38,3,38),(39,2,39),(40,5,40),(41,3,41);
/*!40000 ALTER TABLE `book_to_cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `qty` int(11) NOT NULL,
  `subtotal` decimal(19,2) DEFAULT NULL,
  `book_id` bigint(20) DEFAULT NULL,
  `shopping_cart_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKis5hg85qbs5d91etr4mvd4tx6` (`book_id`),
  KEY `FKe89gjdx91fxnmkkssyoim8xfu` (`shopping_cart_id`),
  KEY `FKen9v41ihsnhcr0i7ivsd7i84c` (`order_id`),
  CONSTRAINT `FKe89gjdx91fxnmkkssyoim8xfu` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`),
  CONSTRAINT `FKen9v41ihsnhcr0i7ivsd7i84c` FOREIGN KEY (`order_id`) REFERENCES `user_order` (`id`),
  CONSTRAINT `FKis5hg85qbs5d91etr4mvd4tx6` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (5,3,52.53,1,NULL,1),(6,10,170.60,2,NULL,1),(7,5,50.00,6,NULL,1),(8,4,40.00,6,3,NULL),(9,2,35.02,1,3,NULL),(10,1,17.51,1,NULL,4),(11,1,17.51,1,NULL,5),(12,1,17.06,2,NULL,6),(13,1,8.71,3,NULL,8),(14,1,12.55,5,NULL,9),(15,1,10.00,6,NULL,10),(16,1,8.71,3,NULL,13),(17,1,17.06,2,NULL,14),(18,1,17.06,2,NULL,15),(19,1,17.06,2,NULL,16),(20,1,17.06,2,NULL,17),(21,1,17.06,2,NULL,18),(22,1,17.06,2,NULL,19),(23,1,17.06,2,NULL,21),(24,1,17.06,2,NULL,23),(25,1,17.06,2,NULL,25),(26,1,17.06,2,NULL,26),(27,1,17.06,2,NULL,27),(28,1,17.06,2,NULL,28),(29,1,17.06,2,NULL,29),(30,1,17.06,2,NULL,30),(31,1,8.71,3,NULL,31),(32,1,12.55,5,NULL,31),(33,1,8.71,3,NULL,32),(34,1,12.55,5,NULL,32),(35,1,8.71,3,NULL,33),(36,1,8.71,3,NULL,34),(37,1,12.55,5,NULL,34),(38,1,8.71,3,NULL,35),(39,3,51.18,2,NULL,36),(40,1,12.55,5,NULL,36),(41,1,8.71,3,4,NULL);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `billing_address` varchar(255) DEFAULT NULL,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc` varchar(255) DEFAULT NULL,
  `default_payment` bit(1) NOT NULL,
  `expiry_month` varchar(255) DEFAULT NULL,
  `expiry_year` varchar(255) DEFAULT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt7a73xusjdnnsuespcitb683h` (`order_id`),
  CONSTRAINT `FKt7a73xusjdnnsuespcitb683h` FOREIGN KEY (`order_id`) REFERENCES `user_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,NULL,NULL,'123112313113','123','\0','3','17','Diego','',1),(2,NULL,NULL,'123112313113','123','\0','3','17','Diego','',2),(3,NULL,NULL,'123112313113','123','\0','3','17','Diego','',3),(4,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,'',4),(5,NULL,NULL,NULL,NULL,'\0','',NULL,NULL,'',5),(6,NULL,NULL,'23423424','123','','1','17','Diego','mastercard',6),(7,NULL,NULL,'23423424','123','','1','17','Diego','mastercard',7),(8,NULL,NULL,'1321231231','123','','3','18','Diego','visa',8),(9,NULL,NULL,'1321231231','123','','3','18','Diego','visa',9),(10,NULL,NULL,'1321231231','123','','3','18','Diego','visa',10),(11,NULL,NULL,'1321231231','123','','3','18','Diego','visa',11),(12,NULL,NULL,'1321231231','123','','3','18','Diego','visa',12),(13,NULL,NULL,'1321231231','123','','3','18','Diego','visa',13),(14,NULL,NULL,'1321231231','123','','3','18','Diego','visa',14),(15,NULL,NULL,'1321231231','123','','3','18','Diego','visa',15),(16,NULL,NULL,'1321231231','123','','3','18','Diego','visa',16),(17,NULL,NULL,'1321231231','123','','3','18','Diego','visa',17),(18,NULL,NULL,'1321231231','123','','3','18','Diego','visa',18),(19,NULL,NULL,'1321231231','123','','3','18','Diego','visa',19),(20,NULL,NULL,'1321231231','123','','3','18','Diego','visa',20),(21,NULL,NULL,'1321231231','123','','3','18','Diego','visa',21),(22,NULL,NULL,'1321231231','123','','3','18','Diego','visa',22),(23,NULL,NULL,'1321231231','123','','3','18','Diego','visa',23),(24,NULL,NULL,'1321231231','123','','3','18','Diego','visa',24),(25,NULL,NULL,'1321231231','123','','3','18','Diego','visa',25),(26,NULL,NULL,'1321231231','123','','3','18','Diego','visa',26),(27,NULL,NULL,'1321231231','123','','3','18','Diego','visa',27),(28,NULL,NULL,'1321231231','123','','3','18','Diego','visa',28),(29,NULL,NULL,'1321231231','123','','3','18','Diego','visa',29),(30,NULL,NULL,'1321231231','123','','3','18','Diego','visa',30),(31,NULL,NULL,'1321231231','123','','3','18','Diego','visa',31),(32,NULL,NULL,'1321231231','123','','3','18','Diego','visa',32),(33,NULL,NULL,'1321231231','123','','3','18','Diego','visa',33),(34,NULL,NULL,'1321231231','123','','3','18','Diego','visa',34),(35,NULL,NULL,'1321231231','123','','3','18','Diego','visa',35),(36,NULL,NULL,'4557880957854346','402','','11','21','Victoria','visa',36);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (0,'ROLE_ADMIN'),(1,'ROLE_USER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shipping_address_city` varchar(255) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_default` varchar(255) DEFAULT NULL,
  `shipping_address_name` varchar(255) DEFAULT NULL,
  `shipping_address_state` varchar(255) DEFAULT NULL,
  `shipping_address_street1` varchar(255) DEFAULT NULL,
  `shipping_address_street2` varchar(255) DEFAULT NULL,
  `shipping_address_zipcode` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKatbgaqk1hhhhkyyuebylpeh7q` (`order_id`),
  CONSTRAINT `FKatbgaqk1hhhhkyyuebylpeh7q` FOREIGN KEY (`order_id`) REFERENCES `user_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

LOCK TABLES `shipping_address` WRITE;
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` VALUES (1,'Lima',NULL,NULL,'Diego Salas','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','diegosalasnoainnoain@gmail.com','Lima4',1),(2,'Lima',NULL,NULL,'Diego Salas','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','diegosalasnoainnoain@gmail.com','Lima4',2),(3,'Lima',NULL,NULL,'Diego Salas','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','diegosalasnoainnoain@gmail.com','Lima4',3),(4,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,4),(5,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,5),(6,'Lima',NULL,NULL,'Diego Salas','AL','Av nicolas de pierola','dfsdfsfdsdfsdf','Lima4',6),(7,'Lima',NULL,NULL,'Diego Salas','AL','Av nicolas de pierola','dfsdfsfdsdfsdf','Lima4',7),(8,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',8),(9,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',9),(10,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',10),(11,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',11),(12,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',12),(13,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',13),(14,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',14),(15,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',15),(16,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',16),(17,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',17),(18,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',18),(19,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',19),(20,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',20),(21,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',21),(22,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',22),(23,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',23),(24,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',24),(25,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',25),(26,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',26),(27,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',27),(28,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',28),(29,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',29),(30,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',30),(31,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',31),(32,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',32),(33,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',33),(34,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',34),(35,'Lima',NULL,NULL,'Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',35),(36,'Lima',NULL,NULL,'Victoria Noain','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',36);
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shopping_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `grand_total` decimal(19,2) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK254qp5akhuaaj9n5co4jww3fk` (`user_id`),
  CONSTRAINT `FK254qp5akhuaaj9n5co4jww3fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES (1,0.00,25),(2,NULL,26),(3,40.00,27),(4,8.71,28);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (25,'dominicsc2hs@gmail.com','','pablo','Adams','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OxhTa14h0zjv4cFjV1WywgqTylvfGB/2',NULL,'usuario1'),(26,'Admin@gmail.com','','wilberto','Admin','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OnpJ1FB7girEHgGVhynqGSFVKGazltGO',NULL,'admin'),(27,'angelochek9019@gmail.com','','Angel','Perez','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OxhTa14h0zjv4cFjV1WywgqTylvfGB/2',NULL,'Enjeol'),(28,'victorianoain27@gmail.com','','Victoria','Noain','$2a$12$LtbYtEzOBdnsiD/E9Wtj2OKKbdYAPpaWik2NN/ookz1M0WHN0lC1y',NULL,'Victoria');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_billing`
--

DROP TABLE IF EXISTS `user_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_billing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_billing_city` varchar(255) DEFAULT NULL,
  `user_billing_country` varchar(255) DEFAULT NULL,
  `user_billing_name` varchar(255) DEFAULT NULL,
  `user_billing_state` varchar(255) DEFAULT NULL,
  `user_billing_street1` varchar(255) DEFAULT NULL,
  `user_billing_street2` varchar(255) DEFAULT NULL,
  `user_billing_zipcode` varchar(255) DEFAULT NULL,
  `user_payment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3v6hd7snyc3g9s72u41k1fydu` (`user_payment_id`),
  CONSTRAINT `FK3v6hd7snyc3g9s72u41k1fydu` FOREIGN KEY (`user_payment_id`) REFERENCES `user_payment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_billing`
--

LOCK TABLES `user_billing` WRITE;
/*!40000 ALTER TABLE `user_billing` DISABLE KEYS */;
INSERT INTO `user_billing` VALUES (2,'Boston',NULL,'Diego','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','1231',2),(3,'Lima',NULL,'Diego','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',3),(4,'Lima',NULL,'Victoria Noain','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Lima4',4);
/*!40000 ALTER TABLE `user_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_order`
--

DROP TABLE IF EXISTS `user_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  `order_total` decimal(19,2) DEFAULT NULL,
  `shipping_date` datetime DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `billing_address_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `shipping_address_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbaytj4l2p74kc5dp2dcrhucjo` (`billing_address_id`),
  KEY `FKqjg5jrh5qwnhl2f9lk7n77454` (`payment_id`),
  KEY `FKo2lj94xaujs1se8whlhc37nj7` (`shipping_address_id`),
  KEY `FKj86u1x7csa8yd68ql2y1ibrou` (`user_id`),
  CONSTRAINT `FKbaytj4l2p74kc5dp2dcrhucjo` FOREIGN KEY (`billing_address_id`) REFERENCES `billing_address` (`id`),
  CONSTRAINT `FKj86u1x7csa8yd68ql2y1ibrou` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKo2lj94xaujs1se8whlhc37nj7` FOREIGN KEY (`shipping_address_id`) REFERENCES `shipping_address` (`id`),
  CONSTRAINT `FKqjg5jrh5qwnhl2f9lk7n77454` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_order`
--

LOCK TABLES `user_order` WRITE;
/*!40000 ALTER TABLE `user_order` DISABLE KEYS */;
INSERT INTO `user_order` VALUES (1,'2018-07-22 12:23:23','created',273.13,NULL,'groundShipping',1,1,1,25),(2,'2018-07-22 12:23:32','created',0.00,NULL,'groundShipping',2,2,2,25),(3,'2018-07-22 12:28:18','created',0.00,NULL,'groundShipping',3,3,3,25),(4,'2018-07-22 12:39:04','created',17.51,NULL,'groundShipping',4,4,4,25),(5,'2018-07-22 12:39:37','created',17.51,NULL,'groundShipping',5,5,5,25),(6,'2018-07-22 12:44:36','created',17.06,NULL,'groundShipping',6,6,6,25),(7,'2018-07-22 12:46:12','created',0.00,NULL,'groundShipping',7,7,7,25),(8,'2018-07-22 12:50:55','created',8.71,NULL,'groundShipping',8,8,8,25),(9,'2018-07-22 12:55:23','created',12.55,NULL,'groundShipping',9,9,9,25),(10,'2018-07-22 12:59:34','created',10.00,NULL,'groundShipping',10,10,10,25),(11,'2018-07-22 13:09:28','created',8.71,NULL,'groundShipping',11,11,11,25),(12,'2018-07-22 13:11:25','created',8.71,NULL,'groundShipping',12,12,12,25),(13,'2018-07-22 13:12:03','created',8.71,NULL,'groundShipping',13,13,13,25),(14,'2018-07-22 13:16:10','created',17.06,NULL,'groundShipping',14,14,14,25),(15,'2018-07-22 13:18:36','created',17.06,NULL,'groundShipping',15,15,15,25),(16,'2018-07-22 13:20:20','created',17.06,NULL,'groundShipping',16,16,16,25),(17,'2018-07-22 13:21:24','created',17.06,NULL,'groundShipping',17,17,17,25),(18,'2018-07-22 13:22:19','created',17.06,NULL,'groundShipping',18,18,18,25),(19,'2018-07-22 13:26:22','created',17.06,NULL,'groundShipping',19,19,19,25),(20,'2018-07-22 13:26:41','created',0.00,NULL,'premiumShipping',20,20,20,25),(21,'2018-07-22 13:43:32','created',17.06,NULL,'groundShipping',21,21,21,25),(22,'2018-07-22 13:44:41','created',0.00,NULL,'groundShipping',22,22,22,25),(23,'2018-07-22 13:47:31','created',17.06,NULL,'groundShipping',23,23,23,25),(24,'2018-07-22 13:48:04','created',0.00,NULL,'groundShipping',24,24,24,25),(25,'2018-07-22 13:51:12','created',17.06,NULL,'groundShipping',25,25,25,25),(26,'2018-07-22 13:54:29','created',17.06,NULL,'groundShipping',26,26,26,25),(27,'2018-07-22 13:56:49','created',17.06,NULL,'groundShipping',27,27,27,25),(28,'2018-07-22 13:58:16','created',17.06,NULL,'groundShipping',28,28,28,25),(29,'2018-07-22 14:00:42','created',17.06,NULL,'groundShipping',29,29,29,25),(30,'2018-07-22 14:02:14','created',17.06,NULL,'groundShipping',30,30,30,25),(31,'2018-07-22 14:10:13','created',21.26,NULL,'groundShipping',31,31,31,25),(32,'2018-07-22 14:14:41','created',21.26,NULL,'groundShipping',32,32,32,25),(33,'2018-07-22 14:17:09','created',8.71,NULL,'groundShipping',33,33,33,25),(34,'2018-07-22 14:17:29','created',21.26,NULL,'groundShipping',34,34,34,25),(35,'2018-07-22 16:21:27','created',8.71,NULL,'groundShipping',35,35,35,25),(36,'2018-07-22 16:58:25','created',63.73,NULL,'premiumShipping',36,36,36,28);
/*!40000 ALTER TABLE `user_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_payment`
--

DROP TABLE IF EXISTS `user_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_name` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `cvc` int(11) NOT NULL,
  `default_payment` bit(1) NOT NULL,
  `expiry_month` int(11) NOT NULL,
  `expiry_year` int(11) NOT NULL,
  `holder_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8fb9fr82lb1qk2cw55ito9rk6` (`user_id`),
  CONSTRAINT `FK8fb9fr82lb1qk2cw55ito9rk6` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_payment`
--

LOCK TABLES `user_payment` WRITE;
/*!40000 ALTER TABLE `user_payment` DISABLE KEYS */;
INSERT INTO `user_payment` VALUES (1,'debito con chip','1234 1234 2342',123,'',11,17,'Angel perez','visa',27),(2,'debito con chip','1321231231',123,'',3,18,'Diego','visa',25),(3,'Test1','23423424',123,'',1,17,'Diego','mastercard',25),(4,'debito con chip','4557880957854346',402,'',11,21,'Victoria','visa',28);
/*!40000 ALTER TABLE `user_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_role_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKotxvofgf4qtsunbe0i3vhady6` (`role_role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKotxvofgf4qtsunbe0i3vhady6` FOREIGN KEY (`role_role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (24,1,25),(25,0,26),(26,1,27),(27,1,28);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_shipping`
--

DROP TABLE IF EXISTS `user_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_shipping` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_shipping_city` varchar(255) DEFAULT NULL,
  `user_shipping_country` varchar(255) DEFAULT NULL,
  `user_shipping_default` bit(1) NOT NULL,
  `user_shipping_name` varchar(255) DEFAULT NULL,
  `user_shipping_state` varchar(255) DEFAULT NULL,
  `user_shipping_street1` varchar(255) DEFAULT NULL,
  `user_shipping_street2` varchar(255) DEFAULT NULL,
  `user_shipping_zip_code` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `user_shipping_zipcode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9hidca5hndj9y0b5jb0xtpn9u` (`user_id`),
  CONSTRAINT `FK9hidca5hndj9y0b5jb0xtpn9u` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_shipping`
--

LOCK TABLES `user_shipping` WRITE;
/*!40000 ALTER TABLE `user_shipping` DISABLE KEYS */;
INSERT INTO `user_shipping` VALUES (1,'Boston',NULL,'','Angel Perez','FL','av. rainbow road','fuck you st',NULL,27,'123'),(2,'Lima',NULL,'','Diego Salas','AK','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso',NULL,25,'Lima4'),(3,'Lima',NULL,'','Diego Salas','AL','Av nicolas de pierola','dfsdfsfdsdfsdf',NULL,25,'Lima4'),(4,'Lima',NULL,'','Victoria Noain','AL','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso','Av. Maximiliano Velarde, psj 2, mz B lot3 Tercer piso',NULL,28,'Lima4');
/*!40000 ALTER TABLE `user_shipping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-23 14:55:19
