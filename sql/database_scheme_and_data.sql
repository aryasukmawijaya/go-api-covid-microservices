-- ----------------------------
-- Create database covid19_db
-- ----------------------------
DROP DATABASE IF EXISTS covid19_db;
CREATE DATABASE covid19_db;

USE covid19_db;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for covid_summary
-- ----------------------------
DROP TABLE IF EXISTS `covid_summary`;
CREATE TABLE `covid_summary`  (
  `SysId` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Country` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CountryCode` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NewConfirmed` int(0) NULL DEFAULT NULL,
  `TotalConfirmed` int(0) NULL DEFAULT NULL,
  `NewDeaths` int(0) NULL DEFAULT NULL,
  `NewRecovered` int(0) NULL DEFAULT NULL,
  `LastUpdate` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`SysId`, `Country`, `CountryCode`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of covid_summary
-- ----------------------------
INSERT INTO `covid_summary` VALUES ('fe7c389a-280a-11eb-a762-00d861', 'Afghanistan', 'AF', 205, 43240, 12, 25, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe7f442d-280a-11eb-a762-00d861', 'Albania', 'AL', 597, 27830, 11, 122, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe7fb467-280a-11eb-a762-00d861', 'Algeria', 'DZ', 860, 67679, 15, 434, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe800a70-280a-11eb-a762-00d861', 'Andorra', 'AD', 147, 5872, 1, 72, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe805d9d-280a-11eb-a762-00d861', 'Angola', 'AO', 77, 13451, 0, 99, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe80bbfd-280a-11eb-a762-00d861', 'Antigua and Barbuda', 'AG', 0, 134, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe812517-280a-11eb-a762-00d861', 'Argentina', 'AR', 5645, 1310491, 129, 9736, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe816f39-280a-11eb-a762-00d861', 'Armenia', 'AM', 1482, 117337, 25, 879, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe81b887-280a-11eb-a762-00d861', 'Australia', 'AU', 38, 27749, 0, 1, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8200a2-280a-11eb-a762-00d861', 'Austria', 'AT', 5665, 203956, 83, 6259, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe824c40-280a-11eb-a762-00d861', 'Azerbaijan', 'AZ', 2259, 75688, 21, 1101, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe82932d-280a-11eb-a762-00d861', 'Bahamas', 'BS', 23, 7186, 1, 41, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe82df5f-280a-11eb-a762-00d861', 'Bahrain', 'BH', 180, 84703, 1, 169, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe832e8a-280a-11eb-a762-00d861', 'Bangladesh', 'BD', 1837, 432333, 21, 1693, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe83790c-280a-11eb-a762-00d861', 'Barbados', 'BB', 1, 250, 0, 4, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe83c4c9-280a-11eb-a762-00d861', 'Belarus', 'BY', 1315, 114185, 7, 1506, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe840d73-280a-11eb-a762-00d861', 'Belgium', 'BE', 4659, 535939, 118, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe845933-280a-11eb-a762-00d861', 'Belize', 'BZ', 78, 4861, 2, 34, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe84ac19-280a-11eb-a762-00d861', 'Benin', 'BJ', 0, 2844, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8510d5-280a-11eb-a762-00d861', 'Bhutan', 'BT', 0, 375, 0, 2, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8573f1-280a-11eb-a762-00d861', 'Bolivia', 'BO', 65, 143246, 8, 309, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe85dc31-280a-11eb-a762-00d861', 'Bosnia and Herzegovina', 'BA', 1056, 71956, 32, 245, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe86400a-280a-11eb-a762-00d861', 'Botswana', 'BW', 0, 8225, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe86af55-280a-11eb-a762-00d861', 'Brazil', 'BR', 14134, 5863093, 140, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe872c2d-280a-11eb-a762-00d861', 'Brunei Darussalam', 'BN', 0, 148, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe879e3c-280a-11eb-a762-00d861', 'Bulgaria', 'BG', 816, 98251, 39, 570, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe88153a-280a-11eb-a762-00d861', 'Burkina Faso', 'BF', 6, 2641, 0, 19, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8885dd-280a-11eb-a762-00d861', 'Burundi', 'BI', 1, 628, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe88f4d1-280a-11eb-a762-00d861', 'Cambodia', 'KH', 0, 302, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe89639f-280a-11eb-a762-00d861', 'Cameroon', 'CM', 0, 22692, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe89d72c-280a-11eb-a762-00d861', 'Canada', 'CA', 4291, 299409, 54, 3564, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8a44cf-280a-11eb-a762-00d861', 'Cape Verde', 'CV', 42, 9822, 1, 72, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8ab9c2-280a-11eb-a762-00d861', 'Central African Republic', 'CF', 4, 4900, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8b32ef-280a-11eb-a762-00d861', 'Chad', 'TD', 6, 1597, 1, 4, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8ba84c-280a-11eb-a762-00d861', 'Chile', 'CL', 1597, 531273, 42, 1457, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8c1f53-280a-11eb-a762-00d861', 'China', 'CN', 22, 91850, 0, 29, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8c8e4c-280a-11eb-a762-00d861', 'Colombia', 'CO', 7112, 1198746, 202, 7380, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8cff33-280a-11eb-a762-00d861', 'Comoros', 'KM', 0, 579, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8d7316-280a-11eb-a762-00d861', 'Congo (Brazzaville)', 'CG', 0, 5515, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8dddb8-280a-11eb-a762-00d861', 'Congo (Kinshasa)', 'CD', 0, 11760, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8e4921-280a-11eb-a762-00d861', 'Costa Rica', 'CR', 0, 123223, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8eb6d6-280a-11eb-a762-00d861', 'Croatia', 'HR', 2362, 84206, 43, 2483, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8f2085-280a-11eb-a762-00d861', 'Cuba', 'CU', 22, 7590, 0, 45, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe8fe523-280a-11eb-a762-00d861', 'Cyprus', 'CY', 127, 7178, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9061d0-280a-11eb-a762-00d861', 'Czech Republic', 'CZ', 1887, 460116, 150, 4923, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe90d0d5-280a-11eb-a762-00d861', 'Côte d\'Ivoire', 'CI', 31, 20976, 1, 17, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe914025-280a-11eb-a762-00d861', 'Denmark', 'DK', 1059, 62652, 3, 974, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe919ecd-280a-11eb-a762-00d861', 'Djibouti', 'DJ', 4, 5649, 0, 6, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe920034-280a-11eb-a762-00d861', 'Dominica', 'DM', 0, 68, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe926785-280a-11eb-a762-00d861', 'Dominican Republic', 'DO', 499, 133724, 3, 391, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe92c919-280a-11eb-a762-00d861', 'Ecuador', 'EC', 668, 180295, 11, 5683, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe933c74-280a-11eb-a762-00d861', 'Egypt', 'EG', 220, 110767, 11, 100, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe939bcc-280a-11eb-a762-00d861', 'El Salvador', 'SV', 0, 36358, 5, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe93f36a-280a-11eb-a762-00d861', 'Equatorial Guinea', 'GQ', 0, 5104, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe944e00-280a-11eb-a762-00d861', 'Eritrea', 'ER', 0, 493, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe94ac45-280a-11eb-a762-00d861', 'Estonia', 'EE', 225, 7637, 1, 33, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe950a87-280a-11eb-a762-00d861', 'Ethiopia', 'ET', 399, 102720, 4, 191, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe956d2a-280a-11eb-a762-00d861', 'Fiji', 'FJ', 0, 35, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe95ced1-280a-11eb-a762-00d861', 'Finland', 'FI', 213, 19315, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9636d0-280a-11eb-a762-00d861', 'France', 'FR', 0, 1915713, 1, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe969b86-280a-11eb-a762-00d861', 'Gabon', 'GA', 0, 9062, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe96fead-280a-11eb-a762-00d861', 'Gambia', 'GM', 0, 3702, 0, 4, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe975d7a-280a-11eb-a762-00d861', 'Georgia', 'GE', 3020, 79678, 34, 3387, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe97c3a6-280a-11eb-a762-00d861', 'Germany', 'DE', 3213, 802946, 62, 6718, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9824fd-280a-11eb-a762-00d861', 'Ghana', 'GH', 105, 50123, 2, 149, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe988717-280a-11eb-a762-00d861', 'Greece', 'GR', 1695, 74205, 71, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe98e9e3-280a-11eb-a762-00d861', 'Grenada', 'GD', 0, 32, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe99479a-280a-11eb-a762-00d861', 'Guatemala', 'GT', 166, 114885, 12, 304, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe99a509-280a-11eb-a762-00d861', 'Guinea', 'GN', 26, 12611, 1, 110, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9a03da-280a-11eb-a762-00d861', 'Guinea-Bissau', 'GW', 0, 2419, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9a6437-280a-11eb-a762-00d861', 'Guyana', 'GY', 29, 4823, 1, 52, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9ac56e-280a-11eb-a762-00d861', 'Haiti', 'HT', 0, 9168, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9b25d2-280a-11eb-a762-00d861', 'Holy See (Vatican City State)', 'VA', 0, 27, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9b8ad9-280a-11eb-a762-00d861', 'Honduras', 'HN', 547, 103102, 1, 227, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9bebb8-280a-11eb-a762-00d861', 'Hungary', 'HU', 4238, 140961, 107, 473, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9c498c-280a-11eb-a762-00d861', 'Iceland', 'IS', 3, 5189, 0, 46, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9cab9a-280a-11eb-a762-00d861', 'India', 'IN', 30548, 8845127, 435, 43851, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9d0b23-280a-11eb-a762-00d861', 'Indonesia', 'ID', 4106, 467113, 63, 3897, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9d69f0-280a-11eb-a762-00d861', 'Iran, Islamic Republic of', 'IR', 12543, 762068, 459, 6071, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9dd0f6-280a-11eb-a762-00d861', 'Iraq', 'IQ', 2237, 519152, 47, 2813, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9e2d25-280a-11eb-a762-00d861', 'Ireland', 'IE', 377, 67903, 1, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9e7c0a-280a-11eb-a762-00d861', 'Israel', 'IL', 402, 323741, 11, 755, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9ecc33-280a-11eb-a762-00d861', 'Italy', 'IT', 33977, 1178529, 546, 9376, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fe9f1ff2-280a-11eb-a762-00d861', 'Jamaica', 'JM', 104, 9884, 2, 20, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea08a37-280a-11eb-a762-00d861', 'Japan', 'JP', 1498, 118611, 9, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea0eee8-280a-11eb-a762-00d861', 'Jordan', 'JO', 2373, 143678, 68, 188, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea15222-280a-11eb-a762-00d861', 'Kazakhstan', 'KZ', 588, 121051, 0, 301, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea1b61e-280a-11eb-a762-00d861', 'Kenya', 'KE', 972, 70245, 41, 894, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea21ac1-280a-11eb-a762-00d861', 'Korea (South)', 'KR', 223, 28769, 1, 68, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea27c02-280a-11eb-a762-00d861', 'Kuwait', 'KW', 499, 136840, 3, 683, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea2d7a8-280a-11eb-a762-00d861', 'Kyrgyzstan', 'KG', 1030, 66983, 7, 913, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea33889-280a-11eb-a762-00d861', 'Lao PDR', 'LA', 0, 24, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea39c96-280a-11eb-a762-00d861', 'Latvia', 'LV', 316, 10547, 2, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea3fcf5-280a-11eb-a762-00d861', 'Lebanon', 'LB', 1163, 105430, 11, 1878, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea45b99-280a-11eb-a762-00d861', 'Lesotho', 'LS', 0, 2041, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea4b8d1-280a-11eb-a762-00d861', 'Liberia', 'LR', 9, 1507, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea515d5-280a-11eb-a762-00d861', 'Libya', 'LY', 974, 73602, 22, 874, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea57140-280a-11eb-a762-00d861', 'Liechtenstein', 'LI', 15, 985, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea5cd95-280a-11eb-a762-00d861', 'Lithuania', 'LT', 1371, 34758, 11, 56, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea62b66-280a-11eb-a762-00d861', 'Luxembourg', 'LU', 0, 25931, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea68829-280a-11eb-a762-00d861', 'Macao, SAR China', 'MO', 0, 0, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea6e29c-280a-11eb-a762-00d861', 'Macedonia, Republic of', 'MK', 988, 47050, 24, 383, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea73fab-280a-11eb-a762-00d861', 'Madagascar', 'MG', 87, 17310, 1, 76, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea79a53-280a-11eb-a762-00d861', 'Malawi', 'MW', 1, 5965, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea7f66f-280a-11eb-a762-00d861', 'Malaysia', 'MY', 1208, 47417, 3, 1013, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea85004-280a-11eb-a762-00d861', 'Maldives', 'MV', 50, 12204, 1, 27, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea8aa14-280a-11eb-a762-00d861', 'Mali', 'ML', 32, 3900, 2, 12, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea90fd8-280a-11eb-a762-00d861', 'Malta', 'MT', 117, 8034, 2, 63, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea96aea-280a-11eb-a762-00d861', 'Marshall Islands', 'MH', 0, 1, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fea9c768-280a-11eb-a762-00d861', 'Mauritania', 'MR', 4, 7952, 0, 8, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaa2570-280a-11eb-a762-00d861', 'Mauritius', 'MU', 8, 478, 0, 3, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaa7e62-280a-11eb-a762-00d861', 'Mexico', 'MX', 3269, 1006522, 283, 4829, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaad8d0-280a-11eb-a762-00d861', 'Moldova', 'MD', 507, 89279, 13, 1286, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feab3472-280a-11eb-a762-00d861', 'Monaco', 'MC', 3, 548, 0, 4, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feab8c0e-280a-11eb-a762-00d861', 'Mongolia', 'MN', 3, 431, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feabe83f-280a-11eb-a762-00d861', 'Montenegro', 'ME', 491, 27177, 6, 236, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feac4179-280a-11eb-a762-00d861', 'Morocco', 'MA', 4966, 293177, 82, 3694, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feac9b88-280a-11eb-a762-00d861', 'Mozambique', 'MZ', 108, 14448, 3, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feacf4b4-280a-11eb-a762-00d861', 'Myanmar', 'MM', 983, 68994, 25, 989, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('fead4ebf-280a-11eb-a762-00d861', 'Namibia', 'NA', 59, 13508, 0, 213, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feada808-280a-11eb-a762-00d861', 'Nepal', 'NP', 1477, 209776, 6, 2798, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feae004b-280a-11eb-a762-00d861', 'Netherlands', 'NL', 5413, 447871, 43, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feae5b72-280a-11eb-a762-00d861', 'New Zealand', 'NZ', 0, 2001, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaea7d9-280a-11eb-a762-00d861', 'Nicaragua', 'NI', 0, 5661, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaef24e-280a-11eb-a762-00d861', 'Niger', 'NE', 6, 1307, 0, 1, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaf3be2-280a-11eb-a762-00d861', 'Nigeria', 'NG', 152, 65148, 0, 44, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feaf988e-280a-11eb-a762-00d861', 'Norway', 'NO', 0, 28434, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feafedda-280a-11eb-a762-00d861', 'Oman', 'OM', 947, 120389, 12, 1046, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb042b8-280a-11eb-a762-00d861', 'Pakistan', 'PK', 2128, 359032, 19, 599, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb09398-280a-11eb-a762-00d861', 'Palestinian Territory', 'PS', 864, 63031, 7, 555, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb0e636-280a-11eb-a762-00d861', 'Panama', 'PA', 1344, 146653, 6, 1099, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb1373e-280a-11eb-a762-00d861', 'Papua New Guinea', 'PG', 2, 602, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb18b4b-280a-11eb-a762-00d861', 'Paraguay', 'PY', 509, 71574, 18, 410, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb1dd7c-280a-11eb-a762-00d861', 'Peru', 'PE', 2249, 934899, 71, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb22fce-280a-11eb-a762-00d861', 'Philippines', 'PH', 1501, 407838, 41, 11261, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb27a53-280a-11eb-a762-00d861', 'Poland', 'PL', 21854, 712972, 303, 12568, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb2b51e-280a-11eb-a762-00d861', 'Portugal', 'PT', 6035, 217301, 76, 2549, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb2e7ba-280a-11eb-a762-00d861', 'Qatar', 'QA', 215, 135785, 0, 207, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb31af1-280a-11eb-a762-00d861', 'Republic of Kosovo', 'XK', 1266, 29117, 24, 443, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb34e9b-280a-11eb-a762-00d861', 'Romania', 'RO', 7096, 360281, 113, 4781, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb38190-280a-11eb-a762-00d861', 'Russian Federation', 'RU', 22313, 1910149, 349, 14352, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb3b50d-280a-11eb-a762-00d861', 'Rwanda', 'RW', 61, 5455, 3, 1, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb3ea68-280a-11eb-a762-00d861', 'Réunion', 'RE', 0, 0, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb43ad2-280a-11eb-a762-00d861', 'Saint Kitts and Nevis', 'KN', 0, 19, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb48591-280a-11eb-a762-00d861', 'Saint Lucia', 'LC', 2, 162, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb4b811-280a-11eb-a762-00d861', 'Saint Vincent and Grenadines', 'VC', 0, 78, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb4e929-280a-11eb-a762-00d861', 'San Marino', 'SM', 0, 1253, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb51941-280a-11eb-a762-00d861', 'Sao Tome and Principe', 'ST', 1, 965, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb54b57-280a-11eb-a762-00d861', 'Saudi Arabia', 'SA', 305, 353255, 16, 357, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb57e44-280a-11eb-a762-00d861', 'Senegal', 'SN', 14, 15793, 1, 9, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb5b014-280a-11eb-a762-00d861', 'Serbia', 'RS', 3482, 84568, 20, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb5e39a-280a-11eb-a762-00d861', 'Seychelles', 'SC', 0, 160, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb6157d-280a-11eb-a762-00d861', 'Sierra Leone', 'SL', 0, 2391, 0, 4, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb6461d-280a-11eb-a762-00d861', 'Singapore', 'SG', 3, 58119, 0, 10, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb675bd-280a-11eb-a762-00d861', 'Slovakia', 'SK', 1200, 86767, 0, 1495, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb6a6d8-280a-11eb-a762-00d861', 'Slovenia', 'SI', 920, 55042, 32, 1316, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb6d684-280a-11eb-a762-00d861', 'Solomon Islands', 'SB', 0, 16, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb70b1b-280a-11eb-a762-00d861', 'Somalia', 'SO', 0, 4301, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb73fac-280a-11eb-a762-00d861', 'South Africa', 'ZA', 1842, 751024, 35, 206, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb77090-280a-11eb-a762-00d861', 'South Sudan', 'SS', 0, 3003, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb7a0a3-280a-11eb-a762-00d861', 'Spain', 'ES', 0, 1458591, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb7d030-280a-11eb-a762-00d861', 'Sri Lanka', 'LK', 704, 17287, 5, 171, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb7ffe3-280a-11eb-a762-00d861', 'Sudan', 'SD', 225, 14626, 0, 36, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb83130-280a-11eb-a762-00d861', 'Suriname', 'SR', 0, 5274, 0, 5, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb862be-280a-11eb-a762-00d861', 'Swaziland', 'SZ', 2, 6095, 0, 8, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb893cf-280a-11eb-a762-00d861', 'Sweden', 'SE', 0, 177355, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb8c391-280a-11eb-a762-00d861', 'Switzerland', 'CH', 0, 257135, 18, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb8f583-280a-11eb-a762-00d861', 'Syrian Arab Republic (Syria)', 'SY', 71, 6684, 4, 49, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb9271d-280a-11eb-a762-00d861', 'Taiwan, Republic of China', 'TW', 2, 602, 0, 1, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb95906-280a-11eb-a762-00d861', 'Tajikistan', 'TJ', 37, 11610, 0, 39, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb989fc-280a-11eb-a762-00d861', 'Tanzania, United Republic of', 'TZ', 0, 509, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb9bacc-280a-11eb-a762-00d861', 'Thailand', 'TH', 1, 3875, 0, 6, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feb9ec7a-280a-11eb-a762-00d861', 'Timor-Leste', 'TL', 0, 30, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feba1fc4-280a-11eb-a762-00d861', 'Togo', 'TG', 24, 2675, 0, 35, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feba504b-280a-11eb-a762-00d861', 'Trinidad and Tobago', 'TT', 3, 6080, 0, 29, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('feba7f84-280a-11eb-a762-00d861', 'Tunisia', 'TN', 1065, 80404, 66, 604, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febab195-280a-11eb-a762-00d861', 'Turkey', 'TR', 3223, 414278, 89, 2561, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febae15e-280a-11eb-a762-00d861', 'Uganda', 'UG', 231, 16020, 1, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febb12ee-280a-11eb-a762-00d861', 'Ukraine', 'UA', 10940, 551533, 98, 2737, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febb440c-280a-11eb-a762-00d861', 'United Arab Emirates', 'AE', 1210, 150345, 2, 691, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febbcbfa-280a-11eb-a762-00d861', 'United Kingdom', 'GB', 24977, 1372884, 168, 13, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febc0054-280a-11eb-a762-00d861', 'United States of America', 'US', 133045, 11036935, 616, 26440, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febc31f7-280a-11eb-a762-00d861', 'Uruguay', 'UY', 73, 4030, 1, 58, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febc6397-280a-11eb-a762-00d861', 'Uzbekistan', 'UZ', 256, 70243, 4, 285, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febc91a3-280a-11eb-a762-00d861', 'Vanuatu', 'VU', 0, 1, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febcc2f4-280a-11eb-a762-00d861', 'Venezuela (Bolivarian Republic)', 'VE', 419, 97352, 3, 425, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febcf39a-280a-11eb-a762-00d861', 'Viet Nam', 'VN', 16, 1281, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febd2755-280a-11eb-a762-00d861', 'Western Sahara', 'EH', 0, 10, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febd5783-280a-11eb-a762-00d861', 'Yemen', 'YE', 0, 2072, 0, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febd89dd-280a-11eb-a762-00d861', 'Zambia', 'ZM', 26, 17123, 3, 0, '2020-11-16 12:32:34');
INSERT INTO `covid_summary` VALUES ('febdb962-280a-11eb-a762-00d861', 'Zimbabwe', 'ZW', 43, 8829, 0, 0, '2020-11-16 12:32:34');

SET FOREIGN_KEY_CHECKS = 1;
