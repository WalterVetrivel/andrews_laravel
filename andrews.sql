-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2018 at 12:35 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `andrews`
--

-- --------------------------------------------------------

--
-- Table structure for table `affiliations`
--

DROP TABLE IF EXISTS `affiliations`;
CREATE TABLE IF NOT EXISTS `affiliations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `affiliation` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `affiliations`
--

INSERT INTO `affiliations` (`id`, `affiliation`, `created_at`, `updated_at`) VALUES
(1, 'Member of IEEE (90892272). ', NULL, NULL),
(2, 'Member IEEE Biometrics Council', NULL, NULL),
(3, 'Member IEEE Sensors Council', NULL, NULL),
(4, 'Member IEEE Brain Technical Community', NULL, NULL),
(5, 'Member of Bio Medical Engineering Society', NULL, NULL),
(6, 'Life Member of Computer Society of India (00173141)', NULL, NULL),
(7, 'Member of Indian Science Congress (LM31018)', NULL, NULL),
(8, 'Member of Malaysian Scientific Association (334108)', NULL, NULL),
(9, 'Senior Member of International Association of Computer Science & Information Technology, (80332001)', NULL, NULL),
(10, 'Life Member of Indian Society of Technical Education.(LM 91451)', NULL, NULL),
(11, 'Member Intel multicore curriculum', NULL, NULL),
(12, 'Member of CMSSP (http://foe.mmu.edu.my/v2/main/research/cmssp/home/memberlist.asp)', NULL, NULL),
(13, 'Member Machine Intelligence Research (MIR Labs) (http://www.mirlabs.net/global/index.php?c=main&a=person&id=808)', NULL, NULL),
(14, 'Senior member International Engineering and Technology Institute (2015072626) www.ieti.net', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `award_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` smallint(6) DEFAULT NULL,
  `awarding_organization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `award_name`, `year`, `awarding_organization`, `description`, `created_at`, `updated_at`) VALUES
(1, 'NASSCOM Social Innovation Forum Award', 2017, 'NASSCOM Foundation', 'Best ICT led social innovation', NULL, NULL),
(2, 'ISTE Periyar Award', 2017, 'Indian Society for Technical Education', 'Best Engineering Teacher', NULL, NULL),
(3, 'Distinguished Professor Award', 2017, 'Arunai International Research Foundation', NULL, NULL, NULL),
(4, 'Microsoft Imagine Cup Finalist', 2006, 'Microsoft Malaysia', 'National Level Finalist', NULL, NULL),
(5, 'IBM Award', 2006, 'IBM Malaysia', 'Best final year project in Multimedia University', NULL, NULL),
(6, 'IBM Award', 2005, 'IBM Malaysia', 'Best final year project in Multimedia University', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bios`
--

DROP TABLE IF EXISTS `bios`;
CREATE TABLE IF NOT EXISTS `bios` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bios`
--

INSERT INTO `bios` (`id`, `name`, `intro`, `dob`, `nationality`, `current_position`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Dr. S. Andrews', 'I\'m a professor & the dean of the department of CSE at Mahendra Engineering College', '1971-06-24', 'Indian', 'Professor in Department of Computer Science and Engineering and Dean Academic, Mahendra Engineering College', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `collaborations`
--

DROP TABLE IF EXISTS `collaborations`;
CREATE TABLE IF NOT EXISTS `collaborations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `collaboration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collaborations`
--

INSERT INTO `collaborations` (`id`, `collaboration`, `created_at`, `updated_at`) VALUES
(1, ' A Material Transfer Agreement has been signed by me with the New York State Department of Health’s Wadsworth Center, Albany, NY 12201-0509, United States of America for mutual sharing of research resources on: 26/June/2005. Ref: http://www.bciresearch.org/BCI2000/software_project.html ', NULL, NULL),
(2, ' Research Collaboration with MTA, ‘University Putra Malaysia’, Serdang, and Kula Lumpur, Malaysia for the Project “home management for the physically challenged people” commenced on 12/Oct/2005.', NULL, NULL),
(3, 'A MoU has been signed with CUCC of Multimedia University, Malaysia for Research and Development activities. Feb/2013. ', NULL, NULL),
(4, ' A Memorandum of Co-operation has been made by my proposal and initiatives between Multimedia University and Regional Institute, Abudhabi.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `home_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `phone`, `mobile`, `fax`, `email`, `work_address`, `home_address`, `created_at`, `updated_at`) VALUES
(1, '+91 4288 238777', '+91 89039 20542', '+91 4288 238888', 'andrewsmalacca@gmail.com', 'Dean & Professor (CSE), Mahendra Engineering College, Mallasamundram, Namakkal Tk, India.', 'No. 24A, Sannathi Street, Fort, Salem 636 001, Tamil Nadu, India.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `current_researches`
--

DROP TABLE IF EXISTS `current_researches`;
CREATE TABLE IF NOT EXISTS `current_researches` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `research_area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_researches`
--

INSERT INTO `current_researches` (`id`, `research_area`, `created_at`, `updated_at`) VALUES
(1, 'F - INSAS / Cyborg - IINS', NULL, NULL),
(2, 'Physiofast - Heal', NULL, NULL),
(3, 'Embedded wearables', NULL, NULL),
(4, 'Cybernetics', NULL, NULL),
(5, 'Multicore hybrid systems', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
CREATE TABLE IF NOT EXISTS `education` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` smallint(6) NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `degree`, `year`, `institution`, `created_at`, `updated_at`) VALUES
(1, 'Post Doctoral Fellowship Diploma', 2010, 'World Scientific and Engineering Academy & Society and Hellenic Naval Academy, Greece', NULL, NULL),
(2, 'Doctor of Philosophy in Information Technology', 2009, 'Multimedia University, Malaysia', NULL, NULL),
(3, 'Master of Philosophy in Computer Science with Commendation', 2003, 'Bharathiyar University, Coimbatore, India', NULL, NULL),
(4, 'Master of Engineering in Computer Science and Engineering with First Class', 2014, 'VMKV Engineering College', NULL, NULL),
(5, 'Master of Science in Computer Science with First Class', 1994, 'Bharathidasan University, Tiruchirappalli, India', NULL, NULL),
(6, 'Master of Computer Applications with First Class', 2010, 'Periyar University, Salem, India', NULL, NULL),
(7, 'Bachelor of Science in Computer Science with First Class', 1992, 'Bharathidasan University, Tiruchirappalli, India', NULL, NULL),
(8, 'Post Graduate Diploma in Personnel Management and Industrial Relations', 1996, 'Annamalai University, Chidambaram, India', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employments`
--

DROP TABLE IF EXISTS `employments`;
CREATE TABLE IF NOT EXISTS `employments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employments`
--

INSERT INTO `employments` (`id`, `job_title`, `from`, `to`, `department`, `employer`, `created_at`, `updated_at`) VALUES
(1, 'Professor', 'May 2012', 'Present', 'R & D and Department of CSE & Information Technology', 'Mahendra Engineering College', NULL, NULL),
(2, 'Professor', 'May 2011', 'May 2012', 'School of Computing Science & Engineering', 'VIT University', NULL, NULL),
(3, 'Professor', 'Feb 2011', 'May 2011', 'R & D and Department of CSE & Information Technology', 'Mahendra Engineering College', NULL, NULL),
(4, 'Senior Lecturer / Lecturer', '2003 ', '2011', 'Faculty of Information Science & Technology', 'Multimedia University', NULL, NULL),
(5, 'Lecturer', '2001 ', '2002', 'Information Technology', 'Asia Pacific Institute of Information Technology', NULL, NULL),
(6, 'Lecturer', '1997 ', '2001', 'Computer Science & Engineering', 'Kumaruguru College of Technology', NULL, NULL),
(7, 'System Analyst', '1994 ', '1997', 'EDP', 'Stanes Motors (South India) Limited', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `figures`
--

DROP TABLE IF EXISTS `figures`;
CREATE TABLE IF NOT EXISTS `figures` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `experience` int(11) NOT NULL,
  `degrees` int(11) NOT NULL,
  `professional_roles` int(11) NOT NULL,
  `publications` int(11) NOT NULL,
  `students_supervised` int(11) NOT NULL,
  `countries_visited` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `figures`
--

INSERT INTO `figures` (`id`, `experience`, `degrees`, `professional_roles`, `publications`, `students_supervised`, `countries_visited`, `created_at`, `updated_at`) VALUES
(1, 20, 8, 6, 60, 19, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_07_022129_create_awards_table', 1),
(4, '2018_07_07_022219_create_education_table', 1),
(5, '2018_07_07_022237_create_employments_table', 1),
(6, '2018_07_07_022259_create_projects_table', 1),
(7, '2018_07_07_022400_create_publications_table', 1),
(8, '2018_07_07_022417_create_references_table', 1),
(9, '2018_07_07_022440_create_research_funds_table', 1),
(10, '2018_07_07_022458_create_researches_table', 1),
(11, '2018_07_07_022520_create_supervisions_table', 1),
(12, '2018_07_07_064603_create_current_researches_table', 2),
(13, '2018_07_07_073710_create_bios_table', 3),
(14, '2018_07_07_073901_create_figures_table', 3),
(15, '2018_07_07_080624_create_present_involvements_table', 4),
(16, '2018_07_07_081855_create_subjects_table', 5),
(17, '2018_07_07_083754_create_contacts_table', 6),
(18, '2018_07_07_091844_create_skills_table', 7),
(19, '2018_07_18_020252_create_collaborations_table', 8),
(20, '2018_07_18_020307_create_affiliations_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `present_involvements`
--

DROP TABLE IF EXISTS `present_involvements`;
CREATE TABLE IF NOT EXISTS `present_involvements` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `present_involvements`
--

INSERT INTO `present_involvements` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Supervising research students on quality research projects. Managing funded projects.', NULL, NULL),
(2, 'Exercising expertise in formation and execution of Centre of Excellences and research groups, Organizing workshops co organizing conferences.', NULL, NULL),
(3, 'Product design and Managing collaborative research and funded research projects.', NULL, NULL),
(4, 'Organizing Technical Symposium, FDPs and career building activities and events.', NULL, NULL),
(5, 'Sharing accumulated proficiency by giving Seminars, Keynote, Workshops and conducting Research committee meetings.', NULL, NULL),
(6, 'Giving Training in preparation of Research Grant, creation of funding proposals.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `project_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_title`, `location`, `created_at`, `updated_at`) VALUES
(1, 'Hi tech Automation of Para military Infantry Battalion in training and Administration, 2 TN BN NCC', 'Trichirapalli, India', NULL, NULL),
(2, 'Ground water control through Drills Maintenance and Draw down Management in Neyveli Lignite Corporation – Mines I', 'Neyvelli, India', NULL, NULL),
(3, '\'Autogen\' An Integrated Logistics and financial system to control a multi dimensional Automobile Industry. Stanes Motors (S.I) Ltd.', 'Coimbatore, India', NULL, NULL),
(4, 'Artificial Neural Network approach of Hybrid Horizontal Barcode Recognition', 'Coimbatore, India', NULL, NULL),
(5, 'Electro ocular signal utilization for Authentication using eye blinks, FIST', 'Multimedia University, Malaysia', NULL, NULL),
(6, 'Metric Dentia – A biometric and forensic method of detecting people through dental impression', 'Multimedia University Malaysia', NULL, NULL),
(7, 'Two-dimensional Hybrid Barcode design and implementation for Information Hiding', 'Multimedia University Malaysia', NULL, NULL),
(8, 'Online signature verification using data glove signals', 'Multimedia University, Malaysia', NULL, NULL),
(9, 'Reinforcing online signature signals with Photometric signals', 'Multimedia University, Malaysia', NULL, NULL),
(10, 'Communication of deaf and dumb people by sign language interpretation through data glove signals', NULL, NULL, NULL),
(11, 'Physio-FastHeal –Project for enhanced physiotherapy using Wearable gadget', NULL, NULL, NULL),
(12, 'Directed and edited a documentary video film for \'Kumaraguru College of Technology\', India viewed by more than 200000 people in INTEC exhibition', 'Kumaraguru College of Technology', NULL, NULL),
(13, 'Directed and edited a corporate video documentary film', 'High court complex (Makkamah Melaka) of Malacca state, Malaysia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `publications`
--

DROP TABLE IF EXISTS `publications`;
CREATE TABLE IF NOT EXISTS `publications` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publications`
--

INSERT INTO `publications` (`id`, `title`, `authors`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Single Trial Source\r\nSeparation of VEP Signals Using Selective Principal Components', 'S.Andrews, Ramaswamy Palaniappan and Vijanth S.Asirvadam', 'international', 'Proc. IEE\r\nMEDSIP2004, International Conference on Advances in Medical signal Processing,\r\nMalta G.C, EU, ISBN: 0-86431-439-7, pp. 51-57, 5-8 September 2004.', NULL, NULL),
(2, 'Extracting Single Trial Evoked Potential Signals Using\r\nSpectral Power Ratio Principal Components', 'S.Andrews, R.Palaniappan', 'international', 'Proc. Annual fall Meeting BMES 2004\r\n(Biomedical Engineering Society) Philadelphia, PA, USA.PP.790 on October 13-16,\r\n2004.', NULL, NULL),
(3, 'Overcoming Accuracy\r\nDeficiency of Filtrations in Source Separation of Visual Evoked Potentials by Adopting\r\nPrincipal Component Analysis', 'S.Andrews, Nidal Kamel, and Ramaswamy Palaniappan', 'international', 'Proc.of International Science Congress (ISC) 2005, pp\r\n344, August 2005, Kula Lumpur, Malaysia.', NULL, NULL),
(4, 'Single Trial VEP Source Separation by\r\nSelective Eigen Rate Principal Components', 'S.Andrews, R.Palaniappan,and N.Kamel', 'international', 'Proceedings of world academy of\r\nScience, Engineering and Technology Volume 7,August, 2005, ISSN 1307-6884.\r\nPrague, Czech Republic', NULL, NULL),
(5, 'Single Trial VEP Source\r\nSeparation Through Sandwich Spectral Power Ratio Method', 'S.Andrews, Ramaswamy Palaniappan and Nidal kamel', 'international', 'Proc.of IEEE International\r\nConference on Signal Processing, CCSP, Kula Lumpur, Malaysia pp. 1 – 4, Nov 2005', NULL, NULL),
(6, 'Criterion For Target Confirmation Of VEP\r\nIn Single Trial Through Channel Correlation Method', 'S.Andrews, Nidal Kamel, and David C.L Ngo', 'international', 'Proc. of The International Arab\r\nConference on Information Technology ACIT’2005 , Amman, Jordan pp 146-149, Dec\r\n2005', NULL, NULL),
(7, 'Combinational\r\nComponent Selection for Single Trial Analysis of Visual Evoked Potential Signals for\r\nBrain Computer Interface', 'S.Andrews, Andrew Teoh, Loo Chu Kiong and Ramasamy Palaniappan', 'international', 'Proc. Of The 3\r\nrd International Colloquium on Signal\r\nProcessing and its Applications (CSPA 07), Melaka, Malaysia, pp. 107-109, March,\r\n2007. ISBN: 978-983-42747-7-7', NULL, NULL),
(8, 'Precise Fingerprint\r\nEnrolment through Projection Incorporated Subspace Based on Principal Component\r\nAnalysis (PCA)', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'international', 'Proc. 2\r\nnd International Conference on Informatics (Informatics 2007),\r\nKuala Lumpur, Malaysia, Nov. 27-28, 2007, pp. T1 (85-91).', NULL, NULL),
(9, 'Multimodality to improve\r\nSecurity and Privacy in Fingerprint Authentication System', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'international', 'Proc. International\r\nConference on Intelligent & Advanced Systems (ICIAS2007), KL Convention Centre,\r\nKuala Lumpur, Malaysia. 753-757, Nov. 2007, pp. 24-28', NULL, NULL),
(10, 'Fingerprint\r\nAuthentication System using a low-priced Webcam', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'international', 'Proc. International Conference\r\non Data Management (ICDM2008), IMT Ghaziabad, India. Feb. 25-26, 2008, pp. 689 –\r\n697', NULL, NULL),
(11, 'Fingerprint synthesis\r\ntoward construct enhanced Authentication System using low resolution Webcam', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'international', 'Proc. International Conference on Data Management (ICDM2008), IMT Ghaziabad, India.\r\nFeb. 25-26, 2008, pp. 679 – 688', NULL, NULL),
(12, 'Biometric Template\r\nProtection using watermarking with hidden password encryption', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'international', 'Proc. International\r\nSymposium on Information Technology 2008 (ITSIM’08), Co-sponsored by IEEE. KL,\r\nMalaysia. Aug. 26-29, 2008, vol. 1, pp. 296-303', NULL, NULL),
(13, 'Classification of motor\r\nimaginary tasks using adaptive recursive band pass filter', 'Vickneswaran Jayabalan, Andrews Samraj and Loo chu kiong', 'international', 'Proc of International\r\nConference on signal Processing and Multimedia Application,(SIGMAP 2008), pp113-118,\r\n26-29 July 2008. Porto, Portugal', NULL, NULL),
(14, 'FUZZY ARTMAP\r\nClassification for motor Imagery based Brain Computer Interface', 'Vickneswaran Jayabalan, Andrews Samraj and Loo chu kiong', 'international', 'Proc of Arab\r\nconference on Information Technology, (ACIT 2008), December 2008, Hammamet,\r\nTunisia', NULL, NULL),
(15, 'FUZZY ARTMAP based\r\nfeature Classification for single trial Brain Computer Interface design', 'Andrews Samraj, Loo chu kiong, and kannan Ramakrishnan', 'international', 'Proc of Arab\r\nconference on Information Technology, (ACIT 2008), December 2008, Hammamet,\r\nTunisia', NULL, NULL),
(16, 'Classification of Motor Imaginary Signals for Machine Communication', 'Vickneswaran Jeyabalan, Andrews Samraj and Loo Chu Kiong', 'international', 'Published in proc.of ICSAP 2009, PP: 34-38, Kula Lumpur, Malaysia', NULL, NULL),
(17, 'Singular Value Decomposition Based Feature Classification for Single Trial Brain- Computer Interface Design', 'S.Andrews, Ramaswamy Palaniappan, Loo chu Kiong, and Nikos E. Mastorakis', 'international', 'Published in proce. of 13th WSEAS Multi-conference on Greece', NULL, NULL),
(18, 'Appliance of Genetic Algorithm\r\nfor Empirical Diminution in Electrode numbers for VEP based Single Trial BCI', 'S.Andrews, Loo Chu Kiong, and Nikos E. Mastorakis', 'international', 'Published in Proceedings Of 9\r\nth WSEAS International conference for Signal, Speech\r\nand image processing in Budapest, Hungary,pp 24-29, sep, 2009.', NULL, NULL),
(19, '“Quantification of emotional features of Photoplethysomographic waveforms using box-counting method of fractal dimension', 'Andrews Samraj, Nasir G. Noma, Shohel sayeed, Nikos E. Mastorakis', 'international', 'The 8th WSEAS International Conference on\r\ncircuits,systems,electronics,control & signal Processing (CSECS\'09) at Puerto De La\r\nCruz, Canary Islands, Spain, pp.21-27, December 14-16, 2009', NULL, NULL),
(20, 'A Novel Approach to Improve the\r\nPerformance of the P300 Speller Paradigm', 'Umut Guclu, Yagmur Gucluturk, Andrews Samraj', 'international', 'Proc.of IEEE international conference on\r\nsystems, Man, and cybernetics at Istanbul, October 10 -13, 2010', NULL, NULL),
(21, 'Online Single Trial Analysis of the\r\nP300 Event Related Potentials for the Disabled', 'Umut Guclu, Yagmur Gucluturk, Andrews Samraj', 'international', 'Proc.of IEEE 26-th Convention of\r\nElectrical and Electronics Engineers (IEEEI 2010), in Israel, 17-20 November, 2010.\r\n[http://www.eng.tau.ac.il/~ieee/Convention/accepted.html]', NULL, NULL),
(22, 'Pin generation using Single channel EEG biometric', 'Ramaswamy Palaniappan, Jenish Gosalia, Kenneth revett, Andrews Samraj', 'international', 'Proc.of International conference on\r\nadvances in computing and communications ACC-2011 (Workshop on Applications of\r\nSignal Processing (I-WASP 2011)) ,Kochi, Kerala, India .July 22-24, 2011 ,pp378-385', NULL, NULL),
(23, 'Vehicle\r\nClassification Using SCG and LM algorithms with back-propagation Neural Networks', 'Tessy Mathew, K.Vijaya, Klayani desigan, L. Jeganathan, Andrews Samraj', 'international', 'Proc. Of International Conference on innovations in computers, Information and\r\ncommunications, Coimbatore, India ,6-7, January 2012', NULL, NULL),
(24, 'A Comparative Analysis of Conventional, Fuzzy\r\nand rough Swarm Intelligence Approaches for Clustering Gene Expression Data', 'P.K.Nizarbanu, H.Hannah, S.Andrews', 'international', 'Proc. Of International Conference on Computational Intelligence and its applications, March 1-3, 2012, India', NULL, NULL),
(25, 'Un supervised Hybrid PSOP – Quick Reduct\r\nApproach for Feature Reduction', 'P.K.NizarBanu, H.Hannah, S.Andrews', 'international', 'Proc.of the IEEE International Conference on Recent\r\nTrends in Information Technology, April 19 – 21, 2012, India', NULL, NULL),
(26, 'Classification of People\r\nusing Eye-Blink Based EOG Peak Analysis', 'Andrews Samraj, Thomas Abraham and Nikos Mastorakis', 'international', 'Proceedings of BEBI ‘12 , Istanbul, August\r\n21-23, 2012, Turkey. Added to (Advances in Applied Information Science, pg 36-41. ISBN: 978- 1-61804-113-5)', NULL, NULL),
(27, 'Potential Fishing Zone Estimation by Rough Cluster Predictions', 'Sharath Jagannathan, Andrews Samraj, Maheswari Rajavel', 'international', 'Proc.of the IEEE Fourth International\r\nConference on Computational Intelligence, Modeling and Simulation, 25 -27 Sep 2012,\r\nKuantan, Malaysia. pp 82-87', NULL, NULL),
(28, 'Suitability\r\nAnalysis of Gestures for Emergency Response Communication by Patients, Elderly and\r\nDisabled while using Data Gloves', 'Kalvina Reddy, Andrews Samraj, Maheswari Rajavel, Nikos Mastorakis', 'international', 'Proc.of the 1st WSEAS international conference on\r\nInformation Technology and Computer Networks ITCN’12 10-12, November, 2012.\r\nVienna, Austria. 69101-340. ISBN: 978-1-61804-136-4', NULL, NULL),
(29, 'Gesture and hand activity based\r\nemergency response communications by patients, elderly and disabled while using\r\ndata gloves', 'Kalvina Reddy, Andrews Samraj, Maheswari Rajavel', 'international', 'Proceedings of 4th International Conference on Intelligent Systems\r\nModelling & Simulation (ISMS), 2013 Bangkok, Thailand ISBN:978-0-7695-4963-7 ;\r\nISSN :2166-0662', NULL, NULL),
(30, 'Emergency\r\ncommunication interface design using wearable data gloves for weary patients', 'Kalvina Reddy, Andrews Samraj, Maheswari Rajavel, Shohel Sayeed', 'international', 'Proc.of\r\ninternational conference of High Performance and Green Computing, at Nagercoil, TN,\r\nIndia, March 14,15, 2013, ISBN: 978-1-4673-2593-6', NULL, NULL),
(31, 'Locking and Unlocking of\r\nTheft Vehicles Using CAN (Theft Control System)', 'Manjunath, Andrews Samraj, Sharmila, Maheswari Rajavel', 'international', 'Proc.of international conference of\r\nHigh Performance and Green Computing, at Nagercoil, TN, India, March 14,15, 2013,\r\nISBN: 978-1-4673-2593-6', NULL, NULL),
(32, 'Enhancement in the design\r\nof Biometric Identification System based on Photoplethysmography data', 'Girish rao Solanke, Andrews Samraj, Maheswari Rajavel', 'international', 'Proc.of international conference of High Performance and Green Computing, at Nagercoil, TN, India, March 14,15, 2013, ISBN: 978-1-4673-2593-6', NULL, NULL),
(33, 'Impact on Fishing Patterns and Life Style\r\nChanges of Kanyakumari Fishermen Due to Fading Potential Fishing Zones', 'Ravindran, Andrews Samraj, C.Kavitha', 'international', 'Proc.of\r\ninternational conference of High Performance and Green Computing, at Nagercoil, TN,\r\nIndia, March 14,15, 2013, ISBN: 978-1-4673-2593-6. ', NULL, NULL),
(34, 'Fuzzy ARTMAP Based Feature\r\nClassification for Danger and Safety Zone Prediction For Toddlers using Wearable\r\nElectrodes', 'Sheryl Oliver.A, Andrews Samraj, Maheswari Rajavel', 'international', 'Proc.of international conference of High Performance and Green\r\nComputing, at Nagercoil, TN, India, March 14,15, 2013, ISBN: 978-1-4673-2593-6', NULL, NULL),
(35, 'Improving ECG biometric stability through\r\nbinaural brain entrainment', 'Ramaswamy Palaniappan, Andrews Samraj', 'international', 'Proc.of international conference Human Computer\r\nInteractions at Saveetha University, Chennai, India, 23-24, August 2013', NULL, NULL),
(36, 'Communication by Gestures in Personal\r\nEmergency Response System”', 'Andrews Samraj, Kalvina Rajendran', 'international', 'International Conference on Emerging Trends and\r\nApplications in Computer Science – 13,14 September,2013 Shillong, Meghalaya - 793001, India.', NULL, NULL),
(37, 'Simplified Online Signature Verification through\r\nUncompromised Electrode Reduction in Data Gloves', 'Andrews Samraj, Kalvina Rajendran', 'international', 'Proc. of The International\r\nArab Conference on Information Technology ACIT’2013, Khartoum, Sudan.\r\n[http://www.acit2k.org/ACIT/index.php?option=com_content&task=view&id=366&Itemid=571]', NULL, NULL),
(38, 'Leveraging Three Pillars of Academia\r\nThrough Blended Learning', 'Amala V. Rajan, Jim Otieno, Samraj Andrews', 'international', 'In the proceedings of International Conference on Current\r\nTrends in Information Technology, Dubai women’s college, Dubai, UAE, 11, December\r\n2013. ', NULL, NULL),
(39, 'Informative Gene Selection – an Evolutionary\r\nApproach', 'PK Nizar Banu, Andrews Samraj', 'international', 'In the proceedings of International Conference on Current Trends in\r\nInformation Technology, Dubai women’s college, Dubai, UAE, 11, December 2013.', NULL, NULL),
(40, 'Random Average Distribution Aided SVD Feature Selection and Interpretation for\r\nTouch Less Robotic Control By Furtive Gestures', 'Sadhasivam Subramanian, Zubeir Izarukku, Kalvina Rajendran', 'international', 'In the proceedings of International\r\nConference on Current Trends in Information Technology, Dubai women’s college,\r\nDubai, UAE, 11, December 2013.', NULL, NULL),
(41, 'Stable and Critical\r\nGesticulation Recognition in Children & Pregnant Women By Naïve Bayes\r\nClassification', 'N.Ravindran, Sheryl Oliver.A, Andrews Samraj, Maheswari N', 'international', 'In the proceedings of International Conference on Current Trends in\r\nInformation Technology, Dubai women’s college, Dubai, UAE, 11, December 2013', NULL, NULL),
(42, 'Achieving stability of ECG biometric\r\nfeatures through binaural brain entrainment', 'Ramaswamy Palanniappan, Andrews Samraj', 'international', 'Proceedings of International Conference\r\non Contemporary Computing and Informatics (IC3I) in SJCE, Mysore, India from 27 to\r\n29 November 2014. Pg,1208 – 1210 {BEST Paper Award http://ic3i.org/2015/}', NULL, NULL),
(43, 'Face Identification From Manipulated Images Using Enhanced SIFT And SURF', 'S. Jenifer and S. Andrews', 'international', ' In Proceeding of International Conference On Electronics,\r\nCommunication And Computational Engineering (ICECCE), Adhiyamaan College Of\r\nEngineering, Hosur, Nov 17 & 18, ISBN No: 978-1-4799-5748-4/14© 2014 IEEE,\r\nPg.No: 1201 – 1204', NULL, NULL),
(44, 'Face Recognition From Images Using Enhanced SIFT', 'T. Nalini and S. Andrews', 'international', 'In Proceeding of International Conference On Electronics, Communication And\r\nComputational Engineering (ICECCE), Adhiyamaan College Of Engineering, Hosur,\r\nNov 17 & 18, ISBN No: 978-1-4799-5748-4/14, 2014 IEEE, Pg.No: 1258 -1262.', NULL, NULL),
(45, 'A Privacy Preserving Mechanism For Protecting Data In Mobile Ad-Hoc For Mobile Applications', 'K. Banupriya and S. Andrews', 'international', 'In Proceeding of International Conference On\r\nCircuits, Control, Communication And Computing (I4C- 2014), M. S. Ramaiah Institute\r\nOf Technology, Bangalore, Nov 21st - 22nd , Pg.No: 359 – 363, IEEE 2014', NULL, NULL),
(46, 'Simplified and\r\nEfficient Classification of Implicit Communication using Data Gloves', 'Andrews Samraj, Kalvina Rajendran, Nikos Mastorakis, Shohel Sayeed', 'international', '14th International\r\nConference on Applied Computer and Applied Computational Science (ACACOS’15), WSEAS, Kuala Lumpur, Malaysia, April 23 – 25, 2015. ISSN: 1790-5109 ISBN: 978-1- 61804-297-2', NULL, NULL),
(47, 'Energy Efficiency Pricing Based Muti Resource\r\nAllocation In OFDMA Cognitive Radio Networks', 'A. Thenmozhi and S. Andrews', 'international', 'In Proceeding of 2015 International\r\nConference On Computer Communication And Informatics (ICCCI), Sri Shakthi Institute\r\nOf Engineering And Technology, Coimbatore, Jan 8 – 10, ISBN No: 978-1-4799-6805- 3/15© 2015 IEEE, Pg.No: 314 – 318', NULL, NULL),
(48, 'Improving the Feature Stability and Classification\r\nPerformance of Bimodal Brain and Heart Biometrics', 'Ramaswamy Palaniappan, Andrews Samraj, Ian P. W. Sillitoe , Tarsem Sihra , Raveendran Paramesran', 'international', '1570216710 SiRS 2015,\r\nTrivandrum, Kerala, India Dec 16-19, 2015', NULL, NULL),
(49, 'A segmented-Mean\r\nFeature Extraction method for Glove-based system to enhance physiotherapy for\r\nAccurate and speedy recuperation of limbs', 'Andrews Samraj, Kalvina Rajendran, Ramaswamy Palaniappan', 'international', '1570283920, ICACCI, Jaipur, Rajasthan,\r\nIndia Sep 21-24, 2016', NULL, NULL),
(50, 'Optimizing the sensor requirement for\r\ngesture recognizing systems by finding the most significant sensors using statistical\r\nmethods', 'Andrews Samraj, Prabakaran.N, Sathish.R', 'international', 'Proc., of 2\r\nnd International Conference on Cognitive Knowledge Engineering\r\n(ICKE-2016), Aurangabad, Maharastra, India, December 21-23, 2016 PID 155 pp:54', NULL, NULL),
(51, 'Fuel Efficient\r\nDriving behavior using expert systems: A review', 'Manjunath TK, N. Maheswari, Sharmila Chidaravalli, Andrews Samraj', 'international', 'Proc., of 2\r\nnd International\r\nConference on Cognitive Knowledge Engineering (ICKE-2016), Aurangabad,\r\nMaharastra, India December 21-23, 2016 PID 179, pp 70', NULL, NULL),
(52, 'A Multi-level touch/Press based\r\ntherapeutic exercise for students with special needs', 'Andrews Samraj, Prabhakaran. S, Kalvina Rajendran', 'international', 'Proc., of 2\r\nnd International\r\nConference on Cognitive Knowledge Engineering (ICKE-2016), Aurangabad,\r\nMaharastra, India December 21-23, 2016 PID 165,pp 55', NULL, NULL),
(53, 'Cognitive Task\r\nDifficulty Analysis Using EEG and Data Mining', 'Aruna Duraisingam, Palaniappan Ramaswamy, Andrews Samraj', 'international', 'Proc. Of International Conference on\r\nEmerging Devices and Smart Systems, IEEE Salem, India 3-4, March 2017,', NULL, NULL),
(54, 'Identification of Weed Growth and Intrusion in Plant beds by Modified Singular Value Decomposition of Ariel Sensory Images', 'Ramesh, Andrews Samraj', 'international', 'Proc. Of\r\nInternational Conference on Emerging Devices and Smart Systems, Page(s):26 - 31\r\nDoi:10.1109/ICEDSS.2017.8073654 IEEE Salem, India 3-4, March 2017', NULL, NULL),
(55, 'Tool Flank Wear Estimation by Simplified SVD on Emitted Sound Signals', 'Prakash, Andrews Samraj', 'international', 'Proc. Of International Conference on Emerging Devices and Smart\r\nSystems, Page(s):1 - 5 IEEE, Salem, India 3-4, March 2017', NULL, NULL),
(56, 'Weed growth, intrusion detection by multi angle\r\nimages of vegetable plants using modified SVD', 'Ramesh raja, Andrews Samraj', 'international', 'ID ICIT17645 Proc of The 8th\r\nInternationl Conference on Information Technology, Al-Zaytoonah University of\r\nJordan 17-18th, May 2017', NULL, NULL),
(57, 'Sign language communication and authentication\r\nusing sensor fusion of hand glove and photometric signals', 'Andrews Samraj, Nasser Mehrdel', 'international', 'ID ICIT17571 proce.of The\r\n8th Internationl Conference on Information Technology, Al-Zaytoonah University of\r\nJordan 17-18th , May 2017', NULL, NULL),
(58, 'Burst Detection in Gesture Recognization for\r\nEmergency Communication using Wearable Data Gloves.', 'Karthick selvaraj, Andrews Samraj', 'international', 'ITT 17’ , HCT-Al Ain Women’s campus, UAE.', NULL, NULL),
(59, 'Simplification\r\nof Gesture Modeling by Boundary Analysis in Active Signals from Wearable Data Glove', 'Andrews Samraj, Ramesh kumarasamy, kalvina rajendran, Karthick selvaraj', 'international', 'ITT 17’ , HCT-Al Ain Women’s campus, UAE', NULL, NULL),
(60, 'Tool Wear Condition Monitoring using Acoustic\r\nAnalysis of Emitted Sound Signals by Peak to Peak Analysis', 'Prakash Krishnan, Andrews Samraj', 'international', 'Proc.of International\r\nSociety for Engineering Research and Development (ISERD), 93rd International\r\nConference, Hanoi, Vietnam, Pages, 8-13, 24-25th November , 2017', NULL, NULL),
(61, 'The Importance of Multiethnic traditional cuisines in\r\nMalacca’s tourism promotion', 'Andrews Samraj, John bumani Raja', 'international', 'Published in the International Conference on Applied Business\r\nand Economics, Sohar, Sultanate of Oman, pp 319-325, March 2009.', NULL, NULL),
(62, 'Internet Banking: Opportunities and\r\nChallenges', 'John bumani Raja, Andrews Samraj, M.Kalyanasundaram', 'international', 'Published in the Journal Annamalai Business Review, Vol2. Issue2, Jan-June 2008,\r\nISSN-0974-1690, Dept.of Business Administration, Annamali University, India.', NULL, NULL),
(63, 'Parallel processing requirements in E-commerce', 'S.Andrews', 'national', 'Proc. of Enfobiz, 2000,\r\nat, Karunya Institute of Technology, 23-24, March, 2000.\r\n', NULL, NULL),
(64, 'Self structuring resource allocation\r\nfor library applications of cloud in library services', 'D.Joyson sounderajan, R.Senthil kumar, Andrews Samraj', 'national', 'Self structuring resource allocation\r\nfor library applications of cloud in library services', NULL, NULL),
(65, 'Problem Solving and Python Programming 2017', 'S.Andrews & M.Sivasnakari', 'book', 'Thakur Publications., ISBN: 978-93- 87093-22-5', NULL, NULL),
(66, 'Bio-Cyber Machine Gun (BCMG) – A new mode of authentication Access\r\nusing Visual Evoked Potentials', 'S.Andrews', 'book_chapter', 'The book Cyber warfare and cyber terrorism, Idea Group\r\nInc. chapter: 39, 338-344, 2007. ISBN 13: 9781591409922 ISBN 10: 1591409926', NULL, NULL),
(67, 'Communications in Computer and Information Science', 'S. Andrews', 'book_chapter', 'Volume 193, 2011, DOI:\r\n10.1007/978-3-642-22726-4, Advances in Computing and Communications\r\nFirst International Conference, ACC 2011, Kochi, India, July 22-24, 2011, Proceedings,\r\nPart IV', NULL, NULL),
(68, 'Bio-Inspired Computing for Information Retrieval Applications Chapter 5', 'S. Andrews', 'book_chapter', 'Chapter 5\r\nSwarm-Based Clustering for Gene Expression Data (pages 123-149) Release Date:\r\nFebruary, 2017|Copyright: © 2017 |Pages: 388, ISBN13: 9781522523758|ISBN10:\r\n1522523758|EISBN13: 9781522523765|DOI: 10.4018/978-1-5225-2375-8', NULL, NULL),
(69, 'Appropriate\r\nNormalisation For Selective Eigen Rate Method In Separating Principal Components of\r\nVEP and EEG In BCI', 'S.Andrews, Nidal Kamel, David C.L Ngo and Ramaswamy Palaniappan', 'journal', 'Multimedia Cyber Scape online International Journal, 1-6, Vol 3,\r\nNumber 4, 2005, ISSN No: 1675-9281, Multimedia University Pub', NULL, NULL),
(70, 'Single Trial VEP Source Separation by\r\nSelective Eigen Rate Principal Components', 'S.Andrews, R.Palaniappan, and N.Kamel', 'journal', 'Published in Enformatika Transactions on\r\nEngineering, Computing and Technology, pp.330-333, vol.7, August 2005', NULL, NULL),
(71, 'Whitening of Background Brain\r\nActivity via Parametric Modeling', 'Nidal Kamel, Andrew Samraj, and Arasah Mousavi', 'journal', 'Published in Discrete Dynamics in Nature and\r\nSociety, Volume 2007 (2007), ISSN: 1026-0226, Article ID 48720, Hindawi Publishing\r\nCorporation. .( Impact Factor is 1.577 according to 2009 Journal Citation Reports released by Thomson Reuters\r\n(ISI) in 2010.)', NULL, NULL),
(72, 'Forgery Detection in\r\nDynamic Signature Verification by Entailing Principal Component Analysis', 'Shohel Sayeed, S. Andrews, Rosli Besar and Loo Chu Kiong', 'journal', 'Discrete\r\nDynamics in Nature and Society, Volume 2007 (2007), ISSN: 1026-0226, Article ID\r\n70756, Hindawi Publishing Corporation.( Impact Factor is 1.577 according to 2009 Journal Citation\r\nReports released by Thomson Reuters (ISI) in 2010.)', NULL, NULL),
(73, 'Enhancing P300 Component by Spectral Power Ratio Principal Components for a Single Trial\r\nBrain-Computer Interface', 'S.Andrews, Ramaswamy Palaniappan, Andrew Teoh and Loo chu Kiong', 'journal', 'Published in American Journal of Applied Sciences 5(6):\r\n639 -644, 2008. ISSN (printed): 1546-9239. ISSN (electronic): 1554-3641.', NULL, NULL),
(74, 'Inquisitive Impact of different\r\nElectrode Configuration in Representing Single trial P300 Visual Event Related\r\nPotentials', 'S.Andrews, Andrew Teoh and Loo Chu Kiong', 'journal', 'Published in Journal of College Science in India.1-6, ISSN: 1939-2648,\r\nDec ,2007', NULL, NULL),
(75, 'A Secured Fingerprint\r\nAuthentication System', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'journal', 'Journal of Applied Sciences. Asian Network for Scientific\r\nInformation (ANSINET). Vol. 8(17), pp. 2939-2948, 2008. (ISSN: 1812-5654)', NULL, NULL),
(76, 'Webcam Based\r\nFingerprint Authentication for Personal Identification System', 'Md. Rajibul Islam, Md. Shohel Sayeed, and Andrews Samraj', 'journal', 'The International\r\nJournal of College Science in India, USA. Vol. 1, 3rd Dec 2007. (ISSN: 1939-2648)', NULL, NULL),
(77, 'Motor imaginary signal classification\r\nusing adaptive recursive bandpass filter and adaptive autoregressive models for brain\r\nmachine interface designs', 'Jeyabalan, V., Andrews, S. &Loo, C.K', 'journal', 'International Journal Biological and Life Sciences, 3(2),\r\n116–123. [Online]. Available: http://www.waset.org/journals/ijbls/v3.php, 2007', NULL, NULL),
(78, 'Motor Imaginary based Brain Machine Interface Design Using Programmable Logic\r\nControllers for the Disabled', 'Vickneswaran Jayabalan, Andrews Samraj and Loo chu kiong', 'journal', 'Computer Methods in Biomechanics and Biomedical\r\nEngineering, 1476-8259, Volume 13, Issue 5, PP 617 – 623, Taylor & Francis, March,2010. Print ISSN: 1025-5842 Online ISSN: 1476-8259 (impact factor: 1.850\r\n©2016Thomson Reuters, 2016 Journal Citation Reports®)', NULL, NULL),
(79, 'Technology Review:\r\nImage Enhancement, Feature Extraction and Template Protection of a Fingerprint\r\nAuthentication System', 'Md. Rajibul Islam, Md. Shohel Sayeed and Andrews Samraj', 'journal', 'Journal of Applied Sciences, Asian Network for Scientific\r\nInformation (ANSINET). Vol. 10 (14), pp. 1397-1404, 2010. (ISSN: 1812-5654).', NULL, NULL),
(80, 'Eliminating forgers based on Intra trial variability in online signature verification using\r\nHand glove and photometric signals', 'Andrews Samraj, Md. Shohel Sayeed, Loo Chu Kiong and Nikos E. Mastorakis', 'journal', 'Journal of Information security, Scientific\r\nPublications, ISSN Print: 2153-1234, ISSN Online: 2153-1242 PP.23-28, Vol.1\r\nNo.1, 2010. (impact factor: 1.454)', NULL, NULL),
(81, 'Online Hand Signature Verification: A\r\nReview', 'S. Sayeed, A. Samraj, R. Besar and J. Hossen', 'journal', 'Journal of Applied Sciences Vol 10 (15) pp.1632-1643, 2010.', NULL, NULL),
(82, 'Meditainment and Innotainment for improving Health\r\nand Intellect', 'Andrews Samraj, Loo Chu kiong', 'journal', 'ACM Journal of Computers in Entertainment Volume: 8 issue 4, Article\r\n24, pp 1-3, 2010. (impact factor: 0.78)', NULL, NULL),
(83, 'Tool Flank Wear Condition Monitoring during Turning Process by SVD Analysis on\r\nEmitted Sound Signal', 'Emerson Raja, Shohel Sayeed, Andrews Samraj, Loo Chu Kiong, Lim Way Soong', 'journal', 'European Journal of Scientific Research, ISSN 1450-216X\r\nVol.49 No.4 (February 2011), pp 503-509. (impact factor: 0.713)', NULL, NULL),
(84, 'Dynamic Clustering Estimation\r\nof tool flank wear in turning process using SVD models of the emitted sound Signals', 'A.Samraj, S.Sayeed, J.E.Raja, J.Hossen, A.Rahman', 'journal', 'World Academy of Science, Engineering and Technology, Issue 80 August 2011., pp\r\n1322 -1326', NULL, NULL),
(85, 'Evaluation of methods for\r\nestimating fractal dimension in motor imagery based brain computer interface', 'Chu Kiong Loo, Andrews Samraj and Gin Chong Lee', 'journal', 'Discrete Dynamoics in Nature and Society, Hindawi Publications. Volume 2011\r\n(2011), Article ID 724697, 8 pages.( Impact Factor is 0.967 according to 2009 Journal Citation Reports\r\nreleased by Thomson Reuters (ISI) in 2010.)', NULL, NULL),
(86, 'Emergency Gesture Communication by\r\nPatients, Elderly and Differently Able with Care Takers Using Wearable Data Gloves', 'K. Rajendran, A. Samraj and M. Rajavel', 'journal', 'Journal of Signal and Information Processing, Vol. 4 No. 1, 2013, pp. 1-9. doi:\r\n10.4236/jsip.2013.41001', NULL, NULL),
(87, 'Intact Analysis of Intra Trials\r\nOn Assorted Paradigms Of Gesture Based Communication System', 'Kalvina Rajendran, Maheswari Rajavel, Andrews Samraj', 'journal', 'International\r\nJournal of Engineering and Technology (IJET), ISSN : 0975-4024 Vol 5 No 4 Aug-Sep\r\n2013 pp 3617- 3624', NULL, NULL),
(88, 'Stable and critical gesticulation\r\nrecognition in children and pregnant women by weighted naïve bayes classification', 'N.Ravindran, Andrews Samraj, Sheryl Oliver.A', 'journal', 'In ICTACT Journal on Communication Technology, ISSN Number (Print) 0976-0091\r\nISSN Number (Online)2229-6948 Volume 5, Issue 4 Articles, pp 1025-1029. 2014', NULL, NULL),
(89, 'Classification Performance of New Fusion Features\r\nof P300 in Visual Evoked Potentials from EEG to Distinguish Alcoholics and Controls', 'N.Ravindran, AndrewsSamraj', 'journal', 'Australian Journal of Basic and Applied Sciences 8(9) June 2014, Pages: 52-63', NULL, NULL),
(90, 'Performance Analysis of Hard and Soft Clustering\r\nApproaches for Gene Expression Data', 'P.K. Nizar Banu, S. Andrews', 'journal', 'International Journal of Rough Sets and\r\nData Analysis, Vol. 2(1), pp. 58-70, January-March 2015. (Indexed in DBLP, Google\r\nScholar, INSPEC)', NULL, NULL),
(91, 'Evaluation of Fitness Functions for Swarm Clustering\r\nApplied to Gene Expression Data', 'P. K. Nizar Banu, S. Andrews', 'journal', 'Smart, Innovation Systems and\r\nTechnologies, Vol. 33, pp. 571-581, 2015. Springer Publications. (Indexed in Scopus,\r\nSpringer Link).\r\n', NULL, NULL),
(92, 'Harmony Search PSO Clustering for Tumor and\r\nCancer Gene Expression Dataset', 'P.K. Nizar Banu, S. Andrews', 'journal', 'International Journal of Swarm Intelligence\r\nResearch, Vol. 5(3), pp. 1-22, July-September 2014. (Indexed in ACM Digital Library,\r\nBacon’s Media Directory, DBLP, Google Scholar, INSPEC, JournalTocs, Media\r\nFinder, The Standard Periodical Directory, Ulrich’s Periodicals Directory)', NULL, NULL),
(93, 'Gene Clustering using Meta heuristic Optimization\r\nAlgorithms', 'P.K. Nizar Banu, S. Andrews', 'journal', 'International Journal of Applied Meta heuristic Computing. In Press', NULL, NULL),
(94, 'Finding\r\nthe high probabilistic potential fishing zone by accelerated SVM classification', 'S. Andrews, B.S. Varun babu, P. Subash, M.R. Swaminathan', 'journal', 'Accepted in International journal of information and Communication Technology,\r\nInderscience Publishers. Vol 11, No 4, 2017, pp 576 - 585.\r\n[http://www.inderscience.com/info/ingeneral/forthcoming.php?jcode=ijict]', NULL, NULL),
(95, 'Addiction remedy for Gaming Euphoria that causes Sudden death\r\nin Children – A Buster to Sweet Poison', 'Andrews Samraj', 'journal', 'International Journal of Advance Science and\r\nEngineering, Volume – 2, No.1, Issue - 5 , pp 1- 4, August 2015 ISSN: 2349-5359, Mahendra Publications.', NULL, NULL),
(96, 'Electrode reduction for biometric\r\nglove based communication using simplified SVD: A Pilot Study', 'Andrews Samraj, Kalvina Rajendran, Z.I.Daffala', 'journal', 'Accepted in Int. J.\r\nCognitive Biometrics, Vol. X, No. Y4, pp.000–000.Inderscience Enterprises.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
CREATE TABLE IF NOT EXISTS `references` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `name`, `position`, `organization`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Ramaswamy Palaniappan', 'Reader', 'Dept. of Computer Science, University of Kent, UK', '+441206872773', 'R.Palani@kent.ac.uk', NULL, NULL),
(2, 'Mr. T. Pradeep', 'Chief Operating Officer', 'Aerostrovilos Energy Pvt. Ltd., IIT Research Park Chennai, Tamilnadu, India', '+91 97509 59770', 'pradeep@aerostrovilos.com', NULL, NULL),
(3, 'Dr. Salina', 'Professor, SCSE', 'VIT University, Chennai Campus Vandallur-Kelambakkam Road', '+91 98406 95935', 'salina@vit.ac.in', NULL, NULL),
(4, 'Prof. Dr. Anantharaman', 'Professor', 'Faculty of Business & Law, Multimedia University, Malaysia', '+6062523877 / +60166081654', 'r.n.anantharaman@mmu.edu.my', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `researches`
--

DROP TABLE IF EXISTS `researches`;
CREATE TABLE IF NOT EXISTS `researches` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `research_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `research_subtext` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `researches`
--

INSERT INTO `researches` (`id`, `research_title`, `research_subtext`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Emotional quantification', 'Post Doctoral diploma', '\'Emotional quantification\' for affective computing elements with the objectives of self adopting robotic assistance and ambient environment done in WSEAS', NULL, NULL),
(3, 'A new mode of Communication through Visual Evoked Potential signals', 'PhD Thesis', 'Research in area of bio signal processing for Doctor of Philosophy in Information Technology from Multimedia University', NULL, NULL),
(4, 'Artificial Neural Network approach of Hybrid Horizontal Barcode Recognition', 'M. Phil. Thesis', 'Gained commendation form Bharathiyar University', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `research_funds`
--

DROP TABLE IF EXISTS `research_funds`;
CREATE TABLE IF NOT EXISTS `research_funds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `granting_agency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `research_funds`
--

INSERT INTO `research_funds` (`id`, `amount`, `granting_agency`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Rs 300000', 'UGC', 'UGC minor funding received as PI for Assistive Technology Project in 2016', NULL, NULL),
(2, 'Rs 1700000', 'UGC', 'UGC fund received with another member from Periyar University, for e-Learning smart environment', NULL, NULL),
(3, 'GBP 310000', 'Mahendra Engineering College , Bennett University and Royal Academy of UK', 'Lead contact and project incharge for trilateral project', NULL, NULL),
(4, 'RM 180000', 'TM Match Fund', 'Fund allocated for the Niche project of Wellness and emotional monitoring in workplace and applications in 2010 for my group', NULL, NULL),
(5, 'RM 8208', 'Multimedia University', 'Travel grant for attending IEEE Conference on Systems, Man and Cybernetics, October 2010 in Istanbul', NULL, NULL),
(6, 'RM 281491', 'Ministry of Science, Malaysia', 'E-science fund for the project Design & Development of Human identification system using biomedical Signals', NULL, NULL),
(7, 'RM 7000', 'Multimedia University', 'Research design & development & innovation grant', NULL, NULL),
(8, 'RM 8200', 'Multimedia University', 'Internal research grant in 2004', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
CREATE TABLE IF NOT EXISTS `skills` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill`, `category`, `created_at`, `updated_at`) VALUES
(1, 'IBM DB2', 'database', NULL, NULL),
(2, 'DB2/400', 'database', NULL, NULL),
(3, 'MySQL', 'database', NULL, NULL),
(4, 'Oracle 8i', 'database', NULL, NULL),
(5, 'Database Languages', 'database', NULL, NULL),
(6, 'MS Office', 'database', NULL, NULL),
(7, 'Open Office', 'database', NULL, NULL),
(8, 'Matlab', 'tools', NULL, NULL),
(9, 'Signal Processing Toolbox', 'tools', NULL, NULL),
(10, 'FontPage', 'multimedia', NULL, NULL),
(11, 'Flash', 'multimedia', NULL, NULL),
(12, 'Director', 'multimedia', NULL, NULL),
(13, 'Video Editing Software', 'multimedia', NULL, NULL),
(14, 'C', 'hll', NULL, NULL),
(15, 'C++', 'hll', NULL, NULL),
(16, 'JavaScript', 'hll', NULL, NULL),
(17, 'Python', 'hll', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_name`, `created_at`, `updated_at`) VALUES
(1, 'Computer Systems Architecture', NULL, NULL),
(2, 'Digital Logic Systems', NULL, NULL),
(3, 'Cybernetics', NULL, NULL),
(4, 'Algorithm & Programming Languages', NULL, NULL),
(5, 'Internet & World Wide Web Programming', NULL, NULL),
(6, 'Biometrics', NULL, NULL),
(7, 'Ubiquitous Systems & Ambient Intelligence', NULL, NULL),
(8, 'C Programming', NULL, NULL),
(9, 'Bio Signals, Biomedical Systems', NULL, NULL),
(10, 'Network Systems for Multimedia', NULL, NULL),
(11, 'Operating Systems & Real-time Operating Systems', NULL, NULL),
(12, 'Parallel Processing & Multicore Architecture', NULL, NULL),
(13, 'Technology Transfer', NULL, NULL),
(14, 'Advanced Database Systems', NULL, NULL),
(15, 'Cryptography', NULL, NULL),
(16, 'Decision Support Systems', NULL, NULL),
(17, 'Entrepreneurship / Cyberpreneurship', NULL, NULL),
(18, 'Ethics & Professional Conduct', NULL, NULL),
(19, 'Information Systems Planning', NULL, NULL),
(20, 'Advanced Microprocessors', NULL, NULL),
(21, 'Artificial Neural Networks', NULL, NULL),
(22, 'Core Computing & Parallel Computing', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supervisions`
--

DROP TABLE IF EXISTS `supervisions`;
CREATE TABLE IF NOT EXISTS `supervisions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_completed` tinyint(1) NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supervisions`
--

INSERT INTO `supervisions` (`id`, `student_name`, `degree`, `is_completed`, `institution`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Mr.Vickneswaran', 'M.Engg by research', 1, 'MMU', 'In the area of μ-Rhythm EEG Signal Processing', NULL, NULL),
(2, 'Mr.Rajibul Islam ', 'M.I.T by research', 1, 'MMU', 'In the area of cost effective fingerprint biometrics', NULL, NULL),
(3, ' Mr.Mohd-Tarmizie bin Mohd-Shahidan', 'M.Sc by research', 1, 'UTEM', 'In the area of biometric security system based on the teeth structure', NULL, NULL),
(4, 'Mr.Nasir G.Noma', 'M.IT ', 1, 'MMU', 'In the area of Photoplythesomography signal based health monitoring system ', NULL, NULL),
(5, ' Mr.Nasser Mahdrel', 'M.I.T', 1, 'MMU', 'In the area of Sign language and Photoplythesomography fused signal based security system', NULL, NULL),
(6, 'Mr. Manjunath ', ' Ph.D', 0, 'VITU', 'In the area of Intelligent vehicle control using embedded system', NULL, NULL),
(7, 'Mr. Girish Rao ', 'Ph.D', 0, 'VITU', 'In the area of Multimodal Biometrics using biosignals and sensors', NULL, NULL),
(8, ' Mr.Sathya Rajasekar', 'Ph. D', 0, 'VITU', 'In the area of Multicore Biometrics using signal and Image fusion systems ', NULL, NULL),
(9, 'Mrs.Vergin Gnana Sarobin', 'Ph. D', 1, 'VITU', 'In the area of MANET ', NULL, NULL),
(10, 'Mrs. Rukumani', 'Ph. D', 0, 'VITU', 'In the area of quality of service in Mobile sensor networks', NULL, NULL),
(11, 'Ms.Kalvina R', 'MS by Research', 1, 'VITU', 'In affective robotic control', NULL, NULL),
(12, 'Mr.Thomas Abraham ', 'Ph. D', 0, 'VITU', 'Oculogram based Machine Interfaces ', NULL, NULL),
(13, 'Mr. Sathya Raja Sekaran ', 'Ph. D', 0, 'VITU', 'Multicore performance analysis on online bio signal analysis', NULL, NULL),
(14, 'Ms.Nizar Banu', 'Ph. D', 1, 'BU', 'Advanced Clustering techniques on bioinformatics data', NULL, NULL),
(15, ' Mr. Ravindran ', 'Ph. D', 1, 'BU', 'Dynamic Fuzzy clustering using Priori algorithms ', NULL, NULL),
(16, 'Mrs Jennifer', 'M. Phil', 1, 'BU', 'Face Identification From Manipulated Images', NULL, NULL),
(17, 'Mr. Ramesh ', 'Ph. D', 0, 'BU', 'Precision agriculture support through heterogeneous sensor based plant monitoring', NULL, NULL),
(18, 'Mr. Prakash ', 'Ph. D', 0, 'BU', 'Tool wear monitoring through emitted sound signals processing', NULL, NULL),
(19, 'Mr. S. Karthik Selvaraj ', 'Ph. D', 0, 'AU', 'Assistive Technology via Soft cyborg technologies', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
