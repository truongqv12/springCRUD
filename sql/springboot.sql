/*
 Navicat Premium Data Transfer

 Source Server         : MYSQL
 Source Server Type    : MySQL
 Source Server Version : 100410
 Source Host           : localhost:3306
 Source Schema         : springboot

 Target Server Type    : MySQL
 Target Server Version : 100410
 File Encoding         : 65001

 Date: 25/02/2020 22:23:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees`  (
  `emp_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `emp_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `emp_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `job_id` bigint(20) NULL DEFAULT 0,
  `manager_id` bigint(20) NULL DEFAULT 0,
  `hire_date` datetime(0) NULL DEFAULT NULL,
  `emp_birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `emp_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE,
  INDEX `FKd3mec01ppoe4f72dieat80vtw`(`job_id`) USING BTREE,
  CONSTRAINT `FKd3mec01ppoe4f72dieat80vtw` FOREIGN KEY (`job_id`) REFERENCES `job` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 330 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES (1, 'Kelsey H. Rowland', '071-351-7462', 'Ap #923-8976 Mi St.', 2, 0, '2009-08-22 15:35:29', '1976-11-22 12:41:48', 'consectetuer@molestiein.ca');
INSERT INTO `employees` VALUES (2, 'Curran T. Cummings', '005-940-5547', '923-4597 Pellentesque St.', 4, 0, '2012-03-10 06:34:34', '1965-12-01 23:40:03', 'Morbi.metus@magnatellus.edu');
INSERT INTO `employees` VALUES (3, 'Fuller Fernandez', '078-852-0630', 'Ap #550-9975 Quis, Ave', 4, 0, '2014-09-08 10:30:15', '1984-02-19 04:30:47', 'Suspendisse@lacus.net');
INSERT INTO `employees` VALUES (4, 'Abbot Morales', '030-164-8899', 'Ap #913-2238 Non St.', 3, 0, '2011-02-25 16:55:30', '1969-03-14 02:41:21', 'malesuada.malesuada.Integer@sedlibero.org');
INSERT INTO `employees` VALUES (5, 'Charlotte V. Logan', '045-399-2708', 'P.O. Box 742, 821 Donec St.', 5, 0, '2019-09-24 13:46:20', '1980-06-13 07:19:19', 'odio@sitametornare.com');
INSERT INTO `employees` VALUES (6, 'Melodie F. Pruitt', '077-368-7410', 'P.O. Box 548, 3892 Erat St.', 6, 0, '2012-11-29 17:36:45', '1965-08-18 06:13:33', 'Nulla@eu.co.uk');
INSERT INTO `employees` VALUES (7, 'Carlos M. Byrd', '063-653-6547', '620-6920 A, Rd.', 6, 0, '2014-07-29 01:49:05', '1986-03-04 10:12:42', 'molestie@metusIn.ca');
INSERT INTO `employees` VALUES (8, 'Breanna L. Beasley', '032-890-3357', '840-4683 Donec Road', 6, 0, '2018-02-11 07:29:54', '1963-08-25 15:41:00', 'in@laoreet.edu');
INSERT INTO `employees` VALUES (9, 'Owen F. Moore', '013-285-2698', 'Ap #938-8887 Accumsan Rd.', 3, 0, '2011-06-05 09:29:39', '1994-04-18 14:55:46', 'feugiat@elementumpurusaccumsan.com');
INSERT INTO `employees` VALUES (10, 'Inga U. Shannon', '028-180-3803', 'P.O. Box 239, 8530 Risus Rd.', 4, 0, '2008-08-20 03:25:35', '1991-07-15 11:51:50', 'rutrum@leo.ca');
INSERT INTO `employees` VALUES (11, 'Wesley Rich', '048-302-6507', 'P.O. Box 308, 9975 Ac Avenue', 2, 0, '2016-04-01 04:59:22', '1986-02-22 09:49:46', 'id.erat@elitpedemalesuada.co.uk');
INSERT INTO `employees` VALUES (12, 'Alden Heath', '026-857-4031', '661-4256 Parturient Ave', 4, 0, '2012-01-12 01:54:15', '1971-02-11 05:39:42', 'Nulla.aliquet.Proin@PhasellusnullaInteger.org');
INSERT INTO `employees` VALUES (13, 'Irene Monroe', '074-865-0045', 'Ap #517-3823 Augue Street', 3, 0, '2009-10-13 15:02:40', '1974-06-26 08:42:52', 'pede.Cras@mipedenonummy.ca');
INSERT INTO `employees` VALUES (14, 'Jeremy Reilly', '012-396-8755', 'Ap #932-8003 Augue Av.', 4, 0, '2013-04-16 12:54:07', '1961-10-28 14:34:28', 'mollis.nec@lectus.com');
INSERT INTO `employees` VALUES (15, 'Bell H. Mejia', '086-712-4734', '5352 Dictum Road', 6, 0, '2018-06-15 08:50:48', '1977-07-27 22:19:05', 'fringilla.ornare.placerat@porttitorvulputate.com');
INSERT INTO `employees` VALUES (16, 'Otto Austin', '081-916-9913', '745-1657 Phasellus St.', 3, 0, '2018-05-03 23:29:19', '1970-05-10 18:57:38', 'vulputate@Mauris.edu');
INSERT INTO `employees` VALUES (17, 'Armando Bradford', '071-612-7623', 'P.O. Box 555, 2411 Erat Avenue', 3, 0, '2011-08-06 19:12:07', '1964-04-10 00:12:25', 'quam@blandit.org');
INSERT INTO `employees` VALUES (18, 'Orlando Z. Chandler', '091-790-8687', 'P.O. Box 768, 4818 Vitae Street', 4, 0, '2009-08-28 00:38:19', '1994-07-23 18:51:09', 'id@aliquamiaculis.net');
INSERT INTO `employees` VALUES (19, 'Jena S. Wiggins', '039-248-2014', 'P.O. Box 346, 294 Enim Road', 1, 0, '2017-11-11 19:25:10', '1974-11-07 05:14:01', 'pulvinar.arcu.et@parturient.net');
INSERT INTO `employees` VALUES (20, 'Christine Chase', '011-104-2879', '575-4491 Ultricies Avenue', 6, 0, '2009-03-06 07:22:57', '1980-05-19 23:29:50', 'eu.augue.porttitor@urnaUttincidunt.org');
INSERT INTO `employees` VALUES (21, 'August D. Chan', '062-391-9517', 'Ap #347-1989 Volutpat. Street', 3, 0, '2007-11-05 07:38:35', '1992-12-26 12:46:07', 'iaculis.odio@Aliquamadipiscing.net');
INSERT INTO `employees` VALUES (22, 'Fitzgerald G. Mclaughlin', '054-473-4309', '151-603 Diam Rd.', 3, 0, '2016-04-11 17:48:30', '1984-09-03 01:21:54', 'Pellentesque.ultricies@ante.net');
INSERT INTO `employees` VALUES (23, 'Joshua Z. Villarreal', '077-662-1654', '5685 Sed Rd.', 3, 0, '2008-11-18 14:28:42', '1990-09-26 14:25:46', 'Quisque@luctusipsumleo.net');
INSERT INTO `employees` VALUES (24, 'Hillary S. Kirby', '064-068-4707', 'P.O. Box 839, 8145 Ullamcorper. Avenue', 5, 0, '2011-06-02 14:59:12', '1974-03-08 06:24:51', 'In.nec.orci@Quisqueornaretortor.org');
INSERT INTO `employees` VALUES (25, 'Danielle Bradshaw', '028-889-6304', '3808 Semper St.', 4, 0, '2018-01-21 11:45:44', '1978-09-13 13:57:25', 'Maecenas@turpis.net');
INSERT INTO `employees` VALUES (26, 'Amy Mcmahon', '007-410-5261', '597-5818 Sollicitudin Av.', 1, 0, '2008-06-04 11:31:55', '1982-09-24 13:50:37', 'nisl.Quisque.fringilla@nasceturridiculusmus.com');
INSERT INTO `employees` VALUES (27, 'Yardley E. Zamora', '090-789-1738', '8960 Nam St.', 5, 0, '2018-11-05 08:24:37', '1996-08-08 00:43:12', 'eu.odio.tristique@Curabiturconsequatlectus.net');
INSERT INTO `employees` VALUES (28, 'Raja B. Blackburn', '087-668-0791', '6841 Adipiscing, Road', 5, 0, '2012-07-20 23:43:34', '1959-03-03 23:23:11', 'molestie.pharetra.nibh@vehicula.co.uk');
INSERT INTO `employees` VALUES (29, 'Fletcher Osborne', '048-441-2010', '2252 Eu, St.', 5, 0, '2017-12-26 15:06:15', '1978-10-02 20:10:44', 'magnis@sitamet.com');
INSERT INTO `employees` VALUES (30, 'Amos Myers', '020-907-7708', '572-1534 Orci. Avenue', 1, 0, '2018-07-07 23:54:04', '1963-01-31 17:39:10', 'Sed@Phasellus.com');
INSERT INTO `employees` VALUES (31, 'Mariam Slater', '049-024-9865', '596 Pellentesque. Road', 5, 0, '2018-05-25 08:49:34', '1996-11-27 16:15:59', 'sit@vel.net');
INSERT INTO `employees` VALUES (32, 'Arsenio U. Ingram', '008-693-5655', '7319 A, Rd.', 1, 0, '2009-01-29 16:41:49', '1988-09-01 20:02:33', 'diam.nunc@consectetuer.org');
INSERT INTO `employees` VALUES (33, 'Quamar Vincent', '005-210-4180', 'Ap #889-2094 Est. Rd.', 5, 0, '2014-12-21 00:47:21', '1969-10-07 14:00:34', 'Proin.eget@convallis.org');
INSERT INTO `employees` VALUES (34, 'Blossom I. Dickson', '072-708-4775', '427-3358 At, Rd.', 6, 0, '2014-02-16 02:40:21', '1965-05-18 14:03:51', 'ligula.Donec.luctus@massaSuspendisseeleifend.com');
INSERT INTO `employees` VALUES (35, 'Samson Q. Blevins', '059-400-9702', '9863 A, Av.', 4, 0, '2012-12-27 23:40:14', '1979-11-25 06:36:20', 'nec.eleifend.non@cursusnonegestas.com');
INSERT INTO `employees` VALUES (36, 'Jessamine G. Palmer', '023-608-4145', 'P.O. Box 592, 2633 Egestas. Rd.', 3, 0, '2009-04-24 07:44:06', '1986-04-16 02:48:25', 'ridiculus@Crasdolordolor.net');
INSERT INTO `employees` VALUES (37, 'Charissa A. Mcmillan', '057-213-3766', '5187 Mollis. St.', 3, 0, '2011-12-30 10:26:46', '1964-04-10 12:27:30', 'Duis.ac@auctorodio.org');
INSERT INTO `employees` VALUES (38, 'Nell Robertson', '055-656-3826', '6707 Consequat, Street', 5, 0, '2015-04-29 11:13:54', '1971-01-26 02:22:33', 'pede.malesuada.vel@egestasAliquam.net');
INSERT INTO `employees` VALUES (39, 'Orson S. Little', '092-747-1494', 'Ap #491-514 Id Ave', 4, 0, '2014-07-02 07:46:28', '1963-12-29 09:35:00', 'Nulla.facilisi.Sed@turpisnon.com');
INSERT INTO `employees` VALUES (40, 'Kermit T. Meyer', '062-216-6611', 'P.O. Box 280, 5434 Laoreet Road', 6, 0, '2013-08-25 15:19:31', '1979-08-03 12:45:04', 'sapien.Nunc@feugiat.ca');
INSERT INTO `employees` VALUES (41, 'Ginger Y. Haynes', '069-415-5272', 'P.O. Box 623, 6377 Tincidunt. St.', 3, 0, '2008-09-13 22:15:58', '1978-05-17 07:11:49', 'Donec.consectetuer.mauris@viverraMaecenas.ca');
INSERT INTO `employees` VALUES (42, 'Keith M. Bartlett', '020-595-5000', '558-2833 Facilisis Ave', 2, 0, '2018-09-29 14:58:41', '1960-08-22 03:29:10', 'accumsan.interdum.libero@mauris.net');
INSERT INTO `employees` VALUES (43, 'Kareem Stokes', '003-267-6212', 'P.O. Box 187, 2262 Nulla. Rd.', 3, 0, '2018-10-28 15:48:56', '1979-01-14 05:06:57', 'Cras@faucibus.net');
INSERT INTO `employees` VALUES (44, 'Neil Ball', '092-584-5917', 'Ap #183-6876 Rhoncus. Rd.', 2, 0, '2012-09-08 01:39:12', '1970-11-14 18:42:02', 'porttitor.vulputate@Proineget.edu');
INSERT INTO `employees` VALUES (45, 'Yen Bauer', '022-748-3031', 'P.O. Box 608, 3857 Tempus Avenue', 4, 0, '2013-04-09 16:08:43', '1988-02-02 02:05:11', 'neque.venenatis@Donecsollicitudinadipiscing.ca');
INSERT INTO `employees` VALUES (46, 'Brooke N. Mcfarland', '029-199-2174', '5238 Cursus Ave', 5, 0, '2008-08-04 23:44:20', '1959-07-09 17:22:35', 'nisl.Maecenas.malesuada@egetmagna.org');
INSERT INTO `employees` VALUES (47, 'Colby I. Bush', '084-374-2692', '9831 Eu Road', 1, 0, '2012-02-20 19:54:29', '1970-02-18 19:16:11', 'Aenean.massa@mollisnoncursus.edu');
INSERT INTO `employees` VALUES (48, 'Dorothy Cooley', '061-480-7677', 'Ap #592-3936 Sapien. Av.', 6, 0, '2016-09-22 18:44:29', '1996-04-19 11:40:43', 'lectus@Curabituregestasnunc.co.uk');
INSERT INTO `employees` VALUES (49, 'Avram L. Mills', '025-467-1637', '8689 Vitae, St.', 5, 0, '2013-10-25 04:35:24', '1980-12-14 22:20:23', 'egestas.hendrerit@NullafacilisisSuspendisse.net');
INSERT INTO `employees` VALUES (50, 'Giselle Sullivan', '040-071-2051', 'P.O. Box 340, 8772 Vestibulum Ave', 2, 0, '2011-03-24 07:42:33', '1976-05-12 14:38:59', 'luctus.ipsum@tinciduntnibh.net');
INSERT INTO `employees` VALUES (51, 'Amaya Perry', '066-426-4583', 'P.O. Box 470, 3797 Sagittis Road', 2, 0, '2011-07-13 15:42:11', '1975-02-10 21:59:11', 'nibh@feugiatSed.ca');
INSERT INTO `employees` VALUES (52, 'Aline Dennis', '058-936-1460', '207-9891 Dolor Av.', 5, 0, '2011-01-04 08:32:10', '1970-03-24 00:45:03', 'libero@rutrumeuultrices.net');
INSERT INTO `employees` VALUES (53, 'Hedwig Hill', '055-124-0264', '268-5938 Ac St.', 4, 0, '2007-08-13 09:06:48', '1961-06-11 03:38:06', 'elit@miAliquamgravida.net');
INSERT INTO `employees` VALUES (54, 'Rogan R. Michael', '049-009-5836', '3065 Nisl St.', 3, 0, '2009-01-10 06:56:28', '1969-08-01 10:33:57', 'nonummy@lacus.com');
INSERT INTO `employees` VALUES (55, 'Abel Blake', '095-946-4424', '3513 Duis Av.', 3, 0, '2014-07-12 02:11:04', '1978-10-12 05:34:28', 'vulputate@viverraMaecenasiaculis.com');
INSERT INTO `employees` VALUES (56, 'Ray J. Leon', '095-989-1763', '6628 Nunc. St.', 4, 0, '2018-07-09 10:46:08', '1990-05-17 09:38:24', 'torquent@vitaealiquameros.net');
INSERT INTO `employees` VALUES (57, 'Brady Hamilton', '050-715-0493', 'P.O. Box 267, 5909 Rutrum Ave', 1, 0, '2012-01-19 10:59:27', '1984-06-12 13:14:40', 'Duis.mi.enim@Cumsociis.edu');
INSERT INTO `employees` VALUES (58, 'Alexa Hunt', '063-231-6020', 'P.O. Box 857, 787 Erat Av.', 1, 0, '2015-02-22 12:58:16', '1965-01-25 06:07:32', 'laoreet.ipsum.Curabitur@sollicitudincommodo.edu');
INSERT INTO `employees` VALUES (59, 'Halla Jacobson', '035-831-9492', '109-8673 Nibh St.', 4, 0, '2019-02-13 18:01:15', '1987-10-27 16:52:35', 'Quisque.libero.lacus@sit.ca');
INSERT INTO `employees` VALUES (60, 'Louis F. Pitts', '087-781-2695', '147 Tristique Ave', 4, 0, '2017-12-21 19:59:08', '1979-08-27 15:27:08', 'Cras.vulputate.velit@ligulaelitpretium.co.uk');
INSERT INTO `employees` VALUES (61, 'Abel Price', '022-134-8948', 'Ap #780-2245 Eu, Rd.', 2, 0, '2012-10-15 23:11:41', '1959-08-25 16:34:03', 'et.risus@euenim.ca');
INSERT INTO `employees` VALUES (62, 'Wesley Blevins', '070-001-0155', 'P.O. Box 498, 3311 Tristique Rd.', 3, 0, '2009-05-03 10:16:00', '1991-06-24 00:30:55', 'sit@metus.net');
INSERT INTO `employees` VALUES (63, 'Molly Lowe', '071-858-8180', '654 Justo. Rd.', 1, 0, '2009-08-08 22:39:48', '1973-11-03 16:30:51', 'magna@eusem.edu');
INSERT INTO `employees` VALUES (64, 'Zane Stevenson', '083-362-8759', 'Ap #833-343 Nonummy Rd.', 2, 0, '2015-09-18 11:25:47', '1987-06-24 02:15:55', 'sit.amet@acfeugiat.org');
INSERT INTO `employees` VALUES (65, 'Lynn Snider', '056-624-2440', '5910 Ut St.', 2, 0, '2011-03-30 04:37:43', '1992-04-19 02:55:05', 'nec@musDonecdignissim.com');
INSERT INTO `employees` VALUES (66, 'Zoe Hudson', '003-032-2182', 'P.O. Box 923, 5520 Amet Ave', 5, 0, '2007-07-04 03:57:02', '1974-03-03 03:00:36', 'Cras@bibendum.com');
INSERT INTO `employees` VALUES (67, 'Flavia J. Tyson', '091-646-7141', 'P.O. Box 260, 7679 Pharetra. St.', 4, 0, '2013-06-07 11:57:05', '1972-07-13 15:14:20', 'purus@tempusloremfringilla.edu');
INSERT INTO `employees` VALUES (68, 'Sean Blackwell', '011-840-9007', 'Ap #329-2067 Quisque Ave', 4, 0, '2014-03-22 10:39:20', '1968-02-25 04:26:33', 'non@dictum.com');
INSERT INTO `employees` VALUES (69, 'Christopher J. French', '069-789-5547', 'P.O. Box 756, 4409 Urna. St.', 3, 0, '2008-04-25 04:40:13', '1990-07-23 18:21:06', 'arcu.Vestibulum.ante@malesuada.co.uk');
INSERT INTO `employees` VALUES (70, 'Rudyard Q. Bridges', '052-222-5088', '8286 Nam Street', 1, 0, '2010-12-12 16:15:02', '1992-03-11 04:41:40', 'luctus.et@lacinia.net');
INSERT INTO `employees` VALUES (71, 'Cailin D. Kim', '072-146-0349', 'Ap #647-487 Nulla. Rd.', 6, 0, '2011-05-03 08:10:50', '1987-11-22 08:16:44', 'nunc.ac@neque.edu');
INSERT INTO `employees` VALUES (72, 'Erich E. Gregory', '033-843-6117', '472 Adipiscing Rd.', 2, 0, '2007-05-24 08:30:35', '1974-12-29 18:36:52', 'tellus.faucibus.leo@neccursus.org');
INSERT INTO `employees` VALUES (73, 'Wallace Merritt', '080-386-0520', '1772 Euismod Road', 4, 0, '2010-04-19 17:24:46', '1969-06-21 17:14:19', 'arcu.et@sem.ca');
INSERT INTO `employees` VALUES (74, 'Lisandra L. Roth', '074-926-8512', 'Ap #548-4264 Arcu. Street', 1, 0, '2012-02-12 16:47:05', '1961-02-05 19:33:21', 'enim.Etiam@facilisisnon.org');
INSERT INTO `employees` VALUES (75, 'Elmo Wolfe', '040-072-2640', '714-4631 Venenatis Rd.', 3, 0, '2010-08-22 16:40:05', '1967-12-26 22:17:40', 'a@nisiMaurisnulla.edu');
INSERT INTO `employees` VALUES (76, 'Merritt S. Brennan', '086-612-7066', '237-6725 Sed St.', 4, 0, '2009-09-15 09:12:13', '1966-04-12 04:01:20', 'taciti@aliquam.edu');
INSERT INTO `employees` VALUES (77, 'Vaughan Hoffman', '068-977-7641', 'P.O. Box 428, 8114 Nullam St.', 3, 0, '2018-02-24 17:56:03', '1981-05-17 14:15:12', 'imperdiet.ullamcorper.Duis@incursus.ca');
INSERT INTO `employees` VALUES (78, 'Thor Swanson', '084-794-1706', 'P.O. Box 696, 899 Egestas Rd.', 2, 0, '2011-05-21 12:56:49', '1964-01-27 23:58:52', 'lobortis.ultrices.Vivamus@sagittis.com');
INSERT INTO `employees` VALUES (79, 'Elizabeth A. Ellis', '091-982-0262', '7007 Odio Rd.', 2, 0, '2018-06-22 15:58:06', '1960-09-22 13:20:30', 'augue.ut.lacus@Etiam.net');
INSERT INTO `employees` VALUES (80, 'Ruby Q. Middleton', '093-481-5142', '509-6250 Maecenas Rd.', 4, 0, '2016-02-21 15:13:33', '1990-05-11 16:36:08', 'ultrices@adipiscingelitEtiam.org');
INSERT INTO `employees` VALUES (81, 'Caesar V. Sweet', '087-036-8103', 'Ap #189-1238 Cras St.', 6, 0, '2014-11-19 12:20:43', '1969-04-29 23:49:15', 'auctor@diamloremauctor.org');
INSERT INTO `employees` VALUES (82, 'Minerva J. Case', '084-634-7271', '683-4342 Aliquam St.', 2, 0, '2010-09-22 13:23:03', '1981-06-06 23:28:16', 'sit.amet@facilisisfacilisis.org');
INSERT INTO `employees` VALUES (83, 'Noah V. Cooke', '064-505-0319', '5732 Est, St.', 4, 0, '2013-06-18 17:20:51', '1984-05-24 09:52:33', 'Donec@erat.ca');
INSERT INTO `employees` VALUES (84, 'Emerson Q. Melton', '004-079-9624', 'Ap #762-3412 Neque Rd.', 3, 0, '2017-05-12 23:00:41', '1970-11-26 12:40:17', 'Nam@Donec.org');
INSERT INTO `employees` VALUES (85, 'Desirae Chen', '048-756-6595', 'P.O. Box 415, 1736 Pellentesque Ave', 5, 0, '2016-01-09 11:26:34', '1961-09-19 00:09:01', 'diam.Sed.diam@arcuSed.org');
INSERT INTO `employees` VALUES (86, 'Silas Barrett', '037-780-2078', '4715 Magna. Rd.', 2, 0, '2008-02-06 19:45:26', '1982-07-19 20:21:44', 'pretium.neque.Morbi@adipiscingelitAliquam.org');
INSERT INTO `employees` VALUES (87, 'Maisie J. Farmer', '017-912-0736', 'Ap #653-5668 Nulla Av.', 3, 0, '2010-01-09 00:48:17', '1975-10-25 16:00:02', 'morbi.tristique.senectus@sociosquad.edu');
INSERT INTO `employees` VALUES (88, 'Garrison M. Long', '060-528-4711', 'P.O. Box 141, 1763 Vestibulum Ave', 5, 0, '2018-08-02 10:34:45', '1960-04-15 17:58:31', 'Duis.sit.amet@semmolestiesodales.org');
INSERT INTO `employees` VALUES (89, 'Noelle Marsh', '097-415-1966', 'P.O. Box 458, 9320 Sem Avenue', 3, 0, '2012-05-10 18:39:43', '1964-04-16 06:19:50', 'et@facilisis.edu');
INSERT INTO `employees` VALUES (90, 'Carson C. Dyer', '084-404-4672', '9884 Turpis. St.', 6, 0, '2010-03-10 04:42:41', '1982-02-10 02:49:45', 'laoreet@nonenimMauris.net');
INSERT INTO `employees` VALUES (91, 'Juliet Sharp', '094-679-1899', '1301 Faucibus Avenue', 5, 0, '2017-01-01 16:16:03', '1971-05-04 15:28:56', 'ligula.consectetuer.rhoncus@congueelit.ca');
INSERT INTO `employees` VALUES (92, 'Adrienne J. Vang', '010-268-0902', '9155 Aliquam Road', 1, 0, '2008-12-15 10:22:29', '1978-09-09 22:30:01', 'feugiat.Lorem@semmollisdui.ca');
INSERT INTO `employees` VALUES (93, 'Brock Cruz', '016-372-9343', 'Ap #451-8859 Magna Rd.', 3, 0, '2013-05-30 09:58:16', '1960-11-24 02:40:52', 'tincidunt.congue@egetmetus.org');
INSERT INTO `employees` VALUES (94, 'Ivana Eaton', '091-143-8752', 'Ap #198-3283 Dui. St.', 3, 0, '2010-09-03 10:06:36', '1989-12-07 21:47:56', 'molestie.sodales.Mauris@Donec.edu');
INSERT INTO `employees` VALUES (95, 'Cullen R. Rocha', '094-321-8358', '405-7633 Non Ave', 3, 0, '2007-11-07 18:14:51', '1994-07-21 21:25:09', 'arcu@sapien.edu');
INSERT INTO `employees` VALUES (96, 'Samson Franco', '044-853-7733', '7599 Est, Avenue', 2, 0, '2015-05-18 05:16:01', '1980-04-23 06:33:47', 'blandit.at.nisi@odioPhasellus.org');
INSERT INTO `employees` VALUES (97, 'Scott Z. Hamilton', '058-623-9875', '943-4837 Montes, Rd.', 4, 0, '2012-06-29 03:39:29', '1964-04-06 15:49:08', 'eu.erat.semper@aliquet.com');
INSERT INTO `employees` VALUES (98, 'Cynthia Hayden', '020-309-6189', 'Ap #363-7889 Eu Ave', 4, 0, '2016-02-06 12:36:54', '1979-10-04 07:44:35', 'montes.nascetur.ridiculus@Seddictum.co.uk');
INSERT INTO `employees` VALUES (99, 'Palmer Mcdaniel', '048-258-8787', 'P.O. Box 515, 1845 Nibh Avenue', 1, 0, '2010-06-30 22:53:49', '1982-03-30 14:06:26', 'consectetuer.ipsum@nuncsedlibero.edu');
INSERT INTO `employees` VALUES (100, 'Dalton S. Page', '027-539-5617', '533-9416 Nisi St.', 2, 0, '2012-07-26 11:23:09', '1994-06-25 09:26:33', 'nibh.enim@vehicularisus.ca');
INSERT INTO `employees` VALUES (101, 'Kelsey H. Rowland', '071-351-7462', 'Ap #923-8976 Mi St.', 2, 0, '2009-08-22 15:35:29', '1976-11-22 12:41:48', 'consectetuer@molestiein.ca');
INSERT INTO `employees` VALUES (102, 'Curran T. Cummings', '005-940-5547', '923-4597 Pellentesque St.', 4, 0, '2012-03-10 06:34:34', '1965-12-01 23:40:03', 'Morbi.metus@magnatellus.edu');
INSERT INTO `employees` VALUES (103, 'Fuller Fernandez', '078-852-0630', 'Ap #550-9975 Quis, Ave', 4, 0, '2014-09-08 10:30:15', '1984-02-19 04:30:47', 'Suspendisse@lacus.net');
INSERT INTO `employees` VALUES (104, 'Abbot Morales', '030-164-8899', 'Ap #913-2238 Non St.', 3, 0, '2011-02-25 16:55:30', '1969-03-14 02:41:21', 'malesuada.malesuada.Integer@sedlibero.org');
INSERT INTO `employees` VALUES (105, 'Charlotte V. Logan', '045-399-2708', 'P.O. Box 742, 821 Donec St.', 5, 0, '2019-09-24 13:46:20', '1980-06-13 07:19:19', 'odio@sitametornare.com');
INSERT INTO `employees` VALUES (106, 'Melodie F. Pruitt', '077-368-7410', 'P.O. Box 548, 3892 Erat St.', 6, 0, '2012-11-29 17:36:45', '1965-08-18 06:13:33', 'Nulla@eu.co.uk');
INSERT INTO `employees` VALUES (107, 'Carlos M. Byrd', '063-653-6547', '620-6920 A, Rd.', 6, 0, '2014-07-29 01:49:05', '1986-03-04 10:12:42', 'molestie@metusIn.ca');
INSERT INTO `employees` VALUES (108, 'Breanna L. Beasley', '032-890-3357', '840-4683 Donec Road', 6, 0, '2018-02-11 07:29:54', '1963-08-25 15:41:00', 'in@laoreet.edu');
INSERT INTO `employees` VALUES (109, 'Owen F. Moore', '013-285-2698', 'Ap #938-8887 Accumsan Rd.', 3, 0, '2011-06-05 09:29:39', '1994-04-18 14:55:46', 'feugiat@elementumpurusaccumsan.com');
INSERT INTO `employees` VALUES (110, 'Inga U. Shannon', '028-180-3803', 'P.O. Box 239, 8530 Risus Rd.', 4, 0, '2008-08-20 03:25:35', '1991-07-15 11:51:50', 'rutrum@leo.ca');
INSERT INTO `employees` VALUES (111, 'Wesley Rich', '048-302-6507', 'P.O. Box 308, 9975 Ac Avenue', 2, 0, '2016-04-01 04:59:22', '1986-02-22 09:49:46', 'id.erat@elitpedemalesuada.co.uk');
INSERT INTO `employees` VALUES (112, 'Alden Heath', '026-857-4031', '661-4256 Parturient Ave', 4, 0, '2012-01-12 01:54:15', '1971-02-11 05:39:42', 'Nulla.aliquet.Proin@PhasellusnullaInteger.org');
INSERT INTO `employees` VALUES (113, 'Irene Monroe', '074-865-0045', 'Ap #517-3823 Augue Street', 3, 0, '2009-10-13 15:02:40', '1974-06-26 08:42:52', 'pede.Cras@mipedenonummy.ca');
INSERT INTO `employees` VALUES (114, 'Jeremy Reilly', '012-396-8755', 'Ap #932-8003 Augue Av.', 4, 0, '2013-04-16 12:54:07', '1961-10-28 14:34:28', 'mollis.nec@lectus.com');
INSERT INTO `employees` VALUES (115, 'Bell H. Mejia', '086-712-4734', '5352 Dictum Road', 6, 0, '2018-06-15 08:50:48', '1977-07-27 22:19:05', 'fringilla.ornare.placerat@porttitorvulputate.com');
INSERT INTO `employees` VALUES (116, 'Otto Austin', '081-916-9913', '745-1657 Phasellus St.', 3, 0, '2018-05-03 23:29:19', '1970-05-10 18:57:38', 'vulputate@Mauris.edu');
INSERT INTO `employees` VALUES (117, 'Armando Bradford', '071-612-7623', 'P.O. Box 555, 2411 Erat Avenue', 3, 0, '2011-08-06 19:12:07', '1964-04-10 00:12:25', 'quam@blandit.org');
INSERT INTO `employees` VALUES (118, 'Orlando Z. Chandler', '091-790-8687', 'P.O. Box 768, 4818 Vitae Street', 4, 0, '2009-08-28 00:38:19', '1994-07-23 18:51:09', 'id@aliquamiaculis.net');
INSERT INTO `employees` VALUES (119, 'Jena S. Wiggins', '039-248-2014', 'P.O. Box 346, 294 Enim Road', 1, 0, '2017-11-11 19:25:10', '1974-11-07 05:14:01', 'pulvinar.arcu.et@parturient.net');
INSERT INTO `employees` VALUES (120, 'Christine Chase', '011-104-2879', '575-4491 Ultricies Avenue', 6, 0, '2009-03-06 07:22:57', '1980-05-19 23:29:50', 'eu.augue.porttitor@urnaUttincidunt.org');
INSERT INTO `employees` VALUES (121, 'August D. Chan', '062-391-9517', 'Ap #347-1989 Volutpat. Street', 3, 0, '2007-11-05 07:38:35', '1992-12-26 12:46:07', 'iaculis.odio@Aliquamadipiscing.net');
INSERT INTO `employees` VALUES (122, 'Fitzgerald G. Mclaughlin', '054-473-4309', '151-603 Diam Rd.', 3, 0, '2016-04-11 17:48:30', '1984-09-03 01:21:54', 'Pellentesque.ultricies@ante.net');
INSERT INTO `employees` VALUES (123, 'Joshua Z. Villarreal', '077-662-1654', '5685 Sed Rd.', 3, 0, '2008-11-18 14:28:42', '1990-09-26 14:25:46', 'Quisque@luctusipsumleo.net');
INSERT INTO `employees` VALUES (124, 'Hillary S. Kirby', '064-068-4707', 'P.O. Box 839, 8145 Ullamcorper. Avenue', 5, 0, '2011-06-02 14:59:12', '1974-03-08 06:24:51', 'In.nec.orci@Quisqueornaretortor.org');
INSERT INTO `employees` VALUES (125, 'Danielle Bradshaw', '028-889-6304', '3808 Semper St.', 4, 0, '2018-01-21 11:45:44', '1978-09-13 13:57:25', 'Maecenas@turpis.net');
INSERT INTO `employees` VALUES (126, 'Amy Mcmahon', '007-410-5261', '597-5818 Sollicitudin Av.', 1, 0, '2008-06-04 11:31:55', '1982-09-24 13:50:37', 'nisl.Quisque.fringilla@nasceturridiculusmus.com');
INSERT INTO `employees` VALUES (127, 'Yardley E. Zamora', '090-789-1738', '8960 Nam St.', 5, 0, '2018-11-05 08:24:37', '1996-08-08 00:43:12', 'eu.odio.tristique@Curabiturconsequatlectus.net');
INSERT INTO `employees` VALUES (128, 'Raja B. Blackburn', '087-668-0791', '6841 Adipiscing, Road', 5, 0, '2012-07-20 23:43:34', '1959-03-03 23:23:11', 'molestie.pharetra.nibh@vehicula.co.uk');
INSERT INTO `employees` VALUES (129, 'Fletcher Osborne', '048-441-2010', '2252 Eu, St.', 5, 0, '2017-12-26 15:06:15', '1978-10-02 20:10:44', 'magnis@sitamet.com');
INSERT INTO `employees` VALUES (130, 'Amos Myers', '020-907-7708', '572-1534 Orci. Avenue', 1, 0, '2018-07-07 23:54:04', '1963-01-31 17:39:10', 'Sed@Phasellus.com');
INSERT INTO `employees` VALUES (131, 'Mariam Slater', '049-024-9865', '596 Pellentesque. Road', 5, 0, '2018-05-25 08:49:34', '1996-11-27 16:15:59', 'sit@vel.net');
INSERT INTO `employees` VALUES (132, 'Arsenio U. Ingram', '008-693-5655', '7319 A, Rd.', 1, 0, '2009-01-29 16:41:49', '1988-09-01 20:02:33', 'diam.nunc@consectetuer.org');
INSERT INTO `employees` VALUES (133, 'Quamar Vincent', '005-210-4180', 'Ap #889-2094 Est. Rd.', 5, 0, '2014-12-21 00:47:21', '1969-10-07 14:00:34', 'Proin.eget@convallis.org');
INSERT INTO `employees` VALUES (134, 'Blossom I. Dickson', '072-708-4775', '427-3358 At, Rd.', 6, 0, '2014-02-16 02:40:21', '1965-05-18 14:03:51', 'ligula.Donec.luctus@massaSuspendisseeleifend.com');
INSERT INTO `employees` VALUES (135, 'Samson Q. Blevins', '059-400-9702', '9863 A, Av.', 4, 0, '2012-12-27 23:40:14', '1979-11-25 06:36:20', 'nec.eleifend.non@cursusnonegestas.com');
INSERT INTO `employees` VALUES (136, 'Jessamine G. Palmer', '023-608-4145', 'P.O. Box 592, 2633 Egestas. Rd.', 3, 0, '2009-04-24 07:44:06', '1986-04-16 02:48:25', 'ridiculus@Crasdolordolor.net');
INSERT INTO `employees` VALUES (137, 'Charissa A. Mcmillan', '057-213-3766', '5187 Mollis. St.', 3, 0, '2011-12-30 10:26:46', '1964-04-10 12:27:30', 'Duis.ac@auctorodio.org');
INSERT INTO `employees` VALUES (138, 'Nell Robertson', '055-656-3826', '6707 Consequat, Street', 5, 0, '2015-04-29 11:13:54', '1971-01-26 02:22:33', 'pede.malesuada.vel@egestasAliquam.net');
INSERT INTO `employees` VALUES (139, 'Orson S. Little', '092-747-1494', 'Ap #491-514 Id Ave', 4, 0, '2014-07-02 07:46:28', '1963-12-29 09:35:00', 'Nulla.facilisi.Sed@turpisnon.com');
INSERT INTO `employees` VALUES (140, 'Kermit T. Meyer', '062-216-6611', 'P.O. Box 280, 5434 Laoreet Road', 6, 0, '2013-08-25 15:19:31', '1979-08-03 12:45:04', 'sapien.Nunc@feugiat.ca');
INSERT INTO `employees` VALUES (141, 'Ginger Y. Haynes', '069-415-5272', 'P.O. Box 623, 6377 Tincidunt. St.', 3, 0, '2008-09-13 22:15:58', '1978-05-17 07:11:49', 'Donec.consectetuer.mauris@viverraMaecenas.ca');
INSERT INTO `employees` VALUES (142, 'Keith M. Bartlett', '020-595-5000', '558-2833 Facilisis Ave', 2, 0, '2018-09-29 14:58:41', '1960-08-22 03:29:10', 'accumsan.interdum.libero@mauris.net');
INSERT INTO `employees` VALUES (143, 'Kareem Stokes', '003-267-6212', 'P.O. Box 187, 2262 Nulla. Rd.', 3, 0, '2018-10-28 15:48:56', '1979-01-14 05:06:57', 'Cras@faucibus.net');
INSERT INTO `employees` VALUES (144, 'Neil Ball', '092-584-5917', 'Ap #183-6876 Rhoncus. Rd.', 2, 0, '2012-09-08 01:39:12', '1970-11-14 18:42:02', 'porttitor.vulputate@Proineget.edu');
INSERT INTO `employees` VALUES (145, 'Yen Bauer', '022-748-3031', 'P.O. Box 608, 3857 Tempus Avenue', 4, 0, '2013-04-09 16:08:43', '1988-02-02 02:05:11', 'neque.venenatis@Donecsollicitudinadipiscing.ca');
INSERT INTO `employees` VALUES (146, 'Brooke N. Mcfarland', '029-199-2174', '5238 Cursus Ave', 5, 0, '2008-08-04 23:44:20', '1959-07-09 17:22:35', 'nisl.Maecenas.malesuada@egetmagna.org');
INSERT INTO `employees` VALUES (147, 'Colby I. Bush', '084-374-2692', '9831 Eu Road', 1, 0, '2012-02-20 19:54:29', '1970-02-18 19:16:11', 'Aenean.massa@mollisnoncursus.edu');
INSERT INTO `employees` VALUES (148, 'Dorothy Cooley', '061-480-7677', 'Ap #592-3936 Sapien. Av.', 6, 0, '2016-09-22 18:44:29', '1996-04-19 11:40:43', 'lectus@Curabituregestasnunc.co.uk');
INSERT INTO `employees` VALUES (149, 'Avram L. Mills', '025-467-1637', '8689 Vitae, St.', 5, 0, '2013-10-25 04:35:24', '1980-12-14 22:20:23', 'egestas.hendrerit@NullafacilisisSuspendisse.net');
INSERT INTO `employees` VALUES (150, 'Giselle Sullivan', '040-071-2051', 'P.O. Box 340, 8772 Vestibulum Ave', 2, 0, '2011-03-24 07:42:33', '1976-05-12 14:38:59', 'luctus.ipsum@tinciduntnibh.net');
INSERT INTO `employees` VALUES (151, 'Amaya Perry', '066-426-4583', 'P.O. Box 470, 3797 Sagittis Road', 2, 0, '2011-07-13 15:42:11', '1975-02-10 21:59:11', 'nibh@feugiatSed.ca');
INSERT INTO `employees` VALUES (152, 'Aline Dennis', '058-936-1460', '207-9891 Dolor Av.', 5, 0, '2011-01-04 08:32:10', '1970-03-24 00:45:03', 'libero@rutrumeuultrices.net');
INSERT INTO `employees` VALUES (153, 'Hedwig Hill', '055-124-0264', '268-5938 Ac St.', 4, 0, '2007-08-13 09:06:48', '1961-06-11 03:38:06', 'elit@miAliquamgravida.net');
INSERT INTO `employees` VALUES (154, 'Rogan R. Michael', '049-009-5836', '3065 Nisl St.', 3, 0, '2009-01-10 06:56:28', '1969-08-01 10:33:57', 'nonummy@lacus.com');
INSERT INTO `employees` VALUES (155, 'Abel Blake', '095-946-4424', '3513 Duis Av.', 3, 0, '2014-07-12 02:11:04', '1978-10-12 05:34:28', 'vulputate@viverraMaecenasiaculis.com');
INSERT INTO `employees` VALUES (156, 'Ray J. Leon', '095-989-1763', '6628 Nunc. St.', 4, 0, '2018-07-09 10:46:08', '1990-05-17 09:38:24', 'torquent@vitaealiquameros.net');
INSERT INTO `employees` VALUES (157, 'Brady Hamilton', '050-715-0493', 'P.O. Box 267, 5909 Rutrum Ave', 1, 0, '2012-01-19 10:59:27', '1984-06-12 13:14:40', 'Duis.mi.enim@Cumsociis.edu');
INSERT INTO `employees` VALUES (158, 'Alexa Hunt', '063-231-6020', 'P.O. Box 857, 787 Erat Av.', 1, 0, '2015-02-22 12:58:16', '1965-01-25 06:07:32', 'laoreet.ipsum.Curabitur@sollicitudincommodo.edu');
INSERT INTO `employees` VALUES (159, 'Halla Jacobson', '035-831-9492', '109-8673 Nibh St.', 4, 0, '2019-02-13 18:01:15', '1987-10-27 16:52:35', 'Quisque.libero.lacus@sit.ca');
INSERT INTO `employees` VALUES (160, 'Louis F. Pitts', '087-781-2695', '147 Tristique Ave', 4, 0, '2017-12-21 19:59:08', '1979-08-27 15:27:08', 'Cras.vulputate.velit@ligulaelitpretium.co.uk');
INSERT INTO `employees` VALUES (161, 'Abel Price', '022-134-8948', 'Ap #780-2245 Eu, Rd.', 2, 0, '2012-10-15 23:11:41', '1959-08-25 16:34:03', 'et.risus@euenim.ca');
INSERT INTO `employees` VALUES (162, 'Wesley Blevins', '070-001-0155', 'P.O. Box 498, 3311 Tristique Rd.', 3, 0, '2009-05-03 10:16:00', '1991-06-24 00:30:55', 'sit@metus.net');
INSERT INTO `employees` VALUES (163, 'Molly Lowe', '071-858-8180', '654 Justo. Rd.', 1, 0, '2009-08-08 22:39:48', '1973-11-03 16:30:51', 'magna@eusem.edu');
INSERT INTO `employees` VALUES (164, 'Zane Stevenson', '083-362-8759', 'Ap #833-343 Nonummy Rd.', 2, 0, '2015-09-18 11:25:47', '1987-06-24 02:15:55', 'sit.amet@acfeugiat.org');
INSERT INTO `employees` VALUES (165, 'Lynn Snider', '056-624-2440', '5910 Ut St.', 2, 0, '2011-03-30 04:37:43', '1992-04-19 02:55:05', 'nec@musDonecdignissim.com');
INSERT INTO `employees` VALUES (166, 'Zoe Hudson', '003-032-2182', 'P.O. Box 923, 5520 Amet Ave', 5, 0, '2007-07-04 03:57:02', '1974-03-03 03:00:36', 'Cras@bibendum.com');
INSERT INTO `employees` VALUES (167, 'Flavia J. Tyson', '091-646-7141', 'P.O. Box 260, 7679 Pharetra. St.', 4, 0, '2013-06-07 11:57:05', '1972-07-13 15:14:20', 'purus@tempusloremfringilla.edu');
INSERT INTO `employees` VALUES (168, 'Sean Blackwell', '011-840-9007', 'Ap #329-2067 Quisque Ave', 4, 0, '2014-03-22 10:39:20', '1968-02-25 04:26:33', 'non@dictum.com');
INSERT INTO `employees` VALUES (169, 'Christopher J. French', '069-789-5547', 'P.O. Box 756, 4409 Urna. St.', 3, 0, '2008-04-25 04:40:13', '1990-07-23 18:21:06', 'arcu.Vestibulum.ante@malesuada.co.uk');
INSERT INTO `employees` VALUES (170, 'Rudyard Q. Bridges', '052-222-5088', '8286 Nam Street', 1, 0, '2010-12-12 16:15:02', '1992-03-11 04:41:40', 'luctus.et@lacinia.net');
INSERT INTO `employees` VALUES (171, 'Cailin D. Kim', '072-146-0349', 'Ap #647-487 Nulla. Rd.', 6, 0, '2011-05-03 08:10:50', '1987-11-22 08:16:44', 'nunc.ac@neque.edu');
INSERT INTO `employees` VALUES (172, 'Erich E. Gregory', '033-843-6117', '472 Adipiscing Rd.', 2, 0, '2007-05-24 08:30:35', '1974-12-29 18:36:52', 'tellus.faucibus.leo@neccursus.org');
INSERT INTO `employees` VALUES (173, 'Wallace Merritt', '080-386-0520', '1772 Euismod Road', 4, 0, '2010-04-19 17:24:46', '1969-06-21 17:14:19', 'arcu.et@sem.ca');
INSERT INTO `employees` VALUES (174, 'Lisandra L. Roth', '074-926-8512', 'Ap #548-4264 Arcu. Street', 1, 0, '2012-02-12 16:47:05', '1961-02-05 19:33:21', 'enim.Etiam@facilisisnon.org');
INSERT INTO `employees` VALUES (175, 'Elmo Wolfe', '040-072-2640', '714-4631 Venenatis Rd.', 3, 0, '2010-08-22 16:40:05', '1967-12-26 22:17:40', 'a@nisiMaurisnulla.edu');
INSERT INTO `employees` VALUES (176, 'Merritt S. Brennan', '086-612-7066', '237-6725 Sed St.', 4, 0, '2009-09-15 09:12:13', '1966-04-12 04:01:20', 'taciti@aliquam.edu');
INSERT INTO `employees` VALUES (177, 'Vaughan Hoffman', '068-977-7641', 'P.O. Box 428, 8114 Nullam St.', 3, 0, '2018-02-24 17:56:03', '1981-05-17 14:15:12', 'imperdiet.ullamcorper.Duis@incursus.ca');
INSERT INTO `employees` VALUES (178, 'Thor Swanson', '084-794-1706', 'P.O. Box 696, 899 Egestas Rd.', 2, 0, '2011-05-21 12:56:49', '1964-01-27 23:58:52', 'lobortis.ultrices.Vivamus@sagittis.com');
INSERT INTO `employees` VALUES (179, 'Elizabeth A. Ellis', '091-982-0262', '7007 Odio Rd.', 2, 0, '2018-06-22 15:58:06', '1960-09-22 13:20:30', 'augue.ut.lacus@Etiam.net');
INSERT INTO `employees` VALUES (180, 'Ruby Q. Middleton', '093-481-5142', '509-6250 Maecenas Rd.', 4, 0, '2016-02-21 15:13:33', '1990-05-11 16:36:08', 'ultrices@adipiscingelitEtiam.org');
INSERT INTO `employees` VALUES (181, 'Caesar V. Sweet', '087-036-8103', 'Ap #189-1238 Cras St.', 6, 0, '2014-11-19 12:20:43', '1969-04-29 23:49:15', 'auctor@diamloremauctor.org');
INSERT INTO `employees` VALUES (182, 'Minerva J. Case', '084-634-7271', '683-4342 Aliquam St.', 2, 0, '2010-09-22 13:23:03', '1981-06-06 23:28:16', 'sit.amet@facilisisfacilisis.org');
INSERT INTO `employees` VALUES (183, 'Noah V. Cooke', '064-505-0319', '5732 Est, St.', 4, 0, '2013-06-18 17:20:51', '1984-05-24 09:52:33', 'Donec@erat.ca');
INSERT INTO `employees` VALUES (184, 'Emerson Q. Melton', '004-079-9624', 'Ap #762-3412 Neque Rd.', 3, 0, '2017-05-12 23:00:41', '1970-11-26 12:40:17', 'Nam@Donec.org');
INSERT INTO `employees` VALUES (185, 'Desirae Chen', '048-756-6595', 'P.O. Box 415, 1736 Pellentesque Ave', 5, 0, '2016-01-09 11:26:34', '1961-09-19 00:09:01', 'diam.Sed.diam@arcuSed.org');
INSERT INTO `employees` VALUES (186, 'Silas Barrett', '037-780-2078', '4715 Magna. Rd.', 2, 0, '2008-02-06 19:45:26', '1982-07-19 20:21:44', 'pretium.neque.Morbi@adipiscingelitAliquam.org');
INSERT INTO `employees` VALUES (187, 'Maisie J. Farmer', '017-912-0736', 'Ap #653-5668 Nulla Av.', 3, 0, '2010-01-09 00:48:17', '1975-10-25 16:00:02', 'morbi.tristique.senectus@sociosquad.edu');
INSERT INTO `employees` VALUES (188, 'Garrison M. Long', '060-528-4711', 'P.O. Box 141, 1763 Vestibulum Ave', 5, 0, '2018-08-02 10:34:45', '1960-04-15 17:58:31', 'Duis.sit.amet@semmolestiesodales.org');
INSERT INTO `employees` VALUES (189, 'Noelle Marsh', '097-415-1966', 'P.O. Box 458, 9320 Sem Avenue', 3, 0, '2012-05-10 18:39:43', '1964-04-16 06:19:50', 'et@facilisis.edu');
INSERT INTO `employees` VALUES (190, 'Carson C. Dyer', '084-404-4672', '9884 Turpis. St.', 6, 0, '2010-03-10 04:42:41', '1982-02-10 02:49:45', 'laoreet@nonenimMauris.net');
INSERT INTO `employees` VALUES (191, 'Juliet Sharp', '094-679-1899', '1301 Faucibus Avenue', 5, 0, '2017-01-01 16:16:03', '1971-05-04 15:28:56', 'ligula.consectetuer.rhoncus@congueelit.ca');
INSERT INTO `employees` VALUES (192, 'Adrienne J. Vang', '010-268-0902', '9155 Aliquam Road', 1, 0, '2008-12-15 10:22:29', '1978-09-09 22:30:01', 'feugiat.Lorem@semmollisdui.ca');
INSERT INTO `employees` VALUES (193, 'Brock Cruz', '016-372-9343', 'Ap #451-8859 Magna Rd.', 3, 0, '2013-05-30 09:58:16', '1960-11-24 02:40:52', 'tincidunt.congue@egetmetus.org');
INSERT INTO `employees` VALUES (194, 'Ivana Eaton', '091-143-8752', 'Ap #198-3283 Dui. St.', 3, 0, '2010-09-03 10:06:36', '1989-12-07 21:47:56', 'molestie.sodales.Mauris@Donec.edu');
INSERT INTO `employees` VALUES (195, 'Cullen R. Rocha', '094-321-8358', '405-7633 Non Ave', 3, 0, '2007-11-07 18:14:51', '1994-07-21 21:25:09', 'arcu@sapien.edu');
INSERT INTO `employees` VALUES (196, 'Samson Franco', '044-853-7733', '7599 Est, Avenue', 2, 0, '2015-05-18 05:16:01', '1980-04-23 06:33:47', 'blandit.at.nisi@odioPhasellus.org');
INSERT INTO `employees` VALUES (197, 'Scott Z. Hamilton', '058-623-9875', '943-4837 Montes, Rd.', 4, 0, '2012-06-29 03:39:29', '1964-04-06 15:49:08', 'eu.erat.semper@aliquet.com');
INSERT INTO `employees` VALUES (198, 'Cynthia Hayden', '020-309-6189', 'Ap #363-7889 Eu Ave', 4, 0, '2016-02-06 12:36:54', '1979-10-04 07:44:35', 'montes.nascetur.ridiculus@Seddictum.co.uk');
INSERT INTO `employees` VALUES (199, 'Palmer Mcdaniel', '048-258-8787', 'P.O. Box 515, 1845 Nibh Avenue', 1, 0, '2010-06-30 22:53:49', '1982-03-30 14:06:26', 'consectetuer.ipsum@nuncsedlibero.edu');
INSERT INTO `employees` VALUES (200, 'Dalton S. Page', '027-539-5617', '533-9416 Nisi St.', 2, 0, '2012-07-26 11:23:09', '1994-06-25 09:26:33', 'nibh.enim@vehicularisus.ca');
INSERT INTO `employees` VALUES (201, 'Kelsey H. Rowland', '071-351-7462', 'Ap #923-8976 Mi St.', 2, 0, '2009-08-22 15:35:29', '1976-11-22 12:41:48', 'consectetuer@molestiein.ca');
INSERT INTO `employees` VALUES (202, 'Curran T. Cummings', '005-940-5547', '923-4597 Pellentesque St.', 4, 0, '2012-03-10 06:34:34', '1965-12-01 23:40:03', 'Morbi.metus@magnatellus.edu');
INSERT INTO `employees` VALUES (203, 'Fuller Fernandez', '078-852-0630', 'Ap #550-9975 Quis, Ave', 4, 0, '2014-09-08 10:30:15', '1984-02-19 04:30:47', 'Suspendisse@lacus.net');
INSERT INTO `employees` VALUES (204, 'Abbot Morales', '030-164-8899', 'Ap #913-2238 Non St.', 3, 0, '2011-02-25 16:55:30', '1969-03-14 02:41:21', 'malesuada.malesuada.Integer@sedlibero.org');
INSERT INTO `employees` VALUES (205, 'Charlotte V. Logan', '045-399-2708', 'P.O. Box 742, 821 Donec St.', 5, 0, '2019-09-24 13:46:20', '1980-06-13 07:19:19', 'odio@sitametornare.com');
INSERT INTO `employees` VALUES (206, 'Melodie F. Pruitt', '077-368-7410', 'P.O. Box 548, 3892 Erat St.', 6, 0, '2012-11-29 17:36:45', '1965-08-18 06:13:33', 'Nulla@eu.co.uk');
INSERT INTO `employees` VALUES (207, 'Carlos M. Byrd', '063-653-6547', '620-6920 A, Rd.', 6, 0, '2014-07-29 01:49:05', '1986-03-04 10:12:42', 'molestie@metusIn.ca');
INSERT INTO `employees` VALUES (208, 'Breanna L. Beasley', '032-890-3357', '840-4683 Donec Road', 6, 0, '2018-02-11 07:29:54', '1963-08-25 15:41:00', 'in@laoreet.edu');
INSERT INTO `employees` VALUES (209, 'Owen F. Moore', '013-285-2698', 'Ap #938-8887 Accumsan Rd.', 3, 0, '2011-06-05 09:29:39', '1994-04-18 14:55:46', 'feugiat@elementumpurusaccumsan.com');
INSERT INTO `employees` VALUES (210, 'Inga U. Shannon', '028-180-3803', 'P.O. Box 239, 8530 Risus Rd.', 4, 0, '2008-08-20 03:25:35', '1991-07-15 11:51:50', 'rutrum@leo.ca');
INSERT INTO `employees` VALUES (211, 'Wesley Rich', '048-302-6507', 'P.O. Box 308, 9975 Ac Avenue', 2, 0, '2016-04-01 04:59:22', '1986-02-22 09:49:46', 'id.erat@elitpedemalesuada.co.uk');
INSERT INTO `employees` VALUES (212, 'Alden Heath', '026-857-4031', '661-4256 Parturient Ave', 4, 0, '2012-01-12 01:54:15', '1971-02-11 05:39:42', 'Nulla.aliquet.Proin@PhasellusnullaInteger.org');
INSERT INTO `employees` VALUES (213, 'Irene Monroe', '074-865-0045', 'Ap #517-3823 Augue Street', 3, 0, '2009-10-13 15:02:40', '1974-06-26 08:42:52', 'pede.Cras@mipedenonummy.ca');
INSERT INTO `employees` VALUES (214, 'Jeremy Reilly', '012-396-8755', 'Ap #932-8003 Augue Av.', 4, 0, '2013-04-16 12:54:07', '1961-10-28 14:34:28', 'mollis.nec@lectus.com');
INSERT INTO `employees` VALUES (215, 'Bell H. Mejia', '086-712-4734', '5352 Dictum Road', 6, 0, '2018-06-15 08:50:48', '1977-07-27 22:19:05', 'fringilla.ornare.placerat@porttitorvulputate.com');
INSERT INTO `employees` VALUES (216, 'Otto Austin', '081-916-9913', '745-1657 Phasellus St.', 3, 0, '2018-05-03 23:29:19', '1970-05-10 18:57:38', 'vulputate@Mauris.edu');
INSERT INTO `employees` VALUES (217, 'Armando Bradford', '071-612-7623', 'P.O. Box 555, 2411 Erat Avenue', 3, 0, '2011-08-06 19:12:07', '1964-04-10 00:12:25', 'quam@blandit.org');
INSERT INTO `employees` VALUES (218, 'Orlando Z. Chandler', '091-790-8687', 'P.O. Box 768, 4818 Vitae Street', 4, 0, '2009-08-28 00:38:19', '1994-07-23 18:51:09', 'id@aliquamiaculis.net');
INSERT INTO `employees` VALUES (219, 'Jena S. Wiggins', '039-248-2014', 'P.O. Box 346, 294 Enim Road', 1, 0, '2017-11-11 19:25:10', '1974-11-07 05:14:01', 'pulvinar.arcu.et@parturient.net');
INSERT INTO `employees` VALUES (220, 'Christine Chase', '011-104-2879', '575-4491 Ultricies Avenue', 6, 0, '2009-03-06 07:22:57', '1980-05-19 23:29:50', 'eu.augue.porttitor@urnaUttincidunt.org');
INSERT INTO `employees` VALUES (221, 'August D. Chan', '062-391-9517', 'Ap #347-1989 Volutpat. Street', 3, 0, '2007-11-05 07:38:35', '1992-12-26 12:46:07', 'iaculis.odio@Aliquamadipiscing.net');
INSERT INTO `employees` VALUES (222, 'Fitzgerald G. Mclaughlin', '054-473-4309', '151-603 Diam Rd.', 3, 0, '2016-04-11 17:48:30', '1984-09-03 01:21:54', 'Pellentesque.ultricies@ante.net');
INSERT INTO `employees` VALUES (223, 'Joshua Z. Villarreal', '077-662-1654', '5685 Sed Rd.', 3, 0, '2008-11-18 14:28:42', '1990-09-26 14:25:46', 'Quisque@luctusipsumleo.net');
INSERT INTO `employees` VALUES (224, 'Hillary S. Kirby', '064-068-4707', 'P.O. Box 839, 8145 Ullamcorper. Avenue', 5, 0, '2011-06-02 14:59:12', '1974-03-08 06:24:51', 'In.nec.orci@Quisqueornaretortor.org');
INSERT INTO `employees` VALUES (225, 'Danielle Bradshaw', '028-889-6304', '3808 Semper St.', 4, 0, '2018-01-21 11:45:44', '1978-09-13 13:57:25', 'Maecenas@turpis.net');
INSERT INTO `employees` VALUES (226, 'Amy Mcmahon', '007-410-5261', '597-5818 Sollicitudin Av.', 1, 0, '2008-06-04 11:31:55', '1982-09-24 13:50:37', 'nisl.Quisque.fringilla@nasceturridiculusmus.com');
INSERT INTO `employees` VALUES (227, 'Yardley E. Zamora', '090-789-1738', '8960 Nam St.', 5, 0, '2018-11-05 08:24:37', '1996-08-08 00:43:12', 'eu.odio.tristique@Curabiturconsequatlectus.net');
INSERT INTO `employees` VALUES (228, 'Raja B. Blackburn', '087-668-0791', '6841 Adipiscing, Road', 5, 0, '2012-07-20 23:43:34', '1959-03-03 23:23:11', 'molestie.pharetra.nibh@vehicula.co.uk');
INSERT INTO `employees` VALUES (229, 'Fletcher Osborne', '048-441-2010', '2252 Eu, St.', 5, 0, '2017-12-26 15:06:15', '1978-10-02 20:10:44', 'magnis@sitamet.com');
INSERT INTO `employees` VALUES (230, 'Amos Myers', '020-907-7708', '572-1534 Orci. Avenue', 1, 0, '2018-07-07 23:54:04', '1963-01-31 17:39:10', 'Sed@Phasellus.com');
INSERT INTO `employees` VALUES (231, 'Mariam Slater', '049-024-9865', '596 Pellentesque. Road', 5, 0, '2018-05-25 08:49:34', '1996-11-27 16:15:59', 'sit@vel.net');
INSERT INTO `employees` VALUES (232, 'Arsenio U. Ingram', '008-693-5655', '7319 A, Rd.', 1, 0, '2009-01-29 16:41:49', '1988-09-01 20:02:33', 'diam.nunc@consectetuer.org');
INSERT INTO `employees` VALUES (233, 'Quamar Vincent', '005-210-4180', 'Ap #889-2094 Est. Rd.', 5, 0, '2014-12-21 00:47:21', '1969-10-07 14:00:34', 'Proin.eget@convallis.org');
INSERT INTO `employees` VALUES (234, 'Blossom I. Dickson', '072-708-4775', '427-3358 At, Rd.', 6, 0, '2014-02-16 02:40:21', '1965-05-18 14:03:51', 'ligula.Donec.luctus@massaSuspendisseeleifend.com');
INSERT INTO `employees` VALUES (235, 'Samson Q. Blevins', '059-400-9702', '9863 A, Av.', 4, 0, '2012-12-27 23:40:14', '1979-11-25 06:36:20', 'nec.eleifend.non@cursusnonegestas.com');
INSERT INTO `employees` VALUES (236, 'Jessamine G. Palmer', '023-608-4145', 'P.O. Box 592, 2633 Egestas. Rd.', 3, 0, '2009-04-24 07:44:06', '1986-04-16 02:48:25', 'ridiculus@Crasdolordolor.net');
INSERT INTO `employees` VALUES (237, 'Charissa A. Mcmillan', '057-213-3766', '5187 Mollis. St.', 3, 0, '2011-12-30 10:26:46', '1964-04-10 12:27:30', 'Duis.ac@auctorodio.org');
INSERT INTO `employees` VALUES (238, 'Nell Robertson', '055-656-3826', '6707 Consequat, Street', 5, 0, '2015-04-29 11:13:54', '1971-01-26 02:22:33', 'pede.malesuada.vel@egestasAliquam.net');
INSERT INTO `employees` VALUES (239, 'Orson S. Little', '092-747-1494', 'Ap #491-514 Id Ave', 4, 0, '2014-07-02 07:46:28', '1963-12-29 09:35:00', 'Nulla.facilisi.Sed@turpisnon.com');
INSERT INTO `employees` VALUES (240, 'Kermit T. Meyer', '062-216-6611', 'P.O. Box 280, 5434 Laoreet Road', 6, 0, '2013-08-25 15:19:31', '1979-08-03 12:45:04', 'sapien.Nunc@feugiat.ca');
INSERT INTO `employees` VALUES (241, 'Ginger Y. Haynes', '069-415-5272', 'P.O. Box 623, 6377 Tincidunt. St.', 3, 0, '2008-09-13 22:15:58', '1978-05-17 07:11:49', 'Donec.consectetuer.mauris@viverraMaecenas.ca');
INSERT INTO `employees` VALUES (242, 'Keith M. Bartlett', '020-595-5000', '558-2833 Facilisis Ave', 2, 0, '2018-09-29 14:58:41', '1960-08-22 03:29:10', 'accumsan.interdum.libero@mauris.net');
INSERT INTO `employees` VALUES (243, 'Kareem Stokes', '003-267-6212', 'P.O. Box 187, 2262 Nulla. Rd.', 3, 0, '2018-10-28 15:48:56', '1979-01-14 05:06:57', 'Cras@faucibus.net');
INSERT INTO `employees` VALUES (244, 'Neil Ball', '092-584-5917', 'Ap #183-6876 Rhoncus. Rd.', 2, 0, '2012-09-08 01:39:12', '1970-11-14 18:42:02', 'porttitor.vulputate@Proineget.edu');
INSERT INTO `employees` VALUES (245, 'Yen Bauer', '022-748-3031', 'P.O. Box 608, 3857 Tempus Avenue', 4, 0, '2013-04-09 16:08:43', '1988-02-02 02:05:11', 'neque.venenatis@Donecsollicitudinadipiscing.ca');
INSERT INTO `employees` VALUES (246, 'Brooke N. Mcfarland', '029-199-2174', '5238 Cursus Ave', 5, 0, '2008-08-04 23:44:20', '1959-07-09 17:22:35', 'nisl.Maecenas.malesuada@egetmagna.org');
INSERT INTO `employees` VALUES (247, 'Colby I. Bush', '084-374-2692', '9831 Eu Road', 1, 0, '2012-02-20 19:54:29', '1970-02-18 19:16:11', 'Aenean.massa@mollisnoncursus.edu');
INSERT INTO `employees` VALUES (248, 'Dorothy Cooley', '061-480-7677', 'Ap #592-3936 Sapien. Av.', 6, 0, '2016-09-22 18:44:29', '1996-04-19 11:40:43', 'lectus@Curabituregestasnunc.co.uk');
INSERT INTO `employees` VALUES (249, 'Avram L. Mills', '025-467-1637', '8689 Vitae, St.', 5, 0, '2013-10-25 04:35:24', '1980-12-14 22:20:23', 'egestas.hendrerit@NullafacilisisSuspendisse.net');
INSERT INTO `employees` VALUES (250, 'Giselle Sullivan', '040-071-2051', 'P.O. Box 340, 8772 Vestibulum Ave', 2, 0, '2011-03-24 07:42:33', '1976-05-12 14:38:59', 'luctus.ipsum@tinciduntnibh.net');
INSERT INTO `employees` VALUES (251, 'Amaya Perry', '066-426-4583', 'P.O. Box 470, 3797 Sagittis Road', 2, 0, '2011-07-13 15:42:11', '1975-02-10 21:59:11', 'nibh@feugiatSed.ca');
INSERT INTO `employees` VALUES (252, 'Aline Dennis', '058-936-1460', '207-9891 Dolor Av.', 5, 0, '2011-01-04 08:32:10', '1970-03-24 00:45:03', 'libero@rutrumeuultrices.net');
INSERT INTO `employees` VALUES (253, 'Hedwig Hill', '055-124-0264', '268-5938 Ac St.', 4, 0, '2007-08-13 09:06:48', '1961-06-11 03:38:06', 'elit@miAliquamgravida.net');
INSERT INTO `employees` VALUES (254, 'Rogan R. Michael', '049-009-5836', '3065 Nisl St.', 3, 0, '2009-01-10 06:56:28', '1969-08-01 10:33:57', 'nonummy@lacus.com');
INSERT INTO `employees` VALUES (255, 'Abel Blake', '095-946-4424', '3513 Duis Av.', 3, 0, '2014-07-12 02:11:04', '1978-10-12 05:34:28', 'vulputate@viverraMaecenasiaculis.com');
INSERT INTO `employees` VALUES (256, 'Ray J. Leon', '095-989-1763', '6628 Nunc. St.', 4, 0, '2018-07-09 10:46:08', '1990-05-17 09:38:24', 'torquent@vitaealiquameros.net');
INSERT INTO `employees` VALUES (257, 'Brady Hamilton', '050-715-0493', 'P.O. Box 267, 5909 Rutrum Ave', 1, 0, '2012-01-19 10:59:27', '1984-06-12 13:14:40', 'Duis.mi.enim@Cumsociis.edu');
INSERT INTO `employees` VALUES (258, 'Alexa Hunt', '063-231-6020', 'P.O. Box 857, 787 Erat Av.', 1, 0, '2015-02-22 12:58:16', '1965-01-25 06:07:32', 'laoreet.ipsum.Curabitur@sollicitudincommodo.edu');
INSERT INTO `employees` VALUES (259, 'Halla Jacobson', '035-831-9492', '109-8673 Nibh St.', 4, 0, '2019-02-13 18:01:15', '1987-10-27 16:52:35', 'Quisque.libero.lacus@sit.ca');
INSERT INTO `employees` VALUES (260, 'Louis F. Pitts', '087-781-2695', '147 Tristique Ave', 4, 0, '2017-12-21 19:59:08', '1979-08-27 15:27:08', 'Cras.vulputate.velit@ligulaelitpretium.co.uk');
INSERT INTO `employees` VALUES (261, 'Abel Price', '022-134-8948', 'Ap #780-2245 Eu, Rd.', 2, 0, '2012-10-15 23:11:41', '1959-08-25 16:34:03', 'et.risus@euenim.ca');
INSERT INTO `employees` VALUES (262, 'Wesley Blevins', '070-001-0155', 'P.O. Box 498, 3311 Tristique Rd.', 3, 0, '2009-05-03 10:16:00', '1991-06-24 00:30:55', 'sit@metus.net');
INSERT INTO `employees` VALUES (263, 'Molly Lowe', '071-858-8180', '654 Justo. Rd.', 1, 0, '2009-08-08 22:39:48', '1973-11-03 16:30:51', 'magna@eusem.edu');
INSERT INTO `employees` VALUES (264, 'Zane Stevenson', '083-362-8759', 'Ap #833-343 Nonummy Rd.', 2, 0, '2015-09-18 11:25:47', '1987-06-24 02:15:55', 'sit.amet@acfeugiat.org');
INSERT INTO `employees` VALUES (265, 'Lynn Snider', '056-624-2440', '5910 Ut St.', 2, 0, '2011-03-30 04:37:43', '1992-04-19 02:55:05', 'nec@musDonecdignissim.com');
INSERT INTO `employees` VALUES (266, 'Zoe Hudson', '003-032-2182', 'P.O. Box 923, 5520 Amet Ave', 5, 0, '2007-07-04 03:57:02', '1974-03-03 03:00:36', 'Cras@bibendum.com');
INSERT INTO `employees` VALUES (267, 'Flavia J. Tyson', '091-646-7141', 'P.O. Box 260, 7679 Pharetra. St.', 4, 0, '2013-06-07 11:57:05', '1972-07-13 15:14:20', 'purus@tempusloremfringilla.edu');
INSERT INTO `employees` VALUES (268, 'Sean Blackwell', '011-840-9007', 'Ap #329-2067 Quisque Ave', 4, 0, '2014-03-22 10:39:20', '1968-02-25 04:26:33', 'non@dictum.com');
INSERT INTO `employees` VALUES (269, 'Christopher J. French', '069-789-5547', 'P.O. Box 756, 4409 Urna. St.', 3, 0, '2008-04-25 04:40:13', '1990-07-23 18:21:06', 'arcu.Vestibulum.ante@malesuada.co.uk');
INSERT INTO `employees` VALUES (270, 'Rudyard Q. Bridges', '052-222-5088', '8286 Nam Street', 1, 0, '2010-12-12 16:15:02', '1992-03-11 04:41:40', 'luctus.et@lacinia.net');
INSERT INTO `employees` VALUES (271, 'Cailin D. Kim', '072-146-0349', 'Ap #647-487 Nulla. Rd.', 6, 0, '2011-05-03 08:10:50', '1987-11-22 08:16:44', 'nunc.ac@neque.edu');
INSERT INTO `employees` VALUES (272, 'Erich E. Gregory', '033-843-6117', '472 Adipiscing Rd.', 2, 0, '2007-05-24 08:30:35', '1974-12-29 18:36:52', 'tellus.faucibus.leo@neccursus.org');
INSERT INTO `employees` VALUES (273, 'Wallace Merritt', '080-386-0520', '1772 Euismod Road', 4, 0, '2010-04-19 17:24:46', '1969-06-21 17:14:19', 'arcu.et@sem.ca');
INSERT INTO `employees` VALUES (274, 'Lisandra L. Roth', '074-926-8512', 'Ap #548-4264 Arcu. Street', 1, 0, '2012-02-12 16:47:05', '1961-02-05 19:33:21', 'enim.Etiam@facilisisnon.org');
INSERT INTO `employees` VALUES (275, 'Elmo Wolfe', '040-072-2640', '714-4631 Venenatis Rd.', 3, 0, '2010-08-22 16:40:05', '1967-12-26 22:17:40', 'a@nisiMaurisnulla.edu');
INSERT INTO `employees` VALUES (276, 'Merritt S. Brennan', '086-612-7066', '237-6725 Sed St.', 4, 0, '2009-09-15 09:12:13', '1966-04-12 04:01:20', 'taciti@aliquam.edu');
INSERT INTO `employees` VALUES (277, 'Vaughan Hoffman', '068-977-7641', 'P.O. Box 428, 8114 Nullam St.', 3, 0, '2018-02-24 17:56:03', '1981-05-17 14:15:12', 'imperdiet.ullamcorper.Duis@incursus.ca');
INSERT INTO `employees` VALUES (278, 'Thor Swanson', '084-794-1706', 'P.O. Box 696, 899 Egestas Rd.', 2, 0, '2011-05-21 12:56:49', '1964-01-27 23:58:52', 'lobortis.ultrices.Vivamus@sagittis.com');
INSERT INTO `employees` VALUES (279, 'Elizabeth A. Ellis', '091-982-0262', '7007 Odio Rd.', 2, 0, '2018-06-22 15:58:06', '1960-09-22 13:20:30', 'augue.ut.lacus@Etiam.net');
INSERT INTO `employees` VALUES (280, 'Ruby Q. Middleton', '093-481-5142', '509-6250 Maecenas Rd.', 4, 0, '2016-02-21 15:13:33', '1990-05-11 16:36:08', 'ultrices@adipiscingelitEtiam.org');
INSERT INTO `employees` VALUES (281, 'Caesar V. Sweet', '087-036-8103', 'Ap #189-1238 Cras St.', 6, 0, '2014-11-19 12:20:43', '1969-04-29 23:49:15', 'auctor@diamloremauctor.org');
INSERT INTO `employees` VALUES (282, 'Minerva J. Case', '084-634-7271', '683-4342 Aliquam St.', 2, 0, '2010-09-22 13:23:03', '1981-06-06 23:28:16', 'sit.amet@facilisisfacilisis.org');
INSERT INTO `employees` VALUES (283, 'Noah V. Cooke', '064-505-0319', '5732 Est, St.', 4, 0, '2013-06-18 17:20:51', '1984-05-24 09:52:33', 'Donec@erat.ca');
INSERT INTO `employees` VALUES (284, 'Emerson Q. Melton', '004-079-9624', 'Ap #762-3412 Neque Rd.', 3, 0, '2017-05-12 23:00:41', '1970-11-26 12:40:17', 'Nam@Donec.org');
INSERT INTO `employees` VALUES (285, 'Desirae Chen', '048-756-6595', 'P.O. Box 415, 1736 Pellentesque Ave', 5, 0, '2016-01-09 11:26:34', '1961-09-19 00:09:01', 'diam.Sed.diam@arcuSed.org');
INSERT INTO `employees` VALUES (286, 'Silas Barrett', '037-780-2078', '4715 Magna. Rd.', 2, 0, '2008-02-06 19:45:26', '1982-07-19 20:21:44', 'pretium.neque.Morbi@adipiscingelitAliquam.org');
INSERT INTO `employees` VALUES (287, 'Maisie J. Farmer', '017-912-0736', 'Ap #653-5668 Nulla Av.', 3, 0, '2010-01-09 00:48:17', '1975-10-25 16:00:02', 'morbi.tristique.senectus@sociosquad.edu');
INSERT INTO `employees` VALUES (288, 'Garrison M. Long', '060-528-4711', 'P.O. Box 141, 1763 Vestibulum Ave', 5, 0, '2018-08-02 10:34:45', '1960-04-15 17:58:31', 'Duis.sit.amet@semmolestiesodales.org');
INSERT INTO `employees` VALUES (289, 'Noelle Marsh', '097-415-1966', 'P.O. Box 458, 9320 Sem Avenue', 3, 0, '2012-05-10 18:39:43', '1964-04-16 06:19:50', 'et@facilisis.edu');
INSERT INTO `employees` VALUES (290, 'Carson C. Dyer', '084-404-4672', '9884 Turpis. St.', 6, 0, '2010-03-10 04:42:41', '1982-02-10 02:49:45', 'laoreet@nonenimMauris.net');
INSERT INTO `employees` VALUES (291, 'Juliet Sharp', '094-679-1899', '1301 Faucibus Avenue', 5, 0, '2017-01-01 16:16:03', '1971-05-04 15:28:56', 'ligula.consectetuer.rhoncus@congueelit.ca');
INSERT INTO `employees` VALUES (292, 'Adrienne J. Vang', '010-268-0902', '9155 Aliquam Road', 1, 0, '2008-12-15 10:22:29', '1978-09-09 22:30:01', 'feugiat.Lorem@semmollisdui.ca');
INSERT INTO `employees` VALUES (293, 'Brock Cruz', '016-372-9343', 'Ap #451-8859 Magna Rd.', 3, 0, '2013-05-30 09:58:16', '1960-11-24 02:40:52', 'tincidunt.congue@egetmetus.org');
INSERT INTO `employees` VALUES (294, 'Ivana Eaton', '091-143-8752', 'Ap #198-3283 Dui. St.', 3, 0, '2010-09-03 10:06:36', '1989-12-07 21:47:56', 'molestie.sodales.Mauris@Donec.edu');
INSERT INTO `employees` VALUES (295, 'Cullen R. Rocha', '094-321-8358', '405-7633 Non Ave', 3, 0, '2007-11-07 18:14:51', '1994-07-21 21:25:09', 'arcu@sapien.edu');
INSERT INTO `employees` VALUES (296, 'Samson Franco', '044-853-7733', '7599 Est, Avenue', 2, 0, '2015-05-18 05:16:01', '1980-04-23 06:33:47', 'blandit.at.nisi@odioPhasellus.org');
INSERT INTO `employees` VALUES (297, 'Scott Z. Hamilton', '058-623-9875', '943-4837 Montes, Rd.', 4, 0, '2012-06-29 03:39:29', '1964-04-06 15:49:08', 'eu.erat.semper@aliquet.com');
INSERT INTO `employees` VALUES (298, 'Cynthia Hayden', '020-309-6189', 'Ap #363-7889 Eu Ave', 4, 0, '2016-02-06 12:36:54', '1979-10-04 07:44:35', 'montes.nascetur.ridiculus@Seddictum.co.uk');
INSERT INTO `employees` VALUES (299, 'Palmer Mcdaniel', '048-258-8787', 'P.O. Box 515, 1845 Nibh Avenue', 1, 0, '2010-06-30 22:53:49', '1982-03-30 14:06:26', 'consectetuer.ipsum@nuncsedlibero.edu');
INSERT INTO `employees` VALUES (300, 'Dalton S. Page', '027-539-5617', '533-9416 Nisi St.', 2, 0, '2012-07-26 11:23:09', '1994-06-25 09:26:33', 'nibh.enim@vehicularisus.ca');
INSERT INTO `employees` VALUES (326, 'Trần Trọng Hoàng', '0379573155', 'ngõ 53, đường Lê Văn Hiến', 1, NULL, '2020-02-01 00:00:00', NULL, 'coinage.0@gmail.com');
INSERT INTO `employees` VALUES (327, 'Trần Văn Nam', '0379573155', 'ngõ 53, đường Lê Văn Hiến', 1, NULL, '2020-02-01 00:00:00', NULL, 'coinage.0@gmail.com');
INSERT INTO `employees` VALUES (328, 'Trần Văn Nam', '1679573155', 'ngõ 53, đường Lê Văn Hiến', 3, NULL, '2020-02-08 00:00:00', NULL, 'coinage.0@gmail.com');
INSERT INTO `employees` VALUES (329, 'Vũ TRọng Phụng', '0379573155', '102 Thái Thịnh', 1, NULL, '2020-02-08 00:00:00', NULL, 'truongqv13@gmail.com');

-- ----------------------------
-- Table structure for job
-- ----------------------------
DROP TABLE IF EXISTS `job`;
CREATE TABLE `job`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of job
-- ----------------------------
INSERT INTO `job` VALUES (1, 'Giám đốc');
INSERT INTO `job` VALUES (2, 'Trưởng phòng');
INSERT INTO `job` VALUES (3, 'Trưởng nhóm');
INSERT INTO `job` VALUES (4, 'Lập trình viên');
INSERT INTO `job` VALUES (5, 'Chuyên viên');
INSERT INTO `job` VALUES (6, 'Lao công');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
