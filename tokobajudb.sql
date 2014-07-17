-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 17, 2014 at 08:11 
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tokobajudb`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangtbl`
--

CREATE TABLE IF NOT EXISTS `barangtbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL,
  `deskripsi` text NOT NULL,
  `warna` varchar(25) NOT NULL,
  `ukuran` varchar(15) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `barangtbl`
--

INSERT INTO `barangtbl` (`id`, `nama`, `deskripsi`, `warna`, `ukuran`, `kategori`, `harga`, `stock`, `gambar`) VALUES
(1, 'Topi Bone', ' www.tokopedia.com                  ', 'Blue, Black, White, Green', '-', 'Accesories', 115000, 5, 'BE001.png'),
(2, 'Cardigan Sleveless', '  www.stuburt.com                           ', 'Abu-abu, Hitam, Biru', 'M, S, L, XL', 'Cardigan', 78500, 100, 'BC002.png'),
(3, 'Celana Boxer', '  WW.TOKOPEDIA.COM                  ', 'Merah, Hitam, Putih', 'M, L', 'Celana Pendek', 55000, 0, 'BB003.png'),
(4, 'LD Belissa Aubergine', '  www.theremedi.co.uk                  ', 'Biru, Ungu, Hitam, Merah', 'M, L, XL', 'Long Dress', 185000, 5, 'BL004.png'),
(5, 'Blythe Taper Jeans', '   www.tokopedia.com                           ', 'Blue, Black, White', 'L, XL', 'Jeans', 289000, 5, 'BJ005.png'),
(6, 'Polo Shirt', '   www.lokakmurah.com                           ', 'Putih, Hitam', 'L, XL', 'Kaos / T-Shirt', 75000, 0, 'Polo01.png'),
(7, 'Kaos Oblong', 'www.google.com', 'Putih', 'M,L,XL', 'Kaos / T-Shirt', 50000, 5, 'kaos4.jpg'),
(8, 'Kaos Sukses', 'www.google.com', 'hitam', 'M.L.XL', 'Kaos / T-Shirt', 60000, 5, 'kaos1.jpg'),
(9, 'Kaos Transformers', 'www.google.com', 'Putih', 'M,L,XL', 'Kaos / T-Shirt', 70000, 4, 'kaos3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kategoritbl`
--

CREATE TABLE IF NOT EXISTS `kategoritbl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kategori` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `kategoritbl`
--

INSERT INTO `kategoritbl` (`id`, `kategori`) VALUES
(1, 'Accesories'),
(2, 'Kaos / T-Shirt'),
(3, 'Jeans'),
(4, 'Celana Pendek'),
(5, 'Cardigan'),
(6, 'Long Dress'),
(7, 'Jaket Parasut');

-- --------------------------------------------------------

--
-- Table structure for table `newstbl`
--

CREATE TABLE IF NOT EXISTS `newstbl` (
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newstbl`
--

INSERT INTO `newstbl` (`tanggal`, `judul`, `news`) VALUES
('2014-07-04', 'pameran', 'Akan Diadakan pameran Disemarang'),
('2014-07-01', 'Stock', 'Fandi Collection akan mengupload Stock baru ke website'),
('2014-07-02', 'New Items', 'Fandi Collection membuka Shop baru diwilayah semarang');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
