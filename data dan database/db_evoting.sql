-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 05:28 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_evoting`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `level` enum('administrator','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `username`, `password`, `id_fakultas`, `level`) VALUES
(1, 'admin', '$2y$10$vXweJwTP9X6BrdQ/QHSiTOKLdrkzvNq09qJhxOOKNnbIXOE5XP6zq', 0, 'administrator'),
(13, 'x pplg', '$2y$10$SKs5z.oS5ChQXN/pS5LV5.3ayQmaNEKg8eyN5QwZltqVLoQXu9Fe.', 1, 'operator'),
(14, 'xi rpl', '$2y$10$1hGejc1uY3ZIi7kVqKnYreFlXzqTmgvzMFuuw6BXXyNBpNU1Stbd.', 2, 'operator'),
(15, 'xii rpl', '$2y$10$c1Fs/7Ch3r9WMsIUUlRPz.ieZNg9cJVL83oW3Opjl3kvulxAq197i', 3, 'operator'),
(16, 'xi mm', '$2y$10$VgLa/o/t3kr.UNclaygWGOJeBAv7eWtYzGGQUpU77hur1OFS7oZpS', 4, 'operator'),
(18, 'x dkv', '$2y$10$tKdl9WvcECzAPk1BTJqOzOIU6ypuwWCkSck0eSoeycheXLMOs2mvS', 5, 'operator'),
(19, 'x animasi', '$2y$10$M6.lvIDzmvZt6n.U7MMbjueyw7uPZrCiuC.EP03DkSKzRTDPkJbC.', 6, 'operator'),
(20, 'x kuliner', '$2y$10$x8j4D0ZDqF/paKXdRiAIMuD3wWESaEoAEN8S8RkSVwujH1Oc/25Ye', 7, 'operator'),
(21, 'xi tb', '$2y$10$CMI3WdamSq0FY5JQEs5PUu/mEUWXIK8076FmM63W5UeITu5AlG9nC', 8, 'operator'),
(22, 'xii tb', '$2y$10$AtT32p6LlE2cfQSIOIo3Xu84CRbq2tGmLDB1T5mggoM5mVheB1RxO', 9, 'operator'),
(23, 'x bkp', '$2y$10$E/WYFSn8hGFu21hcmreRb.QF7mcxA0bGIkc0EXYvI/KnBAdb8qBMW', 10, 'operator'),
(24, 'xi bkp', '$2y$10$Culp8emMykH5/qjX.2bhueRlIQGCI312HUeF3v6mD5MFYEv9ObUcq', 11, 'operator'),
(25, 'xii bkp', '$2y$10$QoEoow6iRE0.wLH8A4jn4OWqkRx.uBJEwJjmCNhL6Bv41pKKfnPAi', 12, 'operator'),
(26, 'x tp', '$2y$10$TsgCouJz8Wi6f3HMPVNZ3ud4JMOjG94EONPR9.b0Qp3I8QN15qfoC', 13, 'operator'),
(28, 'xii tkro', '$2y$10$aY6t0hq.RnTvOtgKv1PZWOJo1QmuoeTwObwozb/voj307R9nkdYCe', 15, 'operator'),
(29, 'xi tkro', '$2y$10$bazNmCE3fA77.db6HpCWSunHtdnaxRRQH9fDBVja8kblzm7xTNsse', 14, 'operator'),
(32, 'xii mm', '$2y$10$fzrGTKb26uz5q6IZIVcrYeNtNFmMCygPwsBs3LPk5V31rQgYY48OS', 16, 'operator'),
(33, 'guru karyawan', '$2y$10$FIJ9rBKeMe1XjN5.KY9Ope6IjSzqoUarqRp2TOZ9lCVBdddpAM.Ca', 17, 'operator'),
(34, 'staff yayasan', '$2y$10$3naq83/w1QMpnoSnCkLOauYTaPh90Mm2wbb/GKBne1GwysMq21QPq', 18, 'operator'),
(35, 'pendidik', '$2y$10$we5hszZW4OXBIYg7lRW1k.xCUBJpe/vkBfts1nBFT/jtPrtJvvYM6', 19, 'operator'),
(36, 'tenaga pendidik', '$2y$10$xJo7l0y7Ia0PVH.lqU9ABuoDysSudPPkv/msETlVk6YJQxSqHE/eG', 20, 'operator'),
(37, 'kebersihan', '$2y$10$165FQx2arygHzceNYJvu8O.oXCRqosRXrl2CPuI17YxIrP7uhNaeu', 21, 'operator'),
(38, 'satpam', '$2y$10$5jVtGBbt/oGV1.F6f1JyvObgEOdyw85pk9W2wCHJNRfzbqotpyC5S', 22, 'operator'),
(39, 'pamong', '$2y$10$c5JsNsOolcm1k3vjQOf2BeO0G1sly4M5fjW.DK.goWf4dytAqAsWK', 23, 'operator'),
(40, 'dapur', '$2y$10$enuOOIZMCGH12TX17Se7cuQRbAq5bnbLjC0niwQsz22yu5eWhqmyG', 24, 'operator'),
(41, 'unit bisnis', '$2y$10$5Pk7I8tqMdGz6NZYGHVuG.GAo5a/sc3FIgQGCEqpSAZAOHd1f9y0K', 25, 'operator');

-- --------------------------------------------------------

--
-- Table structure for table `tb_calon`
--

CREATE TABLE `tb_calon` (
  `id_calon` int(11) NOT NULL,
  `fakultas_calon_presma` varchar(128) NOT NULL,
  `fakultas_calon_wapresma` varchar(128) NOT NULL,
  `nim_calon_presma` varchar(10) NOT NULL,
  `nim_calon_wapresma` varchar(10) NOT NULL,
  `calon_presma` varchar(100) NOT NULL,
  `calon_wakil_presma` varchar(100) NOT NULL,
  `visi_misi` text NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `video` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_calon`
--

INSERT INTO `tb_calon` (`id_calon`, `fakultas_calon_presma`, `fakultas_calon_wapresma`, `nim_calon_presma`, `nim_calon_wapresma`, `calon_presma`, `calon_wakil_presma`, `visi_misi`, `gambar`, `video`) VALUES
(1, 'xii rekayasa perangkat lunak', 'xi tata boga', '1011335', '1011340', 'Claribel Agnes Dei Beatrice', 'Margaretha Teja Kusuma', 'Mendisiplinkan siswa ', '4122029a3280ff201e51e65c5f09e774.jpg', ''),
(2, 'xii rekayasa perangkat lunak', 'xii rekayasa perangkat lunak', '2011348', '2011349', 'Aghita Kezia Agustin', 'Anastasya Kurnia', 'Mencerdaskan siswa', 'fefe43bfb56d7437657dc76b5626af99.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fakultas`
--

CREATE TABLE `tb_fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_fakultas`
--

INSERT INTO `tb_fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'X PENGEMBANGAN PERANGKAT LUNAK DAN GAME'),
(2, 'XI REKAYASA PERANGKAT LUNAK'),
(3, 'XII REKAYASA PERANGKAT LUNAK'),
(4, 'XI MULTIMEDIA'),
(5, 'X DESIGN KOMUNIKASI VISUAL'),
(6, 'X ANIMASI'),
(7, 'X KULINER'),
(8, 'XI TATA BOGA'),
(9, 'XII TATA BOGA'),
(10, 'X TEKNIK KONSTRUKSI DAN PERUMAHAN'),
(11, 'XI BISNIS KONSTRUKSI DAN PROPERTI'),
(12, 'XII BISNIS KONSTRUKSI DAN PROPERTI'),
(13, 'X TEKNIK PENGELASAN'),
(14, 'XI TEKNIK KENDARAAN OTOMOTIF RINGAN'),
(15, 'XII TEKNIK KENDARAAN OTOMOTIF RINGAN'),
(16, 'XII MULTIMEDIA'),
(18, 'STAFF YAYASAN'),
(19, 'PENDIDIK / GURU'),
(20, 'TENAGA PENDIDIK'),
(21, 'UMUM DAN KEBERSIHAN'),
(22, 'SATPAM'),
(23, 'WISMA PUTRA DAN PUTRI'),
(24, 'DAPUR'),
(25, 'UNIT PRODUKSI');

-- --------------------------------------------------------

--
-- Table structure for table `tb_hasil_suara`
--

CREATE TABLE `tb_hasil_suara` (
  `id_hasil` int(11) NOT NULL,
  `id_pemilih` int(11) NOT NULL,
  `id_calon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_hasil_suara`
--

INSERT INTO `tb_hasil_suara` (`id_hasil`, `id_pemilih`, `id_calon`) VALUES
(1, 9, 1),
(2, 1, 2),
(3, 275, 1),
(4, 208, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemilih`
--

CREATE TABLE `tb_pemilih` (
  `id_pemilih` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemilih`
--

INSERT INTO `tb_pemilih` (`id_pemilih`, `id_fakultas`, `nim`, `nama`, `email`, `password`) VALUES
(1, 3, '1011331', 'Alfara Kristiani', 'xiirpl@bn', '$2y$10$SsDqD6QNEpirY2kFgJOfNOcPNuymV/MbqW9Ja7kk.J88RhSEG7KVC'),
(2, 3, '1011332', 'Aurelio Theodhore Riyanto', 'xiirpl@bn', '$2y$10$rtRthYKL6KEy01zBIDv8vetgcVTP8eJntm4NzigufBDeduWroWDyS'),
(3, 3, '1011333', 'Bunyamin Brian Nathan', 'xiirpl@bn', '$2y$10$s.AM5i.9QEmitODCjof1Je.vJz4WhTWsFEOz6kJkgyZpzoiAxyLBK'),
(4, 3, '1011335', 'Claribel Agnes Dei Beatrice', 'xiirpl@bn', '$2y$10$mxUCpIpRWtDIVbG7zgrAUOC685UZ/N72S2lqhoOZ2S1DhkkFlXedm'),
(5, 3, '1011336', 'Dina Widyorini', 'xiirpl@bn', '$2y$10$iCC78tZaNTDX1zcLzwxEC.Trwkj8RWn17KMD9/qnLNB0leIIGN5nG'),
(6, 3, '1011337', 'Dionisius Setya Hermawan', 'xiirpl@bn', '$2y$10$kLbjVyTP4M0p8Lqca/uQG.DGExHbmLwtM6I.4hgVwBwhR8YYitW2u'),
(7, 3, '1011338', 'Johanes Sinalsal Purba', 'xiirpl@bn', '$2y$10$A5FoYz.7GIWYpIG.jPR2WOF0lKHjhxMnC7RAZw6h1AKtcFAwS4ovS'),
(8, 3, '1011339', 'Louis Desiriyanti', 'xiirpl@bn', '$2y$10$jYvZg5WfVK5eJ3Jo27nX3uKBPYUoLowVeY3VlgepiPXKncLQWYPGK'),
(9, 3, '1011340', 'Margaretha Teja Kusuma', 'xiirpl@bn', '$2y$10$6qPX/Txomte2vYYnrMXF3.udrFA987hiKY//QzfuziHUmeqWQnr.C'),
(10, 3, '1011341', 'Marlin Monas', 'xiirpl@bn', '$2y$10$ZoJQ6fKPxGjLIdsrkDQgHOHTuXLNKa2QFa8W99WDtWHVKr6kfBxyG'),
(11, 3, '1011342', 'Michael Patrick Effendy', 'xiirpl@bn', '$2y$10$rK8FGXFmJo/iiNgUFKC0B.WKEKgLzHQppZJ3x/hY.45vFCWru5IpS'),
(12, 3, '1011344', 'Rafael Fourtra Indera Rizki', 'xiirpl@bn', '$2y$10$2NMPcfODvURk9mcLtXMlN.KRzENgshPiOZjZ7.4J5v7OFZqNy84nO'),
(13, 3, '1011345', 'Ribka Okta Ekklesia', 'xiirpl@bn', '$2y$10$fQRdxIxHKr/NI7Qx7DNHjOWvyBg0e93kFE9sAxlnyTEaYw.uiFSjS'),
(14, 3, '1011346', 'Siti Winarti', 'xiirpl@bn', '$2y$10$1EbrqwzSSu58Zrnt8AXiqeUn4bTE16Vuhn5JmEzxsbGujNaMXnxnS'),
(15, 3, '1011347', 'Wulan Eka Wati', 'xiirpl@bn', '$2y$10$UDOYwfQGDT7d3pWEPj4m0esJJXbCkeU3HT1MPovrdeVObX.7rmCXS'),
(16, 1, '1011537', 'Debby Zilpa', 'pplg@bn', '$2y$10$DSX9YibJiWZACGh2c3T8leXCDJ2TKx1M45VqWMs95QHt8PmktjcIO'),
(17, 1, '1011538', 'Debora Junyar', 'pplg@bn', '$2y$10$/39ERYFMxzJkyb2c2xpaWO1HUycMf5ja2oU3u8VgF3hMJi7oqF4N2'),
(18, 1, '1011539', 'Elizabeth Simanjuntak', 'pplg@bn', '$2y$10$0LLZqABR3fldWkbKq9Zraep0Tjzwi1nMcatahDMRw1Qp6jpfXbgwO'),
(19, 1, '1011540', 'Florine Chelsea Sofia Lekeneny', 'pplg@bn', '$2y$10$AKA/9ZolaXhJx4seYlkMG.O.tdLwaD3qKsqtA3GgB1uuPnjkIDAG2'),
(20, 1, '1011541', 'Himarisanto Kamlasi', 'pplg@bn', '$2y$10$ZqWJ7FhCPKNMjAllAxbEAOq1KlBjvnF6IRkIQY8mNcjUGJ476ExNq'),
(21, 1, '1011542', 'Imanuel Vincent Heriadi', 'pplg@bn', '$2y$10$2AsIm.9qvkmOUhXFWMrDbuZ6UFLYeXAUxzwdh.vAn7ghRyZAA1Nvy'),
(22, 1, '1011543', 'Joshua Wahyu Novianto', 'pplg@bn', '$2y$10$MG0xrs7STFMia8/igd4Kn.G4ntSSjRKAl1d5kTMxA89DfT3ORRhHu'),
(23, 1, '1011544', 'Keysha Rachelia Ayu Anindita', 'pplg@bn', '$2y$10$9gQyU9KYugXuXG0JY2Cb5O.7P7HDxCG97jt80bPmjC4MTGjG3xNG.'),
(24, 1, '1011545', 'Sergio Moses Riyanto', 'pplg@bn', '$2y$10$xsB8Gas1YoigJO3dlUiTu.QvGtwBpUD3GYDREr3xX73Kry3srFTy6'),
(25, 1, '1011546', 'Stepanus Berkat Sinaga', 'pplg@bn', '$2y$10$Cb/74oVC1dMRIHtH760gK.dLz4bGp.hEO5fM.ahsDxzIXv8/EKE1C'),
(26, 1, '1011547', 'Uga Saputra', 'pplg@bn', '$2y$10$nwuwlmrh65hsswIiHtec..zIp7fJ7S5h9R/E4nDY23W9ylwOiUmb2'),
(27, 1, '1011548', 'Vicky Ryandy Saputra Isa', 'pplg@bn', '$2y$10$SE5UzajzAgENljgLVe9dne4V/u6Rg2zwm0T6qUn1ClmaIxl707Sva'),
(28, 2, '1011432', 'AGREN HESRON NUFA', 'xirpl@bn', '$2y$10$U7PQKtVWN5kDQEvHwFifbOK7hZW686s6y2YR45WQTNZlfCaN0iPZG'),
(29, 2, '1011433', 'Alexandro Heskiel Frengklin Marcus', 'xirpl@bn', '$2y$10$YLOtC6qY9wukPaZEel0PNO75w32szUlVkyzq1WPwNyeonF6jkW/Eu'),
(30, 2, '1011434', 'ANGGA DIAN SAPUTRA', 'xirpl@bn', '$2y$10$RjMa3XdYnhJxSoo1IHz2LuQ2LUIiBx14UOkgpGe090F6pG3aGTnp.'),
(31, 2, '1011435', 'Aprianus Gea', 'xirpl@bn', '$2y$10$JDB0KpsqZpnGM.P.XhIAq.v2jIJfBRq1wg.AJMj1tlB46CCBa9aam'),
(32, 2, '1011436', 'DARLENE CICILIA PUTRI BERHITU', 'xirpl@bn', '$2y$10$NcdfmT21jaGfc0IiQac2j.7XxviGCUwMvrii5l8fEtGwiXTDKAGWW'),
(33, 2, '1011437', 'Diana Febriyanti Simanjuntak', 'xirpl@bn', '$2y$10$4DSHfhAC9n71ZiHHUCta/uyhlFBMSG1aTiFEWJANL9c1HbmvKQssC'),
(34, 2, '1011438', 'Elia Manuel Putri', 'xirpl@bn', '$2y$10$waHJQEykWIzy.BNa6/3G0uP/Mp75DVLICA8j8.UfWxqYPynh3uycS'),
(35, 2, '1011439', 'ESI MUYAINI', 'xirpl@bn', '$2y$10$.d5MgYhYdPbFydSJ8TeoyOSDRWibwB5..EiAvvIka.1lzSmZ1hCa6'),
(36, 2, '1011440', 'FERDIANS CELVIN MART HURA', 'xirpl@bn', '$2y$10$psFhh2loYoImFQFrSeIybeYMj92SBnzYnPsHn1j9lKxI1FQi9sLnu'),
(37, 2, '1011441', 'HOTMAN PRIMUS MATANARI', 'xirpl@bn', '$2y$10$UfH5SSchrcI9QzIAZbuT4eSPiTg6T82xQBMLV9CiAC/K9Tgt.hQx2'),
(38, 2, '1011442', 'Jelstin Kembuan', 'xirpl@bn', '$2y$10$6.LvJA.blrj70Zy2Q4xpJuBxToM41GX32Q8JurSYgnimGWHS3Ra.q'),
(39, 2, '1011443', 'JOSUA EBE', 'xirpl@bn', '$2y$10$BsBO4GBVYudm5KwC4yhKyeGrOyDe.HSx.QNt7NpTUzH.xZoN0Rd.m'),
(40, 2, '1011444', 'Liber Niska Waruwu', 'xirpl@bn', '$2y$10$tkw8zFVlP9mqN3/PU/hEhuiwWsjVgNQHQRbSjVA57RiLPD4cBbN6q'),
(41, 2, '1011445', 'Liviana Nadine Suprapto', 'xirpl@bn', '$2y$10$OUzfiuu7f66eoVyBoVjEDOX0Os3HQHxhytyT.ar6o9dw19HSbMMW6'),
(42, 2, '1011446', 'MERCY IRENE', 'xirpl@bn', '$2y$10$5Jj9vr8eBFb9Yrevfx5kJuhboitCVPPx75CA9yczAqj11c6mB8drK'),
(43, 2, '1011447', 'MICHAEL ARTHUR WIBISONO', 'xirpl@bn', '$2y$10$QRS9qIAqFqHQEPOAc2tySeyunVWMkFIxe6HLRB7JtIG9UqWCOW9aK'),
(44, 2, '1011448', 'Nimrod Asiuk Rao', 'xirpl@bn', '$2y$10$nXyYqUshsxwpfU6YR1Xfa.gBzyjXn.l3Z9doOiTm9CIXtpi0t6qNO'),
(45, 2, '1011449', 'Yohanes Karsio', 'xirpl@bn', '$2y$10$Cl9Jh/E0btgLahKQZpjo5O7MxKuloxvnz2EscuwOqnvGO8NNgjh5u'),
(46, 2, '1011450', 'Zefanya Damas Eka Putra', 'xirpl@bn', '$2y$10$Hjt43QnBSqOcUlTgSzY3veEL0bbLLHKGrKP6xUP6a7KI04GTpb1ae'),
(47, 4, '2011451', 'ABIGAIL ARMELIA ARIYOSO', 'ximm@bn', '$2y$10$E4SsmuDUdgZ0CPTr.Kl2lOFoti.LEhS7WtAdCpUtE6YYI5yFPVv7G'),
(48, 4, '2011452', 'Adiyatma Sugih Wasesa', 'ximm@bn', '$2y$10$ZOI93WO1QLaD5oGOwnutk.eluRWwrCIdoHR6Qet/nN.QV6xIUYP9y'),
(49, 4, '2011453', 'Angels Gresstyany', 'ximm@bn', '$2y$10$7XjLtzt.vGMNKXGh5/rXduS364hPGMtyAycRflSzpzs0HmQyX/Ol6'),
(50, 4, '2011454', 'CHARISTO NATALEON HANARI PUTRA', 'ximm@bn', '$2y$10$/rEE52o1Sa8SQQPN9s1FVuDJCrbKd7dp6DPeQNawQtqFvSljNYCTe'),
(51, 4, '2011455', 'Chevinta Aquila Fortenola', 'ximm@bn', '$2y$10$Yh6bBFjrbsDK4zMNcnOfvOCTg5b.RyMOLtxnxUe4lbdp5e/DdD/Z2'),
(52, 4, '2011456', 'Devi Mutiara Simanjuntak', 'ximm@bn', '$2y$10$C8YIzPnpdF48V7ZBgCenY.tyUepSOJohdnPvLfZsXjfij/8J3n6jG'),
(53, 4, '2011457', 'Evangellin Arsa', 'ximm@bn', '$2y$10$JhcZOAmq0fT94RDTJJFwuOhhmzWYMOAwtQC3TRnoWe.Ve07.Y7wKi'),
(54, 4, '2011458', 'ISAAC CESAR PUTRA PRASTOWO', 'ximm@bn', '$2y$10$ZqiKZCioNWSx7p3CdtgSbuWKMxfnBU8H/amSI4zBGv1fCVdQ8I8UK'),
(55, 4, '2011459', 'JOSHUA HEZRON GELORA KASIH', 'ximm@bn', '$2y$10$ir0P5.bNl2Afgnn/NaSXguHVkRpnMAsnmTC3TamHWZ3HP9ZNS5FWe'),
(56, 4, '2011460', 'Lena verlita wulandari', 'ximm@bn', '$2y$10$kiH/c8vM1oW4af2kLRcrdeVISG8PrVoJYsRw3WMIwP5h0Uvp3mHsy'),
(57, 4, '2011461', 'Maria Khel Ellya Margaretha Noeng', 'ximm@bn', '$2y$10$dzmDJsQAliE1waLsli89suSpcsUCHVthk9XoV86MD4/Vr4frhjE3i'),
(58, 4, '2011462', 'MAYER CHRISTIAN SUGANDHA', 'ximm@bn', '$2y$10$V8aanChRL2r3tMwd8nnE6ebhHjWd33GDqTYVRN1uBLA7/EQ8S127i'),
(59, 4, '2011463', 'Mirna Saputri', 'ximm@bn', '$2y$10$NxrNXD807JLe10MMnFSAJObb8oE0JuTJ09sQJN8sTdWbC.BDUieCW'),
(60, 4, '2011464', 'RIATI YERMIA', 'ximm@bn', '$2y$10$4NXL8p6Fy9g5eqjtJ.7TTuaN8c/JHET7pbQIblZEHLOiKIfiCUniS'),
(61, 4, '2011465', 'Safnat Pa Neah Tripakti Babis', 'ximm@bn', '$2y$10$v1hE/01CLNQAw0OMMRC7FutBI7OEeuOXG9XdLv6RD9p1jJkQO8zpe'),
(62, 4, '2011466', 'Timothy Kitzo Kernsla', 'ximm@bn', '$2y$10$JhODbchM/cMgyzv9r2jscO2rDF4R80kA6dSlasoSE.6wsSh3R7mKC'),
(63, 4, '2011467', 'Ulvatus Sholikhatun Naimah', 'ximm@bn', '$2y$10$bG/wK6pBSQVLF5SH1V6yeOKcCGB8bJAvlmsNL.rfm0k5eGsFxBPlm'),
(64, 4, '2011468', 'VALENCIO DARRIEL PRATHAMA', 'ximm@bn', '$2y$10$o2AcVu/6AaaFBsxEAujaZeYmn3aD6GT7jaTehJaDxkhySLDGDl3bG'),
(65, 4, '2011469', 'Valent Raka Putra', 'ximm@bn', '$2y$10$Q0KjJr7NAuIF/eEknR6GPuRKM1qRwozc.xzErBma2MTTzm0yBfrSG'),
(66, 4, '2011470', 'Vanessa Verhonicha', 'ximm@bn', '$2y$10$4J2/dH6yE9.ew3zl76.lj.s2Trw0MDXCsa3srKsJo4enb8DEZ..pG'),
(67, 4, '2011471', 'Weni', 'ximm@bn', '$2y$10$zVXYBfi5itOujQUM6cmNHO.Ysk2lQHOms9ctWfCb9ea4sE310p1zm'),
(68, 4, '2011472', 'YENI EKAWATI', 'ximm@bn', '$2y$10$7lSCxkBjm.okensTl/LXwOq1RD1PAh120DhGVh2cvEhyu6SEfyT0y'),
(69, 5, '2011549', 'Arum Sekar Kedaton', 'dkv1@bn', '$2y$10$Qa9HW17ivrpbbj4NG34Yoe8oLrqnFFynBX0OZXFDEseDb7GKVDEIm'),
(70, 5, '2011550', 'Ega Ali Raja Silaban', 'dkv1@bn', '$2y$10$UerKohYjAN3wvsWGAHDUfO6MdNEqXoU8dpC7.KQIyHIKOLdac/h3i'),
(71, 5, '2011551', 'Elizabeth Cindy Permata Jati ', 'dkv1@bn', '$2y$10$Y8zq.FrXHAxKupRlfF73qe2aFMJqX9YNNUrFxZ9B5n0B983st5mO2'),
(72, 5, '2011552', 'Fernando Yeremia Dhitira Assa', 'dkv1@bn', '$2y$10$e047FOvbgBioIXy8XlWYKOb1Al.KcOu4wac7s0M.zHxyGc10D59Mu'),
(73, 5, '2011553', 'Filia Shekinah Glory', 'dkv1@bn', '$2y$10$MOPvNq7s9EtLqqC8Evw58uDr5cld/2JSgxoHGD4/dIwhBnG7svPJm'),
(74, 5, '2011554', 'Gabriela Febriani Winarto', 'dkv1@bn', '$2y$10$wypIH81dwHNVGSY.GSvcgeEmXfgunTXykxug2rGR9tYZU5VUF5Lim'),
(75, 5, '2011555', 'Heny Rachmawati', 'dkv1@bn', '$2y$10$OlOb9Vtn4wZtNpwSShaJ5Ovd6hwmudDWOwbq5IkSKhyjrkyDrJDG6'),
(76, 5, '2011556', 'Jehan Alfarisi Br. Sihotang', 'dkv1@bn', '$2y$10$4bXHBx0n/UJFlpkETjofLuKXGRIoXHthu5p3cT2H0OrRkqnt9YheG'),
(77, 5, '2011557', 'Lilian Putricia', 'dkv1@bn', '$2y$10$NHdycOtgZJfArV/CjyvdQOmVls0tpWTQqM9YSRnkCMmLSt9SjPRKu'),
(78, 5, '2011558', 'Rest Giver Lumingas ', 'dkv1@bn', '$2y$10$W/FkxUl3tX2vtn3pLmhCFe7pCRa8nZ.ji391rp5zFAIEIi6NkK.Ba'),
(79, 5, '2011559', 'Roselyn Jessica Nugroho', 'dkv1@bn', '$2y$10$gpRdBHg5SoeCyCw6PUCzV.SweEPnaJ5e1EOQJqoFo2wLL0IqWAhQe'),
(80, 5, '2011560', 'Stefanus Devin Ozora Daneshwara', 'dkv1@bn', '$2y$10$cItma.naEOZQErIXuE5EKuzuuWuUwKsXgIOzCD43yz1IyW7XomcI6'),
(81, 5, '2011561', 'Vincentius Varrel Oktavian krishnady', 'dkv1@bn', '$2y$10$kQ/elZFx4jOdZC1E7Jvm6uMvGQ6IDeXs7e4a0XIQHY0mhos1wCeHK'),
(82, 5, '2011562', 'Abednego Adam Wibowo', 'dkv2@bn', '$2y$10$i69XTm368VGzKnB3cD3b..xWQFc6Vl9.2JionJzWESIwc/p.o6hPi'),
(83, 5, '2011563', 'Agnes Marito Pitama Sihombing', 'dkv2@bn', '$2y$10$2lRuRCJzvicfeZckYOy/meIC7L3fm5.QjV/Fh7E0KjRhAA7ppJweO'),
(84, 5, '2011564', 'Alfa Fabello', 'dkv2@bn', '$2y$10$Rn/KyhvY7t0z4mcS9PszhuxlH0c7jDbixEN4VDf/4i1ktOLQ0bvXC'),
(85, 5, '2011565', 'Anissa Suci Ayu Fatmawati', 'dkv2@bn', '$2y$10$TzvDFHh2wom2dtZHaAWRwegGevz5JisPewdDnuwJWq56CKIkFIMvi'),
(86, 5, '2011566', 'Arninda Eka Nur Hapsari ', 'dkv2@bn', '$2y$10$XxUm51X9B9lwXUs3a10k.uZPDqciCw77OftPnoHdPSx.VhjKl/ay6'),
(87, 5, '2011567', 'Cantika Dian Ariyana', 'dkv2@bn', '$2y$10$yjQ8yvxfXvj7RCWNY4MZpedLj/eVfJnZYgUt3DEBHx0j4j/sdvZcO'),
(88, 5, '2011568', 'Dealin Aldo Krissopras', 'dkv2@bn', '$2y$10$H3yh7LHAhRCIbWA3JVWlv.GgkRVei7p2bVn1hTKrTibu7UvFoH7OO'),
(89, 5, '2011569', 'Dina Darlin Bria ', 'dkv2@bn', '$2y$10$9xdfz8pcXedOMuyLkknQdu16PXRkp9yQ54kjlm53pXr0aczRl2tga'),
(90, 5, '2011570', 'Ghifar Pavel Ridha Tahtawi', 'dkv2@bn', '$2y$10$xf65fu4uE6qQn.ViJqmwQedw7UaRUxVp/3PVChM64CJTvLciSikpG'),
(91, 5, '2011571', 'Heindrina Gloria Muskanan', 'dkv2@bn', '$2y$10$g31vCUSoCqzogSS1y4xal.2GGHYGCwUVbcu0KmJvnyTsc8eqHpBr2'),
(92, 5, '2011572', 'Kezia Gifta Elsha Alfaenno Putri', 'dkv2@bn', '$2y$10$Nl1xbFFgT9rg.v5gcNOs2.ASPZEUCO1C6JFrQEU0rxnIkrXKnYOQ2'),
(93, 5, '2011573', 'Litani Nugraha Putra', 'dkv2@bn', '$2y$10$ZVdNCtKRMZDgp2FKxJ4lA.62oHsdiNBsppQIPOw8YBhnVMMQkm9ia'),
(94, 5, '2011574', 'Louise Mendy Pujianto', 'dkv2@bn', '$2y$10$Kgo9M4tkoFct6e5sP8jEOOicsPCgAzvjzBBxnA.c0oDg2Ck9hDrVK'),
(95, 5, '2011575', 'Martha Fransisca', 'dkv2@bn', '$2y$10$IDvrzryrpYRO4.imn2AzrOJZYgAuwqef7krWCjqpJrPkmFzbDFnNW'),
(96, 5, '2011576', 'Octsa Hosiana Adefayani', 'dkv2@bn', '$2y$10$D1Tvc8RP0spgHELjpDRFcO2mekQbpAniEzZDh0dosDqS633UTIMsO'),
(97, 5, '2011577', 'Ralf Christian AS JR', 'dkv2@bn', '$2y$10$v.WXvuwU0JoKaacBd6Nqw.Te098fwSMeRvIsbM5/KPKsovyNjov2u'),
(98, 5, '2011578', 'Shavira Armitha Fitri', 'dkv2@bn', '$2y$10$KN4P0LXN3raM3YBOWj5W6uwBkVnyqEkfL/JU8GMEpMXS34VqbhmzW'),
(99, 5, '2011579', 'Wita Debora Hura', 'dkv2@bn', '$2y$10$RTBC/ho/E5uS/XspgY1V/.DelLHx1uXmk1/VrHtpocEHUdKZyDOYW'),
(100, 5, '2011580', 'Yus Serlita Tokoro', 'dkv2@bn', '$2y$10$yCT6QYS612HrvKvKDS98seoY7MrwEqcqNwVgpPIE6FeJmRcEWJUO.'),
(101, 5, '2011581', 'Zefanya Mohaga Sanjaya', 'dkv2@bn', '$2y$10$lYt6zUl/szCJ1mrQM.JBiOVkpZ4k8wDYgPdTP./tAmRCy/zeL94ae'),
(102, 7, '5011618', 'Ananda Hosiana Toto', 'kuliner@bn', '$2y$10$h7ukuTyVbsNfUcDhGGo1pOqFcNKNZyLDxUFeznvTk0q9NksLuEHC.'),
(103, 7, '5011619', 'Andira Siska Sulistiyani', 'kuliner@bn', '$2y$10$7Aptxt6PXBYRk4JqZdE5S.WmhMrEp48qtjvg8qczOYwC9f3ux/aEe'),
(104, 7, '5011620', 'Atina Hanau', 'kuliner@bn', '$2y$10$H.Ko/JYXN4ULv13f1t9RIO4JbYEg84dXScpA9c0JufNO4zAgmDJt.'),
(105, 7, '5011621', 'Bethany Lydia Marpaung', 'kuliner@bn', '$2y$10$ghlIbJ0peFLssLhnqbSff.5IplK2IJdOJFot8pMAltiYxxHdXzwRW'),
(106, 7, '5011622', 'Callista Vega Putri Arisa', 'kuliner@bn', '$2y$10$X7.SmpgJ.xqauSTah8ahvegxbcasH1ET.rabYIalQUBomlnY3Dwh.'),
(107, 7, '5011623', 'Cinta Veronika ', 'kuliner@bn', '$2y$10$upL.sB7/6mxSSuLbslgzkOsXSt34kjBEpq72pAlSJIBT99zUrHEya'),
(108, 7, '5011624', 'Elia Agitta Oktavia Tarigan', 'kuliner@bn', '$2y$10$51hqF/8xH8I1scRrejE4EupLFGzy7mdIS1oZ6lYZEcgQ/yS1MENmC'),
(109, 7, '5011625', 'Enjel Friska laoli', 'kuliner@bn', '$2y$10$1tXSPunJh.3D6mCU5pSVtuVF10xbYV0hKhL2Gx/xOFWC1vtbGWcFq'),
(110, 7, '5011626', 'Evalyn Viafirjennia Bako', 'kuliner@bn', '$2y$10$vxG5.yUXi6k0ZLSk9lr7i./TImjCOTPAJveTh9ltIeZmyTnmpzwry'),
(111, 7, '5011627', 'Fitri Ramadani', 'kuliner@bn', '$2y$10$iWH8QmAEr1NJBYAZbYKz8ejOGRL5pytFPy/5j98yAnRr0h8VDjZ2m'),
(112, 7, '5011628', 'Helda Pebriana', 'kuliner@bn', '$2y$10$B2gVpjzfkiWUbXvA2IsK6OM0WQUjzyAbLVK3tEM1xuk3UGCfyoZPm'),
(113, 7, '5011629', 'Hero Ramos', 'kuliner@bn', '$2y$10$W7bQ.NkHHoMUFt2.9tJED.dg2uburmkxZwDoYCBQZTMgxjiRFSp6C'),
(114, 7, '5011630', 'Imakulata Gobai', 'kuliner@bn', '$2y$10$3m/kC1q661hNfw4yLU9JOuRpebUOGMvWofscy4Cb42gz9cGgJnFFS'),
(115, 7, '5011631', 'Johanes Dwi agape kenko', 'kuliner@bn', '$2y$10$swoHw1mGSyhOWdgw11R0BOTBoVZqhYTnv7wo8lK/eMVWO/jHPaj3C'),
(116, 7, '5011632', 'Keren Okti Srianda', 'kuliner@bn', '$2y$10$S1Qkm16zdLSVetxTKX7D/OrLdqGbFBiDgYRJYaC6/kO1tfGYh7Mt.'),
(117, 7, '5011633', 'LIDYA JELITA MANULLANG', 'kuliner@bn', '$2y$10$VzEnS4IAYzSfTfj8gOPWvOVIbmmn7zWjjOQMUc6P6VseNJRR2c3MK'),
(118, 7, '5011634', 'Maria Valencia Br Sihombing', 'kuliner@bn', '$2y$10$XoNDFiGfGAq3u8/tpwbHbOvXKCQSsvUIhBXGSynVWC8LPsMTOb60e'),
(119, 7, '5011635', 'Maritin Oktavia.A.', 'kuliner@bn', '$2y$10$Wpz7zT5DnQo/HMuOtvzTre9PAJEClD.L81Q4.663tg8znS24zbFae'),
(120, 7, '5011636', 'Marline Gavrilla Nathania Widodo', 'kuliner@bn', '$2y$10$SK9.qiCNMgcqLM12Vg4yJOriHDGKbIZ0dBqV8t9j.WtIaYB2SoEwq'),
(121, 7, '5011637', 'Natalia Harlin Doyapo', 'kuliner@bn', '$2y$10$AFCrnppJgVRUWbcc9D1XjeLnJZ4sjMltO6LQtLr2E//soqq0u/tFq'),
(122, 7, '5011638', 'Paulus Sibuea', 'kuliner@bn', '$2y$10$lbusbZloQoYpmEeAbGVESOFN/xYD.4aaITtcVAwZLKQOE5K5HTQQO'),
(123, 7, '5011639', 'RACHEL ANGGREANI ZAI', 'kuliner@bn', '$2y$10$4U2R5X/0DsQAP0s5H6NepOCqXY3ek68dl/Dgoa0FmYOWx1LT5EGWi'),
(124, 7, '5011640', 'Renata Br Manalu', 'kuliner@bn', '$2y$10$64ljjSUd3.xPVMCkJEf2VOhvmQA.OkvaI63wzu15Qw/BMuTo7fKw6'),
(125, 7, '5011641', 'Rosalina Marweri', 'kuliner@bn', '$2y$10$HspAA5P2rr16Am.QOrjFmOqgmuYNa0otb/6b8ZIhnqROBFwJnP/ES'),
(126, 7, '5011642', 'Sajna Filsa Puri ', 'kuliner@bn', '$2y$10$WTjX.wN0NqWghbhafANKJe36XrDf.XQn8sr9qxzdL58tJTcO6Mp/W'),
(127, 7, '5011643', 'Shavira Cristsabelica', 'kuliner@bn', '$2y$10$8a/D1wezlGS/UKxJlziqReFTIiqIdCXjm5WPNOoYZxqik.8XsQoXW'),
(128, 7, '5011644', 'Valeri Isoka Fangidae', 'kuliner@bn', '$2y$10$coGjIvbC/ZlyVn7kugwi2e7IcCsxtE2qmO/C4V1eGXvqv7XPqsSOe'),
(129, 7, '5011645', 'Yesi Nataliya', 'kuliner@bn', '$2y$10$bstsd3RuwaKLRsCFNZ8ncuPD5HFXMPmewtDzux8/phb19MdpGoaYG'),
(130, 7, '5011646', 'YOSICA PERMADANI ', 'kuliner@bn', '$2y$10$A8porbCq2rbcQjWs16rUeu0zk8TE.rsf5be247xDImQvTQSdCE9ma'),
(131, 8, '5011514', 'ANGGITA TITIAN MANDASARI', 'xitb@bn', '$2y$10$YWqCUa7XoAMZOKnfebj57.TpO42GKCmu5tavZBaTsh7zcBrSFA.Om'),
(132, 8, '5011515', 'Ari Budi Lesmono', 'xitb@bn', '$2y$10$uTe56jZzkrUJ.RoP.nx5ielxRDznasJfrrIGMFmJn2OEO161zbUEC'),
(133, 8, '5011516', 'Daniel Eldin Wibowo', 'xitb@bn', '$2y$10$Xv6yiwYHMiHmd6T4yU7HwegNXtzYH8CoqKP8gddW6K/odyJHbTwh.'),
(134, 8, '5011517', 'Desy Natalia Siburian', 'xitb@bn', '$2y$10$novDxLeOzVG44Ghlwv0D1eyTJ5JNnIO4Ug6EMBjjji5SDEauHjIri'),
(135, 8, '5011518', 'DISTA ANINDITA MERRY CHRISTYANI', 'xitb@bn', '$2y$10$NPgRER182/izZH67Y0f3LuCpyJqFlvf8HHN.1g8cYOBi5LbNQAv9K'),
(136, 8, '5011519', 'FEBY SELVIANA', 'xitb@bn', '$2y$10$dHBDYQmRpabDsnp5Do8w4uvtcXcR9gYtr5wXi0GRjND5FqMk/tJWG'),
(137, 8, '5011520', 'Jeltrin Kembuan', 'xitb@bn', '$2y$10$EIIe5ypD3TGumuXZjKhkpevbhcImBEFzIHC1wVSt6zfRmCaqD7ffq'),
(138, 8, '5011521', 'Karolina Irma Watilia Sedo', 'xitb@bn', '$2y$10$13OyNaAv/bzfXetTNcxEVu.lzspX3d3ZymBNIfbT12aDU0zGzxQ7K'),
(139, 8, '5011522', 'Miracle Jordan Pelealu', 'xitb@bn', '$2y$10$hSO8PC0jNHsR3a3vg0VRC.JLbmwohLMlmtkThqv7t0.U6W2dT9LMy'),
(140, 8, '5011523', 'Nadia Theresa Karunia', 'xitb@bn', '$2y$10$Mv03219AHPjdtabAbV9WceYbmvu/TYd.jkZqOtme3/yPcOu0alKEm'),
(141, 8, '5011524', 'NATHANNAEL NUGROHO', 'xitb@bn', '$2y$10$NM0wDbBU2gY32obiZsS4/OAlN/ClMg6WTvbNQMj371y1nMyoin8bq'),
(142, 8, '5011525', 'Ni Luh Gede Putri Dewi', 'xitb@bn', '$2y$10$W9VRrrFkwdsjdw6xhYRRPuROidEIXE23COKelICD0DOJp7yS5AgCK'),
(143, 8, '5011526', 'ROMA HOTMAIDA SIHOMBING', 'xitb@bn', '$2y$10$fR8J.HiSWELIwNOzdwC6JO75D2tKha0xAI7NwTJK6ath.OY5CYFk2'),
(144, 8, '5011527', 'Rut Megandari', 'xitb@bn', '$2y$10$EkIUpETbU.kFSJ708rqXt.j7hW.eeiSZ3o5zD9Y928HU1b9/Hhe3W'),
(145, 8, '5011528', 'SEFIRA CHERLY ANGELIA CHRISTINE', 'xitb@bn', '$2y$10$8fvJKjqhnbLBoWG6OUZ9wO2eo7YUePU5Fu5BpQXG4Ip.2U1jcxQx2'),
(146, 8, '5011529', 'Stefany Carolina Da Silva', 'xitb@bn', '$2y$10$CcD18k7dArpcWUL3MysOueKobugtiC3VaJ.pwU/WJNEnL1V.t/yqC'),
(147, 8, '5011530', 'Tiara Minggu', 'xitb@bn', '$2y$10$C.I2qFNV/Pgb6KKxSqJPIeOW90ArmcO1U2Hql3fiJRxoLVgXC7k22'),
(148, 8, '5011531', 'URSULA BTHARI KYKO NATAYA', 'xitb@bn', '$2y$10$JCUhTaXJHqQbIAfvKKU4we1MX8Sq7b0kUImusoUGuja7sRnXCVg7u'),
(149, 9, '5011408', 'Agnes Maria Niman Laia', 'xiitb@bn', '$2y$10$rAMkJSs7VLWNv63mTx33F.9zgrtLuufx.eSvudXsSydTldjqYvFvy'),
(150, 9, '5011409', 'Angel Bulan Noviana', 'xiitb@bn', '$2y$10$mZ2ZRRgijLs5Za1IEIXyou8hgvBr.ale8ezvo8UM.lwV3G5Wurk8i'),
(151, 9, '5011410', 'Asti Febriana Tanau', 'xiitb@bn', '$2y$10$0lof2heeYqbj4TS6bhC/cululm8XDb2s71z1dOrq.MXSXK8bUGQ7G'),
(152, 9, '5011411', 'Auliani ', 'xiitb@bn', '$2y$10$.fixj/x04FMvqyRGlaJWmOJisky4yKUnNYRESvB6FDeiL3sXqZcG.'),
(153, 9, '5011412', 'Charistio Desta Nugroho', 'xiitb@bn', '$2y$10$HWdOoEDwLobi.qNQw38SRODbcPXvF2Mmm0e227ImHFLmEhaq4EyK2'),
(154, 9, '5011414', 'Diana Citra Sari', 'xiitb@bn', '$2y$10$9HA23TK/FH.OgRWb4KwNpO.jHSatDVtBHeYaGK1dEHj/pWTPmsqXO'),
(155, 9, '5011416', 'Gracia Helena Putriharjanti', 'xiitb@bn', '$2y$10$irQK5EX0J5zNxnFJc.FdC.ViWC4T7L.1qQrhxcPNzGfDMYW5Ojity'),
(156, 9, '5011417', 'Ita Febrianti', 'xiitb@bn', '$2y$10$OjwOGIDiw0UwON5gpQ4p7.b1YqGxvXPhHl58BJDtXtYRWb7vAidNK'),
(157, 9, '5011419', 'Maharani Wahyuningtyas', 'xiitb@bn', '$2y$10$uluPo.4pr9UJih8CEgRHqOe/6cpSsHnGKnT8Xa5b3c5z7uHAwWSn6'),
(158, 9, '5011420', 'Maria Lis Sisiliawati', 'xiitb@bn', '$2y$10$xoZsmYEdhHNBY1Itlxe86ObV4di6Ws7opWhrRWOJN1iOtuJyHmG5W'),
(159, 9, '5011421', 'Natalia Desy Wulandari', 'xiitb@bn', '$2y$10$EwdDI10GlUOYFImuQmCuyO2BJiaNkFRsaQZnQBGKcTAQh0ia/ep7W'),
(160, 9, '5011422', 'Neisa Putri Br Manihuruk', 'xiitb@bn', '$2y$10$MUYV9KyOF6vCWCjMNgDBqeAxyeyg1x38VhyZs0AwI91r64Yb3hGeq'),
(161, 9, '5011423', 'Noferius Tafonao', 'xiitb@bn', '$2y$10$kZceLXfOUdR0cwOO6XGHZuklEtFSxFZI7axwBh8OW1BREd1d0UGLi'),
(162, 9, '5011424', 'Rani Lumidanna', 'xiitb@bn', '$2y$10$hy8TxqWhALogwUksyB.BdepvtAoQnZCwUIGHtbQ6up6gOoRxJLlEC'),
(163, 9, '5011425', 'Ribka Angelina Br Manalu', 'xiitb@bn', '$2y$10$LclUfLraK6xpqKDL8gmbS.8oqcbfOe9fSjlCfkZrqPolxBIOagVai'),
(164, 9, '5011427', 'Talenta Alvalokita Kirana Dewi', 'xiitb@bn', '$2y$10$AmKE/hqPZkITrMpGmFjN8e3TxHPd/Or0kf3B1o0pVQy0fLRvQIV9u'),
(165, 9, '5011428', 'Titis Diah Wardani', 'xiitb@bn', '$2y$10$BZqxJwYzbCdhbE5skg016.3dO4zcUjx/cikoZCABl9ZxVRu3PFHmq'),
(166, 9, '5011429', 'Valen Flowrencia', 'xiitb@bn', '$2y$10$AE5y92Z2L.vKOh82jwDj/u37PlmAnvW8nEElhlijcWoEDQI1/7Gru'),
(167, 9, '5011430', 'Yustini Ata Hiu', 'xiitb@bn', '$2y$10$kmp1M5d/4pIxzjwJzcsMO.EVNKf5zJ3tyvQSVPemRQ.FadamQdhI2'),
(168, 9, '5011431', 'Zefanya Graciela Shalom', 'xiitb@bn', '$2y$10$jlvH7tt8DePR9jx1GWax0.OuU3cpfmMi.O5AjWpebzeE/q6hFCgFm'),
(169, 10, '4011599', 'Anom Aguarta', 'tkp@bn', '$2y$10$T3/xfYz.tPZs75LU5JpRveA2/tTzX3ghdbpXqZpwBEKn7/bP4JZ.C'),
(170, 10, '4011600', 'Apriani Paula Paulina Rumbiak', 'tkp@bn', '$2y$10$d35tTsa6JriFS0KX3ez0tejjk02iwsDiNerfbyJUFxnzaHcm37UuG'),
(171, 10, '4011601', 'Arman Adi Putra Daga', 'tkp@bn', '$2y$10$PP4jEL.8DOx6vIK6WtexpOqEZ5MRF9r/f7ngdFWkT/CI3JrA/W9iK'),
(172, 10, '4011602', 'Claudio Manzali Kristantino', 'tkp@bn', '$2y$10$.ODvJyZblgrHJOVrQazJtevX4K1cwPMRRu4oxQJg2ASYlTqPxHyWu'),
(173, 10, '4011603', 'Davidson Dundu Tay', 'tkp@bn', '$2y$10$ISPvXA1uxBFvPLIfHh34e.gPD6m3JOa4ENIF8wO6HfJ1NHmAGxGfC'),
(174, 10, '4011604', 'Fransiska Pigai', 'tkp@bn', '$2y$10$1ZWqbGUmd1nQrNZpDOq92eMlB8gGK2NE5Z70.s.PWJ2UFeVLotfW.'),
(175, 10, '4011605', 'Fredi Mote', 'tkp@bn', '$2y$10$u.FjY0f3Ts902QKxiuFnpezjSHXnekhUZrKz4NO2T4hL6H.Rq7EEy'),
(176, 10, '4011606', 'Gasper Denny Junior Rumbiak', 'tkp@bn', '$2y$10$O5t7q18K4//Vy74nEmN9GeA0bGExGhH8mSa/DDKG0rOJtbDE5U/Ga'),
(177, 10, '4011607', 'Jesqa Simbolon ', 'tkp@bn', '$2y$10$IMK1Zp2lmKIGSlupIiPo6.obfm/c2.3gjh3dCj9IEMm7Ndg42Is/u'),
(178, 10, '4011608', 'Joned Jawe', 'tkp@bn', '$2y$10$ruw4AlPXR75oVW5ZQQjTqeH.GF/2iNKmJIRyuoqM5nZpUWqCJXdb.'),
(179, 10, '4011609', 'Kerenhapukh Oemanu', 'tkp@bn', '$2y$10$quaGymmccUXjDqso0lWehexhGXl5K7NrhOB4sBOmG9ZVRe1OWLmc.'),
(180, 10, '4011610', 'Michael Permana sitepu', 'tkp@bn', '$2y$10$tFhcapsw2RodEinS3Btj3.YzMI8tjLMWY3kD3xb7tbZoohBPCYdA2'),
(181, 10, '4011611', 'Mirandha Bayang Mauta', 'tkp@bn', '$2y$10$3zsoEQx5eY/XOQW/P/q.1.sJNCayfaEr1fdlpnrszl64TtF.V3UxW'),
(182, 10, '4011612', 'Piter Randa Patar', 'tkp@bn', '$2y$10$zI/36AwDq0ZVXuaiTitiZ.4TVSNBaTqe1Bab8UIgLIRsqKxvn3uDq'),
(183, 10, '4011613', 'Reza Hiskya', 'tkp@bn', '$2y$10$gDw2mxho/nSa8P67tN8uKu7im.t9/BddXST0PAAjmr2y.JBIsHsnq'),
(184, 10, '4011614', 'Rizki Sya Putra Nduru', 'tkp@bn', '$2y$10$TSNaX7MF1T.Pif0HI7CWGuHpABEsHukH0WVEF3mEi5t7PsgAnlf5C'),
(185, 10, '4011615', 'Robertus Andrianus Ama Mudha', 'tkp@bn', '$2y$10$eXreBJjGaGQzG990bvD55e4JVrSTV5/A4VRq15YM/NCkx4TCmB/Uq'),
(186, 10, '4011616', 'Utas Pamuji Gloryno', 'tkp@bn', '$2y$10$cD0L7572Zdxqldv9y2aL7.hVoy4JH0/uiel3.x219CkbX3BfkfxKa'),
(187, 10, '4011617', 'Yakomina Paulina Agapa', 'tkp@bn', '$2y$10$0E7odULFpZjIOhH0Pd0NbedBFaCIO0Lde.W2GEStHDtBF12q8DPla'),
(188, 11, '4011494', 'BERNADUS FERI PRADANA', 'xibkp@bn', '$2y$10$ij5AFW7kOuZHZQzSRs9P8On/p7V9yoOOfWc4.ppSGXwq4QDVmCZsK'),
(189, 11, '4011495', 'Bryan Joshua Tabisu', 'xibkp@bn', '$2y$10$iC8bSj9ZGHmj3eDe8YYzV.8E/olUBRuEDSfx2bzukVQxWXpVxNGsi'),
(190, 11, '4011496', 'DAVID EHUD LAMPAH', 'xibkp@bn', '$2y$10$ELOvBxLk7H7JC4F6GX5xIOOh8Oxl..FQmZTsvwmjUXXIwQjj29EtO'),
(191, 11, '4011497', 'Debora Naftalia', 'xibkp@bn', '$2y$10$Pd2elrP.ucmOr/Ba9LcnUuL60OR5uMKTe6.rkLZHkQ.4.MJVRSbSO'),
(192, 11, '4011499', 'ELISABETH SABATHINI MEHUE', 'xibkp@bn', '$2y$10$MZ3TEdYsrYXsnCOin6xRHOUrXYtNxV7ts..e.CIq/Q6rHtSPl6D9.'),
(193, 11, '4011500', 'ERASTUS YUSUF', 'xibkp@bn', '$2y$10$kHuEKq2FBl/cGvdgeoUxpuyMwLP4PKEwnvPS3Bs3K1MQpcxwMsZbu'),
(194, 11, '4011501', 'Ester Hesti Wiranda Waruwu', 'xibkp@bn', '$2y$10$QJqG34/4Jb/tL3vLNBYh/.oMUJCdt5t.dfSDKbu3FoTwJW5Apwdfm'),
(195, 11, '4011502', 'FEBRIAN SIAHAAN', 'xibkp@bn', '$2y$10$DE8KVLFbAJsuQyGAf2H2i.90Bq7Ry.Lk1FfZr798V9wDJr871VMtu'),
(196, 11, '4011503', 'Galang Rick Yandeday', 'xibkp@bn', '$2y$10$oOuXtII8/uX2SkPAb24hfOQYcxZAlv.F7zWGfN/2L78PDlh1.ZaS6'),
(197, 11, '4011504', 'GERRI SANDRO SIMARMATA', 'xibkp@bn', '$2y$10$NRcNLYgY/xLNchLt6j7aHu94Y8EJywqJQl.zyrpEkSwZvsJrqH1fO'),
(198, 11, '4011505', 'HETIUS KEROMAN', 'xibkp@bn', '$2y$10$Vf8TEFNnViDoxXw6Tl/gh.eyhz/PmVurGz8Udrtbq/vlVeRaOugXW'),
(199, 11, '4011506', 'HILDAYANA', 'xibkp@bn', '$2y$10$FjEp6Nczp9dhHhItrTewiuaU.FUXmpQxo2vL6i4m0IxPgGO43p88G'),
(200, 11, '4011507', 'IMELIA KONTESA', 'xibkp@bn', '$2y$10$lmaiel1QtBfVPKp15gjFO.CwRY8aNgFbZCetCzoRMvN.CWt0kO5WG'),
(201, 11, '4011508', 'JESIKA', 'xibkp@bn', '$2y$10$b60HNLsnC6Rv4NzDlA.Xm.KH/sfeLnBQc5L7sWr2CbtF1D9Bm4MBW'),
(202, 11, '4011509', 'Nolvan Sabari', 'xibkp@bn', '$2y$10$.BClOawJpBA/4adcIcEQ6.dZ9csy.e98UBl3xyvJIaPmE219L0EpO'),
(203, 11, '4011510', 'RIZKY AMALIA PUTRI', 'xibkp@bn', '$2y$10$PbbI3FXQMRZSAHAum50te.Hlzm2YhgT9vSWlVkkegvKoue86SMiTG'),
(204, 11, '4011512', 'TIMOTIUS MARIO WALTER', 'xibkp@bn', '$2y$10$nNeM5SqJO1LfpVOI5NdG0eTyFn5lRhcxIAPVW90Wkowi7OEIzJyym'),
(205, 11, '4011513', 'Yosua Kristian', 'xibkp@bn', '$2y$10$vxOGvfiB0l5Vj02xSi9ylu349BZfqXkH.H7Yq7KaoClhSlA8cHdVO'),
(206, 12, '4011391', 'Carolina Martha Sarastri', 'xiibkp@bn', '$2y$10$nxUb3mESvwPpKzpiG.8IBOpiu/MkeZvLFbIQf6X942xzkJYiv/kEW'),
(207, 12, '4011392', 'Christian Yosafat', 'xiibkp@bn', '$2y$10$NHvI1RmrRoKcJ.AvlWnBGe0.VLu7TfsWZjqnFJqhWQVwINybxTZ7a'),
(208, 12, '4011393', 'Erna Indah Ndraha', 'xiibkp@bn', '$2y$10$y2HOjDGnbxwlm0CNU3VCd.jFeYwrydqCGqra/FOHVYacB/Ou9DFJK'),
(209, 12, '4011394', 'Glen William Medy Dano', 'xiibkp@bn', '$2y$10$GQI8oYi/JEELnE2yatsMH.YC8qWQ0HIjN76W7eJejwfD8J97PNNCW'),
(210, 12, '4011432', 'Heliaken Ematapa', 'xiibkp@bn', '$2y$10$6Vcoz13J8sxTdIYq6GQfiuTV34rsIk9PEhwJz9mwkO9I6foNEeIXC'),
(211, 12, '4011395', 'Joel Anderson Poltak Panjaitan', 'xiibkp@bn', '$2y$10$4XmJmqnVsPva.hatjaEKWuNVpfSlZzLrJ1SIqNHoFoSyV6Nx.J7D.'),
(212, 12, '4011397', 'Marshadevean Tri Nugroho', 'xiibkp@bn', '$2y$10$U68.5g4cOan8htF5N4y2YeEX3SUyhdpggdFXKWJU1dwC2bDXv0KZm'),
(213, 12, '4011398', 'Marsiana Mike Okseince', 'xiibkp@bn', '$2y$10$Z3FZUvm0X2hsoldmRg.GtOJ0vs.8YQ0HNx3ZYSJA2icZipjtRIJVi'),
(214, 12, '4011399', 'Melian Bureran', 'xiibkp@bn', '$2y$10$J5hc2c7DUu.ilL4u1E29XOsxW2tcGbheMqZhRUHkygcBZeMhyA5bG'),
(215, 12, '4011400', 'Meri Piana', 'xiibkp@bn', '$2y$10$kmpy4uzW9rv72fe5fnRtA.jMrgcsQaqgvZ4NwhTPbUbKFwYkRRf8u'),
(216, 12, '4011401', 'Mufid Mustaqim', 'xiibkp@bn', '$2y$10$0fkyIiGhyOi0gn6PfZWKYe9/gctBqDBohig9REVQWZyNnb7Z/pIw2'),
(217, 12, '4011402', 'Natalia Desi Purtamila', 'xiibkp@bn', '$2y$10$9IeuGdcUwMQgIlz/wGq40efkPkrkwQcMY3t7ehHgO./nD38OgiMYK'),
(218, 12, '4011403', 'Panca Aprilia Ananti', 'xiibkp@bn', '$2y$10$Q7iLuf1QW.eDpxSnZOzud.K5iE3NU8sow3CbjPn5GXb9MvNNhYYbm'),
(219, 12, '4011404', 'Rani', 'xiibkp@bn', '$2y$10$7oYuOzVtPZxwV6.TJy5Fk.oz6.QTKpTDg7Co27eKq6/oDRFS4cZNW'),
(220, 12, '4011405', 'Retno Nur Fadillah', 'xiibkp@bn', '$2y$10$/ipQm21ucgSuZQWe8lWwceikHphHv0CyTaFbHC.TbAY9HfutRJSTW'),
(221, 12, '4011406', 'Rionel Alfacino Tarihoran', 'xiibkp@bn', '$2y$10$ATckGD86hVEj6PEXP6Wh8.KoqkL2TLuT98SYddZrlDgylcbqwMIpC'),
(222, 12, '4011407', 'WIRDIONO SAPUTRO', 'xiibkp@bn', '$2y$10$YEmZHC9ONgIYvESG/cfz6.ScaRIs1jPscuJ8dFdU3uSbtVV2NXM3W'),
(223, 13, '3011582', 'Anjas Revaldo Silalahi', 'tp@bn', '$2y$10$aqvzqv0Lu22rl98lV15G6.uPeqoLqkjFxsv2jsIzcpu7SCYab7lTy'),
(224, 13, '3011583', 'Ariel Oktafian ', 'tp@bn', '$2y$10$EEWceNCLoKXjKdJFCVPtuO00XrWygSeAp6Z3V.skf1/a.7qblFXoe'),
(225, 13, '3011584', 'Bagus Aji Wicaksana ', 'tp@bn', '$2y$10$LcOPyFCgyau3JAp9kRaqBOlmjzFtVBoaI4g/aPsFB/niAzlEtPnTm'),
(226, 13, '3011585', 'Bima Sakti Nugroho', 'tp@bn', '$2y$10$gnvLmy6L8rYB.wykHvWKyu2eXfRLrRe2yK10.JWMZUo4adC8JG9z2'),
(227, 13, '3011586', 'Coldlensia Firotta', 'tp@bn', '$2y$10$rMqsjUW0ZfT/ASllplprYOwkxEdzNdWaG0Ymlg2cd2J0EKCpGyDMu'),
(228, 13, '3011587', 'Cristian Adi Nugroho', 'tp@bn', '$2y$10$nHVzI9Yf/WVuPHql6zSi2e3UwbUAWIl.Sf.gOH7UUVvHEKWDlcpgS'),
(229, 13, '3011588', 'Damai Krisna firmanto', 'tp@bn', '$2y$10$JCTcKqRD8wraXGSzeZyC8Ocoer.6PpuT8/w9EJz6JoS/.QV0vSwry'),
(230, 13, '3011589', 'Delven Tauho', 'tp@bn', '$2y$10$QLZfupMvlee8zC0MGQCZLO2c4UNLexRYjdWef19HPzLZbBl2WonIy'),
(231, 13, '3011590', 'Fernando Martua Malau', 'tp@bn', '$2y$10$9ZekE0.DIEpn9Wg2u7YBFOnbaBkpCFUMXXwwD1GeCK4liXCu/mx1W'),
(232, 13, '3011591', 'Leonardo Situmeang', 'tp@bn', '$2y$10$JXVfhMQtKt3T./8V2BNAU.LKEvXe3J0H5viDpvnXZQnwcykFitCRq'),
(233, 13, '3011592', 'Marco', 'tp@bn', '$2y$10$9tprfs253TMLYNZXAH9jOuxo7QegCNHA1Dzr8YU2YmeuDESoE3Kbq'),
(234, 13, '3011593', 'Mardiyus', 'tp@bn', '$2y$10$ER22vHMwbvH1czf/dKpkOuDnNmysspROlEjwpYXM63KtO3x2YJnqu'),
(235, 13, '3011594', 'Melto Samol', 'tp@bn', '$2y$10$jp/LWmTAZsmG3xuJl0EVo.qRbpkG4WRpuf5G0WNSIMIEW.nyfF1ya'),
(236, 13, '3011595', 'Robert Nius Simarmata', 'tp@bn', '$2y$10$/1puauTfFKcets/l6x6d3O0K15cKNwGl7AUpjzmbGnvvt482keXae'),
(237, 13, '3011596', 'Steven Anugrah Gea', 'tp@bn', '$2y$10$bgD47RNYg4GN47oSQ6nrVOw3RnvGbRpQToOizTCxitySbBBdNDIKS'),
(238, 13, '3011597', 'Toni Kardinus', 'tp@bn', '$2y$10$IdpfhO3YL8QDK5iIw4oJYunC330Gsqmt1lY41/.UuHabXn1cdIWuS'),
(239, 13, '3011598', 'Wisnu Widi Setiawan ', 'tp@bn', '$2y$10$q/WG9nemtMH3YCI3CyfOXeuDGxfwQxxomvacODlIibONFNHDviYh.'),
(240, 14, '3011473', 'Abner Abyater Sanam', 'xitkro@bn', '$2y$10$/e30oRRNrPYVOZSSoPQfkumKLSYjCl7kQXeTEq4m10/rUvUC1oudy'),
(241, 14, '3011474', 'Albertson Arnold Armando Rumbiak', 'xitkro@bn', '$2y$10$KSWewboiNgzTACP6x6DZQ.HqMyWxr1sO7qA.FB0.VvTbk4AJLvoYq'),
(242, 14, '3011475', 'ANANDA YOEL AKHIRTAMA', 'xitkro@bn', '$2y$10$LiYILODRDPcZzRVWuxO8/ucFnFOXkPZX7fUToEL4EvtX3DIPzHxeK'),
(243, 14, '3011476', 'Andika Luky Kristiano', 'xitkro@bn', '$2y$10$ncvbyKINptxL/n6/v.rWsurBCHvoQjTqFUwSujf9nSv1yHfN7jcMa'),
(244, 14, '3011477', 'ARWAN INSAF SAPUTRA', 'xitkro@bn', '$2y$10$ySd5WBiRwzAG4fRJz1AamO3yE0ST7Vew/nSelh.L/ThpxtsyYQYiK'),
(245, 14, '3011478', 'AYUSWO BINANGUN', 'xitkro@bn', '$2y$10$9UeZxTqJkJXr.nGmJQXfoONUAX8wrEfW0DH3lMjwEQZu.zAZQLwzG'),
(246, 14, '3011479', 'BENADICTUS ALBERT SETIAWAN. K', 'xitkro@bn', '$2y$10$C2dlPwxrnSQgNwM6Xd0FTOHWfofR/NeCRV.kpDJwYKDI1SmaMhiNC'),
(247, 14, '3011480', 'Efraim Paskah Prasetyo', 'xitkro@bn', '$2y$10$LIq8UrWqdnX9hAY2L4hSheLL7MacE0Voy6N9S045v/Kfo5jCYrl/G'),
(248, 14, '3011481', 'Figolonius Nario Putra', 'xitkro@bn', '$2y$10$sjCnXyF2g/6sbV780JWcDuZFi0WDOlV06IYS1nPaIA.XKJKuMcv.G'),
(249, 14, '3011483', 'Johan Harol Wilson Hura', 'xitkro@bn', '$2y$10$td02BfqvkDYm3k5PlsHd6uA/.utzIRKpCFCOGl347dp9nPiNaLw5a'),
(250, 14, '3011484', 'KEZIA FLORENZA', 'xitkro@bn', '$2y$10$Su3uTtIWulB6RL.oX7mVx.N0e5BTHN5hguE1qqssRkplz2pecTrT2'),
(251, 14, '3011485', 'PERIAMAN JAYA GEA', 'xitkro@bn', '$2y$10$sZWzciNf1tXtbbAAxZNRueWeR5BLJEGETaE8FySPwaJPOUMwbpdNS'),
(252, 14, '3011486', 'PETER ALEXANDER ZEBUA', 'xitkro@bn', '$2y$10$mEOEGCpxwib6F4k.dg8fPuz12EnUovUJIn.31xje/rPzeVImzRoH.'),
(253, 14, '3011487', 'RESINDRA DWI KURNIAWAN', 'xitkro@bn', '$2y$10$8AQUJfvu.9zZYNOPu6Obm.8exAC/wdn1KqzV3f4qEaWAf6M5W2H2i'),
(254, 14, '3011489', 'SAMUEL ADHI CAHYONO', 'xitkro@bn', '$2y$10$sMsSWlc3b47oa.nteIMFmO6g5O4vY6LcbzJjeBJWOUu/.3cY0QJAa'),
(255, 14, '3011490', 'Setiyo Adi Nugroho', 'xitkro@bn', '$2y$10$J2wnB2YFdepkSTtEbvpUHuUcC3rgi0RUQlqdem3XSrlIk1CWnG5CC'),
(256, 14, '3011492', 'SYUKUR SELALU', 'xitkro@bn', '$2y$10$TfgKJjOZ96KJRSB70GKEo.gDFdmZG7rt/gpFXti6pFSR478J59lYO'),
(257, 14, '3011493', 'Yonatan Oktavianus', 'xitkro@bn', '$2y$10$5VcxpX2IZvSa91WpCs5hhejUIdsTTG2O47TyJVmEfzwbcdvN5NW2O'),
(258, 15, '3011372', 'AAN FRAN NASTIAR', 'xiitkro@bn', '$2y$10$99324BvHPJBYc0EKgg4zhu45O7mx0ORWF6gYVkDTShAUkXyB8RIJ.'),
(259, 15, '3011373', 'Amos Kristianto Adi', 'xiitkro@bn', '$2y$10$qaBKM8q6loDkVjferEgEKOdfyS.2DYFruKfKhxPhu70CEixPwpUiu'),
(260, 15, '3011374', 'Andreas Deonata', 'xiitkro@bn', '$2y$10$HSM4idPUJDWlXHt.i87fMes71l/muGP4U7OJUWeQfS3SNj.46YHbG'),
(261, 15, '3011375', 'Aris Kuncoro', 'xiitkro@bn', '$2y$10$KR5h5KkTlEE/PkEsYt2ab.gQd4zgiaVimxayLkXJ3FI6.28HUbQkO'),
(262, 15, '3011376', 'Cavin Matias Casilas', 'xiitkro@bn', '$2y$10$QMpDf13BPFz/YMqm4vQnFOVPORTmzXtQhYgmAVQK/hnYjI5F/Vxye'),
(263, 15, '3011377', 'Daniel Fif Naumixs Febrian', 'xiitkro@bn', '$2y$10$LYshK2PQ7y000KmHSnuYKuInpYGREIvSvQ3NlVP2EcGNjY14k1.Cq'),
(264, 15, '3011378', 'Daniel Prayoga Sitorus ', 'xiitkro@bn', '$2y$10$19YPmM1RgDXK4sqOxm9tMOkCa9jmtLbvbbXbWm6CQ5qLrVFAaCWuK'),
(265, 15, '3011379', 'Dealova Grasiela Chrisma Novi Widiana ', 'xiitkro@bn', '$2y$10$SO.XYX55FPT1R7vye6GNSeLLECFdE1kPpnoxbCmqLeO91KksG1NSS'),
(266, 15, '3011382', 'Emmanuel Arnold Saputra Ywata', 'xiitkro@bn', '$2y$10$jTcVDKysWaiAbD665Mx4XuTqbplcRV1p/6c.Wl4Fm2bE3dMc8X6Si'),
(267, 15, '3011383', 'Felix Tuppak Sahata S', 'xiitkro@bn', '$2y$10$k5gEH4D6VTO5NvloPGMocur47wxAvKa5em6IGkhVh5SJdb3z6Dt6.'),
(268, 15, '3011384', 'Jonathan ', 'xiitkro@bn', '$2y$10$pjlgIz8WSA4dPYT4tpuclOdDBGENCA5C6y5bOyf0j9q0bMBF/UYP.'),
(269, 15, '3011385', 'Kristofarus Sare Wanggho Ando', 'xiitkro@bn', '$2y$10$uxiS6Z7XMqZBQ73JFcJUl.qIN.EQZO8cAyE9uK4wB8uIlkBxdtUcS'),
(270, 15, '3011386', 'Nelly Mayani', 'xiitkro@bn', '$2y$10$ZzoI3iK5qMIWFESPDd7pme8UJaBQgQoHWuiTDTTn0FJwMDa7eRCKG'),
(271, 15, '3011387', 'Sofa Nugroho', 'xiitkro@bn', '$2y$10$5SLwn1WwyxFGZA91n30uTefZ0FG20shXl2ixJuqg0nfk4TphPA5tS'),
(272, 15, '3011388', 'Tegar Widi Nugroho', 'xiitkro@bn', '$2y$10$JkPJKtR8zzGIJNZbOd.hOeXnrHAzbRhUxGXXqX6OXuWLaYDIwgyZ2'),
(273, 15, '3011390', 'Yosua Tri Cahyo', 'xiitkro@bn', '$2y$10$4T1CLWpGinwQfGs6NDdlEuaCzrpaBazp3lrvd2YH7ow88lsEAQygu'),
(274, 15, '5011418', 'Jessen Cornellius Efa Aryanto', 'xiitkro@bn', '$2y$10$7Q77dzi3Fun87Qlx2mC6KOMmvFSpAHqnp491jswuLXBkYuha3Qe9K'),
(275, 16, '2011348', 'Aghita Kezia Agustin', 'xiimm@bn', '$2y$10$q9vwgdWm/EwFJjjUhDsjNOAxataFksOQ76T1t.NTI3zv/Tu7D8jM6'),
(276, 16, '2011349', 'Anastasya Kurnia', 'xiimm@bn', '$2y$10$eovs/3C1GdJ5vAbPIfwtU.b52BD35D1a2PwhXP.WzUedlsLd0ReQa'),
(277, 16, '2011350', 'Asdi Sena', 'xiimm@bn', '$2y$10$BbrdlyXDOou8Jqgoecssz.iYgDbou1Q0DewkuK8yiUqZIIys5MWlG'),
(278, 16, '2011352', 'Christabel Angeline Judith Zerlina', 'xiimm@bn', '$2y$10$k1t49xf/pbxKGfumVDGJ2OTNxphOGlWnkfBTOSxxXRxEBufkPrZGC'),
(279, 16, '2011353', 'Dedi Kurniawan Mendrofa', 'xiimm@bn', '$2y$10$BZ4o0xBC46GtRbUP09NIrOnday1LV0bd6oXWy28IhAXRKy2aFDHTi'),
(280, 16, '2011354', 'Dheftania Glavia Talyta', 'xiimm@bn', '$2y$10$rZKwZiTGsyxP0wHrT7i.W.G.vm0EDhsmyu5pveLWxnnVd7t3H9MKS'),
(281, 16, '2011355', 'Elena Citra Novianti', 'xiimm@bn', '$2y$10$16S9nxQpig.Kw6Py.OPIW.VGJZGfiW.8q6bzRFFiV3qbKrXsSe6ge'),
(282, 16, '2011356', 'Eliada Marcela Bangun', 'xiimm@bn', '$2y$10$aESzBrpxuToNN4b7w1nk3.a1ztlCo4C7XMzdPEp7hBWCAch7/M4TO'),
(283, 16, '2011357', 'Estevania Rut Salsanti', 'xiimm@bn', '$2y$10$SAsZ.gLsYGqecdakCyMJie.aXLxYRxf56f4MOqElA40ci2ATZpl1W'),
(284, 16, '2011358', 'Eustakia Septaria Yolanda Seke Tuke', 'xiimm@bn', '$2y$10$OtSUjg6g4gEIhvnh7/p93.qHp/hFChpN0ooRLuAApEJFUSs9mWWIi'),
(285, 16, '2011359', 'Ivana Alicea Hanindita', 'xiimm@bn', '$2y$10$MDJn3POZ1xvB89BUz2e93.CoccQu/ZdfLzNuGBBA4JXkMKIwTp4OG'),
(286, 16, '2011360', 'Jaka Waluyo Sihombing', 'xiimm@bn', '$2y$10$Jb9MSg9P/SSRTBg1ev60D.W1W5reyNQb/kQwQCPnN9k3Gf9ysBrMu'),
(287, 16, '2011361', 'Jessica Larasati Gerrits', 'xiimm@bn', '$2y$10$wnKSqiOl6WaPrAI5sp13M.d2Dd5vE.JzNBaNP2TKSiV0Lb0faBFeS'),
(288, 16, '2011362', 'Joshua Andika Zion S.', 'xiimm@bn', '$2y$10$0gLPaXO0A/5RVPy6cF/H2eEEj4Vzxvj7cD1z5ILsHzjOQW7KDgMF2'),
(289, 16, '2011363', 'Lidya Jaela Wijaya Hermawan', 'xiimm@bn', '$2y$10$v9VNN4r.tpycwxa55lNyGeDgWk3nzal3IKSMQZXG5NJvIGL7UNzUm'),
(290, 16, '2011364', 'Mariani Puspita', 'xiimm@bn', '$2y$10$fflkfn3OUwYLy.fqykNpdOxL2AajtsJYgaU4iS4Lhs0nLz6Lmm56G'),
(291, 16, '2011365', 'Melka Pri Dwi', 'xiimm@bn', '$2y$10$sT/MlmdFuPzWbNyYIhb6E.Z.jH1Df1gdVqlNUqOJpLIvt04ZbKc3.'),
(292, 16, '2011366', 'Nathalia Riskawati Widodo', 'xiimm@bn', '$2y$10$5vd5.U3vikFMd20EtuQnDemG/HsuG0BbpNqCntl6MGv0xalCAPmAC'),
(293, 16, '2011367', 'Rhena Ayu Prastika', 'xiimm@bn', '$2y$10$7F9X6LhLjkAy41aiqCBfl.Mx4XjRIn4ErRf7QT/Z9N.nvlAzoLv6e'),
(294, 16, '2011368', 'Sandro Budi Pangestu', 'xiimm@bn', '$2y$10$5LQy6Y9BShR0HxLyJ6sDBeOzI.B5BiPT4aDkZLqVeCBryPH5A5/0G'),
(295, 16, '2011369', 'Wiwit Rahmawati Purwanto', 'xiimm@bn', '$2y$10$lRxRpmxh9boAbTR1CzwJGOUbkaAZ8tXwfsBb8bQJfv4ECBPzJwyEy'),
(296, 16, '2011370', 'Yolanda Grace Tarihoran', 'xiimm@bn', '$2y$10$WbwtSIwMEuCJfPisc2DT..noUm7B.5ifAl/jk8dWn4PLRI.v8ZFl2'),
(297, 16, '2011371', 'Zheravim Novenna Gelldevta', 'xiimm@bn', '$2y$10$QQtamS8Y2f7I/j9qhmd6LOi6aKrG3FkvTkZnle8.IoLYWfGAxWcrq'),
(305, 18, '20170201001', 'Nova Handoyo Watu, S.Psi, psikolog', 'staffyayasan@bn', '$2y$10$yBYytxo5ct99dNwS49WVnOj21IAgZaYAbbveSCyAo1YSmx3aEoyCK'),
(306, 18, '20140901001', 'Jhonson Evin Gultom, S.Th.', 'staffyayasan@bn', '$2y$10$VrMfyvMifohhIRjQHALCk.YFraX85FiS8322yoLOG7wJUdy8W87ca'),
(307, 18, '20171202001', 'Ninda Fitri Alfiani Gea, S.Pd.', 'staffyayasan@bn', '$2y$10$II5ldxiBGhf./1HPOkDg/OLzWxAs7ytKAp3739jLO9o6sttdQPZKO'),
(308, 19, '20180702001', 'Drs. Christianus Dwi Estafianto', 'guru@bn', '$2y$10$9FmImONsA0v1ElMsmy0Nx.VUAHQvDcNEGtIZKYHaYExtgGvjlEVtu'),
(309, 19, '20110402015', 'Agustina Titin Purwanti, S.Pd.', 'guru@bn', '$2y$10$rxXHAcq9WzyJUTVJwGpSVOlcBUEIDAgED9Z46TQI6VODXO0Qxtveq'),
(310, 19, '20110402018', 'Anis Indri Hastuti, S.Pd.', 'guru@bn', '$2y$10$UTYMeKB10xFraNaLzpzXneacFgUGqPoKsTqZMBv5TrWuN9Jz4xRRi'),
(311, 19, '20110702020', 'Bangkit Gunawan, S.Si.', 'guru@bn', '$2y$10$rWZG5rdQLam1q4nT7Mlm5O9WoG56uDTxlan92cGe/Nm/PtnlXeydS'),
(312, 19, '20110302003', 'Benny Apriyanto, S.S., M.Pd.', 'guru@bn', '$2y$10$qGGJn2E8g2gx8XhcgUO3Qebac2ZGnfnxIIAeRbTbuHQ2aQ7u8WsWu'),
(313, 19, '20110302011', 'Daniel Setyo Wibowo, S.Pd.', 'guru@bn', '$2y$10$EiQDIvankvpT152JVtgHUeCeO1ZA5BLMnfWmUUKwlYKSTBoxHTOgq'),
(314, 19, '20110302006', 'Titik Megasari, S.Pd.', 'guru@bn', '$2y$10$dEuStKEQcW10u1kupc6sJOma/Ga6HdRYDGapABzCoR4ztgnesS3d2'),
(315, 19, '20110302010', 'Cornelia Krisnawati, S.Kom.', 'guru@bn', '$2y$10$6pIGBkmJxHkQP/NtrXBu6.DjhSTcDoNwCn0C26oQ65jPY5RWDoDj.'),
(316, 19, '20110902021', 'Fendhi Kurniawan, S.Pd.', 'guru@bn', '$2y$10$42D9w208N5xLPRuyUlyUkOH2eypo2u2Ser6z0w6Ewiy3uN0adNifu'),
(317, 19, '20120702003', 'Fransisca Titin Martini, S.S.', 'guru@bn', '$2y$10$JmNQ36x4uOkjV703eNa8WORsXDMZhui3IJNVX3X3OI2xVnx7SKpA6'),
(318, 19, '20110402017', 'Ani Sri Wahyuni, S.S., M.Pd.', 'guru@bn', '$2y$10$aF47SDhR1azvic7dEOeaFe0KnUlKEDbTwxWdz1B20VeXUIAvHnw7y'),
(319, 19, '20120702004', 'Galih Kurniawati, S.Pd.', 'guru@bn', '$2y$10$su3JTa6kU6NySfpxj.9heOUiA0gDxsmGT0HnqQJDA1cQ8XxiINRgG'),
(320, 19, '20120702006', 'Muhamad Atauillah, S.Pd.I.', 'guru@bn', '$2y$10$QofYJEWxgykkHTUwYOMP4ObavFjq.ef7jRE82GMGB2HjWEbRo.nu6'),
(321, 19, '20130602002', 'Katemi, S.Pd.', 'guru@bn', '$2y$10$EzCIK22xk3.0sjzHO8lz/OW/O2HDAMPXpId7afQoANEwLuXhPrleO'),
(322, 19, '20140102001', 'Yafet Adi Kurniawan, S.Kom., M.Th.', 'guru@bn', '$2y$10$V2GGPwunlvv0SzkPZiG55.nkvTMIuWeuwv7fybPjQ2dWf2Lwj5jZG'),
(323, 19, '20130802005', 'Mureno Kurniawan, S.Pd.', 'guru@bn', '$2y$10$M3MAQ6GW20/jR9qWuNNY6OOrhgZ8LDLPJM0EYajAPcB664273SjKK'),
(324, 19, '20141002014', 'Desti Natalia, S.Pd.', 'guru@bn', '$2y$10$9GwrFJVpR1j.56mp1cs1DOVb7FzQr5/nOZMHZ3w6psmZAYE4r1F/K'),
(325, 19, '20150902005', 'Retno Kristiani, M.Pd.', 'guru@bn', '$2y$10$BiojQIZIsLKmxvW.mxlwu.ktu/MEJk7GRAF4sf3agxlzkF5T692aG'),
(326, 19, '20160702001', 'Yohanes Curie Wijayanto Sudibyo, S.Pd.', 'guru@bn', '$2y$10$pK9iwf0cHOqPhsqSiTxcPO9sAvBC4uOYQF6cXUsozzGBHJQh13nbC'),
(327, 19, '20160902001', 'Lilik Weko Tripulastho, S.Pd.', 'guru@bn', '$2y$10$ASCvxv93/29h8.v4/8ljNODSHajFGA1AQH4k69DltFY/7TzENFJjK'),
(328, 19, '20110602019', 'Natalia Chrismasari, S.Pd.', 'guru@bn', '$2y$10$2D8b6kH67paCvXMm0Y6S4.QYTy6pWDFPE9i258Z1JeNX0cHir5AA6'),
(329, 19, '20171002001', 'Widhi Laksana, S.Th., M.Ag.', 'guru@bn', '$2y$10$rOTi6KY4EfPLpPkaKYm1o.c0z4gva2F1F5aTsWGrXZOxJnucmOHru'),
(330, 19, '20150502004', 'Galang Sasena, S.Kom.', 'guru@bn', '$2y$10$00iQwWddBVBU5WfksTfS7erpUR6HwJEMmHtTPcZiESbH.yHmlmS6C'),
(331, 19, '20210102001', 'Andreas Caesar July Fridanto, S.Ds.', 'guru@bn', '$2y$10$QqRLfyJ.mtcehW3dZ5.quOzGsrCvXK/XXs2vWwnaZ91OMryfzlpUW'),
(332, 19, '20210202001', 'Kristiono Suwarno, S.Pd., M.M.', 'guru@bn', '$2y$10$QSoiRcE2JaoX8Bo/8NTH9ugdz31TKGVVd8TlEWw5.54i5kyhkvSJG'),
(333, 19, '20210602001', 'Martin Herlina Noviati, S.MG., M.Pd.', 'guru@bn', '$2y$10$cLjtHj1FZquwLQo.Hc5pQeJBiDF5uucRrn.H3AXv.Utz6isI2f3m.'),
(334, 19, '20221002001', 'L. Akira David Eka N., S.Kom', 'guru@bn', '$2y$10$nG7/WeRtvKtTiEwHHRspsekHA/VG8wUbRGWO64MI7rzEu8hXoPd0e'),
(335, 20, '20180102002', 'Nurmi Laila, S.Si.', 'tenagapendidik@bn', '$2y$10$34KSsagq8iFG325JaVy0qen/lNKBwDFabDrqOFiH5/DSQNcHlWIyK'),
(336, 20, '20180802001', 'Suprapti', 'tenagapendidik@bn', '$2y$10$ct/ySSgz6hCuwX7gEJKXTeYTXhKOi0n.aSlo5Lj1w/0LrrkVpVqBW'),
(337, 20, '20100802001', 'Agus Widodo', 'tenagapendidik@bn', '$2y$10$rAdy5auZMMGSKTlJf.o5Jea9oAUJih5RDnH1U51Oc5TqUFK.Q9byq'),
(338, 20, '20140902013', 'Rivan Aditya Aldrin Eka Fratama', 'tenagapendidik@bn', '$2y$10$ym9H8QvpvhcT346Zf.UfkOXlsOoKBkcbPzcDIuU211qHCnH2vsrxy'),
(339, 20, '20190702003', 'Budi Santoso', 'tenagapendidik@bn', '$2y$10$rly6zPknSTKqv0ywouLzWu51Mlm0QIQ/Beyax82XW.PoHpVv5lg3.'),
(340, 20, '20200902002', 'Chatarina Restu Hardiningtyas Hermawan', 'tenagapendidik@bn', '$2y$10$35mE2ujDZjG/UUFtw7CfyutTst663HCULAFxhB1kKP3hLyqCFScAG'),
(341, 20, '20210202002', 'Mustofa Hidayat', 'tenagapendidik@bn', '$2y$10$tyP0mPwPEUpksCrTZ7jJIeeLroQIm5/wvLxFOsnCBltPJNMNOAZiO'),
(342, 20, '20130701002', 'Mohamad Solekan', 'tenagapendidik@bn', '$2y$10$mdMeFSQsGDQAsNU3eNe2h.KLVd3.V6y5sWN7/awCvrEBMv92LpLN.'),
(343, 20, '20211002005', 'Tedi Pratama', 'tenagapendidik@bn', '$2y$10$7LBAhs/l1PMnkaG1kEA99O4bdzeLX0j.aFKU4auMuG0ZWNo4xtbwq'),
(344, 21, '20140903002', 'Suyatin ', 'umumkebersihan@bn', '$2y$10$/fZulmv4SBqVpFgFUU9jU.QsqS53LcbxO7iYNjQxHtqncyLktJDau'),
(345, 21, '20170803001', 'Yunus Yuliyanto', 'umumkebersihan@bn', '$2y$10$JeZ7D6r9jqw5rd4kzOiBIugOo2z9/1r3X48D8VfVqac3pP0/JPOqW'),
(346, 21, '20140202001', 'Kohar Efendi', 'umumkebersihan@bn', '$2y$10$/rizJQIIc1B037N.TuJWZOsUbJ9gKISF4Jgtn.JZUaA/qrjhSdHLO'),
(347, 21, '20130902001', 'Laminah', 'umumkebersihan@bn', '$2y$10$v82LJATPyvsOC5zoJNsoLe6nYP2oXb5WCFXxCgLSkRdu94ZVmH5/a'),
(348, 21, '20150301002', 'Tutik Al Wiyah', 'umumkebersihan@bn', '$2y$10$vicbCxm1vSlla.bOFavmrO2L9dIC/GI6v3Xsogo1..w.sP7KBNtXe'),
(349, 21, '20120601005', 'Sumiyati', 'umumkebersihan@bn', '$2y$10$nznWx9kgKszVwv2O5kb7qewKP14l9GdpKXcMo618RoiiZVoPo39D2'),
(350, 21, '20130101001', 'Sutikno', 'umumkebersihan@bn', '$2y$10$bqRvSAyEW7pSa.0mmL7wLuhYTdFnTzRKY/Futxtw0uU1hmqE4LqiS'),
(351, 21, '20190102001', 'Lim Ten Siang', 'umumkebersihan@bn', '$2y$10$qMMX1LHhjWPqY4SVPvI6COqj2cC..sU5F7/u1SidGcNGdlXgBavzK'),
(352, 22, '20110101004', 'Fiktian Setia Utomo', 'satpam@bn', '$2y$10$7J4iTLLOn572Lv3SOL7je.Zy8dMS/6ceuQgoXAtjB6HvR0JEPcQfO'),
(353, 22, '20110101006', 'Sihanto', 'satpam@bn', '$2y$10$j0Pd2v27fKg8w0OBJ.x.q.3fTfgTJw2ofF/HmqaBip5r9lo3TNKr2'),
(354, 22, '20110101007', 'Sugeng Priyanto', 'satpam@bn', '$2y$10$PUU1qsN6pxnN2DgM7hlMvuRLsLLZLaQxVhwtGI3p3TfpOM7rnym9i'),
(355, 22, '20110101005', 'Mokhammad Nasikhin', 'satpam@bn', '$2y$10$W03wJN.PcqN3u2vzL9Gtuuz84PLcRX9rxHdnGYueDXvmLFK1FP9Ni'),
(356, 22, '20120401002', 'Maskan', 'satpam@bn', '$2y$10$6n9B6hZskQj8LzzQADtbf.ANBMzL9nPC2SWOen3OfoCM6zW7dgGS.'),
(357, 22, '20131201003', 'Fatah Yasin Sungkono', 'satpam@bn', '$2y$10$OSqQw5vtl00Uwitn4QEL/u/lJqsfaMdVWZUSLnVAI2ksLPX.IocYi'),
(358, 22, '20150701004', 'Dwi Agus Setiyono', 'satpam@bn', '$2y$10$pftFMWFeDLGAoxud1lbs4eSGcbEUqb1Fr0/CiGzAn2W8hZWYWlaQ.'),
(359, 22, '20150801005', 'Haryono ', 'satpam@bn', '$2y$10$Ol6aKPN0XLQl6HRfljaVwu79f0f1gE0eIL0fPo9qnfXmEc6EL7H7.'),
(360, 22, '20170601001', 'Ragil Aji Saputro', 'satpam@bn', '$2y$10$W56NUJ8sQih4.jVzySHIBubVzb/y9DSX4Rnwz3s5hqnf2Ksy8fnE.'),
(361, 22, '20200201001', 'Deni Candra Setyawan', 'satpam@bn', '$2y$10$upl1iG/9vq4IwDcZL42q3u4x/VA2J9fFX5FHDI8V9HIGKUzK1hTgy'),
(362, 22, '20220501001', 'Rival Ardiansyah', 'satpam@bn', '$2y$10$PQ0SuQ8fQbY.tFqvLbymLeySRXBCP07w2kCAmBX8pNxFd9soDNd6C'),
(363, 23, '20160802001', 'Willybrodus Gabriel Kristifolus, S.IP.', 'pamong@bn', '$2y$10$JQPSUPCUPdrkv04ZkNvfN.6/WymryWl/GJZLDlkWeHeCfPwDAEyFu'),
(364, 23, '20171003001', 'Sri Hartatik', 'pamong@bn', '$2y$10$J/eAhi4PsUPH4/xaBMQiiObEio51lX/hy2R5o5ErTSxiB.EbGLNye'),
(365, 23, '20190803002', 'Jhosef Nanda Putra Wicaksana', 'pamong@bn', '$2y$10$uXTam.KIRmZsPVTlJ8Ufi./X9nRo.h/S.aSfUUUtVm6q9lBwEihPu'),
(366, 23, '20220303003', 'Maximianus Ambrosius Ng, S.Psi.', 'pamong@bn', '$2y$10$AddbVddtRTuh5IpQEhFoYuGpp6HQoGYIYYVWWEUUsQuqn9k6WjD.i'),
(367, 23, '20220303004', 'Glorya Martha Harap', 'pamong@bn', '$2y$10$iry612Uorz/DtQbimYyB9uu8nmn5osMo5Vf9Q66Eyz7ustwluTLsS'),
(368, 23, '20220603001', 'Ruth Sylvia', 'pamong@bn', '$2y$10$.XtyxcQ9moKAkzST80sTNuLAEEYTh9rUn.LEnpGfmNTTw3IkhsztC'),
(369, 23, '20220603002', 'Yosafat Pandu Aryoguno', 'pamong@bn', '$2y$10$EKuPrp7JsyfT.JuS1WOO3OK43WEPOJCOiq4lfvpfgOF.exp4zCIfq'),
(370, 24, '20141103004', 'Apmintiarsih', 'dapur@bn', '$2y$10$UUSIM92r3hf4nRdxeSWhhOeTMVSwNl8Ck6xynaRpFyGtCHo43P9mG'),
(371, 24, '20110103005', 'Tukini', 'dapur@bn', '$2y$10$RIh7Xc7QyQVoDCs.r.MT3.1Asp51s15eMTAmnMPWARR5k5ReZU.w2'),
(372, 24, '20110103006', 'Turiah', 'dapur@bn', '$2y$10$R32GISSm1vAOhY9YM9y4NOkT/jYSr.1wiMnB4u/QgsiDORLtXcN1C'),
(373, 24, '20110103008', 'Darti', 'dapur@bn', '$2y$10$ZcX3ylJmuAo0lRRM5iqff.2ADe4/y.qPlfHAKrIdy72ACwONNxVC.'),
(374, 24, '20141203006', 'Suryana', 'dapur@bn', '$2y$10$vLrToXP4ywIKdy/hFpD.peFQrQNCiVYMr8C8JhESUwAL3T/bxZwuG'),
(375, 24, '20210103002', 'Sarminah', 'dapur@bn', '$2y$10$IKbI53YVqqn9LLG4HKnC.uBirlbd7sMu4SV.b6QlU1gQ/j14c97NG'),
(376, 25, '20211104004', 'Tiara Cindy Maharani Purba', 'unitbisnis@bn', '$2y$10$qORADHp1/DjzVyUSpeIt1ed.TS1qIuWDKybGVEQxKOfSVcGx8Qu92'),
(377, 25, '20220704002', 'Kathryn Victorya Yuliana', 'unitbisnis@bn', '$2y$10$eVpRIfm28IibZmIoQtivs.YcazdpEJy/43keAYVQOh8tYAuaV9.8.'),
(378, 25, '20220704003', 'Mira Ariyani', 'unitbisnis@bn', '$2y$10$4LrXq/rnUxYI5dNVCESLIOHCARXJ8YpZfbA..Xi.yFikWxXWH5b0.'),
(379, 25, '20220704004', 'Jenifer Juliana', 'unitbisnis@bn', '$2y$10$f/Mlo5kKg0YFH7TSQ6/cne8XisG1V5i.o/jESJp1ZijWwSXCcod4K');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemilihan`
--

CREATE TABLE `tb_pemilihan` (
  `id_pemilihan` int(11) NOT NULL,
  `mulai_pemilihan` int(11) NOT NULL,
  `akhir_pemilihan` int(11) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemilihan`
--

INSERT INTO `tb_pemilihan` (`id_pemilihan`, `mulai_pemilihan`, `akhir_pemilihan`, `status`) VALUES
(1, 1666141123, 1666141270, 'nonaktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_calon`
--
ALTER TABLE `tb_calon`
  ADD PRIMARY KEY (`id_calon`);

--
-- Indexes for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `tb_hasil_suara`
--
ALTER TABLE `tb_hasil_suara`
  ADD PRIMARY KEY (`id_hasil`),
  ADD UNIQUE KEY `ID_pemilih_2` (`id_pemilih`),
  ADD KEY `ID_pemilih` (`id_pemilih`),
  ADD KEY `ID_calon` (`id_calon`);

--
-- Indexes for table `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  ADD PRIMARY KEY (`id_pemilih`),
  ADD UNIQUE KEY `NIM` (`nim`);

--
-- Indexes for table `tb_pemilihan`
--
ALTER TABLE `tb_pemilihan`
  ADD PRIMARY KEY (`id_pemilihan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tb_calon`
--
ALTER TABLE `tb_calon`
  MODIFY `id_calon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_fakultas`
--
ALTER TABLE `tb_fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_hasil_suara`
--
ALTER TABLE `tb_hasil_suara`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_pemilih`
--
ALTER TABLE `tb_pemilih`
  MODIFY `id_pemilih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT for table `tb_pemilihan`
--
ALTER TABLE `tb_pemilihan`
  MODIFY `id_pemilihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
