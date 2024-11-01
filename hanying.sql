-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2023 pada 12.13
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hanying`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `cartID` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `custaddress`
--

CREATE TABLE `custaddress` (
  `addressID` int(11) NOT NULL,
  `custID` int(11) DEFAULT NULL,
  `receiverName` char(30) DEFAULT NULL,
  `receiverPhone` varchar(15) DEFAULT NULL,
  `receiverAddress` varchar(15) DEFAULT NULL,
  `receiverPostalCode` varchar(6) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `employee`
--

CREATE TABLE `employee` (
  `employeeId` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `employeeName` char(30) DEFAULT NULL,
  `employeePhone` varchar(50) DEFAULT NULL,
  `employeeDOB` date DEFAULT NULL,
  `employeeRole` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `productID` varchar(50) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `productDesc` varchar(255) NOT NULL,
  `productCat` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`productID`, `productName`, `image`, `productDesc`, `productCat`, `price`, `stock`) VALUES
('PR001', 'Air Mineral', 'airmineral', 'Air mineral segar, penyejuk dahaga.', 'Drinks', 1, 73),
('PR002', 'Ayam Goreng Krispi', 'ayamgorengkrispi', 'Ayam goreng renyah diluar, juicy di dalam.', 'Fried', 2.5, 25),
('PR003', 'Bakpao Chasio', 'bakpaochasio', 'Bakpao lembut dengan daging chasio yang lezat.', 'Steam', 2, 0),
('PR004', 'Bebek Panggang', 'bebekpanggang', 'Bebek panggang, kulit renyah, daging lembut.', 'Fried', 3, 0),
('PR005', 'Bubur Ayam', 'buburayam', 'Bubur dengan potongan ayam lembut.', 'Steam', 1.3, 0),
('PR006', 'Bubur Polos', 'buburpolos', 'Bubur lembut tanpa hiasan.', 'Steam', 1.5, 0),
('PR007', 'Bubur Taosi', 'buburtaosi', 'Bubur dengan cita rasa taosi yang khas.', 'Steam', 1.75, 0),
('PR008', 'Bubur Telur Pitan', 'buburtelurpitan', 'Bubur dengan telur pitan yang lezat.', 'Steam', 2.25, 0),
('PR009', 'Bubur Udang', 'buburudang', 'Bubur dengan udang segar.', 'Steam', 2.5, 0),
('PR011', 'Chong Fen Taosi', 'chongfentaosi', 'Lembutnya chong fen dengan cita rasa taosi yang kaya.', 'Steam', 2.5, 0),
('PR012', 'Chong Fen Udang', 'chongfenudang', 'Udang segar dalam gulungan chong fen lembut.', 'Steam', 2.75, 0),
('PR013', 'Enoki Goreng', 'enokigoreng', 'Enoki goreng, kelezatan jamur crispy.', 'Fried', 2.25, 0),
('PR014', 'Es Jeruk Murni', 'esjerukmurni', 'Es jeruk murni, keaslian rasa jeruk dalam setiap tegukan.', 'Drinks', 2, 0),
('PR015', 'Es Kopi Hanying', 'eskopihanying', 'Es kopi segar, kenikmatan kopi yang sempurna.', 'Drinks', 2.5, 0),
('PR016', 'Es Teh Manis', 'estehmanis', 'Es teh manis, kelembutan teh dengan sensasi manis.', 'Drinks', 1.75, 0),
('PR017', 'Es Teh Tawar', 'estehtawar', 'Segarnya teh tawar, kealamian rasanya memuaskan dahaga.', 'Drinks', 0.4, 0),
('PR018', 'Gaozi', 'gaozi', 'Gaozi lembut dengan isian yang gurih.', 'Steam', 2.5, 0),
('PR019', 'Hakau Udang', 'hakauudang', 'Delikasi udang dalam kulit tipis, sajian dimsum lezat nan lembut.', 'Steam', 2, 0),
('PR020', 'Kuah Ayam Talas', 'kuahayamtalas', 'Kuah kental ayam talas, cita rasa lezat nan menghangatkan.', 'Soup', 2.25, 0),
('PR021', 'Kuah Ayam Telur', 'kuahayamtelur', 'Kuah ayam telur yang lezat dan menghangatkan.', 'Soup', 2, 0),
('PR022', 'Kuah Bakso Ayam', 'kuahbaksoayam', 'Kuah bakso ayam hangat, cocok untuk perut lapar.', 'Soup', 2.25, 0),
('PR023', 'Kuah Lumpia', 'kuahlumpia', 'Kuah lumpia segar, kenikmatan rasa dalam setiap suapan.', 'Soup', 2.5, 0),
('PR024', 'Mantau Goreng', 'mantaugoreng', 'Gurih luar, lembut di dalam, ditambah saus kental manis, kelezatan yang tak terlupakan.', 'Fried', 1.25, 0),
('PR025', 'Mie Ayam', 'mieayam', 'Mie ayam dengan daging ayam lembut.', 'Noodles', 2, 0),
('PR026', 'Mie Polos', 'miepolos', 'Mie lembut tanpa hiasan, sederhana namun memikat selera sejati.', 'Noodles', 1, 0),
('PR027', 'Mie Taosi', 'mietaosi', 'Mie dengan saus taosi yang khas.', 'Noodles', 2.25, 0),
('PR028', 'Mie Wantan', 'miewantan', 'Mie dengan pangsit lezat di dalamnya.', 'Noodles', 2.5, 0),
('PR029', 'Shumai Ayam', 'shumaiayam', 'Shumai ayam, paduan daging ayam halus dalam kulit tipis.', 'Steam', 2.25, 0),
('PR030', 'Steam Nasi Ayam', 'nasiayam', 'Nasi ayam yang menggugah selera.', 'Steam', 2, 0),
('PR031', 'Steam Nasi Putih', 'nasiputih', 'Nasi putih yang empuk.', 'Steam', 1, 0),
('PR032', 'Steam Nasi Sapi', 'nasisapi', 'Nasi sapi dengan kelezatan yang menggoda.', 'Steam', 2.5, 0),
('PR033', 'Steam Nasi Udang', 'nasiudang', 'Nasi udang yang lezat.', 'Steam', 2.75, 0),
('PR034', 'Teh Jasmine', 'tehjasmine', 'Teh jasmine, keharuman bunga melati dalam cangkir.', 'Drinks', 1.5, 0),
('PR035', 'Teh Manis Hangat', 'tehmanishangat', 'Teh manis hangat, kehangatan teh yang memanjakan.', 'Drinks', 1.75, 0),
('PR036', 'Teh Tawar Hangat', 'tehtawarhangat', 'Teh tawar hangat, kesederhanaan teh yang menghangatkan.', 'Drinks', 1.5, 0),
('PR841', 'ddsd', 'dsddsd', '', '', 12, 2),
('PR907', 'udang tepung', 'udang', '', '', 10, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_category`
--

CREATE TABLE `product_category` (
  `catName` varchar(50) NOT NULL,
  `catImage` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product_category`
--

INSERT INTO `product_category` (`catName`, `catImage`) VALUES
('Steam', 'cat_1'),
('Fried', 'cat_2'),
('Soup', 'cat_3'),
('Noodles', 'cat_4'),
('Drinks', 'cat_5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `roleId` varchar(5) NOT NULL,
  `roleName` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `salesorder`
--

CREATE TABLE `salesorder` (
  `salesID` int(11) NOT NULL,
  `addressID` int(11) DEFAULT NULL,
  `custUsername` varchar(20) DEFAULT NULL,
  `custID` int(11) DEFAULT NULL,
  `employeeID` int(11) DEFAULT NULL,
  `shippingFee` int(11) DEFAULT NULL,
  `statusID` int(11) DEFAULT NULL,
  `orderTime` datetime DEFAULT NULL,
  `finishedTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `statusID` int(11) NOT NULL,
  `statusName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `custname` varchar(50) NOT NULL,
  `custemail` varchar(50) NOT NULL,
  `custphone` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `custname`, `custemail`, `custphone`, `role`, `password`) VALUES
('chrstdvano', 'Christopher Abie Diaz Doviano', 'christopher.abie@student.umn.ac.id', '0625779967703', 'admin', '12345'),
('julius.calvin', 'Julius Calvin Saputra', 'julius.calvin@student.umn.ac.id', '6278389957293', 'user', '12345'),
('kvn_hrtn', 'Kevin Aditya Hartono', 'kevin.aditya@student.umn.ac.id', '6287993784025', 'user', '12345'),
('mobileapp', 'mobileapp', 'mobileapp@gmail.com', '08883882122', 'user', '12345'),
('mobileapps', 'mobileapps', 'mobileapps@gmail.com', '086663621626', 'user', '12345'),
('ray.p', 'Ray Anthony Pranoto', 'ray.anthony@student.umn.ac.id', '6281326458686', 'user', '12345'),
('vilbert420', 'Nathan Vilbert', 'nathan.vilbert@student.umn.ac.id', '6280437485927', 'user', '12345');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartID`);

--
-- Indeks untuk tabel `custaddress`
--
ALTER TABLE `custaddress`
  ADD PRIMARY KEY (`addressID`);

--
-- Indeks untuk tabel `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeId`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indeks untuk tabel `salesorder`
--
ALTER TABLE `salesorder`
  ADD PRIMARY KEY (`salesID`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`statusID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
