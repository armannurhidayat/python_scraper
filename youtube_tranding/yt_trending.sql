-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 27, 2020 at 02:21 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `yt_trending`
--

-- --------------------------------------------------------

--
-- Table structure for table `trand`
--

CREATE TABLE `trand` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trand`
--

INSERT INTO `trand` (`id`, `title`, `url`) VALUES
(43, 'TANTANGAN MAKANAN ASLI VS COKELAT || 24 JAM Makan Makanan Manis! Tes Rasa Seru oleh 123 GO! BOYS', 'https://www.youtube.com/watch?v=lz_3NS7gIz8'),
(44, 'VALENCIA TANOESOEDIBJO: KEHIDUPAN ANAK KONGLOMERAT BIKIN MELONGO! | #DiBalikPintu', 'https://www.youtube.com/watch?v=msp_w6GR2VA'),
(45, 'KITA PAMIT ‼️ GRAND FINAL MASTERCHEF SEASON 7 - JUNA, ARNOLD, RENATTA', 'https://www.youtube.com/watch?v=ujrFFddD_-Y'),
(46, 'Saksi Mata: Tewasnya 6 Pengawal Habib Rizieq!', 'https://www.youtube.com/watch?v=4G5SSIUhojo'),
(47, 'BAKU HANTAM THE DARK CHEF INDONESIA! PART 2', 'https://www.youtube.com/watch?v=2SDFM0gF1tU'),
(48, 'Jessi(제시) & Jackson(GOT7) - NUNU NANA(눈누난나) [2020 KBS Song Festival / 2020.12.18]', 'https://www.youtube.com/watch?v=_ZNF4NDCrTM'),
(49, 'BTS PERNIKAHAN CHACHA & ANDRE', 'https://www.youtube.com/watch?v=-c6_6GMo7n8'),
(50, 'HIGHLIGHTS | ARSENAL 1-4 MAN CITY | CARABAO CUP', 'https://www.youtube.com/watch?v=o2boz3JRhuE'),
(51, 'TREASURE - 2020 DANCE CHALLENGE HITS COMPILATION', 'https://www.youtube.com/watch?v=XTVeJS_Tnr8'),
(52, 'Coki Pardede Berbagi Di Hari Natal | Suntikan Moral Coki - Eps 4', 'https://www.youtube.com/watch?v=eLtp5cZ70lw'),
(53, 'Cinta yang Diam - Ariel & Difki Khalif', 'https://www.youtube.com/watch?v=BNhMGLDlpvk'),
(54, 'Keterangan Pers 6 Calon Menteri Kabinet Indonesia Maju, Istana Merdeka, 22 Desember 2020', 'https://www.youtube.com/watch?v=h1o-kmNDwOE'),
(55, 'EKSKLUSIF: Kesaksian Laskar FPI dalam Rombongan Rizieq Syihab (Part 1) | Mata Najwa', 'https://www.youtube.com/watch?v=nCePxEJvRUs'),
(56, 'EKSKLUSIF: Percakapan Terakhir Laskar FPI sebelum Tewas (Part 2) | Mata Najwa', 'https://www.youtube.com/watch?v=FxpNzTcn0vY'),
(57, 'Rizky Febian - Ku Rindu Ibu [Official Music Video]', 'https://www.youtube.com/watch?v=QmQIjPc3oSs'),
(58, '#NERROR TERAKHIR DI 2020!', 'https://www.youtube.com/watch?v=wk7ZQWtfABk'),
(59, 'PERNIKAHAN CHACHA ANDRE.. Ricis Harus Ke Aceh.. ChaCha Nangis Ditinggal..', 'https://www.youtube.com/watch?v=syBYqpfrjg0'),
(60, 'BTS WEDDING CHACHA & ANDRE PART 2 !! TERHARU DAN NGGAK NYANGKA..', 'https://www.youtube.com/watch?v=ql9uotq4naY'),
(61, 'MAIN KERUMAH MAS BAIM, GAK SENGAJA KETEMU ORANG YANG BISA 7 BAHASA !!!', 'https://www.youtube.com/watch?v=RsEDn0UTFL4'),
(62, 'BAKU HANTAM THE DARK CHEF INDONESIA! PART 1', 'https://www.youtube.com/watch?v=kgMBxik27zQ'),
(63, 'HIGHLIGHTS | STOKE CITY 1- 3 SPURS | Bale, Davies and Kane send Spurs to the semis!', 'https://www.youtube.com/watch?v=Am9VrRZuo04'),
(64, 'UJI HACK & TRIK VIRAL TikTok DI KEHIDUPAN NYATA! || Ide Gila Untuk Membuat Hidupmu Lucu oleh RATATA', 'https://www.youtube.com/watch?v=-cE2hjn395I'),
(65, 'TERBARU ! ! Cak Percil Cs Mundur Golek sing Gedi Dowo - Di Malang Selatan - 23 DES 2020', 'https://www.youtube.com/watch?v=YjDGPX_cQfA'),
(66, '나에게 취한다..★ 자기애폭발 황인엽 잔망 대잔치♪ (???: 집에선 옷 좀 입고 다녀!)#여신강림 | True Beauty EP.6', 'https://www.youtube.com/watch?v=HntOwxtnpTA'),
(67, 'Battle In Style Free Fire bersama Angga Yunanda dan Jeanice Ang, Segera Hadir | Free Fire Indonesia', 'https://www.youtube.com/watch?v=CROfMS0xUFY'),
(68, 'BIOKSOP INDONESIA I A, Aku Benci & Cinta', 'https://www.youtube.com/watch?v=ydOotCj6-Nc'),
(69, 'Apakah Orang Buta Warna Dapat Melihat Api Neraka? | Pemuda Tersesat Eps 07 - Season 02', 'https://www.youtube.com/watch?v=FpJlLxTXhS8'),
(70, 'FIERSA BESARI - Melawan Hati feat. PRINSA MANDAGIE (Official Video Lyrics)', 'https://www.youtube.com/watch?v=ywh9dNpEX9c'),
(71, 'Parma 0-4 Juventus | Ronaldo Double & Morata Late Strike See Juventus Clinch Victory! | Serie A TIM', 'https://www.youtube.com/watch?v=UuAywk8a_w8'),
(72, 'NYANYIIN LAGU KE CEWEK ORANG EH COWOK NYA YANG BAPER WKWK | YUZA EFENDI', 'https://www.youtube.com/watch?v=MWNbbmZa1ZM'),
(73, 'EJEN ALI MISI: JUANG (Animasi Pendek)', 'https://www.youtube.com/watch?v=iKOQzfxOESA'),
(74, 'Pecah Banget Duet Ramanda & Kaka Slank Membawakan Terlalu Manis - Showcase 3 - Indonesian Idol 2021', 'https://www.youtube.com/watch?v=SdFo1Ow9p0A'),
(75, 'PECAH! Abdur Roasting Kiky Saputri: Kau Tanah Pejabat atau Simpanan Pejabat? - COMEDY LAB (Bag 5)', 'https://www.youtube.com/watch?v=C3vj-CVBOZQ'),
(76, 'Misteri Senjata Api FPI', 'https://www.youtube.com/watch?v=5fyu_3eiMe8'),
(77, 'TANTANGAN PANAS VS DINGIN Cewek Dingin Vs Panas! Siapa yang TAHAN oleh KABOOM!', 'https://www.youtube.com/watch?v=Q7MR4_uw91w'),
(78, 'Berpapasan Dengan Ibu Pacarku Saat Keluar dari Kamar Mandi;; | Growing Season | EP.02', 'https://www.youtube.com/watch?v=1eJVblhJOY4'),
(79, 'PRANK CAFE !! ADUH BORRR SENYUMNYA GA KUAT CEWE INI MANIS BANGETTT', 'https://www.youtube.com/watch?v=OhhL7xjL5Gw'),
(80, 'Kasus MISTERIUS & aneh KENNEKA JENKINS! | #NERROR', 'https://www.youtube.com/watch?v=UMzSDDYAusY'),
(81, 'Rey Mbayang & Dinda Hauw - Kuyakin Bahagia | Official Music Video', 'https://www.youtube.com/watch?v=Dg40yprFMFc'),
(82, 'Heboh! Jembatan Bambu Senilai Rp200 Juta di Ponorogo, Jawa Timur - SIS 20/12', 'https://www.youtube.com/watch?v=bdAHqXxsXMg'),
(83, '3MCM BERPISAH DI SAAT PERNIKAHAN CHACHA BERLANGSUNG', 'https://www.youtube.com/watch?v=0nsx7YFGtIg'),
(84, 'Eksklusif: Kesaksian di KM50: Sebelum Ditendang Kedengaran, \"Ampun, pak..\"', 'https://www.youtube.com/watch?v=yigOCGuYRss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trand`
--
ALTER TABLE `trand`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trand`
--
ALTER TABLE `trand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
