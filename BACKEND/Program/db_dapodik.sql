-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Agu 2021 pada 12.45
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dapodik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id_agama` int(11) NOT NULL,
  `agama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen/Protestan'),
(3, 'Katholik'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Khong Hu Chu'),
(7, 'Kepercayaan Kpd Tuhan YME');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akreditasi`
--

CREATE TABLE `akreditasi` (
  `id_akreditasi` int(11) NOT NULL,
  `jenis_akreditasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akreditasi`
--

INSERT INTO `akreditasi` (`id_akreditasi`, `jenis_akreditasi`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'Tidak Terakreditasi (TT)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nuptk` varchar(128) NOT NULL,
  `id_jk` int(11) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nip` varchar(10) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_ptk` int(11) NOT NULL,
  `id_agama` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(10) NOT NULL,
  `rw` varchar(10) NOT NULL,
  `dusun` varchar(255) NOT NULL,
  `desa` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `pos` varchar(10) NOT NULL,
  `tlp` varchar(20) DEFAULT NULL,
  `hp` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `sk_cpns` varchar(255) DEFAULT NULL,
  `tgl_cpns` date NOT NULL,
  `sk_pangkat` varchar(255) NOT NULL,
  `tmt_pangkat` date NOT NULL,
  `id_lembaga` int(11) NOT NULL,
  `id_pangkat` int(11) NOT NULL,
  `id_sumber_gaji` int(11) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `id_status_kawin` int(11) NOT NULL,
  `nama_istri_suami` varchar(255) NOT NULL,
  `nip_suami_istri` varchar(128) NOT NULL,
  `id_pekerjaan` int(11) NOT NULL,
  `tmt_pns` date NOT NULL,
  `lisensi_kepsek` enum('Ya','Tidak') NOT NULL,
  `diklat_pegawai` enum('Ya','Tidak') NOT NULL,
  `keahlian_braille` enum('Ya','Tidak') NOT NULL,
  `bahasa_isyarat` enum('Ya','Tidak') NOT NULL,
  `npwp` varchar(128) NOT NULL,
  `nama_pajak` varchar(255) NOT NULL,
  `id_warga` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `no_rek` varchar(128) NOT NULL,
  `nama_rek` varchar(255) NOT NULL,
  `nik` varchar(128) NOT NULL,
  `no_kk` varchar(128) NOT NULL,
  `karpeg` varchar(128) NOT NULL,
  `karis_karsu` varchar(128) NOT NULL,
  `lintang` decimal(10,0) NOT NULL,
  `bujur` decimal(10,0) NOT NULL,
  `nuks` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `id_user`, `nuptk`, `id_jk`, `tempat_lahir`, `tgl_lahir`, `nip`, `id_status`, `id_ptk`, `id_agama`, `alamat`, `rt`, `rw`, `dusun`, `desa`, `kecamatan`, `pos`, `tlp`, `hp`, `email`, `id_tugas`, `sk_cpns`, `tgl_cpns`, `sk_pangkat`, `tmt_pangkat`, `id_lembaga`, `id_pangkat`, `id_sumber_gaji`, `nama_ibu`, `id_status_kawin`, `nama_istri_suami`, `nip_suami_istri`, `id_pekerjaan`, `tmt_pns`, `lisensi_kepsek`, `diklat_pegawai`, `keahlian_braille`, `bahasa_isyarat`, `npwp`, `nama_pajak`, `id_warga`, `bank`, `no_rek`, `nama_rek`, `nik`, `no_kk`, `karpeg`, `karis_karsu`, `lintang`, `bujur`, `nuks`) VALUES
(1, 1, '1800018211', 1, 'Cilacap', '2021-07-05', '1800036273', 2, 1, 1, 'Majingklak', '06', '05', 'Majingklak', 'Majingklak', 'Wanareja', '50519', NULL, '0857547389264', 'wanwan@gmail.com', 9, '12345', '2021-07-22', '12345', '2021-07-10', 1, 1, 3, 'Sutijem', 2, '', '', 4, '2021-07-21', 'Ya', 'Ya', 'Tidak', 'Tidak', '09.234.244.4-123.123', 'Boro', 1, 'BCA', '100210', 'Boro', '1300120', '12345', '', '', '0', '0', ''),
(2, 2, '1800018120', 1, 'Cilacap', '2021-07-05', '1800036273', 3, 1, 1, 'Majingklak', '06', '05', 'Majingklak', 'Majingklak', 'Wanareja', '50519', NULL, '0857547389264', 'wanwan@gmail.com', 9, '12345', '2021-07-22', '12345', '2021-07-10', 1, 1, 3, 'Sutijem', 2, '', '', 4, '2021-07-21', 'Ya', 'Ya', 'Tidak', 'Tidak', '09.234.244.4-123.123', 'Boro', 1, 'BCA', '100210', 'Boro', '1300120', '12345', '', '', '0', '0', ''),
(4, 4, '8246763665130103', 1, 'Sleman', '1985-09-14', '', 1, 1, 1, 'Kalangan', '1', '5', 'Kalangan', 'TRI MULYO', 'Kec. Sleman', '55513', '', '85878950503', 'agungmuha@gmail.com', 0, '', '0000-00-00', '1840/kep/iiia/gtt/2012', '2012-07-01', 4, 0, 4, 'C. Mugiyanti', 2, '', '16', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40413E+15', '3,40413E+15', '', '', '0', '0', '0', '0', ''),
(5, 5, '1140748651200073', 1, 'Garut', '1970-08-08', '', 1, 1, 1, 'Serangan Ng Ii/ No 72', '8', '2', 'Serangan', 'Notoprajan', 'Kec. Ngampilan', '55262', '274381688', '81802644729', 'goesridwan@gmail.com', 0, '', '0000-00-00', '586/III-4/KEP/23/GTT/2008', '2008-07-01', 5, 0, 4, 'Mamah Salamah', 1, 'Insuriani', '10', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47106E+15', '3,47106E+15', '', '', '0', '0', '0', '0', ''),
(6, 6, '', 2, 'Bantul', '1997-08-24', '', 6, 1, 1, 'Dongkelan No. 64 RT. 01', '1', '', '', 'Panggungharjo', 'Kec. Sewon', '55188', '', '', 'andadari75@gmail.com', 0, '', '0000-00-00', 'E.6/821/a.2/1/2021', '2021-01-04', 5, 0, 5, 'Yuniatun', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40216E+15', '', '', '', '0', '0', '0', '0', ''),
(7, 7, '3544750651200012', 1, 'Boyolali', '1972-02-12', '', 1, 1, 1, 'Notoprajan Ng 2/ 508 Rt 29 Rw 05', '29', '5', 'Notoprajan', 'NOTOPRAJAN', 'Kec. Ngampilan', '55262', '274382542', '8562919480', 'badrudinark@gmail.com', 0, '', '0000-00-00', 'E-2/549/A/VII/25/GTT/2002', '2002-07-01', 5, 0, 4, 'Milati Islamiyah', 1, 'Lusia Arisandi', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47106E+15', '3,47106E+15', '', '', '0', '0', '0', '0', ''),
(8, 8, '1739749650200012', 1, 'Semarang', '1971-04-07', '', 1, 1, 1, 'Sembur', '4', '14', '', 'Tirtomartani', 'Kec. Kalasan', '55571', '', '81804387012', 'caturprasetyo60@yahoo.co.id', 0, '', '0000-00-00', '619/III.4/Kep/2010', '2010-03-01', 4, 0, 4, 'Kartimah', 1, 'Suci Wariani', '5', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Bangun Catur Prasetyo', '1', 0, '', '3,4041E+15', '3,4041E+15', '', '', '0', '0', '0', '0', ''),
(9, 9, '', 1, 'Pangkalpinang', '1991-12-25', '', 6, 1, 1, 'Balirejo RT 52 RW 05', '52', '5', '', 'Mujamuju', 'Kec. Umbulharjo', '', '', '81215233700', 'bayuwidiyadwi@gmail.com', 0, '', '0000-00-00', 'E.6/a.2/041/VII/2017', '2017-07-17', 5, 0, 5, 'Witarniningsih', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '1,90401E+15', '1,90401E+15', '', '', '0', '0', '0', '0', ''),
(10, 10, '1450765666200022', 1, 'Bantul', '1987-01-18', '', 1, 1, 1, 'Dadapbong Rt.01 / Rw.18', '1', '18', '', 'SENDANGSARI', 'Kec. Pajangan', '55751', '', '87739555214', 'catur.ckp@gmail.com', 0, '', '0000-00-00', '456/1114/kep/24/gtt/2009', '2009-07-01', 5, 0, 4, 'Dalbinah', 1, 'Laily Nur Malikha', '16', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'CATUR KURNIAWAN', '1', 0, '', '3,40207E+15', '3,40207E+15', '', '', '0', '0', '0', '0', ''),
(11, 11, '9244743644300043', 2, 'Kudus', '1965-09-12', '', 1, 1, 1, 'Pilahan Permai Kg I 654', '36', '11', 'Pilahan', 'REJOWINANGUN', 'Kec. Kotagede', '55171', '274372515', '82224072354', 'chasanah.ircham@gmail.com', 0, '', '0000-00-00', 'E.2/280/A/VII/23/GTT/2001', '2001-07-01', 5, 0, 4, 'Siti Fatimah', 1, 'Ircham', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Chasanah', '1', 0, '', '3,47115E+15', '3,47114E+15', '', '', '0', '0', '0', '0', ''),
(12, 12, '', 2, 'Pekanbaru', '1993-12-11', '', 6, 1, 1, 'Karangdukuh RT 20 RW 08', '20', '8', '', 'Karangdukuh', 'Kec. Jogonalan', '', '', '82241706822', 'deashyputri12@gmail.com', 0, '', '0000-00-00', 'E.6/a.2/042/VII/2017', '2017-07-17', 5, 0, 5, 'Muji Lestari', 1, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,31009E+15', '3,40107E+15', '', '', '0', '0', '0', '0', ''),
(13, 13, '', 2, 'YOGYAKARTA', '1993-10-10', '', 6, 1, 1, 'BABADAN RT 18 RW 17 NO.490', '18', '17', '', 'BANGUNTAPAN', 'Kec. Banguntapan', '', '', '85729232275', 'dwiayuoktavia@gmail.com', 0, '', '0000-00-00', 'E.6/049/a.2/VII/2018', '2018-07-13', 5, 0, 5, 'YULIANI', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47107E+15', '3,40212E+15', '', '', '0', '0', '0', '0', ''),
(14, 14, '5242742643300033', 2, 'Pekalongan', '1964-09-10', '', 1, 1, 1, 'Mendungan Uh 7/148-a', '43', '11', 'Mendungan', 'GIWANGAN', 'Kec. Umbulharjo', '55163', '274410243', '81328746654', 'pangestutidyah78@gmail.com', 0, '', '0000-00-00', 'E-2/456/1990', '1988-08-01', 5, 0, 4, 'Kustinah', 1, 'Toto Priyono Bani', '5', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Dyah Pangestuti', '1', 0, '', '3,47114E+15', '3,47113E+15', '', '', '0', '0', '0', '0', ''),
(15, 15, '5360759661200003', 1, 'Kisaran', '1981-10-28', '', 6, 1, 1, 'Jl. Imogiri Barat km 7,5 Gandok/Dk Mredo', '5', '35', 'Gandok', 'Bangunharjo', 'Kec. Sewon', '55187', '', '82137178612', 'masekoharianto_28@yahoo.co.id', 0, '', '0000-00-00', '456/III.4/Kep/27/GTT/2009', '2009-07-01', 5, 0, 4, 'Endang Supriati', 1, 'Resti Utaminingsih', '5', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40215E+15', '3,40215E+15', '', '', '0', '0', '0', '0', ''),
(16, 16, '2633747648200012', 1, 'Yogyakarta', '1969-03-01', '', 1, 1, 1, 'Suryowijayan Mj I/259', '13', '2', 'Suryowijayan', 'GEDONGKIWO', 'Kec. Mantrijeron', '55142', '', '8,95393E+11', 'ekonurhidayat_69@yahoo.com', 0, '', '0000-00-00', '621/III.4/Kep/2010', '2010-03-19', 5, 0, 4, 'Kartinah', 1, 'Siti Marfuah', '10', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Eko Nurhidayat', '1', 0, '', '3,47108E+15', '3,47108E+15', '', '', '0', '0', '0', '0', ''),
(17, 17, '0933761662300042', 2, 'Bantul', '1983-06-01', '', 1, 1, 1, 'Nitiprayan Ngestiharjo Kasihan Bantul', '2', '75', 'Nitiprayan', 'Ngestiharjo', 'Kec. Kasihan', '', '2746643135', '81327285919', 'enita.prita@gmail.com', 0, '', '0000-00-00', 'E-2/085/A/VII/01/GTT/2004', '2004-07-01', 4, 0, 4, 'Sutiyanti', 1, 'Lilik Agung Suprihanto', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40216E+15', '3,40216E+15', '', '', '0', '0', '0', '0', ''),
(18, 18, '', 1, 'Bantul', '1994-01-22', '', 6, 1, 1, 'Taman KT I/488', '', '', '', 'Patehan', 'Kec. Kraton', '55133', '', '', 'fahmihaedar@gmail.com', 0, '', '0000-00-00', 'E.6/589/a.2/VII/2020', '2020-07-01', 5, 0, 5, 'Wuri Prastuti', 1, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47109E+15', '', '', '', '0', '0', '0', '0', ''),
(19, 19, '', 1, 'BANTUL', '1992-07-12', '', 6, 1, 1, 'DONOLOYO RT 03', '3', '', '', 'TAMANAN', 'Kec. Banguntapan', '', '', '8,95391E+11', 'f.arif88@gmail.com', 0, '', '0000-00-00', 'E.6/049/a.2/VII/2018', '2018-07-13', 5, 0, 5, 'SRI KAWIT', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40212E+15', '3,40212E+15', '', '', '0', '0', '0', '0', ''),
(20, 20, '8138768669130123', 2, 'Yogyakarta', '1990-08-06', '', 1, 1, 1, 'Jl. Karangsari Gg Kemuning 3', '47', '5', '', 'REJOWINANGUN', 'Kec. Kotagede', '55171', '274387554', '81217458520', 'anandatauzi@gmail.com', 0, '', '0000-00-00', '598/ket/III.4/D/2012', '2012-07-01', 4, 0, 4, 'Siti Maryatun', 1, 'Arga Ardani', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47114E+15', '3,47114E+15', '', '', '0', '0', '0', '0', ''),
(21, 21, '0536760661300042', 2, 'Kebumen', '1982-02-04', '', 1, 1, 1, 'Pilahan Kg I/611 D', '37', '12', '', 'REJOWINANGUN', 'Kec. Kotagede', '55171', '2749352279', '81326654637', 'ferrafijantari@yahoo.co.id', 0, '', '0000-00-00', 'E-2/495/a/VII/26/GTT/2005', '2005-07-01', 5, 0, 4, 'Muntofiah', 1, 'Ridwan Saleh Harahap', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Ferra Fijantari', '1', 0, '', '3,47114E+15', '3,47114E+15', '', '', '0', '0', '0', '0', ''),
(22, 22, '5053768669130113', 2, 'Indramayu', '1990-07-21', '', 1, 1, 1, 'Tumpak', '21', '5', '', 'Ngawu', 'Kec. Playen', '55861', '', '82133111488', 'indrianiikapuspita01@gmail.com', 0, '', '0000-00-00', '663/KET/III.4/D/2012', '2012-08-31', 4, 0, 4, 'Ani Suwarni', 1, 'Agung Budi Prabowo', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40304E+15', '', '', '', '0', '0', '0', '0', ''),
(23, 23, '4437741644300022', 2, 'Bantul', '1963-05-01', '', 1, 1, 1, 'Sayidan', '10', '4', '', 'Prawirodirjan', 'Kec. Gondomanan', '55192', '2746842719', '8155034366', 'ismi.yati.2063@gmail.com', 0, '', '0000-00-00', 'E-2/394/a/XI/1997', '1987-10-01', 4, 0, 4, 'Sarbinah', 1, 'R. Sigit Mugiharto', '5', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40212E+15', '', '', '', '0', '0', '0', '0', ''),
(24, 24, '', 2, 'Bantul', '1988-06-09', '', 7, 1, 1, 'Jl. Bantul', '4', '', 'Srumbung', 'Segoroyoso', 'Kec. Pleret', '55791', '', '85729930598', 'juwanti88@gmail.com', 0, '', '0000-00-00', '473/KET/III.4/D/2015', '2015-06-29', 4, 0, 4, 'Sri wati', 2, '', '1', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40213E+15', '3,40213E+15', '', '', '0', '0', '0', '0', ''),
(25, 25, '', 1, 'Klaten', '1997-03-07', '', 6, 1, 1, 'Jarakan RT 01 RW 01', '1', '1', '', 'Kokosan', 'Kec. Prambanan', '57454', '', '', 'kurniawansurya4.ks@gmail.com', 0, '', '0000-00-00', 'E.6/821/a.2/1/2021', '2021-01-04', 5, 0, 5, 'Siti Fatonah', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,31001E+15', '', '', '', '0', '0', '0', '0', ''),
(26, 26, '0551740641300013', 2, 'Malang', '1962-12-19', '1962121919', 5, 1, 1, 'Kauman GM I/234', '50', '13', 'Kauman', 'Ngupasan', 'Kec. Gondomanan', '', '', '85842030425', 'liliessulis9@gmail.com', 0, '54071/a2.iii.1/c/1987', '1987-03-01', '54071/A2.III.1/C/1987', '1987-03-01', 1, 4, 2, 'Siti Zalecha', 1, 'M Yunan Fathkhurozi', '1', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Lilies Dwi Sulistyowati', '1', 0, '', '3,47111E+15', '3,4711E+15', '', '', '0', '0', '0', '0', ''),
(27, 27, '', 1, 'Yogyakarta', '1995-03-10', '', 6, 1, 1, 'Jl. Perintis Kemerdekaan 16 ', '', '', '', 'Pandeyan', 'Kec. Umbulharjo', '', '', '81239806464', 'mfjrwdy@gmail.com', 0, '', '0000-00-00', 'E.6/048/a.2/VII/2019', '2019-07-15', 5, 0, 5, 'Sri Kusminah', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47113E+15', '3,47113E+15', '', '', '0', '0', '0', '0', ''),
(28, 28, '', 1, 'Sleman', '1997-07-04', '', 6, 1, 1, 'Patukan 02/20', '2', '20', '', 'Ambarketawang', 'Kec. Gamping', '55294', '', '', 'fauzanhamdan000@gmail.com', 0, '', '0000-00-00', 'E.6/821/a.2/1/2021', '2021-01-04', 5, 0, 5, 'Sumisih', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40401E+15', '', '', '', '0', '0', '0', '0', ''),
(29, 29, '8042768669130043', 1, 'Bantul', '1990-07-10', '', 7, 1, 1, 'Putat', '1', '', 'Putat', 'Selopamioro', 'Kec. Imogiri', '', '', '87738489058', 'nurdin_mtop90@yahoo.co.id', 0, '', '0000-00-00', '154/KEP.PEG/III.0/D/2014', '2014-06-28', 4, 0, 4, 'Siti Zubaidah', 1, 'Hikmah Eka Warjiyanti', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,4021E+15', '3,40204E+15', '', '', '0', '0', '0', '0', ''),
(30, 30, '1159746649200013', 1, 'Bantul', '1968-08-27', '', 1, 1, 1, 'Krintenan', '6', '1', 'Sayangan', 'Jagalan', 'Kec. Kotagede', '', '2747011269', '85722651083', 'muhammadnurhadi043@gmail.com', 0, '', '0000-00-00', '55711/kep/2005', '2009-11-12', 5, 0, 4, 'Istiqomah', 1, 'Nuraini Budi Astuti', '5', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40212E+15', '3,40212E+15', '', '', '0', '0', '0', '0', ''),
(31, 31, '5959754656200002', 1, 'Sleman', '1976-06-27', '', 1, 1, 1, 'Jl. Gejayan Santren Gg Menur 07', '18', '1', '', 'CATURTUNGGAL', 'Kec. Depok', '55281', '0274-554781', '8179401482', 'mustajabtakim@gmail.com', 0, '', '0000-00-00', '620/III.4/Kep/2010', '2010-03-09', 4, 0, 4, 'Boniyem', 1, 'Catharina Setyawati', '16', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Mustakim', '1', 0, '', '3,40407E+15', '3,40407E+15', '', '', '0', '0', '0', '0', ''),
(32, 32, '3846753654300032', 2, 'Yogyakarta', '1975-05-14', '', 1, 1, 1, 'Perum Sukoharjo Indah F-61', '10', '16', '', 'Sukoharjo', 'Kec. Ngaglik', '', '0274-897362', '85291801257', 'afiati_nur@yahoo.co.id', 0, '', '0000-00-00', '234/III.4/Kep/2008', '2008-08-01', 4, 0, 4, 'Djuwariyatun', 1, 'Kresno Daru Wicaksono', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Nur Afiati', '1', 0, '', '3,40413E+15', '3,40412E+15', '', '', '0', '0', '0', '0', ''),
(33, 33, '3255759660300013', 2, 'Sleman', '1981-09-23', '', 1, 1, 1, 'Palgading', '3', '', '', 'SINDUHARJO', 'Kec. Ngaglik', '55581', '', '85228050232', 'hidayati.nur30@gmail.com', 0, '', '0000-00-00', '456/III.4/KEP/19/GTT/2009', '2009-07-13', 5, 0, 4, 'Katunah', 1, 'Disi Firdausi Azhar', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Disi Firdausi Azhar', '1', 0, '', '3,40413E+15', '3,40412E+15', '', '', '0', '0', '0', '0', ''),
(34, 34, '8948762663300122', 2, 'Kulonprogo', '1984-06-16', '', 1, 1, 1, 'Karang', '32', '12', 'Karang', 'Jatisarono', 'Kec. Nanggulan', '55671', '7156867', '82331436508', 'nurikapujiastuti@gmail.com', 0, '', '0000-00-00', '456/III.4/KEP/21/GTT/2009', '2009-07-13', 5, 0, 4, 'Marjinem', 1, 'Isngadi', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Nur Ika Pujiastuti', '1', 0, '', '3,40111E+15', '3,40213E+15', '', '', '0', '0', '0', '0', ''),
(35, 35, '', 2, 'RUPE', '1994-09-23', '', 6, 1, 1, 'JOYONEGARAN MG II NO.174 WIROGUNAN', '', '', '', 'WIROGUNAN', 'Kec. Mergangsan', '', '', '81393078873', 'nlailah58@gmail.com', 0, '', '0000-00-00', 'E.6/049/a.2/VII/2018', '2018-07-13', 5, 0, 5, 'SARFIAH', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '5,20612E+15', '5,20611E+15', '', '', '0', '0', '0', '0', ''),
(36, 36, '4558768669130123', 2, 'YOGYAKARTA', '1990-12-26', '', 1, 1, 1, 'JL. Keparakan Kidul, MG I/ 1320', '51', '12', 'Keparakan', 'Keparakan', 'Kec. Mergangsan', '55152', '', '85725883135', 'nb.1703@gmail.com', 0, '', '0000-00-00', '764/SK-PDA/D-G2/VII/2017', '2015-07-06', 4, 0, 4, 'PARTINAH', 2, '', '1', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47113E+15', '', '', '', '0', '0', '0', '0', ''),
(37, 37, '', 2, 'Bantul', '1994-06-20', '', 6, 1, 1, 'Celep Rt 09', '9', '', '', 'Srigading', 'Kec. Sanden', '', '', '88902861125', 'zwastikawati94@gmail.com', 0, '', '0000-00-00', 'E.6/048/a.2/VII/2019', '2019-07-15', 5, 0, 5, 'Waginem', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40203E+15', '3,40202E+15', '', '', '0', '0', '0', '0', ''),
(38, 38, '0851753654300022', 2, 'Pati', '1975-05-19', '', 1, 1, 1, 'Turusan', '4', '2', '', 'Purwomartani', 'Kec. Kalasan', '55571', '0274-6810749', '8,52924E+11', 'rlarasati19@yahoo.com', 0, '', '0000-00-00', '798/III.4/KEP/2010', '2010-12-01', 4, 0, 4, 'Sukini', 1, 'Imam Sutoto', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Ratmi Larasati', '1', 0, '', '3,40411E+15', '3,4041E+15', '', '', '0', '0', '0', '0', ''),
(39, 39, '', 1, 'Wonosobo', '1998-04-18', '', 6, 1, 1, 'Rawakele', '', '', '', 'Sawangan', 'Kec. Leksono', '56362', '', '', 'rivansetiawan81@gmail.com', 0, '', '0000-00-00', 'E.6/821/a.2/1/2021', '2021-01-04', 5, 0, 5, 'Misnem', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,30705E+15', '', '', '', '0', '0', '0', '0', ''),
(40, 40, '6051762665110013', 1, 'Cirebon', '1984-07-19', '', 6, 1, 1, 'Karang Kulon', '5', '1', 'Karang Kulon', 'Wukirsari', 'Kec. Imogiri', '55782', '', '87839815850', 'bsaeful84@yahoo.co.id', 0, '', '0000-00-00', '712/ket/iii.4/d/2012', '2012-09-03', 5, 0, 4, 'Fatimah', 2, '', '16', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,2091E+15', '3,2091E+15', '', '', '0', '0', '0', '0', ''),
(41, 41, '0456765668130122', 1, 'Yogyakarta', '1987-01-24', '', 1, 1, 1, 'Dukuh MJ 1/1299', '69', '14', 'Dukuh', 'Gedongkiwo', 'Kec. Mantrijeron', '55142', '', '8995743264', 'samsulahmadi2021@gmail.com', 0, '', '0000-00-00', '858/KEP.PEG/III.0/D/2014', '2014-04-01', 4, 0, 4, 'Su\'imah', 1, 'Ani Marwati', '1', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47108E+15', '3,47108E+15', '', '', '0', '0', '0', '0', ''),
(42, 42, '1437744642200002', 1, 'Manyaran/Wonogiri', '1966-01-05', '', 1, 1, 1, 'Kroco Rt 02 Rw 08', '2', '8', '', 'SUKOHARJO', 'Kec. Ngaglik', '55521', '2746542440', '81328284397', 'satigusis@gmail.com', 0, '', '0000-00-00', 'E.2/906/A/X/2003', '2003-10-01', 4, 4, 4, 'Satinem', 1, 'Dra Giyanti', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Satimin Agus S.', '1', 0, '', '3,40412E+15', '3,40412E+15', '', '', '0', '0', '0', '0', ''),
(43, 43, '', 2, 'Yogyakarta', '1995-08-19', '', 6, 1, 1, 'Alun-Alun Rt 37 Rw 09', '37', '9', '', 'Purbayan', 'Kec. Kotagede', '', '', '85738757595', 'sekarayularasati30@gmail.com', 0, '', '0000-00-00', 'E.6/048/a.2/VII/2019', '2019-07-10', 5, 0, 5, 'Dwi Siswanti', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47115E+15', '3,47114E+15', '', '', '0', '0', '0', '0', ''),
(44, 44, '2242743643300003', 2, 'Grobogan', '1965-09-10', '', 1, 1, 1, 'Pelemsari KG II/08', '3', '1', '', 'PRENGGAN', 'Kec. Kotagede', '55172', '0274-378046', '81390568689', 'sri.endarwati65@gmail.com', 0, '', '0000-00-00', 'E.2/400/A/VII/03/GTT/1998', '1998-07-01', 4, 0, 4, 'Sunarti', 3, 'Drs Anis Santoso', '16', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,47115E+15', '3,47114E+15', '', '', '0', '0', '0', '0', ''),
(45, 45, '4556748650200033', 1, 'Bantul', '1970-12-24', '', 1, 1, 1, 'Kweni', '4', '', 'Kweni', 'PANGGUNGHARJO', 'Kec. Sewon', '55188', '0274-372492', '81328342216', 'hrsaja@gmail.com', 0, '', '0000-00-00', 'E.2/549/a/VII/24/GTT/2002', '2002-07-01', 5, 0, 4, 'Saminah', 1, 'Lucia Sri Haryati', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Suhari Marjiyo', '1', 0, '', '3,40215E+15', '3,40215E+15', '', '', '0', '0', '0', '0', ''),
(46, 46, '6661739640200022', 1, 'Bantul', '1961-03-29', '', 1, 1, 1, 'Karangploso', '2', '9', 'Karangploso', 'SITIMULYO', 'Kec. Piyungan', '55942', '', '8,95627E+11', 'drssuharyadi47@gmail.com', 0, '', '0000-00-00', 'E.1/E.299/V/85', '1985-01-01', 5, 0, 4, 'Suparinten', 1, 'Sudariningsih', '8', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Suharyadi', '1', 0, '', '3,40214E+15', '3,40214E+15', '', '', '0', '0', '0', '0', ''),
(47, 47, '6151742644300003', 2, 'Bondowoso', '1964-08-19', '1964081919', 5, 1, 1, 'Babadan', '4', '36', 'Babadan', 'Sendangtirto', 'Kec. Berbah', '55573', '', '81229995099', 'trimaharjanti19@gmail.com', 0, '6799/104/c/90/sk', '1990-06-01', '6799/104/c/90/sk', '1990-06-01', 1, 3, 2, 'Yekti Sumarti', 1, 'Bambang Adi Subagyo SH', '5', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Tri Maharjanti', '1', 0, '', '3,40217E+15', '3,40216E+15', '', '', '0', '0', '0', '0', ''),
(48, 48, '4161767668130133', 2, 'Sleman', '1989-08-29', '', 1, 1, 1, 'ringinsari', '4', '2', 'ringinsari', 'Tamanmartani', 'Kec. Kalasan', '55571', '', '85643233959', 'tri.utami983@gmail.com', 0, '', '0000-00-00', '910/KEP.PEG/III.0/D/2019', '2019-10-02', 4, 0, 4, 'Parjiyah', 1, 'Gilang Haikal', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40411E+15', '3,4041E+15', '', '', '0', '0', '0', '0', ''),
(49, 49, '', 2, 'BANTUL', '1993-08-28', '', 6, 1, 1, 'BOJONG RT 02 WONOLELO ', '2', '', '', 'WONOLELO', 'Kec. Pleret', '', '', '8558774799', 'wahyuolifik@gmail.com', 0, '', '0000-00-00', 'E.6/045/a.2/XII/2017', '2017-12-29', 5, 0, 5, 'WAGIRAH', 2, '', '15', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', '', '1', 0, '', '3,40214E+15', '3,40213E+15', '', '', '0', '0', '0', '0', ''),
(50, 50, '9247753654300003', 2, 'Sleman', '1975-09-15', '1975091520', 5, 1, 1, 'Wadas Tridadi Sleman', '5', '2', 'Wadas', 'Tridadi', 'Kec. Sleman', '55511', '', '89528502477', 'wijiparmadi@gmail.com', 0, '22/Pem.D/BP/D.2', '2008-01-01', '81/Pem.D/BP/D.2', '2005-01-01', 2, 3, 3, 'Supartinah', 1, 'Agus Sofyan', '5', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Wijiati Parmadi', '1', 0, '', '3,40414E+15', '3,40413E+15', '', '', '0', '0', '0', '0', ''),
(51, 51, '9638757658300072', 2, 'Bogor', '1979-03-06', '', 1, 1, 1, 'Perum Djogja Village C-7', '17', '7', '', 'MINOMARTANI', 'Kec. Ngaglik', '55581', '2748722013', '81382444150', 'yenimuhliawati@gmail.com', 0, '', '0000-00-00', '456/III.4/Kep/28/GTT/2009', '2009-07-01', 4, 0, 4, 'H Enung Mardiyah', 1, 'Fathur Rahman M.si', '5', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Yeni Muhliawati', '1', 0, '', '3,40412E+15', '3,40412E+15', '', '', '0', '0', '0', '0', ''),
(52, 52, '5935752653300002', 2, 'Gunung Kidul', '1974-06-03', '1974060320', 5, 1, 1, 'Jl. Mondoliko Muja Muju Uh 2/755', '55', '12', '', 'MUJA MUJU', 'Kec. Umbulharjo', '55165', '274377090', '87702774132', 'yunikurniasih74@gmail.com', 0, '15/pem.d/bp/d.2', '2006-04-01', '32.a/Pem.D/BP/D.2', '2003-06-01', 2, 3, 3, 'Barijah', 1, 'Tafsirul Ichwan', '10', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Yuni Kurniasih', '1', 0, '', '3,47113E+15', '3,47113E+15', '', '', '0', '0', '0', '0', ''),
(53, 53, '6048764665300063', 2, 'Yogyakarta', '1986-07-16', '', 1, 1, 1, 'Gedongan Kg Iii/29 C', '2', '1', '', 'PURBAYAN', 'Kec. Kotagede', '55173', '451088', '81391702560', 'yushinta_wibowo@yahoo.co.id', 0, '', '0000-00-00', '456/111.4/kep/23/gtt/2009', '2009-07-13', 5, 0, 4, 'Sri Asih', 1, 'Yuda Krisnanto', '9', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Yushinta Wibowo', '1', 0, '', '3,47115E+15', '3,47114E+15', '', '', '0', '0', '0', '0', ''),
(54, 54, '5155764665110033', 1, 'Serang', '1986-08-23', '', 6, 1, 1, 'Minggiran No.1131', '53', '15', 'Suryodiningratan', 'Mantrijeron', 'Kec. Mantrijeron', '55141', '', '81514642344', 'inalarabic23.zm@gmail.com', 0, '', '0000-00-00', '314/KEP.PEG/III.0/D/2014', '2014-07-01', 4, 0, 5, 'Sutarsih', 1, 'Destriana Wiyanti', '10', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', '', 'Zainal Muttaqin', '1', 0, '', '3,47109E+15', '3,40208E+15', '', '', '0', '0', '0', '0', ''),
(56, 0, 'nuptk', 0, 'tempat_lahir', '0000-00-00', 'nip', 0, 0, 0, 'alamat', 'rt', 'rw', 'dusun', 'desa', 'kecamatan', 'pos', 'tlp', 'hp', 'email', 0, 'sk_cpns', '0000-00-00', 'sk_pangkat', '0000-00-00', 0, 0, 0, 'nama_ibu', 0, 'nama_suami_istri', 'id_pekerjaan', 0, '0000-00-00', '', '', '', '', 'nama_pajak', 'id_warga', 0, 'nama_rek', 'nik', 'no_kk', 'karpeg', 'karis_karsu', 'lintang', 'bujur', '0', '0', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_ptk`
--

CREATE TABLE `jenis_ptk` (
  `id_ptk` int(11) NOT NULL,
  `ptk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jenis_ptk`
--

INSERT INTO `jenis_ptk` (`id_ptk`, `ptk`) VALUES
(1, 'Guru Mapel'),
(2, 'Tenaga Kebersihan'),
(3, 'Tenaga Administrasi'),
(4, 'Security'),
(5, 'Kepala Sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jk`
--

CREATE TABLE `jk` (
  `id_jk` int(11) NOT NULL,
  `jk` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jk`
--

INSERT INTO `jk` (`id_jk`, `jk`) VALUES
(1, 'Laki-laki'),
(2, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kebutuhan_khusus`
--

CREATE TABLE `kebutuhan_khusus` (
  `id_kebutuhan_khusus` int(11) NOT NULL,
  `kebutuhan_khusus` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lembaga`
--

CREATE TABLE `lembaga` (
  `id_lembaga` int(11) NOT NULL,
  `lembaga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `lembaga`
--

INSERT INTO `lembaga` (`id_lembaga`, `lembaga`) VALUES
(1, 'Pemerintah Pusat'),
(2, 'Pemerintah Provinsi'),
(3, 'Pemerintah Kab/Kota'),
(4, 'Ketua Yayasan'),
(5, 'Kepala Sekolah'),
(6, 'Komite Sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `id_pangkat` int(11) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `pangkat`, `keterangan`) VALUES
(1, 'GOL-I', NULL),
(2, 'GOL-II', NULL),
(3, 'GOL-III', NULL),
(4, 'GOL-IV', NULL),
(5, 'LAINNYA', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `pekerjaan`, `keterangan`) VALUES
(1, 'Tidak Bekerja', NULL),
(2, 'Nelayan', NULL),
(3, 'Petani', NULL),
(4, 'Peternak', NULL),
(5, 'PNS/TNI/Polri', NULL),
(6, 'GTT/PTT', NULL),
(7, 'Pedagang Kecil', NULL),
(8, 'Pedangang Besar ', NULL),
(9, 'Karyawan Swasta', NULL),
(10, 'Wirausaha', NULL),
(11, 'Pensiunan', NULL),
(12, 'Buruh', NULL),
(13, 'TKI', NULL),
(14, 'Sudah Meninggal', NULL),
(15, 'Tidak Dapat Diterapkan', NULL),
(16, 'Lainnya\r\n', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `bentuk_pendidikan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendidikan`
--

INSERT INTO `pendidikan` (`id_pendidikan`, `bentuk_pendidikan`) VALUES
(1, 'PAUD'),
(2, 'TK'),
(3, 'SD'),
(4, 'SMP'),
(5, 'SMA'),
(6, 'SMK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'Super Admin'),
(2, 'Admin (Operator Sekolah)'),
(3, 'User PTK'),
(4, 'Verifikasi\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `npsn` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `status` enum('Swasta','Negeri') NOT NULL,
  `id_pendidikan` int(11) NOT NULL,
  `jumlah_siswa` int(11) NOT NULL,
  `id_akreditasi` int(11) NOT NULL,
  `kepsek` varchar(255) NOT NULL,
  `operator` varchar(255) NOT NULL,
  `kurikulum` varchar(128) NOT NULL,
  `status_kepemilikan` varchar(255) NOT NULL,
  `sk_pendirian` varchar(255) DEFAULT NULL,
  `tgl_sk_pendirian` date DEFAULT NULL,
  `sk_izin_operasional` varchar(255) DEFAULT NULL,
  `tgl_sk_izin_operasional` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sekolah`
--

INSERT INTO `sekolah` (`id_sekolah`, `nama_sekolah`, `npsn`, `alamat`, `id_user`, `status`, `id_pendidikan`, `jumlah_siswa`, `id_akreditasi`, `kepsek`, `operator`, `kurikulum`, `status_kepemilikan`, `sk_pendirian`, `tgl_sk_pendirian`, `sk_izin_operasional`, `tgl_sk_izin_operasional`) VALUES
(1, 'SMP  Muhammadiyah 2', '20403244 ', 'Jl. Kapas II / 7a, Semaki, Kec. Umbulharjo, Kota Yogyakarta Prov. D.I. Yogyakarta', 2, 'Swasta', 4, 655, 1, 'Naning Hidayati', 'Agus Musthofa', '2013', 'Yayasan', 'SK-63728', '2004-08-17', 'SK-531635', '2004-08-15'),
(2, 'SD Muhammadiyah Nitikan', '63518', 'jl. Ringroud Barat', 1, 'Swasta', 3, 537, 1, 'Hasan', 'Alwan', '2013', 'Yayasan', 'SK-63728', '2004-08-17', 'SK-531635', '2004-08-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pegawai`
--

CREATE TABLE `status_pegawai` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_pegawai`
--

INSERT INTO `status_pegawai` (`id_status`, `status`) VALUES
(1, 'GTY'),
(2, 'PTY'),
(3, 'PTTY'),
(4, 'GTTY'),
(5, 'PNS'),
(6, 'Guru Honor Sekolah'),
(7, 'Honor Daerah TK.II Kab/Kota\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_perkawinan`
--

CREATE TABLE `status_perkawinan` (
  `id_status_kawin` int(11) NOT NULL,
  `status_kawin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `status_perkawinan`
--

INSERT INTO `status_perkawinan` (`id_status_kawin`, `status_kawin`) VALUES
(1, 'Kawin'),
(2, 'Belum Kawin'),
(3, 'Janda/Duda');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sumber_gaji`
--

CREATE TABLE `sumber_gaji` (
  `id_sumber_gaji` int(11) NOT NULL,
  `sumber_gaji` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sumber_gaji`
--

INSERT INTO `sumber_gaji` (`id_sumber_gaji`, `sumber_gaji`, `keterangan`) VALUES
(1, 'APBN', NULL),
(2, 'APBD Provinsi', NULL),
(3, 'APBD Kab/Kota', NULL),
(4, 'Yayasan', NULL),
(5, 'Sekolah', NULL),
(6, 'Lembaga Donor', NULL),
(7, 'Lainnya', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_tambahan`
--

CREATE TABLE `tugas_tambahan` (
  `id_tugas` int(11) NOT NULL,
  `nama_tugas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tugas_tambahan`
--

INSERT INTO `tugas_tambahan` (`id_tugas`, `nama_tugas`) VALUES
(1, 'Kepala Sekolah'),
(2, 'Ketua Tata Usaha'),
(3, 'Kepala Perpustakaan'),
(4, 'Wakasek Sarpra'),
(5, 'Wakasek Humas'),
(6, 'Wakasek Kesiswaan'),
(7, 'Guru Piket'),
(8, 'Kepala Laboratorium'),
(9, 'Guru Pembimbing Ekstrakulikuler');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `image`, `id_role`, `created_at`, `updated_at`, `active`) VALUES
(1, 'Admin', 'admin1@gmail.com', 'admin1', 'admin123', 'default.png', 2, '2021-06-17 13:41:32', '2021-06-17 13:41:32', 1),
(2, 'Admin', 'admin@gmail.com', 'admin2', 'admin123', 'default.png', 2, '2021-06-17 13:41:32', '2021-06-17 13:41:32', 1),
(3, 'Super Admin', 'superadmin@gmail.com', 'superadmin', 'superadmin123', 'superadmin123', 1, '2021-08-22 15:59:53', '2021-08-22 15:59:53', 1),
(4, 'Agung Hardiyanto', 'agungmuha@gmail.com', 'user1', 'user123', '', 3, NULL, NULL, 1),
(5, 'Agus Ridwan', 'goesridwan@gmail.com', 'user2', 'user123', '', 3, NULL, NULL, 1),
(6, 'Andadari Putri', 'andadari75@gmail.com', 'user3', 'user123', '', 3, NULL, NULL, 1),
(7, 'Badruddin Abdul Rochman K', 'badrudinark@gmail.com', 'user4', 'user123', '', 3, NULL, NULL, 1),
(8, 'Bangun Catur Prasetyo', 'caturprasetyo60@yahoo.co.id', 'user5', 'user123', '', 3, NULL, NULL, 1),
(9, 'Bayu Widiya Dwi Santoso', 'bayuwidiyadwi@gmail.com', 'user6', 'user123', '', 3, NULL, NULL, 1),
(10, 'Catur Kurniawan', 'catur.ckp@gmail.com', 'user7', 'user123', '', 3, NULL, NULL, 1),
(11, 'Chasanah', 'chasanah.ircham@gmail.com', 'user8', 'user123', '', 3, NULL, NULL, 1),
(12, 'Desiani Putri Lestari', 'deashyputri12@gmail.com', 'user9', 'user123', '', 3, NULL, NULL, 1),
(13, 'DWI AYU OKTAVIA', 'dwiayuoktavia@gmail.com', 'user10', 'user123', '', 3, NULL, NULL, 1),
(14, 'Dyah Pangestuti', 'pangestutidyah78@gmail.com', 'user11', 'user123', '', 3, NULL, NULL, 1),
(15, 'Eko Harianto', 'masekoharianto_28@yahoo.co.id', 'user12', 'user123', '', 3, NULL, NULL, 1),
(16, 'Eko Nurhidayat', 'ekonurhidayat_69@yahoo.com', 'user13', 'user123', '', 3, NULL, NULL, 1),
(17, 'Enita Yuniati', 'enita.prita@gmail.com', 'user14', 'user123', '', 3, NULL, NULL, 1),
(18, 'Fahmi Haedar Ali', 'fahmihaedar@gmail.com', 'user15', 'user123', '', 3, NULL, NULL, 1),
(19, 'FAJAR ARIF WIDODO', 'f.arif88@gmail.com', 'user16', 'user123', '', 3, NULL, NULL, 1),
(20, 'Fajar Noor Trisna W', 'anandatauzi@gmail.com', 'user17', 'user123', '', 3, NULL, NULL, 1),
(21, 'Ferra Fijantari', 'ferrafijantari@yahoo.co.id', 'user18', 'user123', '', 3, NULL, NULL, 1),
(22, 'Indriani Ika Puspitasari', 'indrianiikapuspita01@gmail.com', 'user19', 'user123', '', 3, NULL, NULL, 1),
(23, 'Ismiyati', 'ismi.yati.2063@gmail.com', 'user20', 'user123', '', 3, NULL, NULL, 1),
(24, 'Juwanti', 'juwanti88@gmail.com', 'user21', 'user123', '', 3, NULL, NULL, 1),
(25, 'Kurniawan Surya Andriyanto', 'kurniawansurya4.ks@gmail.com', 'user22', 'user123', '', 3, NULL, NULL, 1),
(26, 'Lilies Dwi Sulistyowati', 'liliessulis9@gmail.com', 'user23', 'user123', '', 3, NULL, NULL, 1),
(27, 'M. Fajar Widyakusuma', 'mfjrwdy@gmail.com', 'user24', 'user123', '', 3, NULL, NULL, 1),
(28, 'Muhammad Fauzan Hamdani', 'fauzanhamdan000@gmail.com', 'user25', 'user123', '', 3, NULL, NULL, 1),
(29, 'Muhammad Nurdin', 'nurdin_mtop90@yahoo.co.id', 'user26', 'user123', '', 3, NULL, NULL, 1),
(30, 'Muhammad Nurhadi', 'muhammadnurhadi043@gmail.com', 'user27', 'user123', '', 3, NULL, NULL, 1),
(31, 'Mustakim', 'mustajabtakim@gmail.com', 'user28', 'user123', '', 3, NULL, NULL, 1),
(32, 'Nur Afiati', 'afiati_nur@yahoo.co.id', 'user29', 'user123', '', 3, NULL, NULL, 1),
(33, 'Nur Hidayati', 'hidayati.nur30@gmail.com', 'user30', 'user123', '', 3, NULL, NULL, 1),
(34, 'Nur Ika Pujiastuti', 'nurikapujiastuti@gmail.com', 'user31', 'user123', '', 3, NULL, NULL, 1),
(35, 'NURLAILAH', 'nlailah58@gmail.com', 'user32', 'user123', '', 3, NULL, NULL, 1),
(36, 'Nurul Anisa', 'nb.1703@gmail.com', 'user33', 'user123', '', 3, NULL, NULL, 1),
(37, 'Olga Frida Zwastikawati', 'zwastikawati94@gmail.com', 'user34', 'user123', '', 3, NULL, NULL, 1),
(38, 'Ratmi Larasati', 'rlarasati19@yahoo.com', 'user35', 'user123', '', 3, NULL, NULL, 1),
(39, 'Rivan Setiawan', 'rivansetiawan81@gmail.com', 'user36', 'user123', '', 3, NULL, NULL, 1),
(40, 'Saeful Bahri', 'bsaeful84@yahoo.co.id', 'user37', 'user123', '', 3, NULL, NULL, 1),
(41, 'Samsul Ahmadi', 'samsulahmadi2021@gmail.com', 'user38', 'user123', '', 3, NULL, NULL, 1),
(42, 'Satimin Agus S.', 'satigusis@gmail.com', 'user39', 'user123', '', 3, NULL, NULL, 1),
(43, 'Sekar Ayu Larasati', 'sekarayularasati30@gmail.com', 'user40', 'user123', '', 3, NULL, NULL, 1),
(44, 'Sri Endarwati', 'sri.endarwati65@gmail.com', 'user41', 'user123', '', 3, NULL, NULL, 1),
(45, 'Suhari Marjiyo', 'hrsaja@gmail.com', 'user42', 'user123', '', 3, NULL, NULL, 1),
(46, 'Suharyadi', 'drssuharyadi47@gmail.com', 'user43', 'user123', '', 3, NULL, NULL, 1),
(47, 'Tri Maharjanti', 'trimaharjanti19@gmail.com', 'user44', 'user123', '', 3, NULL, NULL, 1),
(48, 'Tri Utami', 'tri.utami983@gmail.com', 'user45', 'user123', '', 3, NULL, NULL, 1),
(49, 'Wahyu Cholivah', 'wahyuolifik@gmail.com', 'user46', 'user123', '', 3, NULL, NULL, 1),
(50, 'Wijiati Parmadi', 'wijiparmadi@gmail.com', 'user47', 'user123', '', 3, NULL, NULL, 1),
(51, 'Yeni Muhliawati', 'yenimuhliawati@gmail.com', 'user48', 'user123', '', 3, NULL, NULL, 1),
(52, 'Yuni Kurniasih', 'yunikurniasih74@gmail.com', 'user49', 'user123', '', 3, NULL, NULL, 1),
(53, 'Yushinta Wibowo', 'yushinta_wibowo@yahoo.co.id', 'user50', 'user123', '', 3, NULL, NULL, 1),
(54, 'Zainal Muttaqin', 'inalarabic23.zm@gmail.com', 'user51', 'user123', '', 3, NULL, NULL, 1),
(55, 'Aisyah Tun Mahmudah', 'aisyah.sdmuhnitikan@gmail.com', 'user52', 'user123', '', 3, NULL, NULL, 1),
(56, 'Arifin', 'arifn.uad19@gmail.com', 'user53', 'user123', '', 3, NULL, NULL, 1),
(57, 'Beta Pusdikawati', 'teletabeta@gmail.com', 'user54', 'user123', '', 3, NULL, NULL, 1),
(58, 'Dedie Adhy Aksa Toto Utomo', 'dedie.umi8@gmail.com', 'user55', 'user123', '', 3, NULL, NULL, 1),
(59, 'Dewi Puri Kurniasih', 'dewipuri0975@gmail.com', 'user56', 'user123', '', 3, NULL, NULL, 1),
(60, 'Diah Pramusinta', 'diahpramu1511@gmail.com', 'user57', 'user123', '', 3, NULL, NULL, 1),
(61, 'Dwi Yuli Isminingsih', 'dwiyuliisminingsih@gmail.com', 'user58', 'user123', '', 3, NULL, NULL, 1),
(62, 'Edi Muji Hartono', 'eddiemuhnitikan13@gmail.com', 'user59', 'user123', '', 3, NULL, NULL, 1),
(63, 'Eko Wahyono', 'ismailabuafkar@gmail.com', 'user60', 'user123', '', 3, NULL, NULL, 1),
(64, 'Elis Triwinarni', 'elisaaffandie@gmail.com', 'user61', 'user123', '', 3, NULL, NULL, 1),
(65, 'Gatot Wisnu Wibowo', 'gatoet.kita@gmail.com', 'user62', 'user123', '', 3, NULL, NULL, 1),
(66, 'Hanafiah', 'hanafiah2@gmail.com', 'user63', 'user123', '', 3, NULL, NULL, 1),
(67, 'Hera Nur Agista', 'hera.nur.agista@gmail.com', 'user64', 'user123', '', 3, NULL, NULL, 1),
(68, 'Ihsan Hermawan', 'jembatanmatematikaku@gmail.com', 'user65', 'user123', '', 3, NULL, NULL, 1),
(69, 'Imam Muklas', 'abahimam74@gmail.com', 'user66', 'user123', '', 3, NULL, NULL, 1),
(70, 'Imas Masitoh', 'imasuad@gmail.com', 'user67', 'user123', '', 3, NULL, NULL, 1),
(71, 'Lia Suryanto', 'liasuryanto13@gmail.com', 'user68', 'user123', '', 3, NULL, NULL, 1),
(72, 'Nuning Tri Utami', 'nunningsapen@gmail.com', 'user69', 'user123', '', 3, NULL, NULL, 1),
(73, 'Puguh Budi Prasojo', 'ppuguhbudiprasojo@gmail.com', 'user70', 'user123', '', 3, NULL, NULL, 1),
(74, 'Retno Purwaningsih', 'purwaningsihcantik@gmail.com', 'user71', 'user123', '', 3, NULL, NULL, 1),
(75, 'Riani Nur Khasanah', 'mamaoziza@gmail.com', 'user72', 'user123', '', 3, NULL, NULL, 1),
(76, 'Saleh Santoso', 'salehsantoso15@gmail.com', 'user73', 'user123', '', 3, NULL, NULL, 1),
(77, 'Seflin Marinda Lesmana', 'seflinmarindalesmana@gmail.com', 'user74', 'user123', '', 3, NULL, NULL, 1),
(78, 'Siti Hafsoh', 'shafsoh0@gmail.com', 'user75', 'user123', '', 3, NULL, NULL, 1),
(79, 'Sulhan Jamroji', 'sulhanelblitary@gmail.com', 'user76', 'user123', '', 3, NULL, NULL, 1),
(80, 'Susiana', 'bumiqusiana@gmail.com', 'user77', 'user123', '', 3, NULL, NULL, 1),
(81, 'Tri Rohmani', 'trirohmani04@gmail.com', 'user78', 'user123', '', 3, NULL, NULL, 1),
(82, 'Tugimin', 'tugimin.nitikan@gmail.com', 'user79', 'user123', '', 3, NULL, NULL, 1),
(83, 'Wahyu Mar\'atus Sholihah', 'ayoe.physicsuad@gmail.com', 'user80', 'user123', '', 3, NULL, NULL, 1),
(84, 'Wahyu Nur Hidayat', 'wahyunurhidayat461@gmail.com', 'user81', 'user123', '', 3, NULL, NULL, 1),
(85, 'Wahyu Puji Astuti', 'wahyuzahro9@gmail.com', 'user82', 'user123', '', 3, NULL, NULL, 1),
(86, 'Yudy Johari, S.Kom', 'yudyntk@gmail.com', 'user83', 'user123', '', 3, NULL, NULL, 1),
(87, 'Yulian Bangun Prayoga', 'prayogayulian80@gmail.com', 'user84', 'user123', '', 3, NULL, NULL, 1),
(88, 'nama', 'email', 'username', 'password', 'image', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(89, 'Alwan Maulana Zidane', 'alwanmz16@gmail.com', 'alwanemz', '123nlwaamz', '', 3, '2021-08-23 07:33:26', '2021-08-23 07:33:26', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_usermenu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_usermenu` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id_usermenu`, `menu`) VALUES
(1, 'Super Admin'),
(2, 'Admin Sekolah'),
(3, 'User PTK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_submenu` int(11) NOT NULL,
  `id_usermenu` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `warga_negara`
--

CREATE TABLE `warga_negara` (
  `id_warga` int(11) NOT NULL,
  `warga_negara` varchar(128) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `warga_negara`
--

INSERT INTO `warga_negara` (`id_warga`, `warga_negara`, `keterangan`) VALUES
(1, 'Indonesia (WNI)', NULL),
(2, 'Asing (WNA)', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`);

--
-- Indeks untuk tabel `akreditasi`
--
ALTER TABLE `akreditasi`
  ADD PRIMARY KEY (`id_akreditasi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_jk` (`id_jk`),
  ADD KEY `id_status` (`id_status`),
  ADD KEY `id_ptk` (`id_ptk`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_tugas` (`id_tugas`),
  ADD KEY `id_lembaga` (`id_lembaga`),
  ADD KEY `id_pangkat` (`id_pangkat`),
  ADD KEY `id_sumber_gaji` (`id_sumber_gaji`),
  ADD KEY `id_status_kawin` (`id_status_kawin`),
  ADD KEY `id_pekerjaan` (`id_pekerjaan`),
  ADD KEY `id_warga` (`id_warga`);

--
-- Indeks untuk tabel `jenis_ptk`
--
ALTER TABLE `jenis_ptk`
  ADD PRIMARY KEY (`id_ptk`);

--
-- Indeks untuk tabel `jk`
--
ALTER TABLE `jk`
  ADD PRIMARY KEY (`id_jk`);

--
-- Indeks untuk tabel `kebutuhan_khusus`
--
ALTER TABLE `kebutuhan_khusus`
  ADD PRIMARY KEY (`id_kebutuhan_khusus`);

--
-- Indeks untuk tabel `lembaga`
--
ALTER TABLE `lembaga`
  ADD PRIMARY KEY (`id_lembaga`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`id_pangkat`);

--
-- Indeks untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indeks untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pendidikan` (`id_pendidikan`),
  ADD KEY `id_akreditasi` (`id_akreditasi`);

--
-- Indeks untuk tabel `status_pegawai`
--
ALTER TABLE `status_pegawai`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  ADD PRIMARY KEY (`id_status_kawin`);

--
-- Indeks untuk tabel `sumber_gaji`
--
ALTER TABLE `sumber_gaji`
  ADD PRIMARY KEY (`id_sumber_gaji`);

--
-- Indeks untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_usermenu` (`id_usermenu`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_usermenu`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_submenu`),
  ADD KEY `id_usermenu` (`id_usermenu`);

--
-- Indeks untuk tabel `warga_negara`
--
ALTER TABLE `warga_negara`
  ADD PRIMARY KEY (`id_warga`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agama`
--
ALTER TABLE `agama`
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `akreditasi`
--
ALTER TABLE `akreditasi`
  MODIFY `id_akreditasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT untuk tabel `jenis_ptk`
--
ALTER TABLE `jenis_ptk`
  MODIFY `id_ptk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jk`
--
ALTER TABLE `jk`
  MODIFY `id_jk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kebutuhan_khusus`
--
ALTER TABLE `kebutuhan_khusus`
  MODIFY `id_kebutuhan_khusus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id_lembaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `status_pegawai`
--
ALTER TABLE `status_pegawai`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  MODIFY `id_status_kawin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `sumber_gaji`
--
ALTER TABLE `sumber_gaji`
  MODIFY `id_sumber_gaji` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_usermenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_submenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `warga_negara`
--
ALTER TABLE `warga_negara`
  MODIFY `id_warga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD CONSTRAINT `identitas_ibfk_1` FOREIGN KEY (`id_tugas`) REFERENCES `tugas_tambahan` (`id_tugas`),
  ADD CONSTRAINT `identitas_ibfk_10` FOREIGN KEY (`id_ptk`) REFERENCES `jenis_ptk` (`id_ptk`),
  ADD CONSTRAINT `identitas_ibfk_11` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `identitas_ibfk_12` FOREIGN KEY (`id_status`) REFERENCES `status_pegawai` (`id_status`),
  ADD CONSTRAINT `identitas_ibfk_2` FOREIGN KEY (`id_sumber_gaji`) REFERENCES `sumber_gaji` (`id_sumber_gaji`),
  ADD CONSTRAINT `identitas_ibfk_3` FOREIGN KEY (`id_pekerjaan`) REFERENCES `pekerjaan` (`id_pekerjaan`),
  ADD CONSTRAINT `identitas_ibfk_4` FOREIGN KEY (`id_pangkat`) REFERENCES `pangkat` (`id_pangkat`),
  ADD CONSTRAINT `identitas_ibfk_5` FOREIGN KEY (`id_warga`) REFERENCES `warga_negara` (`id_warga`),
  ADD CONSTRAINT `identitas_ibfk_6` FOREIGN KEY (`id_jk`) REFERENCES `jk` (`id_jk`),
  ADD CONSTRAINT `identitas_ibfk_7` FOREIGN KEY (`id_agama`) REFERENCES `agama` (`id_agama`),
  ADD CONSTRAINT `identitas_ibfk_8` FOREIGN KEY (`id_status_kawin`) REFERENCES `status_perkawinan` (`id_status_kawin`),
  ADD CONSTRAINT `identitas_ibfk_9` FOREIGN KEY (`id_lembaga`) REFERENCES `lembaga` (`id_lembaga`);

--
-- Ketidakleluasaan untuk tabel `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_1` FOREIGN KEY (`id_pendidikan`) REFERENCES `pendidikan` (`id_pendidikan`),
  ADD CONSTRAINT `sekolah_ibfk_2` FOREIGN KEY (`id_akreditasi`) REFERENCES `akreditasi` (`id_akreditasi`),
  ADD CONSTRAINT `sekolah_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
