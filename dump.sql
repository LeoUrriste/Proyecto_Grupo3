-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: db_grupo3
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_usuarios'),(22,'Can change user',6,'change_usuarios'),(23,'Can delete user',6,'delete_usuarios'),(24,'Can view user',6,'view_usuarios'),(25,'Can add post',7,'add_post'),(26,'Can change post',7,'change_post'),(27,'Can delete post',7,'delete_post'),(28,'Can view post',7,'view_post'),(29,'Can add categoria',8,'add_categoria'),(30,'Can change categoria',8,'change_categoria'),(31,'Can delete categoria',8,'delete_categoria'),(32,'Can view categoria',8,'view_categoria'),(33,'Can add opinion',9,'add_opinion'),(34,'Can change opinion',9,'change_opinion'),(35,'Can delete opinion',9,'delete_opinion'),(36,'Can view opinion',9,'view_opinion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_usuarios_usuarios_id` FOREIGN KEY (`user_id`) REFERENCES `usuarios_usuarios` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-12-05 23:35:36.455637','1','hola',3,'',7,1),(2,'2023-12-05 23:35:47.684402','1','ciber seguridad',3,'',8,1),(3,'2023-12-22 01:24:54.197096','2','leonardo',3,'',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(9,'opiniones','opinion'),(8,'post','categoria'),(7,'post','post'),(5,'sessions','session'),(6,'usuarios','usuarios');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-11-29 13:11:59.503455'),(2,'contenttypes','0002_remove_content_type_name','2023-11-29 13:11:59.609731'),(3,'auth','0001_initial','2023-11-29 13:11:59.961625'),(4,'auth','0002_alter_permission_name_max_length','2023-11-29 13:12:00.104129'),(5,'auth','0003_alter_user_email_max_length','2023-11-29 13:12:00.116132'),(6,'auth','0004_alter_user_username_opts','2023-11-29 13:12:00.210157'),(7,'auth','0005_alter_user_last_login_null','2023-11-29 13:12:00.223159'),(8,'auth','0006_require_contenttypes_0002','2023-11-29 13:12:00.230161'),(9,'auth','0007_alter_validators_add_error_messages','2023-11-29 13:12:00.266170'),(10,'auth','0008_alter_user_username_max_length','2023-11-29 13:12:00.292181'),(11,'auth','0009_alter_user_last_name_max_length','2023-11-29 13:12:00.331186'),(12,'auth','0010_alter_group_name_max_length','2023-11-29 13:12:00.385202'),(13,'auth','0011_update_proxy_permissions','2023-11-29 13:12:00.404205'),(14,'auth','0012_alter_user_first_name_max_length','2023-11-29 13:12:00.426209'),(15,'usuarios','0001_initial','2023-11-29 13:12:00.914596'),(16,'admin','0001_initial','2023-11-29 13:12:01.118100'),(17,'admin','0002_logentry_remove_auto_add','2023-11-29 13:12:01.137561'),(18,'admin','0003_logentry_add_action_flag_choices','2023-11-29 13:12:01.155563'),(19,'sessions','0001_initial','2023-11-29 13:12:01.254589'),(20,'post','0001_initial','2023-12-01 15:32:42.647965'),(21,'opiniones','0001_initial','2023-12-05 02:07:11.507588'),(22,'post','0002_alter_categoria_nombre','2023-12-05 02:09:57.074904'),(23,'post','0003_alter_categoria_nombre','2023-12-05 23:46:14.076364'),(24,'post','0004_rename_categoria_post_categoria','2023-12-06 20:17:04.823734');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opiniones_opinion`
--

DROP TABLE IF EXISTS `opiniones_opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opiniones_opinion` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `texto` longtext NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `opiniones_opinion_post_id_e704af15_fk_post_post_id` (`post_id`),
  KEY `opiniones_opinion_usuario_id_6c8a7eea_fk_usuarios_usuarios_id` (`usuario_id`),
  CONSTRAINT `opiniones_opinion_post_id_e704af15_fk_post_post_id` FOREIGN KEY (`post_id`) REFERENCES `post_post` (`id`),
  CONSTRAINT `opiniones_opinion_usuario_id_6c8a7eea_fk_usuarios_usuarios_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opiniones_opinion`
--

LOCK TABLES `opiniones_opinion` WRITE;
/*!40000 ALTER TABLE `opiniones_opinion` DISABLE KEYS */;
INSERT INTO `opiniones_opinion` VALUES (3,'hola','2023-12-06 22:47:19.702789',3,3);
/*!40000 ALTER TABLE `opiniones_opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categoria`
--

DROP TABLE IF EXISTS `post_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `post_categoria_nombre_b4f85e53_uniq` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categoria`
--

LOCK TABLES `post_categoria` WRITE;
/*!40000 ALTER TABLE `post_categoria` DISABLE KEYS */;
INSERT INTO `post_categoria` VALUES (6,'Ciber Seguridad'),(5,'hola'),(4,'Seguridad en Hardware'),(2,'Seguridad en Redes'),(3,'Seguridad en Software');
/*!40000 ALTER TABLE `post_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_post`
--

DROP TABLE IF EXISTS `post_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(20) NOT NULL,
  `texto` longtext NOT NULL,
  `fecha_agregado` datetime(6) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `colaborador_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_post_colaborador_id_0178c9f9_fk_usuarios_usuarios_id` (`colaborador_id`),
  KEY `post_post_categoria_id_c80a361b_fk_post_categoria_id` (`categoria_id`),
  CONSTRAINT `post_post_categoria_id_c80a361b_fk_post_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `post_categoria` (`id`),
  CONSTRAINT `post_post_colaborador_id_0178c9f9_fk_usuarios_usuarios_id` FOREIGN KEY (`colaborador_id`) REFERENCES `usuarios_usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_post`
--

LOCK TABLES `post_post` WRITE;
/*!40000 ALTER TABLE `post_post` DISABLE KEYS */;
INSERT INTO `post_post` VALUES (2,'Seguridad en Redes','Jorge','La seguridad de red es cualquier actividad diseñada para proteger el acceso, el uso y la integridad de la red y los datos corporativos.\r\n•	Incluye tecnologías de hardware y software.\r\n•	Está orientada a diversas amenazas.\r\n•	Evita que ingresen o se propaguen por la red.\r\n•	La seguridad de red eficaz administra el acceso a la red.\r\n\r\nhttps://www.youtube.com/watch?v=4qksmUokm2c\r\nMuchas amenazas a la seguridad de la red hoy en dia se propagan a través de internet. El más común, pero no el único, es el phishing\r\nDatos personales: Phishing o robo de identidad\r\nhttps://www.argentina.gob.ar/jefatura/innovacion-publica/ssetic/direccion-nacional-ciberseguridad/recomendaciones-de-3\r\nEjemplos de Phishing: Facebook, Amazon y WhatsApp\r\nhttps://www.tecnologia-informatica.com/ejemplos-de-phishing-facebook-amazon-y-whatsapp/','2023-12-05 23:49:59.161286','post/redes.jpg',2,NULL),(3,'Seguridad en Software','Jorge','La seguridad del software es el concepto de implementar mecanismos en la construcción de la seguridad para ayudarla a permanecer funcional (o resistente) a los ataques. Esto significa que una pieza de software se somete a pruebas de seguridad antes de salir al mercado para comprobar su capacidad para resistir ataques maliciosos.\r\nLa idea detrás de la seguridad del software es crear software que sea seguro desde el principio sin tener que agregar elementos de seguridad adicionales para agregar capas adicionales de seguridad (aunque en muchos casos, esto todavía sucede). El siguiente paso es enseñar a los usuarios a usar el software de la manera correcta para evitar ser propensos o estar expuestos a ataques.\r\n\r\nEl siguiente enlace aclara los conceptos:\r\n\r\nhttps://www.youtube.com/watch?v=QVymjGfoHjY\r\nLos agujeros de seguridad o vulnerabilidades en el software son habituales y el problema es cada vez mayor. Un tipo de ataque de este tipo, particularmente malicioso, es el ransonware:\r\nEl ransomware, el software malicioso usado para atacar a las organizaciones\r\nhttps://www.argentina.gob.ar/jefatura/innovacion-publica/ssetic/direccion-nacional-ciberseguridad/informes-de-la-direccion-6','2023-12-05 23:52:19.340252','post/sofware.jpg',3,NULL),(4,'Seguridad en Hardware','Jorge','La seguridad informática de hardware es aquella que se refiere a la parte física de los equipos. Es decir, suele tratarse de dispositivos que se conectan al ordenador u otros aparatos informáticos para aumentar su grado de seguridad.\r\nEs uno de los tipos de seguridad informática más importantes, y generalmente se suele utilizar como complemento a la seguridad por software. Gracias a ella, se puede adoptar un enfoque multidimensional de la seguridad informática, basándola no solo en la protección de las aplicaciones, sino también de la infraestructura de los equipos.\r\nEn el siguiente enlace, se aclaran algunos conceptos:\r\nhttps://www.youtube.com/watch?v=W_MItz5NzVU\r\nEn el siguiente enlace, vemos los tipos de ataques mas comunes al hardware del sistema:\r\n5 amenazas que afectan el hardware\r\nhttps://latam.kaspersky.com/blog/5-amenazas-que-afectan-el-hardware/5218/\r\nImportancia del hardware en la seguridad informática\r\nhttps://www.geyma.com/sistemas-y-soluciones/soluciones-seguridad/soluciones-hardware/','2023-12-05 23:54:00.434516','post/hadware.jpg',4,NULL),(5,'¿Qué es la ciberseguridad?','kaspersky','La ciberseguridad es la práctica de defender las computadoras, los servidores, los dispositivos móviles, los sistemas electrónicos, las redes y los datos de ataques maliciosos. También se conoce como seguridad de tecnología de la información o seguridad de la información electrónica. El término se aplica en diferentes contextos, desde los negocios hasta la informática móvil, y puede dividirse en algunas categorías comunes.\r\n\r\nLa seguridad de red es la práctica de proteger una red informática de los intrusos, ya sean atacantes dirigidos o malware oportunista.\r\nLa seguridad de las aplicaciones se enfoca en mantener el software y los dispositivos libres de amenazas. Una aplicación afectada podría brindar acceso a los datos que está destinada a proteger. La seguridad eficaz comienza en la etapa de diseño, mucho antes de la implementación de un programa o dispositivo.\r\nLa seguridad de la información protege la integridad y la privacidad de los datos, tanto en el almacenamiento como en el tránsito.\r\nLa seguridad operativa incluye los procesos y decisiones para manejar y proteger los recursos de datos. Los permisos que tienen los usuarios para acceder a una red y los procedimientos que determinan cómo y dónde pueden almacenarse o compartirse los datos se incluyen en esta categoría.\r\nLa recuperación ante desastres y la continuidad del negocio definen la forma en que una organización responde a un incidente de ciberseguridad o a cualquier otro evento que cause que se detengan sus operaciones o se pierdan datos. Las políticas de recuperación ante desastres dictan la forma en que la organización restaura sus operaciones e información para volver a la misma capacidad operativa que antes del evento. La continuidad del negocio es el plan al que recurre la organización cuando intenta operar sin determinados recursos.\r\nLa capacitación del usuario final aborda el factor de ciberseguridad más impredecible: las personas. Si se incumplen las buenas prácticas de seguridad, cualquier persona puede introducir accidentalmente un virus en un sistema que de otro modo sería seguro. Enseñarles a los usuarios a eliminar los archivos adjuntos de correos electrónicos sospechosos, a no conectar unidades USB no identificadas y otras lecciones importantes es fundamental para la seguridad de cualquier organización.\r\nLa extensión de las ciberamenazas\r\nLas ciberamenazas mundiales siguen desarrollándose a un ritmo rápido, con una cantidad cada vez mayor de filtraciones de datos cada año. En un informe de RiskBased Security, se reveló que unos alarmantes 7900 millones de registros han sido expuestos por filtraciones de datos solo en los primeros nueve meses del 2019. Esta cifra es más del doble (112 %) de la cantidad de registros expuestos en el mismo período durante el 2018.\r\n\r\nLos servicios médicos, los minoristas y las entidades públicas fueron los que sufrieron más filtraciones, y los delincuentes maliciosos fueron los responsables de la mayoría de los incidentes. Algunos de estos sectores son más atractivos para los cibercriminales, ya que recopilan datos financieros y médicos, aunque todas las empresas que utilizan las redes pueden ser atacadas para robarles datos de clientes, hacer espionaje corporativo o lanzar ataques a sus clientes.\r\n\r\nDado que las dimensiones de la amenazas cibernéticas seguirán aumentando, el gasto global en soluciones de seguridad cibernética también crecerá en proporción. Gartner predice que el gasto mundial en ciberseguridad alcanzará los 188 300 millones de dólares en 2023 y sobrepasará los 260 000 millones en 2026. Los gobiernos de todo el mundo han respondido a las crecientes ciberamenazas con orientaciones para ayudar a las organizaciones a aplicar prácticas eficaces de ciberseguridad.\r\n\r\nEn Estados Unidos, el Instituto Nacional de Estándares y Tecnología (NIST) ha creado un marco de ciberseguridad. Para contrarrestar la proliferación de código malicioso y ayudar en la detección temprana, en el marco se recomienda el monitoreo continuo y en tiempo real de todos los recursos electrónicos.\r\n\r\nLa importancia de la vigilancia de los sistemas se refleja en los “10 pasos para la ciberseguridad”, orientación proporcionada por el Centro Nacional de Seguridad Cibernética del Gobierno del Reino Unido. En Australia, el Centro Australiano de Seguridad Cibernética (ACSC) publica periódicamente orientaciones sobre la forma en que las organizaciones pueden contrarrestar las últimas amenazas a la ciberseguridad.\r\nTipos de ciberamenazas\r\nLas amenazas a las que se enfrenta la ciberseguridad son tres:\r\n\r\nEl delito cibernético incluye agentes individuales o grupos que atacan a los sistemas para obtener beneficios financieros o causar interrupciones.\r\nLos ciberataques a menudo involucran la recopilación de información con fines políticos.\r\nEl ciberterrorismo tiene como objetivo debilitar los sistemas electrónicos para causar pánico o temor.\r\nPero ¿cómo consiguen los agentes malintencionados el control de los sistemas informáticos? Estos son algunos de los métodos comunes utilizados para amenazar la ciberseguridad:\r\n\r\nMalware\r\n“Malware” se refiere al software malicioso. Ya que es una de las ciberamenazas más comunes, el malware es software que un cibercriminal o un hacker ha creado para interrumpir o dañar el equipo de un usuario legítimo. Con frecuencia propagado a través de un archivo adjunto de correo electrónico no solicitado o de una descarga de apariencia legítima, el malware puede ser utilizado por los ciberdelincuentes para ganar dinero o para realizar ciberataques con fines políticos.\r\n\r\nHay diferentes tipos de malware, entre los que se incluyen los siguientes:\r\n\r\nVirus: un programa capaz de reproducirse, que se incrusta un archivo limpio y se extiende por todo el sistema informático e infecta a los archivos con código malicioso.\r\nTroyanos: un tipo de malware que se disfraza como software legítimo. Los cibercriminales engañan a los usuarios para que carguen troyanos a sus computadoras, donde causan daños o recopilan datos.\r\nSpyware: un programa que registra en secreto lo que hace un usuario para que los cibercriminales puedan hacer uso de esta información. Por ejemplo, el spyware podría capturar los detalles de las tarjetas de crédito.\r\nRansomware: malware que bloquea los archivos y datos de un usuario, con la amenaza de borrarlos, a menos que se pague un rescate.\r\nAdware: software de publicidad que puede utilizarse para difundir malware.\r\nBotnets: redes de computadoras con infección de malware que los cibercriminales utilizan para realizar tareas en línea sin el permiso del usuario.\r\nInyección de código SQL\r\nUna inyección de código SQL (por sus siglas en inglés Structured Query Language) es un tipo de ciberataque utilizado para tomar el control y robar datos de una base de datos. Los cibercriminales aprovechan las vulnerabilidades de las aplicaciones basadas en datos para insertar código malicioso en una base de datos mediante una instrucción SQL maliciosa. Esto les brinda acceso a la información confidencial contenida en la base de datos.\r\n\r\nPhishing\r\nEl phishing es cuando los cibercriminales atacan a sus víctimas con correos electrónicos que parecen ser de una empresa legítima que solicita información confidencial. Los ataques de phishing se utilizan a menudo para inducir a que las personas entreguen sus datos de tarjetas de crédito y otra información personal.\r\n\r\nAtaque de tipo “Man-in-the-middle”\r\nUn ataque de tipo “Man-in-the-middle” es un tipo de ciberamenaza en la que un cibercriminal intercepta la comunicación entre dos individuos para robar datos. Por ejemplo, en una red Wi-Fi no segura, un atacante podría interceptar los datos que se transmiten desde el dispositivo de la víctima y la red.\r\n\r\nAtaque de denegación de servicio\r\nUn ataque de denegación de servicio es cuando los cibercriminales impiden que un sistema informático satisfaga solicitudes legítimas sobrecargando las redes y los servidores con tráfico. Esto hace que el sistema sea inutilizable e impide que una organización realice funciones vitales.','2023-12-11 18:55:57.384036','post/ciber_seguridad.jpg',6,NULL);
/*!40000 ALTER TABLE `post_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuarios`
--

DROP TABLE IF EXISTS `usuarios_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `es_colaborador` tinyint(1) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuarios`
--

LOCK TABLES `usuarios_usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios_usuarios` DISABLE KEYS */;
INSERT INTO `usuarios_usuarios` VALUES (1,'pbkdf2_sha256$600000$NoUR9xC4voxWnlijXlo5Nh$drwJm+nJRFeAwsAyY3J2YGzD9xvKU5f8Mx1XnfCzvEg=','2023-12-22 01:24:11.841555',1,'leo','','','admin@admin.com',1,1,'2023-11-30 11:52:07.683931','','','2000-01-01',0,''),(3,'pbkdf2_sha256$600000$AjK7fZ3rz082VBAimrE5JB$hVwEd4BkQNKCkQ88SZmYhvU7IuwqUBXo8lWtlBFurxo=','2023-12-22 01:25:16.251130',0,'leou','','','abc@abc.com',0,1,'2023-12-05 23:39:42.218249','leonardo','u','2000-01-01',1,'usuarios/defaul.png/paisaje_sd1wzuq.jpg');
/*!40000 ALTER TABLE `usuarios_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuarios_groups`
--

DROP TABLE IF EXISTS `usuarios_usuarios_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuarios_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarios_id` bigint NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_usuarios_groups_usuarios_id_group_id_31056d4d_uniq` (`usuarios_id`,`group_id`),
  KEY `usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id` (`group_id`),
  CONSTRAINT `usuarios_usuarios_gr_usuarios_id_65c166be_fk_usuarios_` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios_usuarios` (`id`),
  CONSTRAINT `usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuarios_groups`
--

LOCK TABLES `usuarios_usuarios_groups` WRITE;
/*!40000 ALTER TABLE `usuarios_usuarios_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_usuarios_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuarios_user_permissions`
--

DROP TABLE IF EXISTS `usuarios_usuarios_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuarios_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `usuarios_id` bigint NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_usuarios_user_p_usuarios_id_permission_i_1fb72da5_uniq` (`usuarios_id`,`permission_id`),
  KEY `usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm` (`permission_id`),
  CONSTRAINT `usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `usuarios_usuarios_us_usuarios_id_d860a7b5_fk_usuarios_` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios_usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuarios_user_permissions`
--

LOCK TABLES `usuarios_usuarios_user_permissions` WRITE;
/*!40000 ALTER TABLE `usuarios_usuarios_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_usuarios_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-23 18:50:26
