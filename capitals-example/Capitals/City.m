/*******************************************************************************

 Copyright (c) 2013, MapsWithMe GmbH
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 * Redistributions of source code must retain the above copyright notice, this
 list of conditions and the following disclaimer.

 * Redistributions in binary form must reproduce the above copyright notice,
 this list of conditions and the following disclaimer in the documentation
 and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 ******************************************************************************/

#include "City.h"

  City const CAPITALS[241] = {{@"Abu Dhabi", 24.46667, 54.36667, @"AE", 603492, @"Asia/Dubai"},
    {@"Abuja", 9.06853, 7.48375, @"NG", 590400, @"Africa/Lagos"},
    {@"Accra", 5.55602, -0.1969, @"GH", 1963264, @"Africa/Accra"},
    {@"Adamstown", -25.06597, -130.1015, @"PN", 46, @"Pacific/Pitcairn"},
    {@"Addis Ababa", 9.02497, 38.74689, @"ET", 2757729, @"Africa/Addis_Ababa"},
    {@"Algiers", 36.7525, 3.04197, @"DZ", 1977663, @"Africa/Algiers"},
    {@"Alofi", -19.05952, -169.9187, @"NU", 624, @"Pacific/Niue"},
    {@"Amman", 31.95522, 35.94503, @"JO", 1275857, @"Asia/Amman"},
    {@"Amsterdam", 52.37403, 4.88969, @"NL", 741636, @"Europe/Amsterdam"},
    {@"Andorra la Vella", 42.50779, 1.52109, @"AD", 20430, @"Europe/Andorra"},
    {@"Ankara", 39.91987, 32.85427, @"TR", 3517182, @"Europe/Istanbul"},
    {@"Antananarivo", -18.91368, 47.53613, @"MG", 1391433, @"Indian/Antananarivo"},
    {@"Apia", -13.83333, -171.7667, @"WS", 40407, @"Pacific/Apia"},
    {@"Ashgabat", 37.95, 58.38333, @"TM", 727700, @"Asia/Ashgabat"},
    {@"Asmara", 15.33805, 38.93184, @"ER", 563930, @"Africa/Asmara"},
    {@"Astana", 51.1801, 71.44598, @"KZ", 345604, @"Asia/Almaty"},
    {@"Asunción", -25.30066, -57.63591, @"PY", 1482200, @"America/Asuncion"},
    {@"Athens", 37.97945, 23.71622, @"GR", 729137, @"Europe/Athens"},
    {@"Avarua", -21.20778, -159.775, @"CK", 13373, @"Pacific/Rarotonga"},
    {@"Baghdad", 33.34058, 44.40088, @"IQ", 5672513, @"Asia/Baghdad"},
    {@"Baku", 40.37767, 49.89201, @"AZ", 1116513, @"Asia/Baku"},
    {@"Bamako", 12.65, -8, @"ML", 1297281, @"Africa/Bamako"},
    {@"Bandar Seri Begawan", 4.94029, 114.9481, @"BN", 64409, @"Asia/Brunei"},
    {@"Bangkok", 13.75398, 100.5014, @"TH", 5104476, @"Asia/Bangkok"},
    {@"Bangui", 4.36122, 18.55496, @"CF", 542393, @"Africa/Bangui"},
    {@"Banjul", 13.45274, -16.57803, @"GM", 34589, @"Africa/Banjul"},
    {@"Basse-Terre", 15.99854, -61.72548, @"GP", 11472, @"America/Guadeloupe"},
    {@"Basseterre", 17.29484, -62.7261, @"KN", 12920, @"America/St_Kitts"},
    {@"Beijing", 39.9075, 116.3972, @"CN", 7480601, @"Asia/Shanghai"},
    {@"Beirut", 33.88894, 35.49442, @"LB", 1916100, @"Asia/Beirut"},
    {@"Belgrade", 44.80401, 20.46513, @"RS", 1273651, @"Europe/Belgrade"},
    {@"Belmopan", 17.25, -88.76667, @"BZ", 13381, @"America/Belize"},
    {@"Berlin", 52.52437, 13.41053, @"DE", 3426354, @"Europe/Berlin"},
    {@"Bern", 46.94809, 7.44744, @"CH", 121631, @"Europe/Zurich"},
    {@"Bishkek", 42.87, 74.59, @"KG", 900000, @"Asia/Bishkek"},
    {@"Bissau", 11.86357, -15.59767, @"GW", 388028, @"Africa/Bissau"},
    {@"Bogotá", 4.60971, -74.08175, @"CO", 7102602, @"America/Bogota"},
    {@"Brasília", -15.77972, -47.92972, @"BR", 2207718, @"America/Sao_Paulo"},
    {@"Bratislava", 48.14816, 17.10674, @"SK", 423737, @"Europe/Bratislava"},
    {@"Brazzaville", -4.26613, 15.28318, @"CG", 1284609, @"Africa/Brazzaville"},
    {@"Bridgetown", 13.1, -59.61667, @"BB", 98511, @"America/Barbados"},
    {@"Brussels", 50.85045, 4.34878, @"BE", 1019022, @"Europe/Brussels"},
    {@"Bucharest", 44.43225, 26.10626, @"RO", 1877155, @"Europe/Bucharest"},
    {@"Budapest", 47.49801, 19.03991, @"HU", 1696128, @"Europe/Budapest"},
    {@"Buenos Aires", -34.61315, -58.37723, @"AR", 13076300, @"America/Argentina/Buenos_Aires"},
    {@"Bujumbura", -3.3822, 29.3644, @"BI", 331700, @"Africa/Bujumbura"},
    {@"Cairo", 30.06263, 31.24967, @"EG", 7734614, @"Africa/Cairo"},
    {@"Canberra", -35.28346, 149.1281, @"AU", 327700, @"Australia/Sydney"},
    {@"Caracas", 10.48801, -66.87919, @"VE", 3000000, @"America/Caracas"},
    {@"Castries", 13.9957, -61.00614, @"LC", 10000, @"America/St_Lucia"},
    {@"Cayenne", 4.93333, -52.33333, @"GF", 61550, @"America/Cayenne"},
    {@"Charlotte Amalie", 18.3419, -64.9307, @"VI", 20000, @"America/St_Thomas"},
    {@"Chişinău", 47.00556, 28.8575, @"MD", 635994, @"Europe/Chisinau"},
    {@"Cockburn Town", 21.46122, -71.14188, @"TC", 3720, @"America/Grand_Turk"},
    {@"Colombo", 6.93194, 79.84778, @"LK", 648034, @"Asia/Colombo"},
    {@"Conakry", 9.53795, -13.67729, @"GN", 1767200, @"Africa/Conakry"},
    {@"Copenhagen", 55.67594, 12.56553, @"DK", 1153615, @"Europe/Copenhagen"},
    {@"Dakar", 14.6937, -17.44406, @"SN", 2476400, @"Africa/Dakar"},
    {@"Damascus", 33.5102, 36.29128, @"SY", 1569394, @"Asia/Damascus"},
    {@"Dhaka", 23.7104, 90.40744, @"BD", 10356500, @"Asia/Dhaka"},
    {@"Dili", -8.55861, 125.5736, @"TL", 150000, @"Asia/Dili"},
    {@"Djibouti", 11.58901, 43.14503, @"DJ", 623891, @"Africa/Djibouti"},
    {@"Dodoma", -6.17221, 35.73947, @"TZ", 180541, @"Africa/Dar_es_Salaam"},
    {@"Doha", 25.27932, 51.52245, @"QA", 344939, @"Asia/Qatar"},
    {@"Douglas", 54.15, -4.48333, @"IM", 26218, @"Europe/Isle_of_Man"},
    {@"Dublin", 53.33306, -6.24889, @"IE", 1024027, @"Europe/Dublin"},
    {@"Dushanbe", 38.53575, 68.77905, @"TJ", 543107, @"Asia/Dushanbe"},
    {@"Flying Fish Cove", -10.42172, 105.6791, @"CX", 500, @"Indian/Christmas"},
    {@"Fort-de-France", 14.60892, -61.07334, @"MQ", 89995, @"America/Martinique"},
    {@"Freetown", 8.484, -13.22994, @"SL", 802639, @"Africa/Freetown"},
    {@"Funafuti", -8.52425, 179.1942, @"TV", 4492, @"Pacific/Funafuti"},
    {@"Gaborone", -24.65451, 25.90859, @"BW", 208411, @"Africa/Gaborone"},
    {@"George Town", 19.28692, -81.36706, @"KY", 29370, @"America/Cayman"},
    {@"Georgetown", 6.80448, -58.15527, @"GY", 235017, @"America/Guyana"},
    {@"Gibraltar", 36.14474, -5.35257, @"GI", 26544, @"Europe/Gibraltar"},
    {@"Grytviken", -54.28111, -36.5092, @"GS", 2, @"Atlantic/South_Georgia"},
    {@"Guatemala City", 14.64072, -90.51327, @"GT", 994938, @"America/Guatemala"},
    {@"Gustavia", 17.89618, -62.84978, @"BL", 5988, @"America/St_Barthelemy"},
    {@"Hagåtña", 13.47567, 144.7489, @"GU", 1051, @"Pacific/Guam"},
    {@"Hamilton", 32.29149, -64.77797, @"BM", 902, @"Atlantic/Bermuda"},
    {@"Harare", -17.82772, 31.05337, @"ZW", 1542813, @"Africa/Harare"},
    {@"Havana", 23.13302, -82.38304, @"CU", 2163824, @"America/Havana"},
    {@"Helsinki", 60.16952, 24.93545, @"FI", 558457, @"Europe/Helsinki"},
    {@"Hong Kong", 22.28552, 114.1577, @"HK", 7012738, @"Asia/Hong_Kong"},
    {@"Honiara", -9.43333, 159.95, @"SB", 56298, @"Pacific/Guadalcanal"},
    {@"Hà Nội", 21.0245, 105.8412, @"VN", 1431270, @"Asia/Ho_Chi_Minh"},
    {@"Islamabad", 33.72148, 73.04329, @"PK", 601600, @"Asia/Karachi"},
    {@"Jakarta", -6.21462, 106.8451, @"ID", 8540121, @"Asia/Jakarta"},
    {@"Jamestown", -15.93872, -5.71675, @"SH", 637, @"Atlantic/St_Helena"},
    {@"Juba", 4.85165, 31.58247, @"SS", 300000, @"Africa/Juba"},
    {@"Kabul", 34.52813, 69.17233, @"AF", 3043532, @"Asia/Kabul"},
    {@"Kampala", 0.31628, 32.58219, @"UG", 1353189, @"Africa/Kampala"},
    {@"Kathmandu", 27.70169, 85.3206, @"NP", 1442271, @"Asia/Kathmandu"},
    {@"Khartoum", 15.55177, 32.53241, @"SD", 1974647, @"Africa/Khartoum"},
    {@"Kiev", 50.45466, 30.5238, @"UA", 2514227, @"Europe/Kiev"},
    {@"Kigali", -1.94995, 30.05885, @"RW", 745261, @"Africa/Kigali"},
    {@"Kingston", -29.05459, 167.9663, @"NF", 880, @"Pacific/Norfolk"},
    {@"Kingston", 17.99702, -76.79358, @"JM", 937700, @"America/Jamaica"},
    {@"Kingstown", 13.15872, -61.22475, @"VC", 24518, @"America/St_Vincent"},
    {@"Kinshasa", -4.32142, 15.30807, @"CD", 7785965, @"Africa/Kinshasa"},
    {@"Kralendijk", 12.15, -68.26667, @"BQ", 3081, @"America/Kralendijk"},
    {@"Kuala Lumpur", 3.1412, 101.6865, @"MY", 1453975, @"Asia/Kuala_Lumpur"},
    {@"Kuwait City", 29.36972, 47.97833, @"KW", 60064, @"Asia/Kuwait"},
    {@"El Aaiún", 27.16224, -13.20315, @"EH", 188084, @"Africa/El_Aaiun"},
    {@"Libreville", 0.39241, 9.45356, @"GA", 578156, @"Africa/Libreville"},
    {@"Lilongwe", -13.96692, 33.78725, @"MW", 646750, @"Africa/Blantyre"},
    {@"Lima", -12.04318, -77.02824, @"PE", 7737002, @"America/Lima"},
    {@"Lisbon", 38.71667, -9.13333, @"PT", 517802, @"Europe/Lisbon"},
    {@"Ljubljana", 46.05108, 14.50513, @"SI", 255115, @"Europe/Ljubljana"},
    {@"Lomé", 6.13748, 1.21227, @"TG", 749700, @"Africa/Lome"},
    {@"London", 51.50853, -0.12574, @"GB", 7556900, @"Europe/London"},
    {@"Longyearbyen", 78.2186, 15.64007, @"SJ", 2060, @"Arctic/Longyearbyen"},
    {@"Luanda", -8.83682, 13.23432, @"AO", 2776168, @"Africa/Luanda"},
    {@"Lusaka", -15.40669, 28.28713, @"ZM", 1267440, @"Africa/Lusaka"},
    {@"Luxembourg", 49.61167, 6.13, @"LU", 76684, @"Europe/Luxembourg"},
    {@"Macau", 22.20056, 113.5461, @"MO", 520400, @"Asia/Macau"},
    {@"Madrid", 40.4165, -3.70256, @"ES", 3255944, @"Europe/Madrid"},
    {@"Majuro", 7.08971, 171.3803, @"MH", 25400, @"Pacific/Majuro"},
    {@"Malabo", 3.75, 8.78333, @"GQ", 155963, @"Africa/Malabo"},
    {@"Male", 4.1748, 73.50888, @"MV", 103693, @"Indian/Maldives"},
    {@"Mamoudzou", -12.77944, 45.22722, @"YT", 54831, @"Indian/Mayotte"},
    {@"Managua", 12.13282, -86.2504, @"NI", 973087, @"America/Managua"},
    {@"Manama", 26.21536, 50.5832, @"BH", 147074, @"Asia/Bahrain"},
    {@"Manila", 14.6042, 120.9822, @"PH", 10444527, @"Asia/Manila"},
    {@"Maputo", -25.96553, 32.58322, @"MZ", 1191613, @"Africa/Maputo"},
    {@"Mariehamn", 60.09726, 19.93481, @"AX", 10682, @"Europe/Mariehamn"},
    {@"Marigot", 18.06667, -63.08333, @"MF", 5700, @"America/Marigot"},
    {@"Maseru", -29.31667, 27.48333, @"LS", 118355, @"Africa/Maseru"},
    {@"Mata-Utu", -13.28163, -176.1745, @"WF", 1200, @"Pacific/Wallis"},
    {@"Mbabane", -26.31667, 31.13333, @"SZ", 76218, @"Africa/Mbabane"},
    {@"Melekeok", 7.50043, 134.6235, @"PW", 0, @"Pacific/Palau"},
    {@"Mexico City", 19.42847, -99.12766, @"MX", 12294193, @"America/Mexico_City"},
    {@"Minsk", 53.9, 27.56667, @"BY", 1742124, @"Europe/Minsk"},
    {@"Mogadishu", 2.03711, 45.34375, @"SO", 2587183, @"Africa/Mogadishu"},
    {@"Monaco", 43.73333, 7.41667, @"MC", 32965, @"Europe/Monaco"},
    {@"Monrovia", 6.30054, -10.7969, @"LR", 939524, @"Africa/Monrovia"},
    {@"Montevideo", -34.83346, -56.16735, @"UY", 1270737, @"America/Montevideo"},
    {@"Moroni", -11.70216, 43.25506, @"KM", 42872, @"Indian/Comoro"},
    {@"Moscow", 55.75222, 37.61556, @"RU", 10381222, @"Europe/Moscow"},
    {@"Muscat", 23.61387, 58.5922, @"OM", 797000, @"Asia/Muscat"},
    {@"N'Djamena", 12.10672, 15.0444, @"TD", 721081, @"Africa/Ndjamena"},
    {@"Nairobi", -1.28333, 36.81667, @"KE", 2750547, @"Africa/Nairobi"},
    {@"Nassau", 25.05823, -77.34306, @"BS", 227940, @"America/Nassau"},
    {@"Nay Pyi Taw", 19.745, 96.12972, @"MM", 925000, @"Asia/Rangoon"},
    {@"New Delhi", 28.63576, 77.22445, @"IN", 317797, @"Asia/Kolkata"},
    {@"Niamey", 13.51366, 2.1098, @"NE", 774235, @"Africa/Niamey"},
    {@"Nicosia", 35.16667, 33.36667, @"CY", 200452, @"Asia/Nicosia"},
    {@"Nouakchott", 18.08581, -15.9785, @"MR", 661400, @"Africa/Nouakchott"},
    {@"Nouméa", -22.27631, 166.4572, @"NC", 93060, @"Pacific/Noumea"},
    {@"Nuku‘alofa", -21.13938, -175.2018, @"TO", 22400, @"Pacific/Tongatapu"},
    {@"Nuuk", 64.18347, -51.72157, @"GL", 14798, @"America/Godthab"},
    {@"Oranjestad", 12.52398, -70.02703, @"AW", 29998, @"America/Aruba"},
    {@"Oslo", 59.91273, 10.74609, @"NO", 580000, @"Europe/Oslo"},
    {@"Ottawa", 45.41117, -75.69812, @"CA", 812129, @"America/Toronto"},
    {@"Ouagadougou", 12.36566, -1.53388, @"BF", 1086505, @"Africa/Ouagadougou"},
    {@"Pago Pago", -14.27806, -170.7025, @"AS", 11500, @"Pacific/Pago_Pago"},
    {@"Palikir - National Government Center", 6.92477, 158.1611, @"FM", 0, @"Pacific/Pohnpei"},
    {@"Panamá", 8.9936, -79.51973, @"PA", 408168, @"America/Panama"},
    {@"Papeete", -17.53333, -149.5667, @"PF", 26357, @"Pacific/Tahiti"},
    {@"Paramaribo", 5.86638, -55.16682, @"SR", 223757, @"America/Paramaribo"},
    {@"Paris", 48.85341, 2.3488, @"FR", 2138551, @"Europe/Paris"},
    {@"Philipsburg", 18.026, -63.04582, @"SX", 1400, @"America/Lower_Princes"},
    {@"Phnom Penh", 11.56245, 104.916, @"KH", 1573544, @"Asia/Phnom_Penh"},
    {@"Plymouth", 16.70555, -62.21292, @"MS", 0, @"America/Montserrat"},
    {@"Podgorica", 42.44111, 19.26361, @"ME", 136473, @"Europe/Podgorica"},
    {@"Port Louis", -20.16194, 57.49889, @"MU", 155226, @"Indian/Mauritius"},
    {@"Port Moresby", -9.44314, 147.1797, @"PG", 283733, @"Pacific/Port_Moresby"},
    {@"Port-Vila", -17.73381, 168.3219, @"VU", 35901, @"Pacific/Efate"},
    {@"Port-au-Prince", 18.53917, -72.335, @"HT", 1234742, @"America/Port-au-Prince"},
    {@"Port-aux-Français", -49.35, 70.21667, @"TF", 45, @"Indian/Kerguelen"},
    {@"Port-of-Spain", 10.66617, -61.51657, @"TT", 49031, @"America/Port_of_Spain"},
    {@"Porto-Novo", 6.49646, 2.60359, @"BJ", 234168, @"Africa/Porto-Novo"},
    {@"Prague", 50.08804, 14.42076, @"CZ", 1165581, @"Europe/Prague"},
    {@"Praia", 14.93152, -23.51254, @"CV", 113364, @"Atlantic/Cape_Verde"},
    {@"Pretoria", -25.74486, 28.18783, @"ZA", 1619438, @"Africa/Johannesburg"},
    {@"Pristina", 42.67272, 21.16688, @"XK", 550000, @"Europe/Belgrade"},
    {@"Pyongyang", 39.03385, 125.7543, @"KP", 3222000, @"Asia/Pyongyang"},
    {@"Quito", -0.22985, -78.52495, @"EC", 1399814, @"America/Guayaquil"},
    {@"Rabat", 34.01325, -6.83255, @"MA", 1655753, @"Africa/Casablanca"},
    {@"Reykjavík", 64.13548, -21.89541, @"IS", 113906, @"Atlantic/Reykjavik"},
    {@"Riga", 56.946, 24.10589, @"LV", 742572, @"Europe/Riga"},
    {@"Riyadh", 24.68773, 46.72185, @"SA", 4205961, @"Asia/Riyadh"},
    {@"Road Town", 18.41667, -64.61667, @"VG", 8449, @"America/Tortola"},
    {@"Rome", 41.89474, 12.4839, @"IT", 2563241, @"Europe/Rome"},
    {@"Roseau", 15.30174, -61.38808, @"DM", 16571, @"America/Dominica"},
    {@"Saint George's", 12.05644, -61.74849, @"GD", 7500, @"America/Grenada"},
    {@"Saint Helier", 49.18804, -2.10491, @"JE", 28000, @"Europe/Jersey"},
    {@"Saint John’s", 17.11667, -61.85, @"AG", 24226, @"America/Antigua"},
    {@"Saint Peter Port", 49.45981, -2.53527, @"GG", 16488, @"Europe/Guernsey"},
    {@"Saint-Denis", -20.88231, 55.4504, @"RE", 137195, @"Indian/Reunion"},
    {@"Saint-Pierre", 46.78091, -56.17196, @"PM", 6200, @"America/Miquelon"},
    {@"Saipan", 15.21233, 145.7545, @"MP", 48220, @"Pacific/Saipan"},
    {@"San José", 9.93333, -84.08333, @"CR", 335007, @"America/Costa_Rica"},
    {@"San Juan", 18.46633, -66.10572, @"PR", 418140, @"America/Puerto_Rico"},
    {@"San Marino", 43.93667, 12.44639, @"SM", 4500, @"Europe/San_Marino"},
    {@"San Salvador", 13.68935, -89.18718, @"SV", 525990, @"America/El_Salvador"},
    {@"Sanaa", 15.35472, 44.20667, @"YE", 1937451, @"Asia/Aden"},
    {@"Santiago", -33.45694, -70.64827, @"CL", 4837295, @"America/Santiago"},
    {@"Santo Domingo", 18.50012, -69.98857, @"DO", 2201941, @"America/Santo_Domingo"},
    {@"Sarajevo", 43.84864, 18.35644, @"BA", 696731, @"Europe/Sarajevo"},
    {@"Seoul", 37.56826, 126.9778, @"KR", 10349312, @"Asia/Seoul"},
    {@"Singapore", 1.28967, 103.8501, @"SG", 3547809, @"Asia/Singapore"},
    {@"Skopje", 42.00122, 21.42878, @"MK", 474889, @"Europe/Skopje"},
    {@"Sofia", 42.69751, 23.32415, @"BG", 1152556, @"Europe/Sofia"},
    {@"Stanley", -51.7, -57.85, @"FK", 2213, @"Atlantic/Stanley"},
    {@"Stockholm", 59.33258, 18.0649, @"SE", 1253309, @"Europe/Stockholm"},
    {@"Sucre", -19.03332, -65.26274, @"BO", 224838, @"America/La_Paz"},
    {@"Suva", -18.14161, 178.4415, @"FJ", 77366, @"Pacific/Fiji"},
    {@"São Tomé", 0.33654, 6.72732, @"ST", 53300, @"Africa/Sao_Tome"},
    {@"Taipei", 25.04776, 121.5319, @"TW", 7871900, @"Asia/Taipei"},
    {@"Tallinn", 59.43696, 24.75353, @"EE", 394024, @"Europe/Tallinn"},
    {@"Tarawa", 1.3278, 172.977, @"KI", 40311, @"Pacific/Tarawa"},
    {@"Tashkent", 41.26465, 69.21627, @"UZ", 1978028, @"Asia/Tashkent"},
    {@"Tbilisi", 41.69411, 44.83368, @"GE", 1049498, @"Asia/Tbilisi"},
    {@"Tegucigalpa", 14.0818, -87.20681, @"HN", 850848, @"America/Tegucigalpa"},
    {@"Tehrān", 35.69439, 51.42151, @"IR", 7153309, @"Asia/Tehran"},
    {@"The Valley", 18.21704, -63.05783, @"AI", 2035, @"America/Anguilla"},
    {@"Thimphu", 27.46609, 89.64191, @"BT", 98676, @"Asia/Thimphu"},
    {@"Tirana", 41.3275, 19.81889, @"AL", 374801, @"Europe/Tirane"},
    {@"Tokyo", 35.6895, 139.6917, @"JP", 8336599, @"Asia/Tokyo"},
    {@"Tripoli", 32.87519, 13.18746, @"LY", 1150989, @"Africa/Tripoli"},
    {@"Tunis", 36.81897, 10.16579, @"TN", 693210, @"Africa/Tunis"},
    {@"Tórshavn", 62.00973, -6.77164, @"FO", 13200, @"Atlantic/Faroe"},
    {@"Ulaanbaatar", 47.90771, 106.8832, @"MN", 844818, @"Asia/Ulaanbaatar"},
    {@"Vaduz", 47.14151, 9.52154, @"LI", 5197, @"Europe/Vaduz"},
    {@"Valletta", 35.89972, 14.51472, @"MT", 6794, @"Europe/Malta"},
    {@"Vatican City", 41.90236, 12.45332, @"VA", 829, @"Europe/Vatican"},
    {@"Victoria", -4.61667, 55.45, @"SC", 22881, @"Indian/Mahe"},
    {@"Vienna", 48.20849, 16.37208, @"AT", 1691468, @"Europe/Vienna"},
    {@"Vientiane", 17.96667, 102.6, @"LA", 196731, @"Asia/Vientiane"},
    {@"Vilnius", 54.68916, 25.2798, @"LT", 542366, @"Europe/Vilnius"},
    {@"Warsaw", 52.22977, 21.01178, @"PL", 1702139, @"Europe/Warsaw"},
    {@"Washington, D. C.", 38.89511, -77.03637, @"US", 601723, @"America/New_York"},
    {@"Wellington", -41.28664, 174.7756, @"NZ", 381900, @"Pacific/Auckland"},
    {@"West Island", -12.15681, 96.82251, @"CC", 120, @"Indian/Cocos"},
    {@"Willemstad", 12.1084, -68.93354, @"CW", 125000, @"America/Curacao"},
    {@"Windhoek", -22.55941, 17.08323, @"NA", 268132, @"Africa/Windhoek"},
    {@"Yamoussoukro", 6.82055, -5.27674, @"CI", 194530, @"Africa/Abidjan"},
    {@"Yaoundé", 3.86667, 11.51667, @"CM", 1299369, @"Africa/Douala"},
    {@"Yerevan", 40.18111, 44.51361, @"AM", 1093485, @"Asia/Yerevan"},
    {@"Zagreb", 45.81444, 15.97798, @"HR", 698966, @"Europe/Zagreb"}
  };
