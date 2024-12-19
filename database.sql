-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 17. 21:06
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `travel_agency`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `apartmans`
--

CREATE TABLE `apartmans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `bedrooms` int(11) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `floors` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_guests` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `amenities` text DEFAULT NULL,
  `availability` tinyint(1) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `apartmans`
--

INSERT INTO `apartmans` (`id`, `name`, `price`, `address`, `bedrooms`, `bathrooms`, `floors`, `description`, `max_guests`, `area`, `amenities`, `availability`, `city`, `region`, `email`, `phone`) VALUES
(1, 'Teszt House', 100000, '8888 Teszt utca 26', 4, 1, 1, 'Egy csendes és kényelmes ház, ideális családoknak vagy kisebb csoportoknak. Nagy udvarral és parkolási lehetőséggel rendelkezik. Közel található a helyi látványosságokhoz.', 2, 120, 'Wi-Fi, parkoló', 0, 'Tesztváros', 'Magyarország', '[contact@testhouse.com](mailto:contact@testhouse.com)', '+36 1 234 5678'),
(2, 'Mountain Retreat', 200, '456 Mountain Rd', 6, 2, 1, 'Hegyi menedék a természet szerelmeseinek. Tágas belső térrel és lenyűgöző panorámával várja vendégeit. Tökéletes választás a kikapcsolódáshoz.', 3, 180, 'Wi-Fi, parkoló, medence', 1, 'Zadar', 'Horváthország', '[contact@mountainretreat.com](mailto:contact@mountainretreat.com)', '+36 30 123 4567'),
(3, 'City Center Studio', 80, '789 Downtown St', 2, 3, 3, 'Modern stúdiólakás a belváros szívében. Kényelmes elhelyezkedés a tömegközlekedéshez és a főbb látnivalókhoz. Ideális pároknak vagy üzleti utazóknak.', 1, 50, 'Wi-Fi, parkoló', 1, 'Tunis', 'Tunézia', '[contact@citycenterstudio.com](mailto:contact@citycenterstudio.com)', '+36 1 234 5678'),
(4, 'Luxury Penthouse', 350, '321 Sky Tower', 6, 1, 1, 'Luxuspenthouse, amely a város legmagasabb tornyában található. Elegáns belső térrel és prémium szolgáltatásokkal rendelkezik. Ideális választás különleges alkalmakra.', 3, 220, 'Wi-Fi, parkoló, medence, jacuzzi', 0, 'Róma', 'Olaszország', '[contact@luxurypenthouse.com](mailto:contact@luxurypenthouse.com)', '+36 1 234 5678'),
(5, 'Cozy Cottage', 90, '654 Forest Dr', 3, 2, 2, 'Hangulatos kunyhó az erdő szélén, tökéletes a természetközeli pihenéshez. Kényelmes szobákkal és egy kis terasszal várja vendégeit. Ideális pároknak vagy kis családoknak.', 1, 80, 'Wi-Fi, parkoló', 1, 'Marbella', 'Spanyolország', '[contact@cozycottage.com](mailto:contact@cozycottage.com)', '+36 30 345 6789'),
(6, 'Sunny Apartment', 150, '987 Sun Rd', 4, 1, 3, 'Világos és tágas apartman napfényes elhelyezkedéssel. Modern berendezéssel és kényelmes bútorokkal felszerelt. Tökéletes választás hosszabb tartózkodáshoz is.', 2, 100, 'Wi-Fi, parkoló', 1, 'Barcelona', 'Spanyolország', '[contact@sunnyapartment.com](mailto:contact@sunnyapartment.com)', '+36 1 234 5678'),
(7, 'Beachside Villa', 250, '234 Ocean Blvd', 5, 1, 1, 'Tengerparti villa lélegzetelállító kilátással az óceánra. Saját medencével és nagy terasszal felszerelt. Ideális hely a pihenésre és kikapcsolódásra.', 3, 250, 'Wi-Fi, parkoló, medence, terasz', 0, 'Valencia', 'Spanyolország', '[contact@beachsidevilla.com](mailto:contact@beachsidevilla.com)', '+36 30 456 7890'),
(8, 'Riverside Cabin', 110, '555 River St', 2, 2, 2, 'Hangulatos faház közvetlenül a folyó partján. Tökéletes választás horgászoknak és túrázóknak. A természet közelsége garantált.', 1, 70, 'Wi-Fi, parkoló', 1, 'Sousse', 'Tunézia', '[contact@riversidecabin.com](mailto:contact@riversidecabin.com)', '+36 20 123 4567'),
(9, 'Countryside Retreat', 120, '876 Country Rd', 4, 3, 2, 'Vidékies stílusú ház, amely békés környezetben található. Tágas kerttel és családbarát felszereltséggel rendelkezik. Ideális hosszabb tartózkodásra.', 2, 150, 'Wi-Fi, parkoló, medence', 1, 'Vitoria', 'Spanyolország', '[contact@countrysideretreat.com](mailto:contact@countrysideretreat.com)', '+36 20 987 6543'),
(10, 'Skyline Loft', 180, '112 High Tower', 4, 1, 1, 'Modern loftlakás lélegzetelállító kilátással a városra. Stílusos berendezés és kiváló elhelyezkedés jellemzi. Ideális választás városi élményekre vágyóknak.', 1, 95, 'Wi-Fi, parkoló', 1, 'Milánó', 'Olaszország', '[contact@skyloft.com](mailto:contact@skyloft.com)', '+36 1 234 5678'),
(11, 'Forest Escape', 130, '433 Pine St', 4, 2, 2, 'Erdei menedék csendes és nyugodt környezetben. Tágas belső tér és barátságos hangulat várja a vendégeket. Tökéletes a kikapcsolódásra.', 2, 110, 'Wi-Fi, parkoló, terasz', 0, 'Budapesti környék', 'Magyarország', '[contact@forestescape.com](mailto:contact@forestescape.com)', '+36 30 654 9876'),
(12, 'Urban Getaway', 110, '567 City Blvd', 2, 3, 3, 'Modern lakás a város szívében. Kényelmesen berendezett és jól felszerelt. Kiváló választás rövidebb tartózkodáshoz is.', 1, 65, 'Wi-Fi, parkoló', 1, 'Párizs', 'Franciaország', '[contact@urbangetaway.com](mailto:contact@urbangetaway.com)', '+36 1 123 4567'),
(13, 'Quiet Retreat', 140, '123 Quiet Rd', 3, 2, 2, 'Csendes ház zöldövezetben, távol a városi zajtól. Ideális családoknak vagy pároknak. Kényelmes és otthonos kialakítással rendelkezik.', 1, 90, 'Wi-Fi, parkoló', 1, 'Pécs', 'Magyarország', '[contact@quietretreat.com](mailto:contact@quietretreat.com)', '+36 30 123 7890'),
(14, 'Penthouse Suite', 300, '999 Skyline Ave', 5, 1, 1, 'Luxuspenthouse a város legjobb részén. Nagy terasszal és prémium szolgáltatásokkal felszerelve. Tökéletes választás különleges alkalmakra.', 3, 230, 'Wi-Fi, parkoló, jacuzzi', 0, 'Róma', 'Olaszország', '[contact@penthousesuite.com](mailto:contact@penthousesuite.com)', '+36 1 234 5678'),
(15, 'Lakeview Chalet', 250, '876 Lake Rd', 6, 1, 2, 'Kényelmes hegyi kunyhó csodálatos tóra néző kilátással. Pihentető környezet a természet közepén.', 2, 250, 'Wi-Fi, parkoló, medence', 1, 'Lake Como', 'Olaszország', '[contact@lakeviewchalet.com](mailto:contact@lakeviewchalet.com)', '+36 30 123 4567'),
(16, 'Rural Farmhouse', 140, '222 Farm Rd', 4, 2, 1, 'Tágas vidéki ház egy farmon, mely nyugodt és csendes környezetet biztosít. A ház egy nagy kerttel rendelkezik, ideális családoknak vagy baráti társaságoknak.', 2, 180, 'Wi-Fi, parkoló', 1, 'Zadar', 'Horváthország', '[contact@ruralfarmhouse.com](mailto:contact@ruralfarmhouse.com)', '+36 30 234 5678'),
(17, 'Seaside Resort', 280, '765 Ocean Ave', 6, 1, 1, 'Tengerparti üdülőhely, gyönyörű tengerre néző kilátással. Medencével és saját stranddal rendelkezik. Kiváló választás a nyári pihenéshez.', 4, 300, 'Wi-Fi, parkoló, medence, étterem', 0, 'Dubrovnik', 'Horváthország', '[contact@seasideresort.com](mailto:contact@seasideresort.com)', '+36 1 234 5678'),
(18, 'Sunset Villa', 180, '234 Sunset Blvd', 5, 3, 2, 'Modern villa a hegyekben, csodálatos naplementés kilátással. A villa tágas teraszokkal és saját medencével rendelkezik, ideális pihenéshez.', 3, 220, 'Wi-Fi, parkoló, medence', 1, 'Catania', 'Olaszország', '[contact@sunsetvilla.com](mailto:contact@sunsetvilla.com)', '+36 20 123 4567'),
(19, 'Ocean View House', 320, '987 Ocean Front', 6, 2, 1, 'Lenyűgöző tengerre néző ház, saját kerttel és medencével. Tökéletes hely a családi pihenéshez vagy hosszabb tartózkodásra.', 4, 350, 'Wi-Fi, parkoló, medence', 0, 'Palermo', 'Olaszország', '[contact@oceanviewhouse.com](mailto:contact@oceanviewhouse.com)', '+36 20 987 6543'),
(20, 'Beachfront Bungalow', 220, '123 Beach Rd', 4, 1, 1, 'Kényelmes tengerparti bungaló közvetlenül a vízparton. Csendes környezetben található, és ideális a nyári pihenéshez.', 3, 180, 'Wi-Fi, parkoló, medence', 1, 'Napoli', 'Olaszország', '[contact@beachfrontbungalow.com](mailto:contact@beachfrontbungalow.com)', '+36 30 456 7890'),
(21, 'Countryside Escape', 190, '432 Country Rd', 4, 2, 2, 'Vidékies stílusú ház, gyönyörű tájra néző kilátással. A ház nagy kerttel és terasszal rendelkezik. Kiváló választás a természet szerelmeseinek.', 2, 210, 'Wi-Fi, parkoló', 1, 'Tarragona', 'Spanyolország', '[contact@countrysideescape.com](mailto:contact@countrysideescape.com)', '+36 1 234 5678'),
(22, 'Mountain Lodge', 210, '876 Mountain Pass', 5, 1, 1, 'Hegyi menedékhely a természet közepén. Kényelmes belső tér, és csodálatos kilátás a környező tájra. Kiváló választás téli sportokhoz.', 4, 250, 'Wi-Fi, parkoló, medence', 0, 'Granada', 'Spanyolország', '[contact@mountainlodge.com](mailto:contact@mountainlodge.com)', '+36 30 345 6789'),
(23, 'Beach House', 240, '654 Ocean Rd', 4, 3, 2, 'Tengerparti ház, közvetlen hozzáféréssel a strandhoz. A ház tágas terasszal és medencével rendelkezik. Ideális hely pihenéshez és vízi sportokhoz.', 3, 280, 'Wi-Fi, parkoló, medence', 1, 'Marbella', 'Spanyolország', '[contact@beachhouse.com](mailto:contact@beachhouse.com)', '+36 20 123 7890'),
(24, 'Village Retreat', 170, '543 Village Ln', 3, 2, 1, 'Csendes vidéki ház a falusi élet élvezetéhez. A ház kerttel rendelkezik, és nyugodt környezetet biztosít. Ideális családoknak vagy baráti társaságoknak.', 2, 150, 'Wi-Fi, parkoló', 1, 'Tunisia', 'Tunézia', '[contact@villageretreat.com](mailto:contact@villageretreat.com)', '+36 20 234 5678'),
(25, 'Urban Loft', 190, '789 City Center', 5, 1, 2, 'Modern loftlakás a város központjában. Stílusos berendezés és prémium szolgáltatások. Kiváló választás városi életstílust kedvelőknek.', 4, 220, 'Wi-Fi, parkoló', 1, 'Tunis', 'Tunézia', '[contact@urbanloft.com](mailto:contact@urbanloft.com)', '+36 1 345 6789'),
(26, 'Historical Mansion', 350, '321 Heritage Rd', 8, 4, 3, 'Elegáns, történelmi kúria, amely egy csendes vidéki helyen található. Tágas kert, medence és egyedülálló építészeti stílus. Kiváló választás hosszú tartózkodásra vagy rendezvényekhez.', 10, 500, 'Wi-Fi, parkoló, medence, kert', 1, 'Budapest', 'Magyarország', '[contact@historicalmansion.com](mailto:contact@historicalmansion.com)', '+36 1 234 5678'),
(27, 'Luxury Yacht', 1500, 'Ocean Marina', 3, 2, 0, 'Luxusjacht a tengeren, amelyet prémium szolgáltatásokkal felszereltek. A jacht terasza csodálatos kilátást nyújt a tengerre. Kiváló választás exkluzív pihenéshez.', 2, 200, 'Wi-Fi, medence, jacuzzi, étterem', 1, 'Split', 'Horváthország', '[contact@luxuryyacht.com](mailto:contact@luxuryyacht.com)', '+36 20 123 4567'),
(28, 'Desert Oasis', 400, '567 Oasis Rd', 5, 3, 2, 'Luxusvilla a sivatag közepén. Az épület modern stílust ötvöz a természet adta szépséggel. A villa rendelkezik saját medencével és pihenő területtel.', 3, 450, 'Wi-Fi, parkoló, medence', 0, 'Tozeur', 'Tunézia', '[contact@desertoasis.com](mailto:contact@desertoasis.com)', '+36 20 345 6789'),
(29, 'Mountain Chalet', 320, '432 Alpine Way', 7, 3, 2, 'Hegyi faház a síparadicsomban, csodálatos kilátással és prémium felszereltséggel. A ház közvetlenül a sípályák közelében található, ideális téli üdüléshez.', 6, 500, 'Wi-Fi, parkoló, medence', 1, 'Cortina d\'Ampezzo', 'Olaszország', '[contact@mountainchalet.com](mailto:contact@mountainchalet.com)', '+36 30 456 7890'),
(30, 'Vineyard Estate', 420, '543 Wine Rd', 6, 4, 3, 'Borkóstolóval egybekötött luxusvilla a szőlőültetvények között. A villa saját borászatot kínál, és gyönyörű panorámával rendelkezik.', 8, 400, 'Wi-Fi, parkoló, borászat', 0, 'Florence', 'Olaszország', '[contact@vineyardestate.com](mailto:contact@vineyardestate.com)', '+36 20 567 1234'),
(31, 'Beachfront Palace', 1200, '432 Ocean Blvd', 10, 6, 4, 'Tengerparti palota, amely a legmagasabb szintű kényelmet kínálja. Saját medencével, teniszpályával és teljesen felszerelt wellness központtal rendelkezik.', 12, 800, 'Wi-Fi, parkoló, medence, teniszpálya', 1, 'Barcelona', 'Spanyolország', '[contact@beachfrontpalace.com](mailto:contact@beachfrontpalace.com)', '+36 20 678 1234'),
(32, 'City Penthouse', 550, '234 Sky Tower', 5, 3, 2, 'Luxus penthouse apartman a város szívében. Kiváló kilátás, egyedi dizájn és prémium szolgáltatások teszik igazán különlegessé ezt a lakást.', 6, 300, 'Wi-Fi, parkoló, medence', 1, 'Madrid', 'Spanyolország', '[contact@citypenthouse.com](mailto:contact@citypenthouse.com)', '+36 30 234 5678'),
(33, 'Coastal Villa', 380, '123 Coastal Rd', 7, 4, 2, 'Tengerparti villa, amely tökéletes a családi nyaralásokhoz. Medence, napozóterasz és közvetlen tengerre néző kilátás jellemzi. Ideális pihenésre és vízi sportokhoz.', 8, 350, 'Wi-Fi, parkoló, medence', 1, 'Alicante', 'Spanyolország', '[contact@coastalvilla.com](mailto:contact@coastalvilla.com)', '+36 1 345 6789'),
(34, 'Countryside Retreat', 200, '123 Green Valley', 4, 2, 1, 'Csendes vidéki ház egy völgyben. Tágas kerttel és terasszal rendelkezik, ahol a vendégek a természet nyújtotta pihenésre koncentrálhatnak.', 2, 220, 'Wi-Fi, parkoló', 1, 'Sousse', 'Tunézia', '[contact@countrysideretreat.com](mailto:contact@countrysideretreat.com)', '+36 20 234 5678'),
(35, 'Seaside Escape', 420, '456 Seafront Ave', 6, 3, 2, 'Tengerparti villa, közvetlen hozzáféréssel a strandhoz. A ház medencével és tágas kerttel rendelkezik, ideális hely a pihenéshez és családi vakációhoz.', 6, 500, 'Wi-Fi, parkoló, medence', 0, 'Sousse', 'Tunézia', '[contact@seasideescape.com](mailto:contact@seasideescape.com)', '+36 30 345 6789'),
(36, 'City Loft', 450, '123 Downtown Ave', 4, 2, 1, 'Modern loft lakás a város szívében, közel minden fontos látnivalóhoz. Prémium felszereltséggel és csodálatos panorámával.', 4, 250, 'Wi-Fi, parkoló', 1, 'Rome', 'Olaszország', '[contact@cityloft.com](mailto:contact@cityloft.com)', '+36 1 234 5678'),
(37, 'Secluded Villa', 400, '987 Quiet Rd', 5, 3, 2, 'Magánvilla egy eldugott hegyvidéki helyen, fantasztikus kilátással és teljesen privát környezettel. A villa saját medencével és terasszal rendelkezik.', 6, 500, 'Wi-Fi, parkoló, medence', 1, 'Nice', 'Franciaország', '[contact@secludedvilla.com](mailto:contact@secludedvilla.com)', '+36 20 123 4567'),
(38, 'Private Island', 2000, 'Island Paradise', 6, 5, 3, 'Prémium szolgáltatásokkal felszerelt privát sziget. A sziget a tengerre néző kilátással, saját medencével, és számos vízi sportolási lehetőséggel rendelkezik.', 10, 1500, 'Wi-Fi, parkoló, medence', 1, 'Seychelles', 'Seychelles', '[contact@privateisland.com](mailto:contact@privateisland.com)', '+36 30 345 6789'),
(39, 'Hillside Villa', 700, '321 Mountain Ridge', 8, 4, 3, 'Hegyi villa gyönyörű kilátással, medencével, több szinttel és tágas kerttel. Tökéletes hely a pihenésre vagy a családi rendezvényekhez.', 12, 600, 'Wi-Fi, parkoló, medence, kert', 0, 'Munich', 'Németország', '[contact@hillsidevilla.com](mailto:contact@hillsidevilla.com)', '+36 20 567 1234'),
(40, 'Coastal Resort', 850, '456 Coastal Blvd', 10, 6, 4, 'Luxus üdülőhely a tengerparton, ahol a vendégek élvezhetik a medencét, wellness szolgáltatásokat és az exkluzív éttermeket. Kiváló hely a nyaralásra vagy üzleti rendezvényekhez.', 15, 900, 'Wi-Fi, parkoló, medence, étterem', 1, 'Cannes', 'Franciaország', '[contact@coastalresort.com](mailto:contact@coastalresort.com)', '+36 30 678 1234');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `available_destinations`
--

CREATE TABLE `available_destinations` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `available_destinations`
--

INSERT INTO `available_destinations` (`id`, `name`, `image_url`, `rating`, `link`) VALUES
(6, 'Tokyo Tower Hotel', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 5, 'http://eltewebproject.nhely.hu/destination_example'),
(7, 'Sydney Harbour Hotel, Sydney', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 4.4, 'http://eltewebproject.nhely.hu/destination_example'),
(8, 'Times Square Hotel, New York', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 4.6, 'http://eltewebproject.nhely.hu/destination_example'),
(9, 'Hotel Eiffel, Paris', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 4.8, 'http://eltewebproject.nhely.hu/destination_example'),
(10, 'Colosseum Hotel, Rome', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 4.7, 'http://eltewebproject.nhely.hu/destination_example'),
(14, 'Test', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 0.1, 'http://eltewebproject.nhely.hu/destination_example'),
(15, 'Test', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 0.1, 'http://eltewebproject.nhely.hu/destination_example'),
(16, 'Test', 'https://c.tenor.com/x8v1oNUOmg4AAAAC/tenor.gif', 0.1, 'http://eltewebproject.nhely.hu/destination_example');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `countries`
--

CREATE TABLE `countries` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `countries`
--

INSERT INTO `countries` (`ID`, `name`) VALUES
(1, 'Magyarország'),
(2, 'Horváthország'),
(3, 'Tunézia'),
(4, 'Olaszország'),
(5, 'Spanyolország');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reservations`
--

CREATE TABLE `reservations` (
  `ID` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `apartmanID` int(11) DEFAULT NULL,
  `arriveDate` date DEFAULT NULL,
  `leaveDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `apartman_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `comment` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `firstName`, `lastName`, `phoneNumber`) VALUES
(1, 'test@test.hu', 'test123', 'Teszt', 'Tamás', NULL);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `apartmans`
--
ALTER TABLE `apartmans`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `apartmans`
--
ALTER TABLE `apartmans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
