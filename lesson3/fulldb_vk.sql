#
# TABLE STRUCTURE FOR: cities
#

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (1, 'North Oscarview', 94);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (2, 'Wellingtonview', 36);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (3, 'East Aimeeton', 88);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (4, 'Yazminbury', 90);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (5, 'Carrollton', 66);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (6, 'Port Frederiqueside', 71);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (7, 'Bernierville', 65);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (8, 'Boehmberg', 95);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (9, 'New Bettieton', 17);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (10, 'Izaiahside', 81);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (11, 'Theresemouth', 31);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (12, 'West Murray', 17);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (13, 'Abernathyview', 26);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (14, 'Lake Fleta', 98);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (15, 'Lake Anibal', 77);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (16, 'South Freemanstad', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (17, 'Grimesbury', 62);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (18, 'Lorenton', 25);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (19, 'Wilhelmmouth', 67);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (20, 'Runolfsdottirtown', 18);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (21, 'Stoltenbergmouth', 52);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (22, 'Katherynshire', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (23, 'Daveside', 90);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (24, 'East Kaya', 81);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (25, 'Howellborough', 12);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (26, 'Martinaside', 55);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (27, 'South Florinehaven', 27);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (28, 'Schaefershire', 37);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (29, 'Pricebury', 66);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (30, 'North Corine', 88);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (31, 'Axelfort', 100);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (32, 'Lake Arne', 59);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (33, 'North Lafayettestad', 24);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (34, 'Lake Travismouth', 87);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (35, 'Katelynnport', 49);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (36, 'Christopherborough', 89);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (37, 'Elainamouth', 57);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (38, 'South Henriette', 13);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (39, 'Lake Caterinaburgh', 84);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (40, 'Port Lillian', 74);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (41, 'South Madieborough', 94);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (42, 'O\'Keefestad', 15);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (43, 'New Marilouville', 91);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (44, 'West Artmouth', 19);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (45, 'Port Geovany', 12);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (46, 'West Carolineside', 68);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (47, 'East Katlynn', 21);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (48, 'North Darrylstad', 73);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (49, 'Williamsonfort', 92);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (50, 'Parisland', 88);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (51, 'Kautzershire', 91);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (52, 'Marvinborough', 43);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (53, 'Juddborough', 92);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (54, 'East Albertoview', 80);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (55, 'South Chaim', 24);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (56, 'North Jaylan', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (57, 'Port Giovanishire', 35);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (58, 'Jadonland', 50);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (59, 'Lake Russchester', 41);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (60, 'New Ferminstad', 100);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (61, 'Lake Oran', 38);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (62, 'Abbystad', 40);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (63, 'Feilberg', 59);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (64, 'South Percy', 61);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (65, 'Paucektown', 27);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (66, 'Shanaside', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (67, 'Chelseafort', 49);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (68, 'Lehnertown', 83);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (69, 'Lake Berthafort', 20);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (70, 'Camronview', 33);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (71, 'East Kalliebury', 57);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (72, 'Herbertfurt', 13);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (73, 'New Cydneyview', 47);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (74, 'Port Dextermouth', 48);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (75, 'Clemensside', 32);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (76, 'New Manuel', 58);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (77, 'Ardithside', 15);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (78, 'Louveniaburgh', 53);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (79, 'Eichmannview', 30);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (80, 'West Blazefurt', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (81, 'Ziemannbury', 40);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (82, 'New Gaetano', 21);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (83, 'Schaefermouth', 49);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (84, 'Isidrofort', 31);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (85, 'South Laurabury', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (86, 'East Gregmouth', 73);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (87, 'North Noblebury', 35);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (88, 'North Glendabury', 35);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (89, 'North Braeden', 22);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (90, 'Kochhaven', 76);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (91, 'Normabury', 35);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (92, 'North Hazelburgh', 59);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (93, 'Vernaland', 15);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (94, 'Port Fausto', 93);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (95, 'North Brucefurt', 20);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (96, 'South Edmondburgh', 41);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (97, 'New Luna', 100);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (98, 'New Estebanberg', 68);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (99, 'Port Jamesontown', 24);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (100, 'McClurehaven', 19);


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Wiegand-Towne', '2016-08-21 05:38:28', '2016-12-07 21:38:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Goyette Ltd', '2018-08-01 03:21:59', '2016-01-01 00:20:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Hegmann-Veum', '2016-04-09 21:39:25', '2016-04-10 21:03:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Reichert-Nitzsche', '2013-08-30 18:45:26', '2019-08-28 16:15:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Adams-Senger', '2011-11-08 08:06:21', '2021-01-24 02:34:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Labadie, Effertz and Parisian', '2021-04-24 12:06:35', '2015-10-27 15:04:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Zboncak Group', '2016-04-21 17:44:55', '2012-05-11 05:26:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Paucek-Klein', '2019-11-07 08:09:42', '2014-02-11 02:07:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Pouros, Kutch and Wehner', '2016-03-17 00:05:09', '2012-07-19 15:49:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Dibbert, Balistreri and Strosin', '2014-09-24 23:56:29', '2015-07-04 03:52:52');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'Bogan Group', '2017-10-22 08:39:34', '2012-09-03 14:48:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'Doyle-Sipes', '2014-04-28 18:54:19', '2020-07-18 01:47:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'Ebert, Johnson and Gerhold', '2017-01-19 09:38:19', '2016-11-20 01:25:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'Mann Group', '2020-07-08 20:35:40', '2019-09-10 15:50:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'Lubowitz-Hane', '2014-07-30 10:47:24', '2021-05-14 05:48:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'O\'Connell, Osinski and Nicolas', '2014-03-07 08:43:50', '2020-06-17 23:50:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'Bosco, Nikolaus and Christiansen', '2019-12-15 21:59:41', '2017-05-19 21:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'Huel-Johns', '2016-06-02 17:34:43', '2013-08-04 20:14:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'Gottlieb Group', '2019-07-10 06:11:28', '2016-11-28 22:51:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'Ward, Donnelly and Heidenreich', '2018-06-25 20:48:46', '2018-01-27 01:02:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'Jacobs-Rippin', '2019-06-06 02:50:16', '2017-06-02 04:23:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'Lang, Bartell and Pfannerstill', '2018-03-15 14:40:24', '2021-02-01 00:55:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'Blick, Hauck and Torp', '2012-05-23 08:40:01', '2016-12-05 06:39:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'Maggio Ltd', '2016-10-19 03:19:32', '2017-10-08 03:37:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'Miller, Osinski and Ernser', '2014-06-05 01:14:09', '2012-11-06 14:01:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'Lindgren Ltd', '2015-08-25 22:10:44', '2019-01-30 10:57:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'Moore PLC', '2016-04-17 22:19:55', '2013-12-16 23:39:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'Hackett-Kris', '2011-10-06 14:05:19', '2019-06-10 04:48:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'Pacocha-Nicolas', '2017-10-20 06:07:24', '2013-03-08 15:53:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'Torp-Smitham', '2013-09-28 14:37:32', '2013-10-21 02:07:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'Howe, Mann and Stehr', '2017-01-22 18:49:18', '2017-07-27 00:34:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'Hirthe-Spencer', '2019-07-19 16:19:09', '2015-10-22 07:33:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'Stamm-Stokes', '2021-05-25 19:23:35', '2011-08-26 06:00:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'Lueilwitz PLC', '2018-08-17 15:16:01', '2013-02-28 19:39:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'Mills Inc', '2016-06-23 18:47:19', '2012-05-17 14:53:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'Stracke-Abernathy', '2012-11-17 20:38:21', '2012-09-02 05:17:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'Bernier, Harvey and Harber', '2014-04-01 06:48:34', '2020-08-25 19:17:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'Kohler, Brekke and Yundt', '2016-07-24 13:29:05', '2013-07-06 19:52:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'Hoeger Group', '2018-05-01 01:28:48', '2017-02-24 08:59:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'Grady Ltd', '2014-11-04 02:04:17', '2016-05-10 07:20:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'Schaefer-Homenick', '2020-07-30 03:36:10', '2013-08-11 13:55:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'Hudson-Grimes', '2015-06-18 12:06:07', '2014-10-19 09:06:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'Stracke-McCullough', '2019-04-25 17:52:11', '2012-07-06 06:50:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'Heaney, Marquardt and Walter', '2018-04-08 22:26:47', '2016-04-15 05:41:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'Bogan-Windler', '2016-09-25 00:36:49', '2012-09-27 10:15:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'Kreiger, Labadie and Zboncak', '2020-06-09 19:51:40', '2019-07-21 06:26:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'Fadel Group', '2021-01-02 16:10:23', '2014-03-10 10:34:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'Anderson-Hackett', '2019-07-17 23:25:39', '2013-08-07 18:54:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'Leannon-Buckridge', '2017-07-30 09:51:05', '2016-02-02 22:00:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'Rippin-Farrell', '2017-03-08 16:01:26', '2021-03-31 01:06:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'Kautzer, Auer and McKenzie', '2015-08-29 17:13:20', '2017-12-05 22:25:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'Kohler, Cremin and Rath', '2015-12-12 20:16:13', '2015-03-24 21:27:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'Hackett-Satterfield', '2017-08-11 21:04:00', '2013-03-03 05:40:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'Cummerata Group', '2020-08-15 15:08:04', '2015-10-19 06:55:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'Hoeger, Cremin and Mohr', '2018-06-28 09:26:12', '2016-06-30 12:53:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'Farrell-Roberts', '2019-03-09 02:10:17', '2019-04-10 13:42:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'Stamm PLC', '2016-05-04 15:05:13', '2014-04-15 01:37:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'Ryan, Gottlieb and Bins', '2015-09-12 23:00:08', '2014-11-19 01:49:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'Lindgren, Tillman and Kilback', '2018-09-17 20:56:29', '2020-01-19 23:12:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'Kling-Homenick', '2016-11-05 18:27:34', '2016-10-03 00:47:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'Hane Group', '2014-09-13 13:07:20', '2020-07-10 19:03:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'Leannon, Fadel and Kuhic', '2014-08-21 00:31:21', '2019-03-26 19:41:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'Romaguera, Krajcik and Mitchell', '2017-11-03 00:20:35', '2020-01-11 14:47:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'Schimmel, Purdy and Rempel', '2018-06-16 09:38:14', '2016-04-26 16:52:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'Mante LLC', '2012-06-18 05:23:12', '2019-01-16 05:53:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'Nolan-Renner', '2013-02-03 02:34:33', '2014-11-14 03:36:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'Gaylord-Farrell', '2014-11-25 07:44:18', '2013-01-18 09:42:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'Hirthe-Will', '2019-05-15 04:33:40', '2015-01-24 11:53:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'Kreiger-Hettinger', '2014-11-17 15:28:50', '2014-09-30 11:09:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'Lynch, Hoeger and Anderson', '2014-01-21 10:03:00', '2014-06-23 18:34:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'Schultz, Kreiger and Shanahan', '2016-07-07 15:42:34', '2017-04-04 04:33:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'Lang, Johns and Cruickshank', '2014-12-17 20:19:24', '2020-11-27 08:39:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'Lowe-Robel', '2012-06-26 16:40:15', '2020-05-17 23:10:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'Leuschke-Treutel', '2019-11-30 13:18:44', '2015-06-12 04:01:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'Hamill PLC', '2012-02-05 20:04:22', '2011-12-13 05:49:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'Veum, Klocko and Kautzer', '2019-08-17 01:56:44', '2021-05-18 02:16:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'Hauck Inc', '2019-03-26 12:55:18', '2018-04-27 03:29:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'Medhurst PLC', '2018-01-08 17:11:46', '2014-03-01 18:44:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'Haag, Pollich and Hodkiewicz', '2013-01-22 01:29:59', '2019-12-02 02:05:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'Beier Group', '2020-10-29 16:31:20', '2013-08-19 06:40:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'Kling Group', '2018-12-17 14:17:29', '2016-09-05 15:59:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'Braun, Stanton and Abbott', '2019-06-12 12:47:51', '2011-08-25 11:54:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'Von Group', '2017-05-10 02:01:22', '2021-04-14 21:03:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'Bosco-Shanahan', '2015-02-26 21:58:46', '2020-03-24 09:43:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'Koch, Watsica and Hettinger', '2017-09-10 19:57:22', '2015-03-21 20:09:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'Flatley Inc', '2021-01-18 13:54:45', '2014-01-08 06:02:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'Glover, Jones and Reilly', '2020-10-04 11:25:54', '2020-07-02 23:26:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'Gutkowski-Heaney', '2017-03-08 11:09:45', '2017-06-19 07:39:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'Krajcik-Rowe', '2011-09-08 15:07:57', '2014-12-13 02:55:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'Ruecker, Nikolaus and Ratke', '2019-04-11 09:36:54', '2016-03-02 04:26:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'Robel LLC', '2012-05-22 18:52:11', '2013-09-04 19:56:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'Goldner, Lehner and Kunze', '2019-06-27 12:49:31', '2016-06-02 12:56:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'Stracke, Lueilwitz and Rau', '2021-06-19 01:39:44', '2011-10-01 16:21:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'Hansen, Grimes and Crist', '2013-04-04 08:27:21', '2021-07-07 19:18:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'McGlynn, Heaney and Schaefer', '2020-09-12 17:07:24', '2020-05-28 03:13:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'Lockman Group', '2021-03-24 09:06:15', '2017-08-14 06:22:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'Bahringer, Monahan and Koss', '2017-10-07 14:24:08', '2014-09-25 12:13:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'Beer, Gleichner and Littel', '2020-02-13 20:46:19', '2018-05-10 09:17:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'Schulist PLC', '2013-08-29 05:51:44', '2015-10-27 14:44:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'Flatley, Adams and Runolfsson', '2012-09-24 17:25:25', '2017-11-17 06:54:16');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 2, '1989-02-18 09:44:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 27, '2005-07-20 17:23:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 44, '2020-03-03 07:40:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '1990-12-06 21:02:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 76, '2008-02-06 06:39:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 94, '1980-12-28 18:10:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 3, '1979-02-28 14:58:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 11, '1987-04-03 12:09:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 36, '1971-05-04 15:41:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 41, '1981-06-10 12:37:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 25, '1973-09-06 04:53:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 70, '2005-06-29 10:12:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 44, '2008-10-10 13:45:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 30, '2011-05-28 20:38:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 75, '2014-01-25 14:57:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 74, '1984-09-22 09:28:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 23, '1971-02-02 11:03:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '1994-03-11 03:02:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 23, '1990-06-02 05:48:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 28, '1983-07-12 00:49:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 77, '1986-04-23 08:54:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 1, '2000-01-12 22:51:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 45, '2013-08-20 08:01:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 8, '2017-08-17 17:41:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 49, '2021-03-26 00:12:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 11, '1971-04-24 07:25:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 56, '1981-02-11 05:01:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 3, '1973-07-06 10:25:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 84, '1988-01-09 21:56:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 24, '2002-03-09 06:55:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 94, '2011-11-11 18:27:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 21, '2021-02-17 18:04:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 17, '1981-10-13 08:58:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 45, '1979-11-25 00:49:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 64, '1997-12-19 18:12:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 78, '1993-11-27 18:08:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 20, '2008-02-13 05:58:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 62, '2011-12-07 07:33:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 75, '1991-07-19 09:37:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 86, '1982-03-11 14:47:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 58, '1993-06-01 07:32:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 6, '2017-10-02 19:23:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 32, '1972-03-14 17:50:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 13, '1978-10-17 17:09:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 82, '2012-02-18 02:53:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 84, '1972-06-22 21:38:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 8, '1989-05-24 13:04:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 9, '2005-03-07 14:23:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 48, '1997-08-27 00:54:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 24, '1977-01-02 14:16:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 88, '1992-11-09 19:13:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 61, '1997-12-19 06:12:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 76, '1983-09-25 02:46:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 74, '1999-08-16 03:11:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 8, '2009-09-01 02:19:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 48, '1993-12-28 07:11:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 43, '1986-11-25 13:34:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 48, '1977-11-02 09:47:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 10, '1978-01-02 04:57:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 38, '1974-05-28 01:24:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 60, '1989-10-14 17:43:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 68, '1977-11-08 11:04:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 100, '1978-08-25 02:38:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 27, '1979-10-12 03:41:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 28, '1982-03-22 19:33:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 95, '2004-12-20 15:43:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 77, '2013-08-25 02:01:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 87, '2005-06-12 22:35:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 46, '1991-03-04 20:05:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 64, '2014-10-15 03:45:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 44, '1974-10-08 22:00:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 22, '1985-10-17 14:57:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 82, '2012-05-11 00:34:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 39, '1975-06-25 02:03:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 70, '1999-05-19 13:57:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 27, '2002-06-21 16:51:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 77, '2009-04-18 16:24:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 82, '1983-05-27 11:12:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 4, '2016-02-15 00:18:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 97, '1994-10-23 13:05:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 36, '1990-02-20 01:14:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 39, '2010-05-06 15:14:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 56, '2003-12-24 23:20:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 88, '1972-05-07 15:46:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 5, '2020-06-05 15:56:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 47, '1999-05-08 07:28:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 58, '2001-08-15 06:47:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 14, '1990-10-19 09:30:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 48, '1989-03-14 06:46:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 5, '1995-04-22 21:52:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 23, '1977-06-13 13:50:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 54, '1983-12-21 21:31:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '1996-07-24 13:30:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 35, '1977-07-07 20:41:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 49, '1997-07-11 09:48:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 66, '2003-12-09 15:18:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 24, '1998-12-28 20:52:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 9, '1987-07-17 06:05:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 32, '1978-11-01 20:20:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 31, '1990-01-29 11:05:00');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `name`) VALUES (1, 'Mayotte');
INSERT INTO `countries` (`id`, `name`) VALUES (2, 'Qatar');
INSERT INTO `countries` (`id`, `name`) VALUES (3, 'Paraguay');
INSERT INTO `countries` (`id`, `name`) VALUES (4, 'Guyana');
INSERT INTO `countries` (`id`, `name`) VALUES (5, 'Philippines');
INSERT INTO `countries` (`id`, `name`) VALUES (6, 'United Kingdom');
INSERT INTO `countries` (`id`, `name`) VALUES (7, 'New Caledonia');
INSERT INTO `countries` (`id`, `name`) VALUES (8, 'Andorra');
INSERT INTO `countries` (`id`, `name`) VALUES (9, 'Indonesia');
INSERT INTO `countries` (`id`, `name`) VALUES (10, 'Benin');
INSERT INTO `countries` (`id`, `name`) VALUES (11, 'Botswana');
INSERT INTO `countries` (`id`, `name`) VALUES (12, 'Malawi');
INSERT INTO `countries` (`id`, `name`) VALUES (13, 'Sudan');
INSERT INTO `countries` (`id`, `name`) VALUES (14, 'Latvia');
INSERT INTO `countries` (`id`, `name`) VALUES (15, 'Sudan');
INSERT INTO `countries` (`id`, `name`) VALUES (16, 'Liechtenstein');
INSERT INTO `countries` (`id`, `name`) VALUES (17, 'Vanuatu');
INSERT INTO `countries` (`id`, `name`) VALUES (18, 'Liberia');
INSERT INTO `countries` (`id`, `name`) VALUES (19, 'Romania');
INSERT INTO `countries` (`id`, `name`) VALUES (20, 'Liechtenstein');
INSERT INTO `countries` (`id`, `name`) VALUES (21, 'Lebanon');
INSERT INTO `countries` (`id`, `name`) VALUES (22, 'Martinique');
INSERT INTO `countries` (`id`, `name`) VALUES (23, 'Guatemala');
INSERT INTO `countries` (`id`, `name`) VALUES (24, 'Antigua and Barbuda');
INSERT INTO `countries` (`id`, `name`) VALUES (25, 'Guernsey');
INSERT INTO `countries` (`id`, `name`) VALUES (26, 'Timor-Leste');
INSERT INTO `countries` (`id`, `name`) VALUES (27, 'Saint Lucia');
INSERT INTO `countries` (`id`, `name`) VALUES (28, 'Gibraltar');
INSERT INTO `countries` (`id`, `name`) VALUES (29, 'Iceland');
INSERT INTO `countries` (`id`, `name`) VALUES (30, 'Falkland Islands (Malvinas)');
INSERT INTO `countries` (`id`, `name`) VALUES (31, 'Singapore');
INSERT INTO `countries` (`id`, `name`) VALUES (32, 'Pitcairn Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (33, 'Slovenia');
INSERT INTO `countries` (`id`, `name`) VALUES (34, 'Marshall Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (35, 'Dominican Republic');
INSERT INTO `countries` (`id`, `name`) VALUES (36, 'Papua New Guinea');
INSERT INTO `countries` (`id`, `name`) VALUES (37, 'Sao Tome and Principe');
INSERT INTO `countries` (`id`, `name`) VALUES (38, 'Montserrat');
INSERT INTO `countries` (`id`, `name`) VALUES (39, 'Australia');
INSERT INTO `countries` (`id`, `name`) VALUES (40, 'Pitcairn Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (41, 'Venezuela');
INSERT INTO `countries` (`id`, `name`) VALUES (42, 'Antarctica (the territory South of 60 deg S)');
INSERT INTO `countries` (`id`, `name`) VALUES (43, 'Sudan');
INSERT INTO `countries` (`id`, `name`) VALUES (44, 'Albania');
INSERT INTO `countries` (`id`, `name`) VALUES (45, 'Faroe Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (46, 'Hong Kong');
INSERT INTO `countries` (`id`, `name`) VALUES (47, 'Maldives');
INSERT INTO `countries` (`id`, `name`) VALUES (48, 'Montserrat');
INSERT INTO `countries` (`id`, `name`) VALUES (49, 'Senegal');
INSERT INTO `countries` (`id`, `name`) VALUES (50, 'Somalia');
INSERT INTO `countries` (`id`, `name`) VALUES (51, 'Canada');
INSERT INTO `countries` (`id`, `name`) VALUES (52, 'Zimbabwe');
INSERT INTO `countries` (`id`, `name`) VALUES (53, 'Pitcairn Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (54, 'Sudan');
INSERT INTO `countries` (`id`, `name`) VALUES (55, 'Anguilla');
INSERT INTO `countries` (`id`, `name`) VALUES (56, 'Malawi');
INSERT INTO `countries` (`id`, `name`) VALUES (57, 'Algeria');
INSERT INTO `countries` (`id`, `name`) VALUES (58, 'Saint Martin');
INSERT INTO `countries` (`id`, `name`) VALUES (59, 'Congo');
INSERT INTO `countries` (`id`, `name`) VALUES (60, 'Saint Helena');
INSERT INTO `countries` (`id`, `name`) VALUES (61, 'Luxembourg');
INSERT INTO `countries` (`id`, `name`) VALUES (62, 'Equatorial Guinea');
INSERT INTO `countries` (`id`, `name`) VALUES (63, 'Bangladesh');
INSERT INTO `countries` (`id`, `name`) VALUES (64, 'Ecuador');
INSERT INTO `countries` (`id`, `name`) VALUES (65, 'Falkland Islands (Malvinas)');
INSERT INTO `countries` (`id`, `name`) VALUES (66, 'Bhutan');
INSERT INTO `countries` (`id`, `name`) VALUES (67, 'Korea');
INSERT INTO `countries` (`id`, `name`) VALUES (68, 'United States Virgin Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (69, 'Egypt');
INSERT INTO `countries` (`id`, `name`) VALUES (70, 'Turks and Caicos Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (71, 'Kenya');
INSERT INTO `countries` (`id`, `name`) VALUES (72, 'Cambodia');
INSERT INTO `countries` (`id`, `name`) VALUES (73, 'Japan');
INSERT INTO `countries` (`id`, `name`) VALUES (74, 'Cayman Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (75, 'Norway');
INSERT INTO `countries` (`id`, `name`) VALUES (76, 'Serbia');
INSERT INTO `countries` (`id`, `name`) VALUES (77, 'Ireland');
INSERT INTO `countries` (`id`, `name`) VALUES (78, 'Grenada');
INSERT INTO `countries` (`id`, `name`) VALUES (79, 'Guernsey');
INSERT INTO `countries` (`id`, `name`) VALUES (80, 'Panama');
INSERT INTO `countries` (`id`, `name`) VALUES (81, 'Yemen');
INSERT INTO `countries` (`id`, `name`) VALUES (82, 'Tajikistan');
INSERT INTO `countries` (`id`, `name`) VALUES (83, 'Tunisia');
INSERT INTO `countries` (`id`, `name`) VALUES (84, 'Spain');
INSERT INTO `countries` (`id`, `name`) VALUES (85, 'Norway');
INSERT INTO `countries` (`id`, `name`) VALUES (86, 'Kuwait');
INSERT INTO `countries` (`id`, `name`) VALUES (87, 'Iraq');
INSERT INTO `countries` (`id`, `name`) VALUES (88, 'Dominica');
INSERT INTO `countries` (`id`, `name`) VALUES (89, 'Tonga');
INSERT INTO `countries` (`id`, `name`) VALUES (90, 'Saudi Arabia');
INSERT INTO `countries` (`id`, `name`) VALUES (91, 'British Indian Ocean Territory (Chagos Archipelago)');
INSERT INTO `countries` (`id`, `name`) VALUES (92, 'Samoa');
INSERT INTO `countries` (`id`, `name`) VALUES (93, 'Greenland');
INSERT INTO `countries` (`id`, `name`) VALUES (94, 'Bahrain');
INSERT INTO `countries` (`id`, `name`) VALUES (95, 'Morocco');
INSERT INTO `countries` (`id`, `name`) VALUES (96, 'Sweden');
INSERT INTO `countries` (`id`, `name`) VALUES (97, 'Qatar');
INSERT INTO `countries` (`id`, `name`) VALUES (98, 'Israel');
INSERT INTO `countries` (`id`, `name`) VALUES (99, 'Uganda');
INSERT INTO `countries` (`id`, `name`) VALUES (100, 'Korea');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 95, 4, '2021-07-12 19:44:15', '2021-06-18 02:38:44', '2021-06-27 21:34:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 35, 2, '2021-07-13 14:44:47', '2021-07-03 17:36:01', '2021-06-21 03:50:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 22, 3, '2021-06-27 21:23:20', '2021-02-12 14:22:18', '2021-06-20 07:50:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 65, 1, '2021-06-14 20:54:32', '2021-06-01 11:51:43', '2021-07-07 01:09:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 12, 2, '2021-06-28 04:42:33', '2021-01-02 13:32:44', '2021-06-29 05:20:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 56, 4, '2021-06-25 16:06:24', '2020-07-28 08:23:05', '2021-06-14 20:35:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 75, 3, '2021-07-03 03:55:35', '2021-01-04 09:09:32', '2021-06-17 01:26:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 22, 2, '2021-06-19 16:40:22', '2021-04-28 22:24:52', '2021-07-12 18:06:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 1, 3, '2021-07-02 02:00:44', '2021-03-17 09:15:35', '2021-07-02 02:18:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 84, 1, '2021-07-05 11:22:31', '2021-05-09 04:20:38', '2021-06-22 19:29:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 46, 1, '2021-07-05 18:30:33', '2021-02-27 15:29:31', '2021-06-21 21:19:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 74, 3, '2021-06-17 16:44:55', '2021-07-07 00:11:17', '2021-07-07 12:21:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 10, 3, '2021-06-14 22:58:05', '2021-04-28 23:28:28', '2021-07-09 23:03:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 35, 4, '2021-07-09 06:31:10', '2021-03-05 02:18:37', '2021-07-11 14:50:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 42, 3, '2021-07-10 03:20:50', '2020-12-24 10:28:51', '2021-07-07 21:44:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 63, 2, '2021-07-13 23:58:07', '2020-09-10 04:04:07', '2021-07-02 05:16:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 71, 1, '2021-06-20 09:20:30', '2021-01-13 07:06:27', '2021-06-26 18:10:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 98, 3, '2021-07-05 15:57:07', '2021-06-05 23:39:19', '2021-07-02 06:07:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 61, 2, '2021-07-07 01:48:59', '2021-03-22 05:10:44', '2021-06-22 07:34:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 54, 3, '2021-06-28 23:39:58', '2021-06-21 23:48:55', '2021-06-28 23:40:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 64, 1, '2021-06-26 13:20:15', '2020-12-30 13:31:58', '2021-06-29 18:52:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 99, 2, '2021-06-27 01:00:31', '2020-08-08 19:50:45', '2021-07-13 22:04:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 67, 1, '2021-06-26 23:24:51', '2021-05-29 13:51:49', '2021-06-19 16:44:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 8, 2, '2021-07-01 06:47:52', '2021-02-11 18:02:00', '2021-06-23 15:03:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 51, 1, '2021-06-26 00:25:29', '2021-06-20 22:04:55', '2021-07-07 12:51:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 63, 4, '2021-07-05 07:44:50', '2021-02-08 06:14:33', '2021-07-08 17:32:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 38, 2, '2021-06-24 15:56:15', '2021-03-04 03:50:54', '2021-06-24 08:19:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 70, 4, '2021-06-19 12:57:57', '2020-08-01 10:04:44', '2021-07-06 00:02:27');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 4, 3, '2021-07-04 02:01:35', '2021-03-11 20:41:51', '2021-07-04 13:38:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 15, 4, '2021-06-28 17:17:43', '2021-07-04 17:24:28', '2021-06-26 12:40:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 82, 3, '2021-07-03 00:26:42', '2020-10-05 19:48:42', '2021-06-25 13:27:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 2, 3, '2021-06-15 05:20:51', '2021-04-10 15:01:53', '2021-06-23 14:20:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 90, 2, '2021-07-14 15:18:11', '2021-03-29 06:32:31', '2021-07-10 09:54:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 100, 2, '2021-06-22 08:10:01', '2020-09-15 07:36:08', '2021-07-08 07:36:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 27, 3, '2021-07-04 19:06:44', '2020-09-10 19:54:30', '2021-07-11 21:40:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 22, 3, '2021-07-09 07:05:09', '2021-03-13 15:27:37', '2021-07-14 14:43:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 53, 1, '2021-07-03 13:06:15', '2021-03-09 23:34:58', '2021-07-11 07:58:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 76, 3, '2021-06-25 15:07:00', '2020-11-10 23:49:56', '2021-06-25 08:57:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 77, 4, '2021-06-17 07:47:25', '2020-08-13 10:21:24', '2021-07-10 23:42:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 91, 4, '2021-07-14 15:22:53', '2021-02-15 18:13:16', '2021-07-02 08:41:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 37, 1, '2021-06-16 04:01:29', '2021-06-21 17:48:15', '2021-06-29 17:14:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 21, 2, '2021-07-06 15:53:34', '2020-12-08 21:29:42', '2021-07-03 10:14:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 46, 3, '2021-06-22 14:38:02', '2021-03-21 09:16:45', '2021-06-20 00:24:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 48, 4, '2021-06-17 20:15:56', '2020-11-27 17:51:57', '2021-06-21 19:34:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 54, 1, '2021-06-22 20:47:42', '2021-06-08 16:47:38', '2021-06-30 03:34:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 18, 3, '2021-07-07 16:16:32', '2021-04-26 10:07:36', '2021-07-10 21:35:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 83, 2, '2021-07-09 00:40:07', '2020-10-25 14:03:22', '2021-07-02 05:13:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 37, 3, '2021-06-15 05:10:26', '2021-06-22 20:23:54', '2021-07-05 09:23:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 43, 4, '2021-06-30 22:15:34', '2020-11-23 07:39:56', '2021-06-24 19:35:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 60, 3, '2021-06-26 19:38:22', '2020-08-14 08:08:30', '2021-07-03 15:27:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 23, 1, '2021-06-29 02:44:15', '2020-07-27 12:06:41', '2021-06-14 23:07:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 23, 4, '2021-07-13 05:24:38', '2020-09-20 23:37:00', '2021-06-29 12:21:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 3, 1, '2021-06-23 01:01:28', '2020-07-29 11:16:21', '2021-07-13 23:40:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 94, 2, '2021-07-03 10:03:50', '2021-05-05 05:12:19', '2021-06-25 12:08:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 94, 3, '2021-07-06 14:12:17', '2020-11-24 22:37:24', '2021-06-17 02:11:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 83, 4, '2021-07-02 15:46:15', '2020-11-18 11:35:46', '2021-06-27 18:37:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 87, 4, '2021-06-15 04:07:09', '2020-09-26 23:13:10', '2021-07-02 05:07:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 91, 2, '2021-06-29 03:58:08', '2020-12-17 22:28:03', '2021-07-06 00:31:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 13, 1, '2021-07-02 09:56:55', '2021-01-08 11:23:58', '2021-06-27 13:29:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 15, 4, '2021-06-27 09:37:24', '2021-03-06 07:50:34', '2021-07-01 22:42:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 84, 1, '2021-06-26 09:47:54', '2020-10-21 14:31:55', '2021-06-25 13:16:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 92, 4, '2021-06-24 02:35:57', '2021-04-12 22:01:27', '2021-06-23 12:19:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 3, 2, '2021-07-08 16:13:01', '2021-06-26 04:08:09', '2021-06-18 04:13:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 14, 4, '2021-07-02 00:46:55', '2021-05-26 22:50:36', '2021-06-17 18:03:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 57, 2, '2021-07-11 19:56:55', '2020-12-04 18:59:42', '2021-07-07 01:11:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 74, 1, '2021-07-04 07:55:12', '2021-02-09 02:59:55', '2021-07-06 08:46:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 91, 3, '2021-07-04 20:47:41', '2020-09-28 19:39:32', '2021-06-18 01:12:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 92, 4, '2021-07-02 21:06:33', '2020-11-07 07:56:35', '2021-06-29 09:35:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 7, 1, '2021-06-20 19:03:37', '2021-01-10 08:06:36', '2021-07-04 07:41:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 97, 1, '2021-06-23 09:03:50', '2021-05-02 13:58:30', '2021-07-12 08:17:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 79, 2, '2021-06-20 20:50:59', '2020-10-30 20:23:35', '2021-06-21 06:18:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 24, 2, '2021-06-23 14:55:10', '2021-01-18 10:24:46', '2021-07-13 00:04:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 70, 3, '2021-07-11 15:46:04', '2021-03-30 12:29:40', '2021-07-13 08:51:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 94, 2, '2021-06-20 18:31:02', '2020-10-15 01:46:43', '2021-07-03 13:16:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 62, 1, '2021-06-28 04:33:24', '2020-07-28 23:13:33', '2021-06-26 07:40:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 25, 2, '2021-06-22 17:19:54', '2020-11-23 14:05:58', '2021-06-28 02:44:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 7, 4, '2021-07-14 04:31:28', '2020-11-28 10:04:13', '2021-07-13 02:23:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 65, 4, '2021-07-08 13:14:38', '2021-04-15 05:52:08', '2021-06-16 02:21:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 97, 1, '2021-07-08 12:39:02', '2021-07-06 05:03:15', '2021-06-15 10:50:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 34, 2, '2021-07-03 04:57:21', '2021-03-09 09:09:14', '2021-07-01 09:10:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 46, 4, '2021-06-18 04:47:42', '2021-01-05 17:57:07', '2021-06-21 08:30:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 67, 1, '2021-07-05 12:22:46', '2021-03-25 11:15:20', '2021-07-02 19:54:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 37, 3, '2021-06-22 21:40:03', '2020-10-18 09:58:28', '2021-06-27 07:20:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 97, 3, '2021-06-27 20:53:46', '2020-12-25 00:22:49', '2021-06-17 10:30:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 81, 4, '2021-06-23 05:27:02', '2020-11-28 13:22:11', '2021-07-06 05:14:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 41, 2, '2021-07-05 13:59:00', '2021-06-30 00:30:07', '2021-06-24 00:13:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 75, 1, '2021-06-30 00:39:28', '2021-01-23 11:23:12', '2021-07-09 12:31:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 80, 3, '2021-07-05 03:42:25', '2020-08-29 06:38:56', '2021-06-25 08:40:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 84, 1, '2021-07-11 07:19:50', '2020-08-14 04:42:50', '2021-06-24 02:47:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 86, 1, '2021-07-04 21:50:20', '2020-08-30 14:53:24', '2021-07-08 22:38:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 41, 4, '2021-06-22 15:58:32', '2021-04-02 13:27:04', '2021-06-30 02:57:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 96, 4, '2021-06-27 20:51:59', '2021-06-23 04:42:11', '2021-06-28 21:39:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 22, 4, '2021-07-01 04:40:49', '2021-04-20 22:21:02', '2021-07-05 23:35:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 65, 3, '2021-06-26 01:09:39', '2021-04-02 00:47:33', '2021-07-04 08:51:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 47, 1, '2021-07-06 11:52:53', '2020-08-20 14:10:02', '2021-06-30 02:00:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 45, 2, '2021-07-12 15:48:25', '2020-12-30 13:32:49', '2021-07-09 07:54:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 68, 2, '2021-07-13 20:23:27', '2020-09-03 00:35:09', '2021-06-15 20:22:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 97, 1, '2021-06-24 12:37:01', '2020-09-22 02:11:10', '2021-06-21 17:01:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 32, 2, '2021-06-25 19:39:55', '2021-01-31 11:00:17', '2021-06-16 19:05:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 74, 4, '2021-06-18 20:56:01', '2021-02-27 05:47:46', '2021-06-29 05:23:51');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'friend', '2015-06-11 05:18:01', '2013-06-08 07:12:29');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'classmate', '2011-07-31 09:56:04', '2015-07-06 05:03:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'follower', '2019-03-11 04:46:11', '2013-02-10 10:54:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'family', '2014-09-02 07:24:45', '2015-02-09 18:41:23');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 11, 'application/vnd.vcx', 65, NULL, 3, '2012-12-02 07:18:07', '2020-07-24 07:18:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 70, 'video/3gpp2', 0, NULL, 2, '2014-08-31 18:47:15', '2020-11-07 04:23:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 60, 'application/vnd.dece.ttml+xml', 474, NULL, 1, '2016-11-01 10:33:37', '2021-04-20 14:48:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 41, 'application/vnd.pvi.ptid1', 757917, NULL, 3, '2013-05-22 22:06:18', '2020-11-19 09:06:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 60, 'video/h263', 326982889, NULL, 1, '2015-07-20 21:37:49', '2021-06-24 22:33:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 73, 'text/vnd.in3d.3dml', 3672, NULL, 2, '2015-02-04 02:12:46', '2020-08-11 23:01:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 36, 'application/epub+zip', 0, NULL, 2, '2014-04-24 06:43:21', '2021-02-25 08:03:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 23, 'application/x-shockwave-flash', 37252984, NULL, 2, '2015-05-02 09:42:28', '2021-01-31 03:25:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 1, 'application/vnd.ds-keypoint', 0, NULL, 3, '2016-05-14 00:00:45', '2021-01-20 13:38:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 46, 'audio/x-flac', 885, NULL, 2, '2015-04-14 03:07:11', '2021-05-31 23:19:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 79, 'application/vnd.ecowin.chart', 88020577, NULL, 3, '2014-08-04 14:07:13', '2021-02-20 23:03:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 86, 'application/vnd.ms-powerpoint.slideshow.macroenabled.12', 62, NULL, 1, '2014-12-17 04:56:28', '2020-12-28 11:51:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 95, 'video/vnd.fvt', 38507, NULL, 3, '2012-10-15 11:04:28', '2021-01-13 09:22:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 46, 'application/x-gnumeric', 0, NULL, 3, '2013-03-15 14:58:41', '2021-06-01 18:37:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 9, 'audio/ogg', 2, NULL, 3, '2020-04-19 05:38:05', '2021-05-19 02:56:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 9, 'image/x-xbitmap', 18, NULL, 1, '2016-11-09 10:45:21', '2021-04-05 18:04:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 66, 'application/reginfo+xml', 80977, NULL, 3, '2020-03-17 15:42:25', '2021-04-24 22:51:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 68, 'application/x-debian-package', 485581, NULL, 1, '2013-08-21 02:32:07', '2021-03-13 08:32:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 4, 'audio/vnd.rip', 21042, NULL, 1, '2019-09-09 19:18:44', '2020-10-10 14:53:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 6, 'application/vnd.oasis.opendocument.graphics', 430, NULL, 2, '2015-09-03 23:00:16', '2020-12-17 05:19:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 9, 'application/atom+xml', 30351781, NULL, 3, '2015-06-29 12:05:25', '2021-01-18 07:45:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 10, 'application/xproc+xml', 38, NULL, 2, '2015-10-19 22:06:53', '2020-08-12 10:03:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 22, 'application/x-xfig', 935892, NULL, 1, '2016-11-06 13:00:06', '2021-06-26 11:55:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 79, 'application/vnd.visionary', 3368469, NULL, 1, '2019-08-08 16:14:30', '2020-10-17 16:47:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 27, 'text/vcard', 0, NULL, 1, '2012-09-17 09:43:33', '2021-03-20 12:35:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 81, 'application/vnd.epson.esf', 4, NULL, 1, '2017-08-17 00:48:44', '2021-02-04 05:05:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 100, 'application/vnd.dvb.ait', 73, NULL, 2, '2013-08-09 23:55:23', '2020-12-24 05:16:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 38, 'application/x-director', 2064, NULL, 3, '2013-09-18 05:21:17', '2020-08-20 12:56:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 60, 'image/vnd.wap.wbmp', 14856674, NULL, 3, '2011-10-30 01:34:15', '2021-07-10 01:27:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 91, 'video/vnd.dece.video', 0, NULL, 3, '2020-04-30 06:41:15', '2020-12-15 14:15:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 81, 'message/rfc822', 0, NULL, 3, '2013-06-09 15:16:31', '2020-07-19 23:09:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 86, 'application/vnd.sun.xml.draw.template', 9, NULL, 2, '2020-10-19 14:39:12', '2020-11-17 22:15:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 79, 'application/vnd.fdsn.seed', 0, NULL, 2, '2016-08-09 21:16:00', '2020-08-10 04:35:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 72, 'text/css', 633833379, NULL, 3, '2011-11-14 02:57:15', '2020-10-20 22:11:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 61, 'application/xop+xml', 9650017, NULL, 3, '2021-01-04 18:41:17', '2021-07-08 08:58:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 45, 'application/vnd.dece.zip', 89, NULL, 3, '2020-10-15 01:36:23', '2020-12-22 00:26:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 56, 'image/vnd.fpx', 6, NULL, 2, '2018-09-03 06:46:25', '2020-12-16 01:52:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 14, 'application/x-rar-compressed', 188541435, NULL, 3, '2014-06-24 04:09:06', '2020-11-06 05:59:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 85, 'video/x-ms-vob', 868811732, NULL, 3, '2016-11-24 04:21:40', '2021-03-31 11:31:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 99, 'application/msword', 94, NULL, 1, '2014-03-31 01:56:21', '2020-08-29 15:28:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 16, 'application/json', 620368, NULL, 3, '2011-10-18 19:28:46', '2020-11-17 20:47:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 17, 'application/vnd.ds-keypoint', 5289, NULL, 1, '2020-12-20 08:16:24', '2021-06-23 13:39:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 45, 'application/vnd.ufdl', 68233822, NULL, 2, '2015-01-16 16:13:24', '2020-11-17 13:44:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 8, 'text/turtle', 0, NULL, 1, '2013-07-13 05:11:49', '2020-11-26 07:15:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 39, 'text/vnd.wap.wmlscript', 384003373, NULL, 3, '2012-02-29 01:04:50', '2021-07-09 03:41:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 72, 'text/x-java-source', 7990, NULL, 1, '2015-08-19 06:17:56', '2021-02-23 19:02:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 98, 'application/x-blorb', 41, NULL, 2, '2017-10-13 14:12:39', '2021-04-30 07:08:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 65, 'application/vnd.webturbo', 48617999, NULL, 3, '2017-09-14 14:14:10', '2021-05-26 10:20:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 11, 'application/x-msaccess', 603333, NULL, 2, '2014-04-02 05:08:06', '2020-07-20 11:31:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 58, 'application/vnd.flographit', 5175, NULL, 3, '2011-09-11 10:42:59', '2020-08-25 09:24:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 14, 'image/x-tga', 0, NULL, 1, '2012-07-02 09:51:07', '2021-05-15 07:33:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 41, 'audio/x-mpegurl', 97396838, NULL, 3, '2019-02-07 19:02:34', '2021-02-08 12:32:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 56, 'application/x-subrip', 844329210, NULL, 2, '2017-07-23 01:39:03', '2020-12-14 06:08:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 45, 'model/iges', 51, NULL, 2, '2012-01-03 18:40:29', '2021-03-14 14:49:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 47, 'application/x-hdf', 229174, NULL, 2, '2019-08-24 16:27:51', '2020-08-01 10:37:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 52, 'application/vnd.dreamfactory', 6360, NULL, 2, '2016-09-28 21:41:59', '2021-03-31 13:18:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 23, 'application/vnd.openxmlformats-officedocument.presentationml.slide', 0, NULL, 3, '2015-01-22 16:18:33', '2021-06-18 18:41:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 76, 'text/troff', 72, NULL, 3, '2019-03-11 22:43:47', '2020-09-07 07:16:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 24, 'video/h261', 9, NULL, 3, '2020-04-24 11:24:12', '2021-02-23 21:59:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 71, 'image/sgi', 876449062, NULL, 2, '2019-03-12 10:49:46', '2021-06-26 16:04:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 83, 'application/vnd.kde.kspread', 682, NULL, 2, '2018-12-03 07:37:49', '2021-02-15 09:21:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 81, 'application/vnd.ms-word.document.macroenabled.12', 315385, NULL, 3, '2017-08-27 16:36:56', '2020-10-27 09:20:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 100, 'image/svg+xml', 9, NULL, 2, '2012-05-25 03:13:42', '2021-05-10 22:17:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 57, 'application/emma+xml', 0, NULL, 1, '2014-07-17 19:24:07', '2020-09-24 21:55:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 82, 'text/richtext', 6053021, NULL, 1, '2013-01-22 03:43:25', '2020-08-27 08:44:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 82, 'application/vnd.uiq.theme', 15348, NULL, 3, '2018-06-24 14:43:34', '2020-10-01 04:00:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 17, 'application/vnd.uiq.theme', 9, NULL, 1, '2015-02-11 19:03:50', '2021-04-20 00:12:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 63, 'application/ogg', 188628264, NULL, 3, '2016-11-23 23:07:01', '2021-07-10 11:44:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 76, 'image/vnd.fastbidsheet', 50, NULL, 1, '2015-09-28 18:25:08', '2020-08-26 22:41:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 12, 'message/rfc822', 9704, NULL, 1, '2018-09-11 14:09:32', '2021-02-13 15:30:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 52, 'application/vnd.shana.informed.interchange', 61, NULL, 2, '2020-06-07 15:14:28', '2020-07-22 18:42:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 84, 'application/x-msclip', 13, NULL, 3, '2017-07-06 12:38:40', '2020-11-01 09:14:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 33, 'image/svg+xml', 74228712, NULL, 2, '2017-05-16 13:04:35', '2021-07-08 08:38:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 41, 'application/vnd.ezpix-package', 16313, NULL, 2, '2012-08-19 21:53:31', '2020-09-01 18:51:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 44, 'application/vnd.rig.cryptonote', 104788, NULL, 1, '2013-10-25 13:13:02', '2020-08-11 17:22:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 18, 'application/sbml+xml', 523180, NULL, 1, '2017-01-31 13:39:26', '2020-12-11 10:07:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 55, 'application/vnd.ms-excel.sheet.macroenabled.12', 436169278, NULL, 3, '2017-01-19 17:19:46', '2021-05-01 18:50:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 7, 'application/vnd.sun.xml.draw', 58, NULL, 2, '2014-05-11 10:13:41', '2021-01-16 19:54:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 43, 'application/vnd.tao.intent-module-archive', 837285, NULL, 2, '2018-03-26 15:15:45', '2021-06-21 18:30:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 64, 'video/vnd.dece.hd', 0, NULL, 1, '2016-06-22 14:23:43', '2021-03-07 12:22:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 78, 'text/vnd.wap.wmlscript', 640, NULL, 2, '2018-10-19 23:28:38', '2021-06-03 04:42:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 19, 'application/vnd.adobe.xfdf', 995, NULL, 3, '2013-08-24 19:35:17', '2021-02-28 14:58:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 67, 'model/x3d+vrml', 2977, NULL, 3, '2013-07-16 18:40:09', '2021-03-08 02:52:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 65, 'application/x-ms-wmz', 4267122, NULL, 2, '2012-11-26 20:19:58', '2021-02-09 19:35:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 89, 'application/vnd.epson.quickanime', 61303, NULL, 3, '2019-08-03 23:12:41', '2021-04-05 12:16:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 65, 'application/mp4', 317465866, NULL, 2, '2017-02-10 02:10:13', '2021-01-17 14:56:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 41, 'audio/vnd.dece.audio', 677, NULL, 2, '2018-08-05 17:18:52', '2020-08-23 21:26:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 15, 'audio/vnd.rip', 22095519, NULL, 3, '2018-11-26 14:46:25', '2021-05-16 09:55:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 8, 'application/vnd.ezpix-package', 6536996, NULL, 2, '2019-07-26 17:35:06', '2021-02-04 01:38:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 29, 'application/vnd.kde.kchart', 41493, NULL, 2, '2013-08-06 04:55:53', '2021-04-12 15:43:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 67, 'application/vnd.sun.xml.calc.template', 235674613, NULL, 2, '2012-08-02 11:47:19', '2021-03-31 21:20:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 78, 'application/vnd.immervision-ivp', 81690, NULL, 1, '2014-07-22 17:37:27', '2021-02-17 21:33:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 44, 'image/x-xpixmap', 49680, NULL, 3, '2015-02-02 23:35:46', '2020-12-31 23:26:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 75, 'image/g3fax', 230323, NULL, 3, '2020-06-12 08:51:56', '2020-10-24 04:38:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 48, 'video/jpm', 305, NULL, 2, '2017-01-02 00:13:35', '2020-08-24 07:53:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 9, 'application/vnd.ezpix-album', 0, NULL, 1, '2020-11-22 03:57:45', '2020-09-05 22:10:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 83, 'application/lost+xml', 5340, NULL, 1, '2012-02-26 02:41:13', '2021-01-18 20:20:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 18, 'text/calendar', 1, NULL, 2, '2019-07-08 07:09:13', '2021-05-01 04:19:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 9, 'application/vnd.koan', 992, NULL, 3, '2013-03-18 15:09:45', '2020-12-20 16:24:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 91, 'application/vnd.kenameaapp', 0, NULL, 3, '2015-03-22 16:53:53', '2021-04-29 04:45:14');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'video', '2013-01-23 16:36:49', '2016-04-28 20:21:07');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '2016-01-19 19:45:20', '2017-10-28 10:57:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'image', '2015-09-14 14:06:39', '2013-01-22 16:15:24');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 54, 'Tenetur unde magnam aliquid autem.', 0, 1, '1980-05-10 17:46:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 38, 'Voluptatem sint vitae expedita asperiores dolorem.', 0, 1, '2000-02-26 15:11:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 59, 'Non deleniti maiores aut repellat quae consequatur.', 1, 0, '2000-04-10 18:17:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 13, 'Dignissimos aspernatur mollitia rerum ab facilis ratione aspernatur similique.', 0, 0, '1974-09-23 22:24:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 45, 'Ipsum a qui et et qui tempora fugiat.', 0, 0, '1994-07-06 11:15:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 23, 'Tempora corporis necessitatibus et repudiandae amet at.', 0, 0, '1989-08-20 17:26:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 2, 'Aut nostrum id autem tempora tempora molestias nihil.', 0, 0, '1982-07-03 20:15:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 21, 'Excepturi aut perspiciatis ut velit totam.', 1, 1, '1971-08-04 01:55:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 74, 'Amet ratione numquam ipsam sapiente autem ipsum.', 1, 1, '1983-06-01 19:56:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 44, 'Excepturi doloribus eum voluptatem qui.', 0, 0, '2013-01-08 16:32:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 50, 'Labore impedit doloremque laborum et quis quaerat qui.', 1, 1, '1998-07-16 15:30:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 37, 'A consequatur est eos libero.', 1, 0, '1976-03-25 13:15:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 56, 'Et aliquam aut quisquam rerum sit nobis.', 0, 1, '1997-09-05 18:27:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 26, 'Dolorem ex voluptas cumque eum quidem enim.', 0, 0, '1989-01-07 05:23:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 20, 'Voluptas sunt quis vel neque similique et unde atque.', 0, 0, '1976-05-30 19:58:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 11, 'Debitis pariatur atque quasi non modi nam ut recusandae.', 1, 0, '1979-09-17 06:55:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 64, 'Iure dolores ea dolores enim et dolorum dolor.', 0, 0, '2000-08-09 06:00:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 80, 'Dignissimos sit quae totam minima iure.', 0, 1, '1992-03-12 13:32:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 94, 'Voluptatibus tempora aut ipsum laboriosam accusamus.', 0, 0, '1996-01-08 13:14:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 34, 'Itaque tempora accusamus et ratione.', 1, 1, '1996-05-11 16:47:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 5, 'Qui molestias voluptatibus illo quis et.', 1, 1, '1971-04-20 14:20:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 4, 'Reiciendis accusamus qui fuga totam repellat.', 0, 1, '1974-04-15 21:19:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 16, 'Non est ratione reiciendis quia.', 1, 1, '2021-01-23 01:03:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 36, 'Rerum dolorem aut in sequi qui aut laudantium molestiae.', 1, 0, '1999-12-30 17:51:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 51, 'Qui non voluptas rerum quo quaerat dolor enim earum.', 0, 1, '1994-02-19 10:57:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 7, 'Explicabo quia modi quidem vero molestiae quis qui.', 1, 0, '2007-03-05 07:54:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 98, 'In voluptates iste quas quasi.', 1, 1, '2012-09-18 11:37:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 75, 'Et mollitia quo qui est perferendis.', 1, 1, '1991-02-25 14:48:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 47, 'Sit eum nostrum et ducimus.', 0, 0, '2005-08-21 15:18:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 59, 'Voluptas dolorum nostrum eos sed ab id dolore.', 1, 0, '1993-08-16 18:10:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 10, 'Officiis repellendus beatae explicabo eum et eum voluptatem.', 1, 1, '1988-04-20 12:04:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 1, 'Voluptatem laborum distinctio tenetur officia quam.', 1, 0, '1977-08-21 18:02:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 97, 'Quasi sint molestias itaque sint minus ad.', 0, 1, '2005-05-03 23:41:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 69, 'Harum fugit consequuntur sint vel.', 1, 1, '1980-07-27 09:46:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 13, 'Delectus enim debitis nostrum quia dolor dolorem consequuntur.', 1, 1, '1992-08-17 14:59:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 41, 'Omnis pariatur temporibus laudantium veniam praesentium libero.', 1, 1, '1998-09-20 08:39:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 91, 'Iusto quia sapiente beatae pariatur necessitatibus inventore eius.', 1, 1, '1985-03-25 00:56:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 15, 'Unde nisi rerum maxime sed.', 1, 1, '1972-06-14 14:30:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 61, 'Laudantium molestias qui voluptates.', 1, 0, '1975-09-04 02:05:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 65, 'Aut aut est incidunt unde qui architecto autem.', 0, 0, '1990-05-05 18:31:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 58, 'Voluptas modi cumque quos consequatur.', 0, 1, '2006-01-17 07:08:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 11, 'Non quia consequatur adipisci reiciendis.', 0, 0, '2007-01-22 09:35:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 1, 'Doloremque ad vitae rem eaque fugiat repellendus quam voluptatem.', 1, 0, '1981-12-04 17:28:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 14, 'Voluptatem omnis distinctio et libero debitis.', 1, 1, '2007-03-12 11:45:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 36, 'Possimus praesentium tenetur consequatur quam fugiat.', 0, 0, '2012-07-07 05:22:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 20, 'Ex voluptates non laudantium blanditiis aliquam non rerum.', 0, 1, '1991-02-12 19:01:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 24, 'Error voluptatem officiis odio in eius.', 1, 1, '1987-08-19 09:41:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 100, 'Quos molestiae non non veritatis qui sit.', 0, 0, '1978-11-30 17:28:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 100, 'Sint dolor rerum necessitatibus in fugiat sequi aperiam.', 0, 0, '1993-11-06 00:10:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 18, 'Quae non ipsam eos dignissimos.', 1, 1, '2012-10-26 16:28:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 34, 'Officiis velit dolorum veritatis expedita blanditiis consectetur nobis.', 1, 1, '1994-09-08 14:58:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 4, 'Libero a impedit quod nostrum.', 1, 0, '2020-04-08 12:38:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 21, 'Eos vero sunt voluptas libero sunt.', 1, 0, '1982-08-29 05:50:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 49, 'Culpa dolorum mollitia voluptate.', 0, 1, '1986-01-03 18:31:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 40, 'Quod aut quia nulla qui beatae.', 1, 1, '1973-08-24 12:12:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 72, 'Sunt maxime praesentium voluptas sint nemo.', 1, 1, '1970-03-23 23:19:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 56, 'Et nulla et voluptas velit porro enim tempore.', 0, 1, '1983-10-24 05:16:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 38, 'Est quos qui magnam quidem.', 1, 1, '2004-08-15 23:41:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 47, 'Aut omnis molestias laudantium corrupti.', 1, 1, '2020-06-29 16:00:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 3, 'Sunt accusantium possimus et ipsum ipsum voluptas in.', 0, 0, '1997-03-01 18:14:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 96, 'Voluptas rerum iste rerum ut quam culpa.', 0, 1, '2003-06-04 01:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 56, 'Odio beatae in voluptas autem est et.', 1, 0, '1987-06-30 03:22:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 3, 'Facere culpa et quia aperiam expedita fugiat qui.', 1, 1, '1975-11-07 03:14:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 93, 'Sed pariatur ea illum sapiente.', 1, 1, '2010-10-18 12:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 25, 'Omnis quia aliquid quia rerum consectetur quibusdam dolorem hic.', 0, 1, '2008-07-18 09:27:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 16, 'Qui illo dignissimos dolorem non consequatur.', 0, 1, '2002-12-23 22:00:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 33, 'Necessitatibus voluptatem quibusdam et eveniet.', 0, 1, '2001-02-07 12:45:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 16, 'Sunt officia quo dolor rem provident deleniti adipisci.', 0, 1, '2019-05-21 05:30:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 30, 'Quaerat illo vel est ea.', 1, 1, '1975-01-03 00:20:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 94, 'Quos aperiam qui sed pariatur.', 0, 0, '1982-07-25 02:27:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 80, 'Similique aut ut corporis et accusantium ut laboriosam omnis.', 1, 0, '1995-10-02 12:55:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 88, 'Culpa sunt cum facilis rerum in.', 1, 0, '2013-01-16 10:36:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 5, 'Nobis vitae sed enim omnis quia corporis aliquam.', 0, 0, '1977-06-06 21:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 80, 'Reprehenderit et qui accusantium sunt vitae aliquid nemo.', 0, 1, '1998-07-07 13:57:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 1, 'Veniam fugiat quisquam beatae ullam magni dolorum.', 1, 0, '1988-05-03 23:09:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 41, 'Et libero vero sapiente dolore amet consequatur illo aperiam.', 0, 0, '1981-05-23 03:16:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 100, 'Deleniti impedit et dolor doloremque inventore dolore.', 1, 1, '1979-06-19 03:20:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 24, 'Quia molestias fugit qui.', 1, 0, '1970-03-28 15:06:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 40, 'Tempora aperiam quasi rerum quo aut sapiente.', 0, 1, '1973-12-16 01:23:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 99, 'Non quia beatae in vitae voluptas.', 0, 1, '1980-04-20 17:50:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 42, 'Ipsum illum animi sint veritatis.', 1, 1, '1971-04-24 04:58:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 74, 'Alias quas molestiae autem temporibus sit.', 1, 1, '2004-11-25 11:48:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 3, 'Dolor sint sit ab ea reiciendis voluptatibus.', 0, 1, '1974-06-09 11:01:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 63, 'Et reprehenderit qui aliquam autem architecto optio ut.', 1, 0, '1997-04-13 05:00:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 23, 'Deserunt et quis ut quas rem voluptatem aut.', 1, 1, '1998-01-22 04:16:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 42, 'Et officiis natus quia veritatis praesentium ut dolor distinctio.', 0, 0, '1997-08-16 21:53:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 34, 'Autem nisi et cum non.', 0, 1, '2019-03-26 10:10:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 78, 'Qui repellat facere provident perspiciatis quia ut sint.', 0, 0, '1984-05-26 01:12:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 79, 'Qui enim assumenda ut quod sed illum corporis.', 0, 1, '2007-02-09 10:44:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 80, 'Rerum quae numquam et exercitationem quo officia laudantium quia.', 1, 0, '2013-09-18 13:39:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 80, 'Beatae sit sit ut illum libero aut.', 1, 0, '2006-06-09 18:47:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 75, 'Earum doloribus sunt earum commodi at suscipit eveniet.', 1, 0, '1976-04-06 18:13:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 36, 'Delectus deserunt est minima ea ut.', 0, 0, '2017-04-02 12:42:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 83, 'Quaerat vero ducimus quia enim ipsum repellendus.', 1, 0, '1992-02-20 13:30:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 67, 'Incidunt odit totam dignissimos qui quo dolore.', 0, 0, '1981-04-25 20:10:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 61, 'Eum cum dolor qui sunt exercitationem ea veritatis consequatur.', 0, 1, '1974-11-02 11:49:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 99, 'Soluta repellendus ab qui quis accusamus modi et.', 1, 0, '1978-09-01 10:44:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 100, 'Voluptate omnis architecto ut ab totam.', 0, 0, '2010-10-14 03:24:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 76, 'Itaque totam accusamus eos omnis consequuntur.', 1, 1, '1993-01-25 05:13:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 28, 'Dolorem qui ex ad et.', 0, 1, '2008-04-07 02:34:07');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на город проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (1, 'M', '1989-05-24', 20, '2011-07-16 10:59:33', '2021-06-14 23:04:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (2, 'F', '1994-06-14', 77, '2011-09-03 08:34:08', '2021-07-12 18:11:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (3, 'M', '2001-09-03', 4, '2011-09-14 02:27:35', '2021-06-22 04:09:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (4, 'F', '1973-01-05', 85, '2011-12-12 12:20:06', '2021-07-08 04:35:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (5, 'F', '1996-01-18', 60, '2011-12-15 06:42:22', '2021-06-23 19:13:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (6, 'N', '1989-09-30', 38, '2012-01-05 09:54:19', '2021-07-09 05:16:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (7, 'M', '1977-03-11', 16, '2012-03-25 08:15:01', '2021-07-03 03:29:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (8, 'M', '2018-07-22', 12, '2012-06-30 12:33:51', '2021-07-08 18:47:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (9, 'F', '2009-06-10', 37, '2012-07-26 00:12:50', '2021-07-12 04:28:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (10, 'N', '2009-04-23', 17, '2012-08-03 12:19:30', '2021-06-21 08:41:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (11, 'F', '2019-03-03', 10, '2012-10-06 07:16:00', '2021-07-05 21:19:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (12, 'M', '1988-08-15', 70, '2012-10-15 03:47:45', '2021-07-08 12:36:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (13, 'N', '1987-05-21', 47, '2012-10-31 08:01:50', '2021-07-03 14:02:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (14, 'M', '2006-07-05', 20, '2013-01-13 13:22:28', '2021-06-20 14:08:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (15, 'M', '1994-06-29', 87, '2013-01-13 15:06:38', '2021-06-16 04:00:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (16, 'M', '1989-11-23', 33, '2013-06-18 03:13:25', '2021-07-02 10:59:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (17, 'M', '1995-04-19', 75, '2013-06-30 16:26:55', '2021-07-13 05:42:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (18, 'F', '1989-08-12', 90, '2013-07-13 17:33:36', '2021-07-05 08:37:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (19, 'F', '2000-01-01', 85, '2013-07-21 09:56:13', '2021-07-06 09:37:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (20, 'F', '1997-03-05', 11, '2013-08-12 07:04:51', '2021-06-24 05:29:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (21, 'F', '1973-07-26', 76, '2013-09-21 04:42:30', '2021-07-13 01:37:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (22, 'N', '1976-03-09', 39, '2013-10-20 21:48:18', '2021-07-08 23:20:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (23, 'F', '1982-06-06', 84, '2014-02-13 00:11:57', '2021-07-04 13:49:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (24, 'M', '1997-02-01', 92, '2014-03-07 01:06:23', '2021-07-09 22:16:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (25, 'M', '1995-12-25', 98, '2014-03-20 11:49:17', '2021-06-23 19:00:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (26, 'F', '2014-08-26', 17, '2014-04-03 10:02:20', '2021-06-26 15:03:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (27, 'M', '1989-09-27', 42, '2014-04-12 07:39:19', '2021-06-30 11:08:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (28, 'M', '1992-10-06', 70, '2014-04-16 22:17:23', '2021-06-23 11:41:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (29, 'F', '1982-12-14', 87, '2014-05-01 02:52:14', '2021-06-30 17:54:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (30, 'F', '2016-07-03', 8, '2014-05-08 04:50:49', '2021-06-26 03:58:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (31, 'M', '1971-03-23', 94, '2014-05-17 12:42:06', '2021-06-24 08:45:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (32, 'M', '1994-06-17', 6, '2014-07-29 08:02:43', '2021-06-22 10:45:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (33, 'N', '2014-06-26', 84, '2014-12-04 01:57:50', '2021-07-05 21:17:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (34, 'N', '1972-10-08', 97, '2014-12-13 17:33:54', '2021-06-26 20:12:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (35, 'F', '2013-11-24', 90, '2015-02-17 03:53:11', '2021-06-28 09:27:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (36, 'N', '1988-04-19', 44, '2015-03-31 23:40:35', '2021-07-13 07:41:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (37, 'N', '1994-01-09', 34, '2015-05-05 07:10:29', '2021-07-04 00:22:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (38, 'F', '2021-06-02', 6, '2015-05-13 06:13:21', '2021-06-25 17:00:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (39, 'M', '2020-07-30', 55, '2015-08-05 03:56:51', '2021-07-10 17:41:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (40, 'M', '1984-10-12', 71, '2015-10-08 07:32:02', '2021-06-20 05:34:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (41, 'F', '2012-09-13', 22, '2015-12-08 22:56:38', '2021-07-10 08:44:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (42, 'N', '2014-03-30', 65, '2016-01-04 23:03:46', '2021-07-09 00:56:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (43, 'N', '1980-06-02', 41, '2016-01-26 18:14:44', '2021-06-20 08:18:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (44, 'M', '1982-01-08', 69, '2016-03-02 10:47:54', '2021-06-27 03:23:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (45, 'F', '1979-03-17', 85, '2016-04-11 07:10:43', '2021-06-19 05:02:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (46, 'F', '2011-06-11', 27, '2016-04-22 14:54:33', '2021-06-23 06:47:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (47, 'M', '2007-01-14', 2, '2016-11-13 16:46:24', '2021-07-11 13:45:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (48, 'F', '2015-09-11', 59, '2016-12-05 18:00:00', '2021-07-09 04:07:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (49, 'F', '2001-01-29', 17, '2016-12-06 19:17:16', '2021-06-14 22:14:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (50, 'F', '1994-10-16', 87, '2017-01-09 19:53:08', '2021-07-03 18:45:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (51, 'M', '2021-05-18', 70, '2017-01-16 17:25:44', '2021-06-30 05:23:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (52, 'F', '1980-04-03', 93, '2017-06-17 21:16:31', '2021-06-18 01:26:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (53, 'N', '2010-08-23', 25, '2017-06-24 02:01:49', '2021-07-12 02:36:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (54, 'M', '1986-01-11', 54, '2017-07-29 23:21:35', '2021-06-28 01:50:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (55, 'N', '1971-02-06', 85, '2017-08-11 13:39:38', '2021-06-23 05:30:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (56, 'N', '1980-11-08', 23, '2017-10-10 07:47:05', '2021-07-02 23:16:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (57, 'M', '2013-02-22', 70, '2017-11-19 09:30:07', '2021-06-17 16:59:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (58, 'N', '1981-07-30', 26, '2018-01-09 01:00:36', '2021-06-27 20:54:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (59, 'N', '1993-05-20', 93, '2018-01-11 21:52:09', '2021-06-25 14:45:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (60, 'M', '1985-04-27', 56, '2018-01-12 14:56:26', '2021-07-09 23:00:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (61, 'N', '1977-12-16', 34, '2018-01-16 21:53:08', '2021-06-19 12:23:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (62, 'M', '1993-03-12', 86, '2018-01-20 01:40:13', '2021-06-17 17:33:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (63, 'M', '2011-08-16', 62, '2018-05-27 09:24:40', '2021-06-25 10:17:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (64, 'M', '1982-03-26', 18, '2018-06-01 23:40:29', '2021-06-23 13:09:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (65, 'N', '2007-08-01', 83, '2018-06-28 18:43:50', '2021-07-09 22:21:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (66, 'F', '1998-01-19', 52, '2018-08-06 05:11:46', '2021-06-23 15:42:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (67, 'N', '1998-10-07', 61, '2018-09-04 00:50:49', '2021-07-01 09:05:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (68, 'N', '1978-10-22', 16, '2018-09-10 14:14:37', '2021-06-17 20:50:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (69, 'N', '1990-11-20', 57, '2018-09-16 06:20:50', '2021-07-08 08:21:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (70, 'F', '2015-04-05', 16, '2018-09-26 13:50:51', '2021-06-30 14:14:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (71, 'F', '2015-12-04', 86, '2018-10-10 17:12:22', '2021-06-26 13:15:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (72, 'M', '1988-02-16', 79, '2018-12-09 22:55:53', '2021-06-15 20:34:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (73, 'F', '2021-03-20', 81, '2018-12-09 22:57:16', '2021-07-08 04:10:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (74, 'F', '1975-04-06', 27, '2019-01-04 08:24:33', '2021-06-24 18:32:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (75, 'N', '2007-02-22', 48, '2019-02-07 10:18:18', '2021-06-25 18:32:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (76, 'F', '1986-11-10', 65, '2019-02-15 07:05:45', '2021-06-26 23:24:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (77, 'N', '1986-10-25', 53, '2019-02-21 06:02:47', '2021-07-12 06:50:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (78, 'M', '1994-03-19', 49, '2019-02-27 19:31:34', '2021-06-29 10:17:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (79, 'M', '2003-06-24', 24, '2019-02-27 19:40:16', '2021-07-14 18:20:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (80, 'F', '2004-10-07', 70, '2019-03-20 13:21:13', '2021-06-27 12:49:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (81, 'F', '1976-02-14', 36, '2019-03-28 20:26:09', '2021-06-16 13:55:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (82, 'M', '2010-03-19', 94, '2019-04-07 22:37:34', '2021-06-27 16:26:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (83, 'F', '2009-03-27', 62, '2019-07-07 04:49:08', '2021-06-23 07:28:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (84, 'M', '2015-10-31', 60, '2019-07-29 15:20:06', '2021-07-14 05:27:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (85, 'M', '1981-07-15', 47, '2019-08-10 05:33:45', '2021-06-29 13:00:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (86, 'F', '1998-06-25', 46, '2019-08-30 20:43:12', '2021-06-14 19:55:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (87, 'M', '2019-05-06', 82, '2019-09-08 18:51:23', '2021-06-25 19:23:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (88, 'M', '2018-07-29', 17, '2019-10-15 13:01:11', '2021-06-27 19:37:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (89, 'F', '2019-12-31', 72, '2019-10-28 14:14:12', '2021-06-24 19:41:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (90, 'N', '1973-04-26', 74, '2020-01-31 04:20:18', '2021-06-23 20:55:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (91, 'F', '2002-10-25', 72, '2020-02-23 09:41:48', '2021-06-17 14:13:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (92, 'N', '1989-07-29', 6, '2020-04-29 17:23:30', '2021-07-05 12:00:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (93, 'F', '1985-04-22', 60, '2020-05-02 03:10:33', '2021-07-05 16:38:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (94, 'F', '1978-10-06', 34, '2020-05-05 15:41:31', '2021-06-30 21:24:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (95, 'F', '1974-04-24', 23, '2020-10-13 01:57:12', '2021-06-26 08:31:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (96, 'F', '2017-10-31', 42, '2021-01-01 01:48:12', '2021-07-05 08:06:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (97, 'M', '1971-09-22', 85, '2021-01-12 09:11:06', '2021-06-24 03:11:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (98, 'M', '1988-08-01', 84, '2021-03-18 22:31:26', '2021-07-14 15:44:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (99, 'F', '2004-04-01', 58, '2021-05-02 07:57:50', '2021-06-24 14:52:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (100, 'M', '2012-08-29', 42, '2021-05-29 08:45:16', '2021-06-27 20:38:12');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Norris', 'Durgan', 'josefa.jerde@example.com', '1-930-149-1861', '2018-01-11 21:52:09', '2011-07-31 06:44:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Louisa', 'Harvey', 'kavon.spinka@example.org', '494-490-7343x07045', '2019-02-27 19:40:16', '2021-03-29 05:12:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Tomasa', 'Stanton', 'ydonnelly@example.org', '1-222-803-5437', '2018-09-10 14:14:37', '2014-07-21 10:24:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Kip', 'Jenkins', 'nerdman@example.com', '+45(8)3295335861', '2014-12-04 01:57:50', '2019-05-19 04:56:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Retha', 'Hettinger', 'buckridge.rahsaan@example.net', '(828)552-8109x864', '2018-12-09 22:55:53', '2013-08-08 13:43:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Cassandra', 'Cummings', 'miller.elsie@example.com', '+69(2)5108528529', '2016-01-26 18:14:44', '2015-05-29 08:51:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Tod', 'Renner', 'hettinger.leila@example.org', '+48(5)6700862620', '2017-11-19 09:30:07', '2019-10-08 20:00:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Malcolm', 'Ebert', 'edurgan@example.com', '138-947-3223x9468', '2016-12-05 18:00:00', '2012-05-23 15:44:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Marcelino', 'Ward', 'ahodkiewicz@example.org', '1-953-792-7874', '2018-01-09 01:00:36', '2012-03-08 01:00:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Cordie', 'Bayer', 'wilkinson.roberto@example.net', '1-053-793-2490x510', '2016-04-22 14:54:33', '2014-02-10 12:13:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Alessia', 'Bednar', 'parker.jamaal@example.net', '09657419242', '2013-08-12 07:04:51', '2018-11-26 01:13:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Ruthie', 'Schumm', 'everette.o\'connell@example.org', '270.543.3492x63075', '2017-06-24 02:01:49', '2020-07-28 16:40:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Talon', 'McCullough', 'xavier.langosh@example.com', '396.223.1634', '2015-10-08 07:32:02', '2013-07-15 20:50:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Patience', 'Russel', 'reichel.connor@example.net', '+51(1)8734989614', '2019-02-27 19:31:34', '2017-01-02 21:59:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Brannon', 'Denesik', 'josh.champlin@example.com', '09887601686', '2018-12-09 22:57:16', '2019-08-20 01:07:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Joesph', 'Crooks', 'ora.christiansen@example.com', '09297192232', '2019-10-28 14:14:12', '2013-11-20 23:18:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Aron', 'Gleason', 'graham.leonard@example.org', '(360)459-2557x78332', '2015-03-31 23:40:35', '2014-01-22 09:09:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Albertha', 'Kuhic', 'ikeebler@example.net', '+01(8)3494936556', '2018-08-06 05:11:46', '2013-11-16 11:27:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Ken', 'Weimann', 'ltorphy@example.net', '387-792-2321x7881', '2012-03-25 08:15:01', '2021-03-08 01:11:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Jeffery', 'Miller', 'noah72@example.com', '666-771-0553', '2012-08-03 12:19:30', '2013-07-19 02:31:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Jaime', 'Marvin', 'kamille59@example.net', '(722)208-4809', '2020-04-29 17:23:30', '2014-09-12 17:30:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Trycia', 'Pagac', 'elwin41@example.org', '384.478.0207', '2013-07-21 09:56:13', '2015-02-18 22:16:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Collin', 'Quigley', 'naomie87@example.org', '1-458-736-7528x658', '2014-02-13 00:11:57', '2012-04-02 15:41:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Erling', 'Schumm', 'gleichner.king@example.com', '816.112.8208x63939', '2014-03-07 01:06:23', '2015-01-05 22:11:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Clemens', 'Lemke', 'rosalind02@example.net', '1-241-264-2180x7162', '2012-06-30 12:33:51', '2013-11-07 18:41:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Kelsi', 'Schuppe', 'xdoyle@example.net', '842.319.5217x3327', '2011-12-15 06:42:22', '2019-09-18 06:00:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Evan', 'Emmerich', 'america.hilpert@example.org', '+03(7)3227478830', '2018-06-01 23:40:29', '2011-09-03 06:39:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Haylee', 'Cartwright', 'o\'keefe.alvah@example.org', '(092)210-5623x005', '2012-01-05 09:54:19', '2015-10-12 19:01:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Lesly', 'Lubowitz', 'senger.tremayne@example.org', '(531)547-6695', '2012-10-31 08:01:50', '2012-12-18 13:04:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Destini', 'Botsford', 'braun.al@example.org', '762.723.0081x8840', '2020-02-23 09:41:48', '2014-06-24 07:38:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Anabelle', 'Gutmann', 'mona07@example.com', '959.982.2231', '2019-02-21 06:02:47', '2021-06-16 17:23:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Elias', 'Dickinson', 'darren83@example.net', '(716)846-7594x550', '2018-01-16 21:53:08', '2016-01-27 06:12:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Meda', 'Ullrich', 'johns.sean@example.net', '+88(0)2342606469', '2019-07-07 04:49:08', '2012-06-20 18:01:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Cortney', 'Abbott', 'magali.mccullough@example.net', '069-153-5375x158', '2017-07-29 23:21:35', '2019-06-10 17:42:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Cassie', 'Considine', 'lhilll@example.net', '1-910-576-4513x331', '2018-09-16 06:20:50', '2019-10-26 18:40:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Tamia', 'Stracke', 'bud.towne@example.net', '+46(4)4780067776', '2013-07-13 17:33:36', '2017-09-18 23:57:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Napoleon', 'Beahan', 'celestine45@example.org', '875.867.4932', '2015-08-05 03:56:51', '2012-11-21 23:42:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Geovanny', 'Erdman', 'adelle.hane@example.org', '252.967.4872x8216', '2012-10-15 03:47:45', '2014-02-18 06:36:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Frances', 'Schuster', 'tyrell47@example.net', '+52(2)4491958095', '2021-01-01 01:48:12', '2016-09-08 07:53:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Alana', 'Heidenreich', 'tnolan@example.org', '305.999.5611x070', '2014-03-20 11:49:17', '2012-05-17 01:39:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Sabina', 'Kihn', 'labadie.adolf@example.com', '1-832-551-3382x5292', '2013-01-13 13:22:28', '2013-05-25 04:10:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Olaf', 'Zboncak', 'janis67@example.org', '356-393-3528x9871', '2013-10-20 21:48:18', '2017-09-26 19:18:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Nedra', 'Kub', 'ocremin@example.org', '1-242-444-3947', '2015-05-05 07:10:29', '2017-03-28 03:58:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Isadore', 'Fritsch', 'umedhurst@example.org', '916-080-9341x83426', '2014-12-13 17:33:54', '2012-11-17 10:13:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Kasey', 'Kuhic', 'kertzmann.stanley@example.org', '07352040007', '2020-05-05 15:41:31', '2012-05-30 12:12:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Kristina', 'Wiegand', 'lpadberg@example.net', '392-347-4562x744', '2020-01-31 04:20:18', '2016-11-01 04:02:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Mason', 'Funk', 'eulah93@example.org', '1-487-744-2164x0678', '2015-05-13 06:13:21', '2016-06-19 13:57:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Elvis', 'Weber', 'kaleigh82@example.net', '1-317-650-6941', '2019-08-10 05:33:45', '2019-11-07 05:48:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Jalen', 'Harris', 'htromp@example.net', '422-324-3818', '2016-12-06 19:17:16', '2014-11-02 00:29:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Trent', 'Kunde', 'elaina65@example.org', '851-436-5858', '2019-03-28 20:26:09', '2020-10-03 04:33:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Cindy', 'Parisian', 'tyreek.ondricka@example.com', '(248)875-5650x005', '2014-05-08 04:50:49', '2016-06-10 20:44:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Desiree', 'Schinner', 'destiney.lehner@example.com', '(602)774-2769', '2021-05-29 08:45:16', '2017-06-08 04:34:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Zola', 'Waters', 'carroll.daphney@example.com', '1-288-979-8992', '2019-02-15 07:05:45', '2013-07-29 17:42:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Dell', 'Dickinson', 'qnolan@example.net', '293-574-3274x25803', '2019-04-07 22:37:34', '2014-07-12 03:18:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'America', 'Satterfield', 'carlie28@example.org', '394.089.5325', '2012-07-26 00:12:50', '2013-11-25 17:37:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Jordan', 'Fadel', 'koss.tyrel@example.com', '(588)936-2354x55837', '2019-10-15 13:01:11', '2018-06-15 14:32:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Houston', 'Spencer', 'zkohler@example.org', '+27(1)1528015551', '2019-02-07 10:18:18', '2015-02-23 03:36:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Vivian', 'Cremin', 'kozey.litzy@example.net', '267-890-4812', '2019-09-08 18:51:23', '2017-03-07 04:39:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Brendon', 'Wehner', 'hhamill@example.org', '439-501-1239x2752', '2020-10-13 01:57:12', '2014-08-03 19:07:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Bobby', 'Lemke', 'aurelia86@example.com', '275-997-4548x099', '2014-04-03 10:02:20', '2013-05-19 15:21:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Emie', 'Satterfield', 'vincenza44@example.com', '218-579-3454', '2014-05-01 02:52:14', '2019-11-18 19:06:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Cordia', 'Runte', 'garrick.wyman@example.com', '1-048-162-7379', '2014-07-29 08:02:43', '2019-09-17 05:51:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Dudley', 'Hartmann', 'johns.zechariah@example.org', '08312360077', '2016-11-13 16:46:24', '2013-08-25 16:44:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Gardner', 'Schiller', 'darrell.ernser@example.org', '600-856-4223', '2011-12-12 12:20:06', '2017-12-09 13:41:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Courtney', 'O\'Hara', 'fleffler@example.com', '00468761328', '2018-09-26 13:50:51', '2014-01-19 00:34:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Aric', 'Zboncak', 'luz91@example.com', '(818)065-0465', '2014-04-12 07:39:19', '2021-04-13 00:35:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Devonte', 'Pfeffer', 'maiya.feeney@example.net', '05551208080', '2013-01-13 15:06:38', '2014-09-30 01:10:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Tamara', 'Hand', 'veffertz@example.net', '00081172396', '2021-01-12 09:11:06', '2017-10-13 23:54:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Albertha', 'Feil', 'hayes.antonetta@example.org', '1-245-146-4265x825', '2020-05-02 03:10:33', '2021-07-01 03:25:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Nelda', 'Padberg', 'block.rene@example.org', '1-201-128-1806x97488', '2018-10-10 17:12:22', '2020-10-25 19:24:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Donavon', 'Renner', 'wpadberg@example.net', '772.761.4113', '2011-09-14 02:27:35', '2018-08-05 15:31:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Shania', 'Turcotte', 'raynor.jaylen@example.org', '951-650-0710', '2016-04-11 07:10:43', '2020-03-18 12:10:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Belle', 'Bruen', 'hickle.mckenna@example.com', '047.465.8147x20125', '2017-01-09 19:53:08', '2019-11-02 00:56:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Rosamond', 'Friesen', 'ocollier@example.org', '(753)918-2455', '2018-01-20 01:40:13', '2012-05-15 15:36:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Verner', 'Gleichner', 'beer.bettye@example.org', '(675)181-7382', '2017-01-16 17:25:44', '2020-02-17 07:04:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Ara', 'Dietrich', 'millie.roob@example.net', '734-746-2621x5582', '2011-09-03 08:34:08', '2014-09-02 09:57:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Sandy', 'Hudson', 'schultz.clarissa@example.net', '288-678-7876', '2021-03-18 22:31:26', '2017-11-09 16:17:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Jayne', 'Hilpert', 'ustiedemann@example.org', '(690)808-7105x353', '2018-06-28 18:43:50', '2012-09-04 02:15:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Gregorio', 'Runolfsdottir', 'pablo85@example.com', '1-270-814-4726', '2021-05-02 07:57:50', '2012-08-07 08:48:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Liliane', 'Koelpin', 'filomena03@example.net', '(188)583-3489x092', '2018-01-12 14:56:26', '2013-10-05 18:00:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Sarai', 'Blick', 'michael69@example.org', '(704)164-5743', '2015-02-17 03:53:11', '2019-08-05 22:38:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Eliza', 'Lemke', 'boehm.jalyn@example.org', '09380374621', '2013-09-21 04:42:30', '2018-09-24 09:03:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Caleigh', 'Hand', 'tsmitham@example.com', '1-616-377-1056x277', '2016-03-02 10:47:54', '2020-05-19 03:35:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Ezekiel', 'Farrell', 'kirlin.krystal@example.net', '(946)292-0879', '2016-01-04 23:03:46', '2019-02-18 15:04:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Guiseppe', 'Ruecker', 'eprice@example.com', '1-958-452-8098', '2017-08-11 13:39:38', '2019-04-23 23:34:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Adrianna', 'Jast', 'zwindler@example.com', '(608)223-9896', '2019-08-30 20:43:12', '2013-01-03 20:52:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Rhianna', 'Rogahn', 'kshlerin.eve@example.com', '931-115-0713', '2011-07-16 10:59:33', '2016-10-11 11:45:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Elody', 'Prosacco', 'ramona01@example.com', '151-011-3896', '2013-06-30 16:26:55', '2012-10-20 22:44:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Jeffry', 'Beahan', 'antonietta.collins@example.com', '964-611-2072x1204', '2019-01-04 08:24:33', '2018-11-06 08:54:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Ines', 'Shields', 'morissette.adelbert@example.com', '353-414-1080', '2017-10-10 07:47:05', '2013-06-04 13:24:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Iliana', 'Turner', 'wshields@example.com', '(924)136-6760x632', '2014-04-16 22:17:23', '2013-10-07 17:43:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Clifford', 'Heathcote', 'jones.demarco@example.com', '020-962-1084x6964', '2012-10-06 07:16:00', '2014-02-21 22:08:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Brown', 'Turner', 'brooks19@example.com', '1-553-038-0702', '2018-09-04 00:50:49', '2020-06-12 04:13:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Ila', 'Wyman', 'nelson72@example.net', '1-059-997-1116', '2014-05-17 12:42:06', '2018-09-20 21:33:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Joany', 'Lockman', 'general.mertz@example.net', '+18(1)1676033810', '2019-03-20 13:21:13', '2017-09-28 16:07:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Christopher', 'Hartmann', 'lubowitz.harley@example.net', '1-507-929-8212x59744', '2017-06-17 21:16:31', '2017-07-06 14:16:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Jedediah', 'Lemke', 'erika.considine@example.org', '258.275.9960x15423', '2013-06-18 03:13:25', '2016-12-01 22:56:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Valerie', 'Borer', 'prau@example.net', '1-959-820-4895', '2019-07-29 15:20:06', '2017-05-28 04:41:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Rosario', 'Stehr', 'cathy.bogisich@example.org', '04412561954', '2018-05-27 09:24:40', '2021-05-11 17:32:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Janie', 'Schroeder', 'carroll.caitlyn@example.org', '1-212-858-3029', '2015-12-08 22:56:38', '2014-05-14 08:34:59');


