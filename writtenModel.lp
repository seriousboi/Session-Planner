\Problem name: session model

Minimize
OBJROW: -100 session_0 -100 session_1 -100 session_2 -100 session_3 -100 session_4 -100 session_5 -100 session_6 -100 session_7 -100 session_8 -100 session_9
 -100 session_10 -100 session_11 -100 session_12 -100 session_13 -100 session_14 -100 session_15 -100 session_16 -100 session_17 -100 session_18
Subject To
constr(0):  kea_5 + kea_6 + kea_8 + kea_10 + kea_17 + kea_18 <= 1
constr(1):  victor_8 + victor_9 + victor_11 + victor_12 + victor_14 + victor_15 + victor_16 + victor_17 + victor_18 <= 1
constr(2):  fabien_3 + fabien_4 + fabien_14 + fabien_15 + fabien_16 <= 1
constr(3):  charles_2 + charles_4 + charles_15 + charles_16 + charles_17 <= 1
constr(4):  luis_8 + luis_10 + luis_12 + luis_14 <= 1
constr(5):  niels_5 + niels_6 + niels_7 + niels_8 <= 1
constr(6):  adrien_0 + adrien_1 + adrien_3 + adrien_5 + adrien_7 + adrien_9 + adrien_11 + adrien_13 <= 1
constr(7):  hugues_8 + hugues_10 + hugues_12 + hugues_14 <= 1
constr(8):  florent_0 + florent_1 + florent_2 + florent_3 + florent_5 + florent_6 + florent_10 + florent_12 + florent_14 + florent_15
 + florent_16 + florent_17 + florent_18 <= 1
constr(9):  jeanne_14 <= 1
constr(10):  cyprien_6 + cyprien_8 + cyprien_10 + cyprien_12 <= 1
constr(11):  - adrien_0 - florent_0 + 3 session_0 <= -0
constr(12):  - adrien_1 - florent_1 + 3 session_1 <= -0
constr(13):  - charles_2 - florent_2 + 3 session_2 <= -0
constr(14):  - fabien_3 - adrien_3 - florent_3 + 3 session_3 <= -0
constr(15):  - fabien_4 - charles_4 + 3 session_4 <= -0
constr(16):  - kea_5 - niels_5 - adrien_5 - florent_5 + 3 session_5 <= -0
constr(17):  - kea_6 - niels_6 - florent_6 - cyprien_6 + 3 session_6 <= -0
constr(18):  - niels_7 - adrien_7 + 3 session_7 <= -0
constr(19):  - kea_8 - victor_8 - luis_8 - niels_8 - hugues_8 - cyprien_8 + 3 session_8 <= -0
constr(20):  - victor_9 - adrien_9 + 3 session_9 <= -0
constr(21):  - kea_10 - luis_10 - hugues_10 - florent_10 - cyprien_10 + 3 session_10 <= -0
constr(22):  - victor_11 - adrien_11 + 3 session_11 <= -0
constr(23):  - victor_12 - luis_12 - hugues_12 - florent_12 - cyprien_12 + 3 session_12 <= -0
constr(24):  - adrien_13 + 3 session_13 <= -0
constr(25):  - victor_14 - fabien_14 - luis_14 - hugues_14 - florent_14 - jeanne_14 + 3 session_14 <= -0
constr(26):  - victor_15 - fabien_15 - charles_15 - florent_15 + 3 session_15 <= -0
constr(27):  - victor_16 - fabien_16 - charles_16 - florent_16 + 3 session_16 <= -0
constr(28):  - kea_17 - victor_17 - charles_17 - florent_17 + 3 session_17 <= -0
constr(29):  - kea_18 - victor_18 - florent_18 + 3 session_18 <= -0
constr(30):  kea_5 - session_5 <= -0
constr(31):  kea_6 - session_6 <= -0
constr(32):  kea_8 - session_8 <= -0
constr(33):  kea_10 - session_10 <= -0
constr(34):  kea_17 - session_17 <= -0
constr(35):  kea_18 - session_18 <= -0
constr(36):  victor_8 - session_8 <= -0
constr(37):  victor_9 - session_9 <= -0
constr(38):  victor_11 - session_11 <= -0
constr(39):  victor_12 - session_12 <= -0
constr(40):  victor_14 - session_14 <= -0
constr(41):  victor_15 - session_15 <= -0
constr(42):  victor_16 - session_16 <= -0
constr(43):  victor_17 - session_17 <= -0
constr(44):  victor_18 - session_18 <= -0
constr(45):  fabien_3 - session_3 <= -0
constr(46):  fabien_4 - session_4 <= -0
constr(47):  fabien_14 - session_14 <= -0
constr(48):  fabien_15 - session_15 <= -0
constr(49):  fabien_16 - session_16 <= -0
constr(50):  charles_2 - session_2 <= -0
constr(51):  charles_4 - session_4 <= -0
constr(52):  charles_15 - session_15 <= -0
constr(53):  charles_16 - session_16 <= -0
constr(54):  charles_17 - session_17 <= -0
constr(55):  luis_8 - session_8 <= -0
constr(56):  luis_10 - session_10 <= -0
constr(57):  luis_12 - session_12 <= -0
constr(58):  luis_14 - session_14 <= -0
constr(59):  niels_5 - session_5 <= -0
constr(60):  niels_6 - session_6 <= -0
constr(61):  niels_7 - session_7 <= -0
constr(62):  niels_8 - session_8 <= -0
constr(63):  adrien_0 - session_0 <= -0
constr(64):  adrien_1 - session_1 <= -0
constr(65):  adrien_3 - session_3 <= -0
constr(66):  adrien_5 - session_5 <= -0
constr(67):  adrien_7 - session_7 <= -0
constr(68):  adrien_9 - session_9 <= -0
constr(69):  adrien_11 - session_11 <= -0
constr(70):  adrien_13 - session_13 <= -0
constr(71):  hugues_8 - session_8 <= -0
constr(72):  hugues_10 - session_10 <= -0
constr(73):  hugues_12 - session_12 <= -0
constr(74):  hugues_14 - session_14 <= -0
constr(75):  florent_0 - session_0 <= -0
constr(76):  florent_1 - session_1 <= -0
constr(77):  florent_2 - session_2 <= -0
constr(78):  florent_3 - session_3 <= -0
constr(79):  florent_5 - session_5 <= -0
constr(80):  florent_6 - session_6 <= -0
constr(81):  florent_10 - session_10 <= -0
constr(82):  florent_12 - session_12 <= -0
constr(83):  florent_14 - session_14 <= -0
constr(84):  florent_15 - session_15 <= -0
constr(85):  florent_16 - session_16 <= -0
constr(86):  florent_17 - session_17 <= -0
constr(87):  florent_18 - session_18 <= -0
constr(88):  jeanne_14 - session_14 <= -0
constr(89):  cyprien_6 - session_6 <= -0
constr(90):  cyprien_8 - session_8 <= -0
constr(91):  cyprien_10 - session_10 <= -0
constr(92):  cyprien_12 - session_12 <= -0
constr(93):  adrien_0 + florent_0 <= 3
constr(94):  adrien_1 + florent_1 <= 3
constr(95):  charles_2 + florent_2 <= 3
constr(96):  fabien_3 + adrien_3 + florent_3 <= 3
constr(97):  fabien_4 + charles_4 <= 3
constr(98):  kea_5 + niels_5 + adrien_5 + florent_5 <= 3
constr(99):  kea_6 + niels_6 + florent_6 + cyprien_6 <= 3
constr(100):  niels_7 + adrien_7 <= 3
constr(101):  kea_8 + victor_8 + luis_8 + niels_8 + hugues_8 + cyprien_8 <= 3
constr(102):  victor_9 + adrien_9 <= 3
constr(103):  kea_10 + luis_10 + hugues_10 + florent_10 + cyprien_10 <= 3
constr(104):  victor_11 + adrien_11 <= 3
constr(105):  victor_12 + luis_12 + hugues_12 + florent_12 + cyprien_12 <= 3
constr(106):  adrien_13 <= 3
constr(107):  victor_14 + fabien_14 + luis_14 + hugues_14 + florent_14 + jeanne_14 <= 3
constr(108):  victor_15 + fabien_15 + charles_15 + florent_15 <= 3
constr(109):  victor_16 + fabien_16 + charles_16 + florent_16 <= 3
constr(110):  kea_17 + victor_17 + charles_17 + florent_17 <= 3
constr(111):  kea_18 + victor_18 + florent_18 <= 3
constr(112):  kea_8 + victor_8 + hugues_8 <= 2
constr(113):  kea_17 + victor_17 + florent_17 <= 2
constr(114):  kea_18 + victor_18 + florent_18 <= 2
constr(115):  kea_8 + victor_8 + cyprien_8 <= 2
constr(116):  kea_17 + charles_17 + florent_17 <= 2
constr(117):  kea_8 + luis_8 + hugues_8 <= 2
constr(118):  kea_10 + luis_10 + hugues_10 <= 2
constr(119):  kea_10 + luis_10 + florent_10 <= 2
constr(120):  kea_8 + luis_8 + cyprien_8 <= 2
constr(121):  kea_10 + luis_10 + cyprien_10 <= 2
constr(122):  kea_5 + niels_5 + adrien_5 <= 2
constr(123):  kea_8 + niels_8 + hugues_8 <= 2
constr(124):  kea_5 + niels_5 + florent_5 <= 2
constr(125):  kea_6 + niels_6 + florent_6 <= 2
constr(126):  kea_6 + niels_6 + cyprien_6 <= 2
constr(127):  kea_8 + niels_8 + cyprien_8 <= 2
constr(128):  kea_5 + adrien_5 + florent_5 <= 2
constr(129):  kea_10 + hugues_10 + florent_10 <= 2
constr(130):  kea_8 + hugues_8 + cyprien_8 <= 2
constr(131):  kea_10 + hugues_10 + cyprien_10 <= 2
constr(132):  kea_6 + florent_6 + cyprien_6 <= 2
constr(133):  kea_10 + florent_10 + cyprien_10 <= 2
constr(134):  victor_14 + fabien_14 + hugues_14 <= 2
constr(135):  victor_14 + fabien_14 + florent_14 <= 2
constr(136):  victor_15 + fabien_15 + florent_15 <= 2
constr(137):  victor_16 + fabien_16 + florent_16 <= 2
constr(138):  victor_14 + fabien_14 + jeanne_14 <= 2
constr(139):  victor_15 + charles_15 + florent_15 <= 2
constr(140):  victor_16 + charles_16 + florent_16 <= 2
constr(141):  victor_17 + charles_17 + florent_17 <= 2
constr(142):  victor_8 + luis_8 + hugues_8 <= 2
constr(143):  victor_12 + luis_12 + hugues_12 <= 2
constr(144):  victor_14 + luis_14 + hugues_14 <= 2
constr(145):  victor_12 + luis_12 + florent_12 <= 2
constr(146):  victor_14 + luis_14 + florent_14 <= 2
constr(147):  victor_14 + luis_14 + jeanne_14 <= 2
constr(148):  victor_8 + luis_8 + cyprien_8 <= 2
constr(149):  victor_12 + luis_12 + cyprien_12 <= 2
constr(150):  victor_8 + niels_8 + hugues_8 <= 2
constr(151):  victor_8 + niels_8 + cyprien_8 <= 2
constr(152):  victor_12 + hugues_12 + florent_12 <= 2
constr(153):  victor_14 + hugues_14 + florent_14 <= 2
constr(154):  victor_14 + hugues_14 + jeanne_14 <= 2
constr(155):  victor_8 + hugues_8 + cyprien_8 <= 2
constr(156):  victor_12 + hugues_12 + cyprien_12 <= 2
constr(157):  victor_14 + florent_14 + jeanne_14 <= 2
constr(158):  victor_12 + florent_12 + cyprien_12 <= 2
constr(159):  fabien_15 + charles_15 + florent_15 <= 2
constr(160):  fabien_16 + charles_16 + florent_16 <= 2
constr(161):  fabien_14 + luis_14 + hugues_14 <= 2
constr(162):  fabien_14 + luis_14 + florent_14 <= 2
constr(163):  fabien_14 + luis_14 + jeanne_14 <= 2
constr(164):  fabien_3 + adrien_3 + florent_3 <= 2
constr(165):  fabien_14 + hugues_14 + florent_14 <= 2
constr(166):  fabien_14 + hugues_14 + jeanne_14 <= 2
constr(167):  fabien_14 + florent_14 + jeanne_14 <= 2
constr(168):  luis_8 + niels_8 + hugues_8 <= 2
constr(169):  luis_8 + niels_8 + cyprien_8 <= 2
constr(170):  luis_10 + hugues_10 + florent_10 <= 2
constr(171):  luis_12 + hugues_12 + florent_12 <= 2
constr(172):  luis_14 + hugues_14 + florent_14 <= 2
constr(173):  luis_14 + hugues_14 + jeanne_14 <= 2
constr(174):  luis_8 + hugues_8 + cyprien_8 <= 2
constr(175):  luis_10 + hugues_10 + cyprien_10 <= 2
constr(176):  luis_12 + hugues_12 + cyprien_12 <= 2
constr(177):  luis_14 + florent_14 + jeanne_14 <= 2
constr(178):  luis_10 + florent_10 + cyprien_10 <= 2
constr(179):  luis_12 + florent_12 + cyprien_12 <= 2
constr(180):  niels_5 + adrien_5 + florent_5 <= 2
constr(181):  niels_8 + hugues_8 + cyprien_8 <= 2
constr(182):  niels_6 + florent_6 + cyprien_6 <= 2
constr(183):  fabien_3 = 0
constr(184):  fabien_4 = 0
constr(185):  luis_8 = 0
constr(186):  luis_10 = 0
constr(187):  luis_12 = 0
constr(188):  fabien_14 - luis_14 = -0
constr(189):  fabien_15 = 0
constr(190):  fabien_16 = 0
constr(191):  luis_8 + niels_8 <= 1
constr(192):  victor_8 + luis_8 <= 1
constr(193):  victor_12 + luis_12 <= 1
constr(194):  victor_14 + luis_14 <= 1
constr(195):  kea_8 + luis_8 <= 1
constr(196):  kea_10 + luis_10 <= 1
Bounds
 0 <= kea_5 <= 1
 0 <= kea_6 <= 1
 0 <= kea_8 <= 1
 0 <= kea_10 <= 1
 0 <= kea_17 <= 1
 0 <= kea_18 <= 1
 0 <= victor_8 <= 1
 0 <= victor_9 <= 1
 0 <= victor_11 <= 1
 0 <= victor_12 <= 1
 0 <= victor_14 <= 1
 0 <= victor_15 <= 1
 0 <= victor_16 <= 1
 0 <= victor_17 <= 1
 0 <= victor_18 <= 1
 0 <= fabien_3 <= 1
 0 <= fabien_4 <= 1
 0 <= fabien_14 <= 1
 0 <= fabien_15 <= 1
 0 <= fabien_16 <= 1
 0 <= charles_2 <= 1
 0 <= charles_4 <= 1
 0 <= charles_15 <= 1
 0 <= charles_16 <= 1
 0 <= charles_17 <= 1
 0 <= luis_8 <= 1
 0 <= luis_10 <= 1
 0 <= luis_12 <= 1
 0 <= luis_14 <= 1
 0 <= niels_5 <= 1
 0 <= niels_6 <= 1
 0 <= niels_7 <= 1
 0 <= niels_8 <= 1
 0 <= adrien_0 <= 1
 0 <= adrien_1 <= 1
 0 <= adrien_3 <= 1
 0 <= adrien_5 <= 1
 0 <= adrien_7 <= 1
 0 <= adrien_9 <= 1
 0 <= adrien_11 <= 1
 0 <= adrien_13 <= 1
 0 <= hugues_8 <= 1
 0 <= hugues_10 <= 1
 0 <= hugues_12 <= 1
 0 <= hugues_14 <= 1
 0 <= florent_0 <= 1
 0 <= florent_1 <= 1
 0 <= florent_2 <= 1
 0 <= florent_3 <= 1
 0 <= florent_5 <= 1
 0 <= florent_6 <= 1
 0 <= florent_10 <= 1
 0 <= florent_12 <= 1
 0 <= florent_14 <= 1
 0 <= florent_15 <= 1
 0 <= florent_16 <= 1
 0 <= florent_17 <= 1
 0 <= florent_18 <= 1
 0 <= jeanne_14 <= 1
 0 <= cyprien_6 <= 1
 0 <= cyprien_8 <= 1
 0 <= cyprien_10 <= 1
 0 <= cyprien_12 <= 1
 0 <= session_0 <= 1
 0 <= session_1 <= 1
 0 <= session_2 <= 1
 0 <= session_3 <= 1
 0 <= session_4 <= 1
 0 <= session_5 <= 1
 0 <= session_6 <= 1
 0 <= session_7 <= 1
 0 <= session_8 <= 1
 0 <= session_9 <= 1
 0 <= session_10 <= 1
 0 <= session_11 <= 1
 0 <= session_12 <= 1
 0 <= session_13 <= 1
 0 <= session_14 <= 1
 0 <= session_15 <= 1
 0 <= session_16 <= 1
 0 <= session_17 <= 1
 0 <= session_18 <= 1
Integers
kea_5 kea_6 kea_8 kea_10 kea_17 kea_18 victor_8 victor_9 victor_11 victor_12 
victor_14 victor_15 victor_16 victor_17 victor_18 fabien_3 fabien_4 fabien_14 fabien_15 fabien_16 
charles_2 charles_4 charles_15 charles_16 charles_17 luis_8 luis_10 luis_12 luis_14 niels_5 
niels_6 niels_7 niels_8 adrien_0 adrien_1 adrien_3 adrien_5 adrien_7 adrien_9 adrien_11 
adrien_13 hugues_8 hugues_10 hugues_12 hugues_14 florent_0 florent_1 florent_2 florent_3 florent_5 
florent_6 florent_10 florent_12 florent_14 florent_15 florent_16 florent_17 florent_18 jeanne_14 cyprien_6 
cyprien_8 cyprien_10 cyprien_12 session_0 session_1 session_2 session_3 session_4 session_5 session_6 
session_7 session_8 session_9 session_10 session_11 session_12 session_13 session_14 session_15 session_16 
session_17 session_18 
End
