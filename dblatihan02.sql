-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: dblatihan02
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `absensi_diklat`
--

DROP TABLE IF EXISTS `absensi_diklat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `absensi_diklat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pegawai_nik` varchar(20) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `sesi_1` int(11) DEFAULT NULL,
  `sesi_2` int(11) DEFAULT NULL,
  `peldiklat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_absensi_diklat_pegawai1_idx` (`pegawai_nik`),
  KEY `fk_absensi_diklat_diklat1_idx` (`peldiklat_id`),
  CONSTRAINT `fk_absensi_diklat_diklat1` FOREIGN KEY (`peldiklat_id`) REFERENCES `pelaksanaan_diklat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_absensi_diklat_pegawai1` FOREIGN KEY (`pegawai_nik`) REFERENCES `pegawai` (`nik`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `absensi_diklat`
--

LOCK TABLES `absensi_diklat` WRITE;
/*!40000 ALTER TABLE `absensi_diklat` DISABLE KEYS */;
INSERT INTO `absensi_diklat` VALUES (1,'03020786002','2016-07-27',1,1,2),(2,'03101179001','2016-07-27',1,1,2),(3,'03110780002','2016-07-27',1,1,2),(4,'04100781001','2016-07-27',1,1,2),(5,'04200576001','2016-07-27',1,1,2),(6,'04010188005','2016-07-27',1,1,2),(7,'04100384001','2016-07-27',1,1,2),(8,'04200788001','2016-07-27',1,1,2),(9,'04100292001','2016-07-27',1,1,2),(10,'04150186001','2016-07-27',0,1,2),(16,'03020786002','2016-07-28',1,1,2),(17,'03101179001','2016-07-28',1,1,2),(18,'03110780002','2016-07-28',1,1,2),(19,'04100781001','2016-07-28',1,1,2),(20,'04200576001','2016-07-28',0,1,2),(21,'04010188005','2016-07-28',1,1,2),(22,'04100384001','2016-07-28',1,1,2),(23,'04200788001','2016-07-28',1,1,2),(24,'04100292001','2016-07-28',1,1,2),(25,'04150186001','2016-07-28',1,1,2),(31,'03020786002','2016-07-29',1,1,2),(32,'03101179001','2016-07-29',1,1,2),(33,'03110780002','2016-07-29',1,1,2),(34,'04100781001','2016-07-29',1,1,2),(35,'04200576001','2016-07-29',1,1,2),(36,'04010188005','2016-07-29',1,1,2),(37,'04100384001','2016-07-29',1,1,2),(38,'04200788001','2016-07-29',1,1,2),(39,'04100292001','2016-07-29',1,1,2),(40,'04150186001','2016-07-29',1,1,2);
/*!40000 ALTER TABLE `absensi_diklat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anggaran_diklat`
--

DROP TABLE IF EXISTS `anggaran_diklat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anggaran_diklat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) DEFAULT NULL,
  `total_anggaran` double DEFAULT NULL,
  `total_realisasi` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anggaran_diklat`
--

LOCK TABLES `anggaran_diklat` WRITE;
/*!40000 ALTER TABLE `anggaran_diklat` DISABLE KEYS */;
INSERT INTO `anggaran_diklat` VALUES (1,2016,2500000,0);
/*!40000 ALTER TABLE `anggaran_diklat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diklat`
--

DROP TABLE IF EXISTS `diklat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diklat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `deskripsi` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diklat`
--

LOCK TABLES `diklat` WRITE;
/*!40000 ALTER TABLE `diklat` DISABLE KEYS */;
INSERT INTO `diklat` VALUES (1,'Kearsipan Dinas','kearsipan dinas'),(2,'Toefl iBT Preparation','toefl ibt'),(3,'Desain dan Pengelolaan Database','desain database'),(4,'Pemrograman Web Dinamis','pemrograman web');
/*!40000 ALTER TABLE `diklat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materi`
--

DROP TABLE IF EXISTS `materi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `deskripsi` text,
  `diklat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_materi_diklat1_idx` (`diklat_id`),
  CONSTRAINT `fk_materi_diklat1` FOREIGN KEY (`diklat_id`) REFERENCES `diklat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materi`
--

LOCK TABLES `materi` WRITE;
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
INSERT INTO `materi` VALUES (1,'Penataan Berkas','pemberkasan',1),(2,'Program Arsip Vital','sistem informasi pemberkasan',1),(3,'Retensi dan Penyusutan','retensi dan pemberkasan',1),(4,'Desain Database','desain rdbms',3),(5,'Pemrograman Database','sql',3),(6,'Reading','reading',2),(7,'Grammer','grammer',2),(8,'Conversation','conversation',2);
/*!40000 ALTER TABLE `materi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `narasumber`
--

DROP TABLE IF EXISTS `narasumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `narasumber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narasumber`
--

LOCK TABLES `narasumber` WRITE;
/*!40000 ALTER TABLE `narasumber` DISABLE KEYS */;
INSERT INTO `narasumber` VALUES (1,'Dona Katarina','P','Jakarta','1980-01-01'),(2,'David Drinkwater','L','London','1982-02-20'),(3,'Agus Riyadi','L','Klaten','1982-03-11'),(4,'Faiz Fikri','L','Jakarta','1983-04-14'),(5,'Alissa Milano','P','Milan','1985-05-12'),(6,'Budiman Ahmad','L','Bogor','1986-12-16');
/*!40000 ALTER TABLE `narasumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `tmp_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `gaji` double DEFAULT NULL,
  `jml_anak` int(11) DEFAULT NULL,
  PRIMARY KEY (`nik`),
  KEY `fk_pegawai_unit_kerja_idx` (`unit_kerja_id`),
  CONSTRAINT `fk_pegawai_unit_kerja` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` VALUES ('03020786002','Glagah Putih','L','Klaten','1986-07-02','glagahputih@yahoo.com',1,6500,0),('03101179001','Agung Sedayu','L','Yogyakarta','1979-11-10','sedayu.agung79@gmail.com',1,8000,3),('03110780002','Sekar Mirah','P','Yogyakarta','1980-07-11','sekarmirah@gmail.com',1,6500,3),('04010188005','Rara Wulan','P','Klaten','1988-01-01','wulanr88@yahoo.com',3,6000,0),('04100292001','Raden Rangga','L','Jakarta','1992-02-10','rangga92@gmail.com',4,5000,1),('04100384001','Faiz Fikri','L','Jakarta','1984-03-10','faiz.fikri@yahoo.com',3,6000,1),('04100781001','Pandan Wangi','P','Solo','1981-07-10','wangi76@gmail.com',2,5500,2),('04150186001','Suherman Burhan','L','Padang','1986-01-15','suherman.burhan@gmail.com',4,4000,2),('04200576001','Swandaru Geni','L','Solo','1976-05-20','swandaru.geni@gmail.com',2,3700,2),('04200788001','Annisa Dinar','P','Depok','1988-07-20','dinar.nisa@gmail.com',3,7500,0);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelaksanaan_diklat`
--

DROP TABLE IF EXISTS `pelaksanaan_diklat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelaksanaan_diklat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `jamlat` int(11) DEFAULT NULL,
  `nik_pic` varchar(20) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `jml_peserta` int(11) DEFAULT NULL,
  `max_peserta` int(11) DEFAULT NULL,
  `diklat_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pelaksanan_diklat_diklat1_idx` (`diklat_id`),
  CONSTRAINT `fk_pelaksanan_diklat_diklat1` FOREIGN KEY (`diklat_id`) REFERENCES `diklat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelaksanaan_diklat`
--

LOCK TABLES `pelaksanaan_diklat` WRITE;
/*!40000 ALTER TABLE `pelaksanaan_diklat` DISABLE KEYS */;
INSERT INTO `pelaksanaan_diklat` VALUES (1,'2016-07-18','2016-07-22',52,'04010188005',135000,2016,3,27,30,2),(2,'2016-07-25','2016-07-29',56,'4150186001',155000,2016,3,26,30,3),(3,'2016-08-01','2016-08-05',48,'04200576001',125000,2016,2,25,30,1);
/*!40000 ALTER TABLE `pelaksanaan_diklat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengajar_diklat`
--

DROP TABLE IF EXISTS `pengajar_diklat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengajar_diklat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `peldiklat_id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `narasumber_id` int(11) NOT NULL,
  `jamlat` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_pengajar_diklat_diklat1_idx` (`peldiklat_id`),
  KEY `fk_pengajar_diklat_materi1_idx` (`materi_id`),
  KEY `fk_pengajar_diklat_narasumber1_idx` (`narasumber_id`),
  CONSTRAINT `fk_pengajar_diklat_diklat1` FOREIGN KEY (`peldiklat_id`) REFERENCES `pelaksanaan_diklat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pengajar_diklat_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pengajar_diklat_narasumber1` FOREIGN KEY (`narasumber_id`) REFERENCES `narasumber` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengajar_diklat`
--

LOCK TABLES `pengajar_diklat` WRITE;
/*!40000 ALTER TABLE `pengajar_diklat` DISABLE KEYS */;
INSERT INTO `pengajar_diklat` VALUES (1,1,7,1,20,84),(2,1,6,1,20,89),(3,1,8,2,12,80),(4,2,4,3,20,88),(5,2,5,4,36,90),(6,3,1,5,16,80),(7,3,2,5,20,81),(8,3,3,6,20,88);
/*!40000 ALTER TABLE `pengajar_diklat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peserta_diklat`
--

DROP TABLE IF EXISTS `peserta_diklat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peserta_diklat` (
  `pegawai_nik` varchar(20) NOT NULL,
  `peldiklat_id` int(11) NOT NULL,
  `total_nilai` double DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pegawai_nik`,`peldiklat_id`),
  KEY `fk_pegawai_has_diklat_diklat1_idx` (`peldiklat_id`),
  KEY `fk_pegawai_has_diklat_pegawai1_idx` (`pegawai_nik`),
  CONSTRAINT `fk_pegawai_has_diklat_diklat1` FOREIGN KEY (`peldiklat_id`) REFERENCES `pelaksanaan_diklat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_pegawai_has_diklat_pegawai1` FOREIGN KEY (`pegawai_nik`) REFERENCES `pegawai` (`nik`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peserta_diklat`
--

LOCK TABLES `peserta_diklat` WRITE;
/*!40000 ALTER TABLE `peserta_diklat` DISABLE KEYS */;
INSERT INTO `peserta_diklat` VALUES ('03020786002',1,80.67,'Lulus'),('03020786002',2,81.54,'Lulus'),('03020786002',3,81.54,'Lulus'),('03101179001',1,61.71,'TIDAK LULUS'),('03101179001',2,92.87,'Lulus'),('03101179001',3,81.54,'Lulus'),('03110780002',1,66.54,'TIDAK LULUS'),('03110780002',2,89.54,'Lulus'),('03110780002',3,81.54,'Lulus'),('04010188005',1,81.54,'Lulus'),('04010188005',2,81.54,'Lulus'),('04010188005',3,81.54,'Lulus'),('04100292001',1,76.25,'Lulus'),('04100292001',2,81.54,'Lulus'),('04100292001',3,96.61,'Lulus'),('04100384001',1,81.54,'Lulus'),('04100384001',2,81.54,'Lulus'),('04100384001',3,66.64,'TIDAK LULUS'),('04100781001',1,81.54,'Lulus'),('04100781001',2,81.54,'Lulus'),('04100781001',3,81.54,'Lulus'),('04150186001',1,81.54,'Lulus'),('04150186001',2,81.54,'Lulus'),('04150186001',3,81.54,'Lulus'),('04200788001',1,91.68,'Lulus'),('04200788001',2,68.33,'TIDAK LULUS'),('04200788001',3,89.54,'Lulus');
/*!40000 ALTER TABLE `peserta_diklat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_kerja`
--

DROP TABLE IF EXISTS `unit_kerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_kerja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(16) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `nik_kepala` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode_UNIQUE` (`kode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_kerja`
--

LOCK TABLES `unit_kerja` WRITE;
/*!40000 ALTER TABLE `unit_kerja` DISABLE KEYS */;
INSERT INTO `unit_kerja` VALUES (1,'DJP','Direktorat Jenderal Pajak','Jl. Jend. Gatot Subroto No. 40-42','Jakarta',3000,'03101179001'),(2,'DJBC','Direktorat Jenderal Bea Cukai','Jl. Ahmad Yani By Pass, Rawamangun ','Jakarta',3500,'04200576001'),(3,'DJPU','Direktorat Jenderal Pengelolaan Utang','Gd. Frans Seda, Jl. Dr. Wahidin Raya No. 1','Jakarta',2500,'04100384001'),(4,'BPPK','Badan Pendidikan dan Pelatihan Keuangan','Jl. Purnawarman No. 99 Kebayoran Baru','Jakarta',500,'04150186001');
/*!40000 ALTER TABLE `unit_kerja` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-27  9:31:18
