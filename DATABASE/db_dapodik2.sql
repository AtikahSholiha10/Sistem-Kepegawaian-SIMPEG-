-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Nov 2021 pada 19.26
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dapodik2`
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
(58, 55, '0353767668230183', 2, 'GUNUNG KIDUL', '0000-00-00', '', 1, 1, 1, 'BANYUMENENG I', '4', '1', 'GIRI HARJO', 'PANGGANG', 'Kec. Panggang', '55872', '', '081328363780', 'aisyah.sdmuhnitikan@gmail.com', 0, '', '0000-00-00', '65/KEP.PEG/III.0/D/2019', '2019-04-01', 4, 0, 5, 'SUMARYAMTI', 2, '', '', 1, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3403066110890002', '', '', '', '0', '0', '\r'),
(59, 56, '2949770671130162', 1, 'YOGYAKARTA', '1992-06-17', '', 6, 1, 1, 'NITIKAN UH 6/407', '', '', '', 'SOROSUTAN', 'Kec. Umbulharjo', '', '', '087786166613', 'arifn.uad19@gmail.com', 0, '', '0000-00-00', '', '2017-07-17', 5, 0, 5, 'JUMILAH', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471131706920001', '', '', '', '0', '0', '\r'),
(60, 57, '7241761662300033', 2, 'SALATIGA', '1983-09-09', '', 1, 6, 1, 'PANDEYAN UH V/780', '12', '3', '', 'PANDEYAN', 'Kec. Umbulharjo', '', '', '089539155857', 'teletabeta@gmail.com', 0, '', '0000-00-00', '380/KEP.PEG/III.0/D/2013', '2013-06-29', 4, 0, 4, 'CHAYATI', 1, 'TRI PRANGGANA ENDAR MEY', '', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471134909830001', '', '', '', '0', '0', '\r'),
(61, 58, '3054755656200003', 1, 'Tegal', '1977-07-22', '', 1, 6, 1, 'Perum GTS II Blok G II.A', '7', '0', '', 'Srimartani', 'Kec. Piyungan', '', '', '085292716218', 'dedie.umi8@gmail.com', 0, '', '0000-00-00', 'E-2/244/a/VII/054/GTT/2001', '2000-01-07', 4, 11, 4, 'Budi Utami', 1, 'Rentika', '', 1, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '369212485543000', '', 1, '', '', '', '3402142207770002', '', '', '', '0', '0', '\r'),
(62, 59, '0341753655300013', 2, 'KULONPROGO', '1975-10-09', '', 1, 6, 1, 'JL NAKULA NO 19 KETANGGUNGAN', '51', '11', '', 'WIROBRAJAN', 'Kec. Wirobrajan', '55252', '', '08179444760', 'dewipuri0975@gmail.com', 0, '', '0000-00-00', '90/a/VII/067/GTT/2002', '2002-07-01', 4, 0, 5, 'SRI ISWANTI', 1, 'TUTUT WIJAYANTO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471074910750001', '', '', '', '0', '0', '\r'),
(63, 60, '5447771672230103', 2, 'BANTUL', '1993-11-15', '', 6, 6, 1, 'GEDONGKUNING NO 61 006/002', '', '', '', 'REJOWINANGUN', 'Kec. Kotagede', '', '', '08029526306', 'diahpramu1511@gmail.com', 0, '', '0000-00-00', '', '2017-07-17', 5, 0, 5, 'TRI MULYATI', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471145511930001', '', '', '', '0', '0', '\r'),
(64, 61, '6034770671130193', 1, 'TUBAN', '1992-07-02', '', 6, 1, 1, 'JL MANGGA BLOK D6B KLEBENGAN', '', '', '', 'CATUR TUNGGAL', 'Kec. Depok', '', '', '085799236302', 'dwiyuliisminingsih@gmail.com', 0, '', '0000-00-00', '', '2015-05-18', 5, 0, 5, 'TRIASIH', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3523024207920001', '', '', '', '0', '0', '\r'),
(65, 62, '7662760661130162', 1, 'SLEMAN', '1982-03-30', '', 1, 6, 1, 'BODEH AMBARKETAWANG GAMPING', '2', '23', '', 'AMBARKETAWANG', 'Kec. Gamping', '', '', '08547766343', 'eddiemuhnitikan13@gmail.com', 0, '', '0000-00-00', '610/KEP.PEG/III.0/D/2018', '2018-04-01', 4, 0, 5, 'MUJINEM', 2, '', '', 1, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404013003820003', '', '', '', '0', '0', '\r'),
(66, 63, '9339759660130133', 1, 'BANYUMAS', '1981-10-07', '', 6, 1, 1, 'MENULIS', '5', '17', '', 'SUMBERSARI', 'Kec. Moyudan', '', '', '081258267601', 'ismailabuafkar@gmail.com', 0, '', '0000-00-00', '', '2017-07-17', 5, 0, 5, 'DARIYAH', 1, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3302060710810006', '', '', '', '0', '0', '\r'),
(67, 64, '2549759659300002', 2, 'YOGYAKARTA', '1981-02-17', '', 1, 1, 1, 'NITIKAN UH VI', '46', '12', 'NITIKAN', 'SOROSUTAN', 'Kec. Umbulharjo', '55162', '', '0895348324185', 'elisaaffandie@gmail.com', 0, '', '0000-00-00', 'E-2/219/VII/33/GTT/2006', '2006-07-01', 4, 0, 4, 'MURTINAH', 2, '', '', 1, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471135702810001', '', '', '', '0', '0', '\r'),
(68, 65, '3850765666200012', 1, 'BANTUL', '1987-05-18', '', 7, 1, 1, 'DESTAN MULYODADI', '1', '0', '', 'MULYODADI', 'Kec. Bambang Lipuro', '55764', '', '083149681352', 'gatoet.kita@gmail.com', 0, '', '0000-00-00', 'E.2/231/a/SDM-Nt/I/2015', '2015-08-05', 5, 0, 5, 'SUTIRAH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402051805870001', '', '', '', '0', '0', '\r'),
(69, 66, '9853757658300002', 2, 'KULON PROGO', '1979-05-21', '', 1, 6, 1, 'PLOSO BANGUNCIPTO SENTOLO KP', '10', '5', '', 'BANGUNCIPTO', 'Kec. Sentolo', '55664', '', '08813938412', 'hanafiah2@gmail.com', 0, '', '0000-00-00', 'E-2/488/VII/13/GTT/2004', '2004-07-01', 4, 0, 5, 'ROKHIMAH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3401066105790041', '', '', '', '0', '0', '\r'),
(70, 67, '2154769670230173', 2, 'Bantul', '1991-08-22', '', 6, 6, 1, 'Jl. Bausasran No.45', '46', '12', 'Bausasran', 'Bausasran', 'Kec. Danurejan', '55211', '', '08562854946', 'hera.nur.agista@gmail.com', 0, '', '0000-00-00', '291/KEP.PEG/III.0/D/2020', '2014-07-14', 4, 0, 5, 'Prastiwi', 1, 'Nur Kahfi Ibrahim', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402156208910001', '', '', '', '0', '0', '\r'),
(71, 68, '', 1, 'Yogyakarta', '1993-06-02', '', 6, 6, 1, 'Nitikan Rt 48/12', '', '', '', 'Sorosutan', 'Kec. Umbulharjo', '', '', '089666345878', 'jembatanmatematikaku@gmail.com', 0, '', '0000-00-00', '220/KEP/III.4.AU136/D/2019', '2018-07-25', 7, 0, 5, 'Jundanah', 1, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471130206930002', '', '', '', '0', '0', '\r'),
(72, 69, '4934752655200002', 1, 'BANTUL', '1974-06-02', '', 1, 6, 1, 'KEMBANGSONGO TRIMULYO', '1', '0', '', 'TRIMULYO', 'Kec. Jetis', '', '', '081227664707', 'abahimam74@gmail.com', 0, '', '0000-00-00', '488/VII/23/GTT/2004', '2004-07-01', 4, 0, 5, 'SITINAH', 1, 'SITI UMNIYAH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402090206740001', '', '', '', '0', '0', '\r'),
(73, 70, '3559759658300002', 2, 'CIAMIS', '1981-02-27', '', 1, 6, 1, 'MREDO', '3', '0', '', 'BANGUNHARJO', 'Kec. Sewon', '55187', '', '081328216774', 'imasuad@gmail.com', 0, '', '0000-00-00', '388/KEP.PEG/III.0/D/2013', '2013-06-29', 4, 0, 4, 'ENAH', 1, 'GATOT SUGIHARTO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402156702810011', '', '', '', '0', '0', '\r'),
(74, 71, '0345767668230193', 2, 'CILACAP', '1989-10-13', '', 1, 1, 1, 'PURBONEGORO', '14', '7', 'GADUNGAN', 'PESAWAHAN', 'Kec. Binangun', '53281', '', '085227647484', 'liasuryanto13@gmail.com', 0, '', '0000-00-00', '611/KEP.PEG/III.0/D/2018', '2018-10-01', 4, 0, 5, 'SUWARNI', 2, '', '', 1, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3301045310890003', '', '', '', '0', '0', '\r'),
(75, 72, '1855761664300002', 2, 'BANTUL', '1983-05-23', '', 1, 6, 1, 'KARANGLO', '6', '0', '', 'ARGOMULYO', 'Kec. Sedayu', '', '', '081904015946', 'nunningsapen@gmail.com', 0, '', '0000-00-00', 'E-2/363/a/VII/118/GTT/2006', '2006-07-01', 4, 0, 5, 'MURTINEM', 1, 'GUNAWAN WICAKSONO', '', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402176305830003', '', '', '', '0', '0', '\r'),
(76, 73, '4761757659200002', 1, 'KLATEN', '1979-04-29', '', 1, 1, 1, 'BODROREJO GADEN TRUCUK KLATEN', '20', '7', '', 'GADEN', 'Kec. Trucuk', '57467', '', '081393078902', 'ppuguhbudiprasojo@gmail.com', 0, '', '0000-00-00', '588/VII/15/GTT/2005', '2005-07-01', 4, 0, 5, 'SUPARTINI', 1, 'FADHLIYATUL KHOTIMAH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3310062904790001', '', '', '', '0', '0', '\r'),
(77, 74, '6662752653300002', 2, 'YOGYAKARTA', '1974-03-30', '', 1, 6, 1, 'PRIYAN DK MERTOSANAN KULON', '3', '0', '', 'POTORONO', 'Kec. Banguntapan', '55196', '', '087738998784', 'purwaningsihcantik@gmail.com', 0, '', '0000-00-00', '565/III.4/KEP/68/GTT/2008', '2008-07-01', 4, 0, 5, 'MURJINAH', 1, 'SUDRAJAT M.Pd', '', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402127003740007', '', '', '', '0', '0', '\r'),
(78, 75, '4255764665230183', 2, 'BANTUL', '1986-09-23', '', 1, 6, 1, 'PANDEYAN', '4', '0', '', 'BANGUNHARJO', 'Kec. Sewon', '', '', '085329004649', 'mamaoziza@gmail.com', 0, '', '0000-00-00', '608/KEP.PEG/III.0/D/2018', '2018-04-01', 4, 0, 4, 'MURSIDAH', 1, 'TUGINO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402156309860001', '', '', '', '0', '0', '\r'),
(79, 76, '3833755656200002', 1, 'BANTUL', '1977-05-01', '', 1, 6, 1, 'MEJING KIDUL', '1', '9', '', 'AMBARKETAWANG', 'Kec. Gamping', '55294', '', '082223338791', 'salehsantoso15@gmail.com', 0, '', '0000-00-00', 'E-2/166/a/VII/38/GTT/2003', '2003-07-01', 4, 0, 5, 'RAKIYEM', 1, 'LASTRI BINTARUM', '197409052006042009', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404010105770004', '', '', '', '0', '0', '\r'),
(80, 77, '8237767668130233', 1, 'Yogyakarta', '1989-09-05', '', 6, 6, 1, 'Tegalsari Rt 03 Rw 23 Trimulyo', '', '', '', 'Trimulyo', 'Kec. Sleman', '55513', '', '081256229557', 'seflinmarindalesmana@gmail.com', 0, '', '0000-00-00', '1020/KEP.PEG/III.0/D/2018', '2018-06-30', 5, 0, 5, 'Nunung Indri Suwartati', 1, 'Anugerah Destia Trisetyaningsih', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '089692545541000', 'Seflin Marinda Lesmana', 1, '', '', '', '3471120509890001', '3404132712160005', '', '', '0', '0', '\r'),
(81, 78, '', 2, 'Cilacap', '1993-03-19', '', 6, 6, 1, 'Jl. KH Ali Maksum No. 381 ', '', '', '', 'Krapyak', 'Kec. Sewon', '', '', '085701262161', 'shafsoh0@gmail.com', 0, '', '0000-00-00', '222/KEP/III.4.AU136/D/2019', '2019-07-15', 5, 0, 5, 'Siti Barokah', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3301015903930007', '', '', '', '0', '0', '\r'),
(82, 79, '0250765666130193', 1, 'BLITAR', '1987-09-18', '', 1, 1, 1, 'NOLOGATEN', '1', '4', '', 'CATUR TUNGGAL', 'Kec. Depok', '55281', '', '085292260010', 'sulhanelblitary@gmail.com', 0, '', '0000-00-00', '394/KEP.PEG/III.0/D/2013', '2013-06-29', 4, 0, 4, 'SITI KHOTIMAH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3505111809870001', '', '', '', '0', '0', '\r'),
(83, 80, '2140761662300113', 2, 'MAGELANG', '1983-08-08', '', 1, 1, 1, 'KUTURADEN', '8', '15', '', 'SINDUADI', 'Kec. Mlati', '55284', '', '081393328948', 'bumiqusiana@gmail.com', 0, '', '0000-00-00', '388/KEP.PEG/III.0/D/2016', '2016-10-01', 4, 0, 4, 'SURINI', 1, 'RUDHI ARISTYA MAINDRAWANTO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404064808830001', '', '', '', '0', '0', '\r'),
(84, 81, '8838755656300002', 2, 'GUNUNG KIDUL', '1977-05-06', '', 1, 6, 1, 'GLUNTUNG', '15', '3', '', 'PATUK', 'Kec. Patuk', '55862', '', '081548295249', 'trirohmani04@gmail.com', 0, '', '0000-00-00', '488/VII/17/GTT/2004', '2004-07-01', 4, 0, 5, 'SUMARTI', 1, 'EDY SUMANTORO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3403044605770001', '', '', '', '0', '0', '\r'),
(85, 82, '7351763664130153', 1, 'KEBUMEN', '1985-10-19', '', 1, 1, 1, 'PERUM POLRI GOWOK BLOK B NO 75', '11', '5', '', 'CATUR TUNGGAL', 'Kec. Depok', '', '', '085292843343', 'tugimin.nitikan@gmail.com', 0, '', '0000-00-00', '457/KEP.PEG/III.0/D/2016', '2016-10-01', 4, 0, 5, 'TURIYAH', 1, 'DYAH PENY AYU CANDRA', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404071910850004', '', '', '', '0', '0', '\r'),
(86, 83, '2352764665230143', 2, 'PONOROGO', '1986-10-20', '', 1, 6, 1, 'JL IMOGIRI TIMUR UH 7', '13', '5', '', 'GIWANGAN', 'Kec. Umbulharjo', '55163', '', '085712151100', 'ayoe.physicsuad@gmail.com', 0, '', '0000-00-00', '609/KEP.PEG/III.0/D/2018', '2018-04-01', 4, 0, 5, 'TUMIYEM', 1, 'SUBANDRIYONO', '', 10, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3502086010860002', '', '', '', '0', '0', '\r'),
(87, 84, '6637773674130082', 1, 'Bantul', '1995-03-05', '', 6, 1, 1, 'Menayu Kulon Rt 06 Rw 07', '', '', '', 'Tirtonirmolo', 'Kec. Kasihan', '', '', '085640279995', 'wahyunurhidayat461@gmail.com', 0, '', '0000-00-00', '198/KEP.PEG/III.0/D/2019', '2019-06-29', 5, 0, 5, 'Sumiyati', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402160503950001', '', '', '', '0', '0', '\r'),
(88, 85, '2452749650200002', 2, 'BANYUMAS', '1971-01-20', '', 1, 6, 1, 'TOBRATAN', '5', '0', '', 'WIROKERTEN', 'Kec. Banguntapan', '', '', '0813131798574', 'wahyuzahro9@gmail.com', 0, '', '0000-00-00', '188/a/VII/20/GTT/1997', '1997-07-01', 4, 0, 5, 'ASMEN', 1, 'AGUS WIDODO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402126001710001', '', '', '', '0', '0', '\r'),
(89, 86, '9437748651200002', 1, 'MAGELANG', '1970-01-05', '', 1, 6, 1, 'JL ANGGREK NO 20', '29', '8', '', 'BACIRO', 'Kec. Gondokusuman', '55225', '', '08989035026', 'yudyntk@gmail.com', 0, '', '0000-00-00', '297/a/VII/27/GTT/1998', '1998-07-01', 4, 0, 5, 'MASIDAH DARNINGSIH', 1, 'DIAN HAPSARI', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471030501700001', '', '', '', '0', '0', '\r'),
(90, 87, '7041771672130113', 1, 'BANTUL', '1993-07-09', '', 6, 6, 1, 'GERJEN RT 06 KAUMAN', '', '', '', 'PLERET', 'Kec. Pleret', '', '', '089649743986', 'prayogayulian80@gmail.com', 0, '', '0000-00-00', '', '2017-05-22', 5, 0, 5, 'HARTATI', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402130907930001', '', '', '', '0', '0', '\r'),
(91, 226, '7343742643300003', 1, 'BANTUL', '1964-10-11', '', 1, 5, 1, 'DK III GODEGAN', '5', '0', 'GODEGAN', 'PONCOSARI', 'Kec. Srandakan', '55762', '', '081328247913', 'slamet.purwa2006@yahoo.com', 1, '', '0000-00-00', 'E-2/351/a/III/1997', '1997-03-01', 4, 4, 4, 'Ny. SADIYEM', 1, 'SUWARTINI', '196601091989032004', 5, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '362040446543000', '', 1, '', '', '', '3402011110640002', '', '', '', '0', '0', '\r'),
(92, 227, '5136756657200013', 1, 'JOMBANG', '1978-08-04', '', 1, 7, 1, 'SAYIDAN', '15', '5', 'SAYIDAN', 'PRAWIRODIRJAN', 'Kec. Gondomanan', '', '027438862', '081933032081', 'agusramadiansyah1978@gmail.com', 0, '', '0000-00-00', '32/KEP.PEG/III.0/D/2016', '2016-04-06', 4, 3, 4, 'KISMIATI', 1, 'RATNA ARYUNI', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471130408780001', '', '', '', '0', '0', '\r'),
(93, 228, '5152755656200003', 1, 'SLEMAN', '1977-08-20', '', 1, 1, 1, 'PATRAN 1', '6', '3', 'PATRAN 1 TEGALREJO', 'SUMBERSARI', 'Kec. Moyudan', '55563', '', '085713428059', 'agus.winoto20@gmail.com', 0, '', '0000-00-00', '216/KEP/III.4/2012', '2012-04-02', 4, 10, 4, 'SURYATI', 1, 'AINI RUSANAH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365578848542000', '', 1, '', '', '', '3404032008770003', '', '', '', '0', '0', '\r'),
(94, 229, '6851747648200002', 1, 'KASIHAN', '1969-05-19', '', 1, 7, 1, 'Jerontabag, Gedangan', '7', '0', 'Jerontabag', 'Bangunjiwo', 'Kec. Kasihan', '55184', '', '08170432005', 'bambanglegowo1969@gmail.com', 0, '', '0000-00-00', 'E-2/II61/a/X/2006', '2006-10-01', 4, 11, 4, 'MURJIYEM', 1, 'HANDAYATI', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248766543000', '', 1, '', '', '', '3402161905690002', '', '', '', '0', '0', '\r'),
(95, 230, '4449747648200002', 1, 'Kebumen', '1969-01-17', '', 1, 1, 1, 'BAKULAN WETAN', '5', '0', 'BAKULAN WETAN', 'PATALAN', 'Kec. Jetis', '55781', '', '081578567025', 'benoberkah@gmail.com', 0, '', '0000-00-00', 'E.2/489/a/IX/1998', '1998-09-22', 4, 4, 4, 'Pariyah', 1, 'Sugiarti', '197104181994122001', 5, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '587248691543000', '', 1, '', '', '', '3402091701690004', '', '', '', '0', '0', '\r'),
(96, 231, '7458760661300002', 2, 'YOGYAKARTA', '1982-01-26', '', 1, 7, 1, 'DEMANGAN', '13', '4', 'DEMANGAN', 'DEMANGAN', 'Kec. Gondokusuman', '55221', '', '081328490782', 'dj_muha@yahoo.com', 0, '', '0000-00-00', '540/KET/III.4.AU.302/D/IX/2020', '2020-09-15', 5, 0, 5, 'JURIYAH', 1, 'MOHAMMAD KHAIRUDDIN', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471036601820001', '', '', '', '0', '0', '\r'),
(97, 232, '8640751652300002', 2, 'SLEMAN', '1973-03-08', '', 1, 1, 1, 'JL. GODEAN', '2', '5', 'PARE III', 'SIDOREJO', 'Kec. Godean', '55564', '', '081554616087', 'dwyxhistory@gmail.com', 0, '', '0000-00-00', '01-10-2010', '1999-05-01', 4, 11, 4, 'SURTINI', 1, 'Reza Yusuf, S.E. Ak', '', 17, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '682063870542000', '', 1, '', '', '', '3404024803730001', '', '', '', '0', '0', '\r'),
(98, 233, '', 1, 'Sleman', '1991-10-06', '', 6, 1, 1, 'Pogung Dalangan', '', '', '', 'Sinduadi', 'Kec. Mlati', '', '', '085975274342', 'ebma.yudha@gmail.com', 0, '', '0000-00-00', '780/078', '2015-07-18', 5, 0, 5, 'Sri Sunarsih', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404060610910002', '', '', '', '0', '0', '\r'),
(99, 234, '4056745646300003', 2, 'BANTUL', '1967-07-24', '', 1, 1, 1, 'SEMBUNGAN', '3', '0', 'SEMBUNGAN', 'BANGUN JIWO', 'Kec. Kasihan', '55184', '02747161760', '082138695038', 'endanggeografi@gmail.com', 10, '', '0000-00-00', 'E-2/620/a/X/1999', '1999-10-01', 4, 4, 4, 'MUGINEM', 1, 'ARINI ANGGODO', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248725543000', '', 1, '', '', '', '3402166407670001', '', '', '', '0', '0', '\r'),
(100, 235, '2953760661300012', 2, 'BANTUL', '1982-06-21', '', 1, 1, 1, 'Wonorejo', '4', '0', 'Wonorejo II', 'Gadingsari', 'Kec. Sanden', '55763', '', '081392708998', 'e_widyastuti@ymail.com', 0, '', '0000-00-00', '221/KEP/III.4/2012', '2012-04-02', 4, 10, 4, 'SUPARTI', 1, 'EDI IRWANTO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '664551835543000', '', 1, '', '', '', '3402026106820003', '', '', '', '0', '0', '\r'),
(101, 236, '0840756657300062', 2, 'KENDAL', '1978-08-05', '', 1, 1, 1, 'DANUKUSUMAN GK 4/1402', '17', '5', 'DANUKUSUMAN', 'BACIRO', 'Kec. Gondokusuman', '55225', '02749325121', '082138443141', 'fatma_tau@yahoo.com', 5, '', '0000-00-00', '757/III.4/KEP/2010', '2010-12-11', 4, 10, 4, 'FATIMAH', 1, 'RIO HIDAL FAHMI', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '452371859541000', '', 1, '', '', '', '3471034508780003', '', '', '', '0', '0', '\r'),
(102, 237, '', 2, 'MAGELANG', '1988-08-11', '', 6, 1, 1, '', '2', '4', 'GOGOLUAS', 'TLOGOGUWO', 'Kec. Kaligesing', '54175', '', '085292369962', 'hayatinur110888@gmail.com', 0, '', '0000-00-00', '870/KEP/III.4/GTT/2012', '2012-07-02', 4, 0, 5, 'SUTINI', 1, 'ARIS HIDAYAT', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3371015108880004', '', '', '', '0', '0', '\r'),
(103, 238, '', 2, 'SLEMAN', '1988-06-05', '', 6, 1, 1, 'Pondok Suruh', '3', '15', 'Pondok Suruh', 'Bimomartani', 'Kec. Ngemplak', '55584', '', '085729275127', 'anna_trya@yahoo.co.id', 0, '', '0000-00-00', '97/KEP.PEG/III.0/D/2013', '2013-07-02', 4, 0, 5, 'SURATMI', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404114506880001', '', '', '', '0', '0', '\r'),
(104, 239, '9441767668130063', 1, 'KULONPROGO', '1989-11-09', '', 1, 1, 1, 'Kulwaru wetan', '5', '2', 'Kulwaru wetan', 'Kulwaru', 'Kec. Wates', '55651', '', '085725995489', 'gunarno0046@gmail.com', 0, '', '0000-00-00', '473/KET/III.4/D/2015', '2015-07-01', 4, 0, 5, 'TUKIYAH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3401020911890001', '', '', '', '0', '0', '\r'),
(105, 240, '', 1, 'KULON PROGO', '1992-02-29', '', 6, 1, 1, 'Gendu', '2', '24', 'Gendu', 'Jatimulyo', 'Kec. Girimulyo', '55674', '', '085743133630', 'kuswantara29hary@gmail.com', 0, '', '0000-00-00', '473/KET/III.4/D/2015', '2015-07-04', 4, 0, 5, 'Siti Maryanti', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3401092902920001', '', '', '', '0', '0', '\r'),
(106, 241, '9548741642300002', 2, 'KLATEN', '1963-02-16', '', 1, 1, 1, 'WARUNGBOTO', '29', '7', 'Warungboto', 'Warungboto', 'Kec. Umbulharjo', '55164', '', '085729085674', 'dewihasta@yahoo.co.id', 0, '', '0000-00-00', '31/KEP/II.0/D/2019', '2019-10-29', 4, 3, 4, 'SUMINI', 1, 'MUHAMMAD JUNAIDI SYAKIR', '196201181990031007', 5, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '981876238541000', '', 1, '', '', '', '3471135602630001', '', '', '', '0', '0', '16023L0010460142016394\r'),
(107, 242, '9638768669130052', 2, 'YOGYAKARTA', '1990-03-06', '', 1, 1, 1, 'Prawirodirjan', '36', '11', 'Prawirodirjan', 'Prawirodirjan', 'Kec. Gondomanan', '55121', '0274-450458', '081578118538', 'himti0690@gmail.com', 0, '', '0000-00-00', '221/KEP.PEG/III.0/D/2013', '2012-07-01', 4, 0, 5, 'MUGI MURDASIH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471104603900001', '', '', '', '0', '0', '\r'),
(108, 243, '8755765666210112', 2, 'PURWOREJO', '1987-04-23', '', 1, 1, 1, 'Perumahan Azzafira B-12', '0', '0', 'Plakaran', 'Baturetno', 'Kec. Banguntapan', '55197', '', '085292399687', 'ihdanisak24@gmail.com', 0, '', '0000-00-00', '714/KEP.PEG/III.0/D/2015', '2015-10-01', 4, 0, 5, 'SRI AMSIH', 1, 'HANTORO SUTIARNO, ST.', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '594446312531000', '', 1, '', '', '', '3306106304870007', '', '', '', '0', '0', '\r'),
(109, 244, '9362753655300003', 2, 'GUNUNG KIDUL', '1975-10-30', '', 1, 1, 1, '', '31', '8', 'WARUNGBOTO', 'WARUNGBOTO', 'Kec. Umbulharjo', '55166', '', '087839567179', 'qikawati@yahoo.com', 0, '', '0000-00-00', '042/Kep/.Peg/III.4/2014', '2014-04-12', 4, 10, 4, 'RUBIYATUN', 1, 'TRI SUHARYADI', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471137010750003', '', '', '', '0', '0', '\r'),
(110, 245, '', 1, 'Bantul', '1986-05-18', '', 6, 1, 1, 'Jl. Imogiri', '6', '9', 'Karang Rejek', 'Karang Tengah', 'Kec. Imogiri', '', '', '081903771345', 'Ikhvansujiyanto1601@gmail.com', 0, '', '0000-00-00', '203/KEP/III4AU/B/2013', '2013-07-13', 6, 0, 5, 'Sumiyem', 1, 'Uswatun Hasanah', '0                 ', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402101805860001', '', '', '', '0', '0', '\r'),
(111, 246, '', 2, 'LAMONGAN', '1987-09-13', '', 6, 1, 1, 'Jl. Pasir Putih', '2', '6', '', 'Weru', 'Kec. Paciran', '62264', '', '087738937121', 'indahimron13@gmail.com', 0, '', '0000-00-00', '147/KEP.PEG/III.0/D/2014', '2014-07-01', 5, 0, 5, 'SAFINAH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3624145309870003', '', '', '', '0', '0', '\r'),
(112, 247, '9239745646200003', 1, 'SLEMAN', '1967-09-07', '', 1, 1, 1, 'JOGOYUDAN JT3/633', '35', '9', 'JOGOYUDAN', 'GOWONGAN', 'Kec. Jetis', '55232', '02749164525', '081391192811', 'indrasuwarna17@gmail.com', 0, '', '0000-00-00', 'E-2/491/a/IX/1998', '1998-10-01', 4, 4, 4, 'PARIYEM', 1, 'CHRISTINE WIJAYANINGSIH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248709541000', '', 1, '', '', '', '3471020709670002', '', '', '', '0', '0', '\r'),
(113, 248, '5241756658300013', 2, 'BANTUL', '1978-09-09', '', 1, 1, 1, 'PRANCAK', '4', '0', 'PRANCAK DUKUH', 'PANGGUNGHARJO', 'Kec. Sewon', '55188', '', '081802621206', 'indrirosianasosiologi47@gmail.com', 0, '', '0000-00-00', '836/III.4/KEP/2010', '2010-12-01', 4, 3, 4, 'WIJI ASTUTI', 1, 'NUR ROSYID, S.Pdi', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '460691017543000', '', 1, '', '', '', '3402154909780002', '', '', '', '0', '0', '\r'),
(114, 249, '', 1, 'BANYUMAS', '1991-11-26', '', 1, 1, 1, 'SIRAU', '2', '3', 'SIRAU', 'KEMRANJEN', 'Kec. Kemranjen', '', '', '085729464533', 'ismantoa04@gmail.com', 0, '', '0000-00-00', '980/KEP.PEG/III.0/D/2018', '2018-06-30', 6, 0, 5, 'MANISAH', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3302062611910001', '', '', '', '0', '0', '\r'),
(115, 250, '8833770671130032', 1, 'PURWOREJO', '1992-05-01', '', 1, 1, 1, 'PUGERAN TIMUR MJ II/224', '5', '3', 'PUGERAN', 'SURYODININGRATAN', 'Kec. Mantrijeron', '55141', '085729044059', '085729044059', 'juanghasdyaf@gmail.com', 0, '', '0000-00-00', '473/KET/III.4/D/2015', '2015-07-01', 4, 0, 4, 'WIDIYATI', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471080105920001', '', '', '', '0', '0', '\r'),
(116, 251, '3653766667130092', 2, 'YOGYAKARTA', '1988-03-21', '', 1, 1, 1, 'Brontokusuman MG III/395', '0', '0', 'Brontokusuman', 'Mergangsan', 'Kec. Umbulharjo', '55162', '', '085729705081', 'luthfiana.fatmawati.28@gmail.com', 0, '', '0000-00-00', '731/KEP/III.4/GTT/2012', '2012-07-02', 4, 3, 4, 'WARDATUN', 1, 'Ardhi Ardhian', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471136103880003', '', '', '', '0', '0', '\r'),
(117, 252, '2342753655200013', 1, 'SLEMAN', '1975-10-10', '', 1, 8, 1, 'PARE III', '2', '5', 'PARE III', 'SIDOREJO', 'Kec. Godean', '55564', '', '085643662204', 'treenur75@gmail.com', 0, '', '0000-00-00', '342/KEP/III.4/2012', '2012-04-02', 4, 3, 4, 'SURTINI', 1, 'Farida Nurfiyanti', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '544577612542000', '', 1, '', '', '', '3404021010750008', '', '', '', '0', '0', '\r'),
(118, 253, '9653754656200012', 1, 'PEKAN TUA', '1976-03-21', '', 1, 1, 1, 'BENER YOGYAKARTA', '12', '7', 'BENER', 'TEGAL REJO', 'Kec. Tegalrejo', '', '9279977', '085105544442', 'mukhlisu97@gmail.com', 0, '', '0000-00-00', '768/III.4/KEP/2011', '2011-01-18', 4, 10, 4, 'SITI FATIMAH', 1, 'RAHMA SETYOWATI', '', 17, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '474240876541000', '', 1, '', '', '', '3471122103760002', '', '', '', '0', '0', '\r'),
(119, 254, '9442743644300043', 2, 'GRESIK', '1965-11-10', '', 1, 1, 1, 'JL. Bantul Mj I/1659', '84', '18', 'DUKUH', 'GEDONGKIWO', 'Kec. Mantrijeron', '55142', '0274 381572', '081804040823', 'munirohghozali@gmail.com', 0, '', '0000-00-00', '547/III.4/KEP/2009', '2009-10-01', 4, 0, 5, 'ZULAIHAH', 1, 'GHOZALI MUKRI', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '682063862541000', '', 1, '', '', '', '3471085011650002', '', '', '', '0', '0', '\r');
INSERT INTO `identitas` (`id_identitas`, `id_user`, `nuptk`, `id_jk`, `tempat_lahir`, `tgl_lahir`, `nip`, `id_status`, `id_ptk`, `id_agama`, `alamat`, `rt`, `rw`, `dusun`, `desa`, `kecamatan`, `pos`, `tlp`, `hp`, `email`, `id_tugas`, `sk_cpns`, `tgl_cpns`, `sk_pangkat`, `tmt_pangkat`, `id_lembaga`, `id_pangkat`, `id_sumber_gaji`, `nama_ibu`, `id_status_kawin`, `nama_istri_suami`, `nip_suami_istri`, `id_pekerjaan`, `tmt_pns`, `lisensi_kepsek`, `diklat_pegawai`, `keahlian_braille`, `bahasa_isyarat`, `npwp`, `nama_pajak`, `id_warga`, `bank`, `no_rek`, `nama_rek`, `nik`, `no_kk`, `karpeg`, `karis_karsu`, `lintang`, `bujur`, `nuks`) VALUES
(120, 255, '5741757658300002', 2, 'BOYOLALI', '1979-04-09', '', 1, 1, 1, 'Karangjati', '6', '0', 'Karangjati', 'Bangunjiwo', 'Kec. Kasihan', '55183', '', '0818265820', 'naniktri.match@gmail.com', 0, '', '0000-00-00', '205/KEP/III.4/2012', '2012-03-08', 4, 3, 4, 'GIYANTI', 1, 'ANWAR SUPRIYADI', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '722419348543000', '', 1, '', '', '', '3309094904790004', '', '', '', '0', '0', '\r'),
(121, 256, '', 2, 'YOGYAKARTA', '1994-11-08', '', 6, 1, 1, 'Badran JT 1 446C RT 49 RW 11', '', '', '', 'Bumijo', 'Kec. Jetis', '55231', '', '083821160606', 'ningrumharjianti22@gmail.com', 0, '', '0000-00-00', '09.10/KEP/III.4.AU.302/A/X/2017', '2017-09-09', 5, 0, 5, 'MUJIYEM', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471024811940001', '', '', '', '0', '0', '\r'),
(122, 257, '2348740641200013', 1, 'YOGYAKARTA', '1962-10-16', '-', 1, 1, 1, '-', '2', '20', 'Patukan', 'Ambarketawang', 'Kec. Gamping', '55291', '', '081328323299', 'prayitnodrs@gmail.com', 11, '', '0000-00-00', '837/III.4/KEP/2010', '2010-12-01', 4, 0, 4, 'KASIHAN', 1, 'PANGESTUTI', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '452272479541000', '', 1, '', '', '', '3471041610620001', '', '', '', '0', '0', '\r'),
(123, 258, '7552756657300012', 2, 'YOGYAKARTA', '1978-02-20', '', 6, 1, 1, 'AMBAR ARUM', '11', '4', 'AMBARUKMO', 'CATURTUNGGAL', 'Kec. Depok', '55280', '0274-489010', '081330123152', 'rahmatulhuda78@gmail.com', 11, '', '0000-00-00', 'E-2/397/a/VII/18/GTT/2005', '2005-07-01', 4, 3, 5, 'SITI NOOR ILMAH', 1, 'MISBAHUL MUNIR', '-                 ', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404076002780010', '', '', '', '0', '0', '\r'),
(124, 259, '1543753653300003', 2, 'PURWOREJO', '1975-12-11', '-', 1, 1, 1, 'NGIPIK BATURETNO BANGUNTAPAN BANTUL', '1', '16', 'NGIPIK', 'BATURETNO', 'Kec. Banguntapan', '55197', '', '0817460560', 'sumirat.retno@yahoo.co.id', 12, '', '0000-00-00', '544/III.4/KEP/2009', '2009-10-01', 4, 11, 4, 'TRISMI', 1, 'MARGONO', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '899901219542000', '', 1, '', '', '', '3404125112750007', '', '', '', '0', '0', '\r'),
(125, 260, '', 2, 'YOGYAKARTA', '1985-11-17', '', 6, 1, 1, 'Jl. Jogokariyan 53', '46', '12', 'Jogokariyan', 'Mantrijeron', 'Kec. Mantrijeron', '55143', '', '089687147675', 'rina.novrida@gmail.com', 0, '', '0000-00-00', '172/KEP.PEG/III.0/D/2014', '2014-07-01', 4, 0, 5, 'KARSIYAH', 1, 'WARYONO', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471085711850002', '', '', '', '0', '0', '\r'),
(126, 261, '5863748649300002', 2, 'TUBAN', '1970-05-31', '', 1, 1, 1, 'PAMUNGKAS', '6', '17', 'KOPLAK', 'UMBULMARTANI', 'Kec. Ngemplak', '', '', '081227406695', 'r.nazilah@gmail.com', 0, '', '0000-00-00', '412/III.4/KEP/2009', '2009-10-01', 4, 11, 4, 'CHAMZIYATI', 1, 'ALI AUDAH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '875359457541000', '', 1, '', '', '', '3471127105700002', '', '', '', '0', '0', '\r'),
(127, 262, '', 2, 'Mempawah', '1995-06-22', '', 6, 6, 1, 'Jl. Kolonel Sugiyono 69A Yogyakarta', '', '', '', 'Keparakan', 'Kec. Mergangsan', '55152', '', '085540610617', 'sarah.chemistry95@gmail.com', 0, '', '0000-00-00', '750/KEP.PEG/III.0/D/2020', '2020-07-01', 4, 0, 5, 'Erny Astati', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471126206950001', '', '', '', '0', '0', '\r'),
(128, 263, '1654747650200002', 1, 'YOGYAKARTA', '1969-03-22', '', 1, 1, 1, 'KENEKAN 16', '71', '17', '', 'PANEMBAHAN', 'Kec. Kraton', '', '02749204424', '', 'saptoharipratomo22@gmail.com', 6, '', '0000-00-00', '841/III.4/KEP/2010', '2010-12-01', 4, 3, 4, 'HUDIYATI', 1, 'ASIH KUSHARTATI', '197203221998032007', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '674742663542000', '', 1, '', '', '', '3404072203690002', '', '', '', '0', '0', '\r'),
(129, 264, '1140747648200003', 1, 'MAGELANG', '1969-08-08', '', 1, 1, 1, 'JL', '2', '10', 'SALAMAN', 'BANYUBIRU', 'Kec. Dukun', '56482', '', '08122738518', 'sariyana0319@gmail.com', 0, '', '0000-00-00', 'E.2/604/a/IX/1999', '1999-10-01', 4, 4, 4, 'TUMINEM', 1, 'NUR AENY', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248733524000', '', 1, '', '', '', '3308060808690002', '', '', '', '0', '0', '\r'),
(130, 265, '', 1, 'TEMANGGUNG', '1962-01-05', '', 1, 1, 1, '-', '1', '19', 'Plakaran', 'Baturetno', 'Kec. Banguntapan', '55197', '', '0817257444', '', 0, '', '0000-00-00', 'E-2/301/a/VII//1996', '1996-07-01', 4, 0, 5, 'Marini', 1, 'Nuril Muti\'ah', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402120501630004', '', '', '', '0', '0', '\r'),
(131, 266, '1147747650200013', 1, 'BANTUL', '1969-08-15', '', 1, 1, 1, 'PULUTAN', '66', '0', 'PULUTAN', 'PENDOWOHARJO', 'Kec. Sewon', '55185', '', '081931173581', 'subrotowidi@gmail.com', 0, '', '0000-00-00', '838/III.4/KEP/2010', '2010-12-08', 4, 3, 4, 'SAMINEM', 1, 'HARNI INDRIYANTI', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '452304421543000', '', 1, '', '', '', '3402151508690001', '', '', '', '0', '0', '\r'),
(132, 267, '7054744646200003', 1, 'YOGYAKARTA', '1966-07-22', '', 1, 1, 1, 'Beran', '7', '0', 'Beran', 'Tirtonirmolo', 'Kec. Kasihan', '55181', '', '08122604108', 'antok_sht@yahoo.co.id', 0, '', '0000-00-00', 'E-2/490/a/IX/1998', '1998-10-01', 4, 4, 4, 'SITI AMINAH', 1, 'NUR WINDRIATI', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248717543000', '', 1, '', '', '', '3402162207660001', '', '', '', '0', '0', '\r'),
(133, 268, '4856741642300022', 2, 'MUARA ENIM', '1963-05-24', '', 1, 1, 1, 'SAWIT TR.02, PANGGUNG HARJO, SEWON, BANTUL, YOGYAK', '2', '0', 'SAWIT', 'PANGGUNG HARJO', 'Kec. Sewon', '55188', '', '081328737566', 'eyangkamila@gmail.com', 0, '', '0000-00-00', 'E-2/1006/a/XII/1991', '1992-06-01', 4, 4, 5, 'NGARSI', 1, 'AMIN PRIYANTA', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248667543000', '', 1, '', '', '', '3402156405630003', '', '', '', '0', '0', '\r'),
(134, 269, '1140740641300013', 2, 'KULON PROGO', '1962-08-08', '1962080819', 5, 1, 1, 'JALAN PERSATUAN 325 A', '9', '2', 'GLAGAH', 'WARUNGBOTO', 'Kec. Umbulharjo', '55166', '-', '081578708875', 'sumartidra2012@gmail.com', 0, '230/I.13.III/C.VI/1989', '1989-03-01', '737/I13.III/C.V/90', '1991-01-01', 1, 4, 1, 'SIYAH', 1, 'MARDJUKI', '196012121980031008', 5, '1991-01-01', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '490909470541000', '', 1, '', '', '', '3471134808620001', '', '', '', '0', '0', '\r'),
(135, 270, '9452746649200003', 1, 'SLEMAN', '1968-11-20', '', 1, 1, 1, 'JALAN KEBONAGUNG MINGGIR, SENDANGAGUNG, MINGGIR, SLEMAN, YOGYAKARTA', '4', '4', 'MINGGIR II', 'SENDANGAGUNG', 'Kec. Minggir', '55562', '', '081328019755', 'suryadigiyana@yahoo.com', 0, '', '0000-00-00', 'E-2/622/a/X/1999', '1999-10-01', 4, 4, 4, 'GINEM HARDIGIYONO', 1, 'TITIN SUMARNI', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248758542000', '', 1, '', '', '', '3404042011680001', '', '', '', '0', '0', '\r'),
(136, 271, '3851763664210132', 2, 'SLEMAN', '1985-05-19', '', 6, 1, 1, 'Sarirejo', '6', '47', 'Sarirejo', 'Maguwoharjo', 'Kec. Depok', '55282', '0274-885367', '081328634252', 'S4elia@yahoo.com', 0, '', '0000-00-00', '491/III.4/Kep/33/GTT/2010', '2010-07-01', 4, 0, 5, 'ENY SUPARTINAH', 1, 'Bayu Adi Guno, S.Kom', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404075905850006', '', '', '', '0', '0', '\r'),
(137, 272, '5655749650300032', 2, 'YOGYAKARTA', '1971-03-23', '', 1, 7, 1, 'KEBON AGUNG', '4', '8', 'NGEMPLAK NGANTI', 'SENDANGADI', 'Kec. Mlati', '55286', '02747101832', '08562936647', 'trisuryani976@gmail.com', 0, '', '0000-00-00', 'E-2/621/A/X/1999', '1999-10-01', 4, 4, 4, 'SUDARMI', 1, 'LOKO KUSWANTORO', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '587248741542000', '', 1, '', '', '', '3404066303710004', '', '', '', '0', '0', '\r'),
(138, 273, '8836752654200002', 1, 'GUNUNGKIDUL', '1974-05-04', '', 1, 1, 1, 'Gedongkiwo MJ I/755', '41', '9', 'Gedongkiwo', 'Gedongkiwo', 'Kec. Mantrijeron', '', '027486780', '081578683556', 'wijaya770@gmail.com', 0, '', '0000-00-00', '543/III.4/KEP/2009', '2009-10-30', 4, 10, 4, 'MURNIYATI', 1, 'RAHAYU', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '982862930541000', '', 1, '', '', '', '3471080405740001', '', '', '', '0', '0', '\r'),
(139, 274, '2236755656200003', 1, 'SLEMAN', '1977-09-04', '', 1, 7, 1, 'PRENGGAN SELATAN', '27', '6', 'PRENGGAN SELATAN', 'PRENGGAN', 'Kec. Kotagede', '55172', '', '02749559842', 'yatmidi.yayat@gmail.com', 0, '', '0000-00-00', '546/III.4/KEP/2009', '2009-10-30', 4, 3, 4, 'NY SUPARTINAH', 1, 'YANUARITA ANIS KURLIAWATI', '198101102005012002', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '089747015541000', '', 1, '', '', '', '3404040409770001', '', '', '', '0', '0', '\r'),
(140, 275, '', 2, 'SLEMAN', '1995-11-28', '', 6, 1, 1, 'Semarangan', '3', '9', 'semarangan', 'sidokarto', 'Kec. Godean', '', '', '081331991891', 'Aflaharaniuhacham28@gmail.com', 0, '', '0000-00-00', '406/KET/III.4/D/2019', '2019-07-05', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404026811950001', '', '', '', '0', '0', '\r'),
(141, 276, '', 1, 'YOGYAKARTA', '1992-02-24', '', 6, 1, 1, 'Ploso kerep', '21', '6', 'Ploso kerep', 'Bunder', 'Kec. Patuk', '', '', '085878900578', 'arifinnurhimawan4283@gmail.com', 0, '', '0000-00-00', '248/KEP.PEG/III.0/D/2019', '2019-07-01', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3403042402920001', '', '', '', '0', '0', '\r'),
(142, 277, '', 1, 'Bantul', '1995-02-28', '', 6, 1, 1, 'Sarirejo', '2', '1', 'Sarirejo', 'Singosaren', 'Kec. Banguntapan', '', '', '083840020355', 'kevindidenta@gmail.com', 0, '', '0000-00-00', '348/KEP.PEG/III.0/D/2019', '2019-07-01', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402122802950000', '', '', '', '0', '0', '\r'),
(143, 278, '', 2, 'Bandung', '1978-01-03', '', 6, 1, 1, 'Kadangan', '7', '', 'Kadangan', 'PANGGUNGHARJO', 'Kec. Sewon', '', '', '085228823421', '', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 1, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402154301780002', '', '', '', '0', '0', '\r'),
(144, 279, '', 2, 'Pekalongan', '1993-02-09', '', 6, 1, 1, 'Miri wetan', '3', '', 'Miri wetan', 'Sriharjo', 'Kec. Imogiri', '', '', '087735386856', '', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 1, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3326074902930021', '', '', '', '0', '0', '\r'),
(145, 280, '', 2, 'Bantul', '1996-07-14', '', 6, 1, 1, 'Ngemplak', '57', '', 'Ngemplak', 'Srigading', 'Kec. Sanden', '', '', '082332736799', 'dyahmutiara36@gmail.com', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 1, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402025407960001', '', '', '', '0', '0', '\r'),
(146, 281, '', 1, 'Yogyakarta', '1995-05-21', '', 6, 1, 1, 'Mangkuyudan', '', '', '', 'Mangkuyudan', 'Kec. Mantrijeron', '', '', '087825224747', '', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471082105950002', '', '', '', '0', '0', '\r'),
(147, 282, '', 2, 'Kebumen', '1996-11-04', '', 6, 1, 1, 'Tambakan', '', '', 'Tambakan', 'Sindumartani', 'Kec. Ngemplak', '', '', '085742329261', 'atikazulfi93@gmail.com', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3305044411960002', '', '', '', '0', '0', '\r'),
(148, 283, '', 1, 'Bantul', '1994-06-02', '', 6, 1, 1, 'Kalakijo', '', '', 'kalakijo', 'Guwosari', 'Kec. Pajangan', '', '', '085742267009', 'juniprasetya83@gmail.com', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 1, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402070206940001', '', '', '', '0', '0', '\r'),
(149, 284, '', 1, 'Sleman', '1994-04-28', '', 6, 1, 1, 'Sawit', '', '', 'sawit', 'PANGGUNGHARJO', 'Kec. Sewon', '', '', '088233605786', 'fauzanaprilia@gmail.com', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402152804940004', '', '', '', '0', '0', '\r'),
(150, 285, '', 1, 'BANTUL', '1988-08-20', '', 6, 4, 1, 'Nogosari', '5', '0', 'Nogosari', 'Trirenggo', 'Kec. Bantul', '55714', '', '081931744900', 'koestanto99@gmail.com', 0, '', '0000-00-00', '202/KEP.PEG/III.0/D/2014', '2014-07-01', 4, 0, 5, 'ROHARTINI', 1, 'EKA RUWANTI', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '693303646543000', '', 1, '', '', '', '3402082008880001', '', '', '', '0', '0', '\r'),
(151, 286, '', 1, 'SLEMAN', '1966-03-29', '', 6, 9, 1, 'SAWAHAN', '8', '30', 'SAWAHAN', 'NOGOTIRTO', 'Kec. Gamping', '55292', '', '081931746449', 'ASWARISMUHA@yahoo.co.id', 0, '', '0000-00-00', 'E-2/068/a/X/KTT/1992', '1992-07-01', 4, 0, 5, 'BUDIRAH', 1, 'ISTIQOMAH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404012403660003', '', '', '', '0', '0', '\r'),
(152, 287, '6433753656200002', 1, 'BANTUL', '1975-01-02', '', 1, 3, 1, 'JLN MONUMEN TNI AU', '5', '0', 'KROBOKAN', 'TAMAHAN', 'Kec. Banguntapan', '55191', '', '02749505471', 'ibnusantosa87@gmail.com', 11, '', '0000-00-00', '21/KEP/III.4/2014', '2014-04-01', 4, 8, 5, 'NASIYAH', 1, 'UMI KHASANAH', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402120201750003', '', '', '', '0', '0', '\r'),
(153, 288, '5049750652300023', 2, 'SLEMAN', '1972-07-17', '', 1, 3, 1, 'Kemirisewu', '4', '22', 'Kemirisewu XI', 'Sidorejo', 'Kec. Godean', '55564', '', '081904048150', 'iimmukaromah@gmail.com', 0, '', '0000-00-00', 'E-2/765/a/IV/2002', '2002-04-01', 4, 10, 5, 'Boginem', 1, 'Arief Hidayat', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404025707720004', '', '', '', '0', '0', '\r'),
(154, 289, '4438742643200002', 1, 'BANTUL', '1964-01-06', '', 6, 9, 1, 'JURUG', '1', '0', 'JURUG', 'BANGUNHARJO', 'Kec. Sewon', '55187', '', '085702368287', 'official.istiyar.jkd@gmail.com', 0, '', '0000-00-00', 'E-2/357/a/VII/25/KTT/1996', '1995-08-01', 4, 2, 5, 'NGADINAH', 1, 'SRIHASTUTI', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402150601640003', '', '', '', '0', '0', '\r'),
(155, 290, '', 2, 'Sleman', '1983-03-18', '', 6, 3, 1, 'Cambahan RT 01 RW 25 ', '', '', '', 'Nogotirto', 'Kec. Gamping', '', '', '', 'ist.ard83@gmail.com', 0, '', '0000-00-00', '411/KEP.PEG/III.0/D/2017', '2017-07-01', 4, 0, 4, 'Sunarniningsih', 1, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404015803830004', '', '', '', '0', '0', '\r'),
(156, 291, '6336741642200013', 1, 'YOGYAKARTA', '1963-10-04', '', 1, 3, 1, 'JALAN WONOSARI', '21', '6', 'PLOSOKEREP', 'BUNDER', 'Kec. Patuk', '55860', '', '081931194856', 'jumadi.muha@gmail.com', 0, '', '0000-00-00', 'E-2/287/1990', '1990-07-01', 4, 10, 5, 'JAMILAH', 1, 'SUWARNI', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3403040410630001', '', '', '', '0', '0', '\r'),
(157, 292, '2262752654200003', 1, 'SRAGEN', '1974-09-30', '', 1, 10, 1, 'BANYON', '74', '0', 'BANYON', 'PENDOWOHARJO', 'Kec. Sewon', '55185', '', '081931783890', 'khoirulsudarsono7@gmail.com', 0, '', '0000-00-00', 'E-2/1162/a/X/2006', '2006-10-11', 4, 10, 4, 'SUKINEM', 1, 'ISNU ANDRI ASTUTI', '197510072014092002', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402153009740002', '', '', '', '0', '0', '\r'),
(158, 293, '7156762663200023', 1, 'SLEMAN', '1984-08-24', '', 6, 3, 1, 'Gancahan VII', '4', '16', 'Gancahan VII', 'Sidomulyo', 'Kec. Godean', '55564', '0274-6698389', '085643023595', 'outledtokolampu@gmail.com', 0, '', '0000-00-00', '147/KEP.PEG/III.0/D/2013', '2013-07-02', 4, 0, 5, 'SAINEM', 1, 'SITI NUR ANIFAH', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404022408840002', '', '', '', '0', '0', '\r'),
(159, 294, '6248756658200023', 1, 'SLEMAN', '1978-09-16', '', 6, 9, 1, 'JALAN GONJANG GANJING NO.100', '4', '24', 'BODEH', 'AMBARKETAWANG', 'Kec. Gamping', '55294', '', '081802620352', 'adimahadewa444@gmail.com', 13, '', '0000-00-00', '418/III.4/KEP/28/KTT', '2007-07-01', 4, 8, 5, 'TRI SUDARMI', 1, 'NOOR HASANAH, S.Psi', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '716615257542000', '', 1, '', '', '', '3404011609780007', '', '', '', '-7', '110', '\r'),
(160, 295, '', 1, 'Yogyakarta', '1994-06-23', '', 6, 3, 1, 'Jagalan Beji PA I / 436 RT 13 RW 03', '', '', '', 'Purwokinanti', 'Kec. Pakualaman', '55112', '', '', 'muhammadnoorimam01@gmail.com', 0, '', '0000-00-00', '739/KEP.PEG/III.0/D/2020', '2020-07-01', 4, 0, 5, 'Heri Purwanti', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471112306940001', '', '', '', '0', '0', '\r'),
(161, 296, '9347756658200003', 1, 'MAGELANG', '1978-10-15', '', 1, 3, 1, 'JL MENUR NO 2', '7', '42', 'SONO, BLOTON', 'WEDOMARTANI', 'Kec. Ngemplak', '55584', '-', '081578746443', 'mukhammadkhusnudin2017@gmail.com', 0, '', '0000-00-00', '019/KEP/III.4/2014', '2014-04-01', 4, 14, 5, 'NAHDIYATUN', 1, 'SUPRIHATIN', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '546816885542000', '', 1, '', '', '', '3308011510780002', '', '', '', '0', '0', '\r'),
(162, 297, '5747750653300002', 2, 'YOGYAKARTA', '1972-04-15', '', 1, 3, 1, 'MANGGISAN', '1', '0', 'MANGGISAN', 'BATURETNO', 'Kec. Banguntapan', '55197', '', '081328847996', 'asiehmuha93@gmail.com', 0, '', '0000-00-00', '925/III.4/KEP/2011', '2011-10-01', 4, 9, 5, 'NGATINEM', 1, 'BASUKI', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471125504720001', '', '', '', '0', '0', '\r'),
(163, 298, '3755752653300022', 2, 'BANTUL', '1974-04-23', '', 1, 3, 1, 'KITREN KG II/556', '23', '5', 'KITREN', 'PRENGGAN', 'Kec. Kotagede', '55172', '', '085101857125', 'Nurdayati208@gmail.com', 0, '', '0000-00-00', '201/KEP/III.4/2014', '2014-04-01', 4, 9, 5, 'RUBIYAH', 1, 'BAMBANG PANTER TRISABANI', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402036304740003', '', '', '', '0', '0', '\r'),
(164, 299, '6134747648200003', 1, 'YOGYAKARTA', '1969-08-02', '', 1, 4, 1, 'TEGALCATAK', '25', '6', 'TEGAL CATAK', 'WARUNGBOTO', 'Kec. Umbulharjo', '55164', '', '02749750269', 'raharjaarjo@gmail.com', 0, '', '0000-00-00', '62/kep.peg/III.0/D/2014', '2014-04-01', 4, 8, 5, 'NY.HARJO PANTES', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471130208690002', '', '', '', '0', '0', '\r'),
(165, 300, '3633743647200012', 1, 'BANTUL', '1965-03-01', '', 1, 2, 1, 'Cendrawasih', '15', '27', 'Wonocatur', 'Banguntapan', 'Kec. Banguntapan', '', '', '087839125335', 'rizariza2207@gmail.com', 0, '', '0000-00-00', 'E-2/183/a/VIII/KTT/1991', '1991-07-01', 4, 2, 5, 'NGADIKEM', 1, 'FATIMAH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402120103650001', '', '', '', '0', '0', '\r'),
(166, 301, '1337743644200033', 1, 'BANTUL', '1965-10-05', '', 6, 4, 1, 'MAGUWO', '26', '28', 'MAGUWO', 'BANGUNTAPAN', 'Kec. Banguntapan', '55198', '', '081904016580', 'samsulh51064@gmail.com', 0, '', '0000-00-00', 'E-2/069/a/X/KTT/1992', '1992-07-01', 4, 0, 5, 'SRI SUJADMI', 1, 'RUJILAH', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402120510650001', '', '', '', '0', '0', '\r'),
(167, 302, '9648745647200002', 1, 'YOGYAKARTA', '1967-03-16', '', 1, 10, 1, 'SOGA', '11', '3', 'TAHUNAN', 'TAHUNAN', 'Kec. Umbulharjo', '55167', '', '081392787716', 'sugiyonoais@gmail.com', 0, '', '0000-00-00', 'E-2/458/a/VII/25/KTT/1998', '1998-07-01', 4, 8, 5, 'RODHIYAH', 1, 'INDAYATI', '196801262088012003', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '575244918541000', '', 1, '', '', '', '3471131603670002', '', '', '', '0', '0', '\r'),
(168, 303, '1063752654110033', 1, 'YOGYAKARTA', '1974-07-31', '', 6, 2, 1, 'Jl. Wonosari km 14,5', '3', '2', 'Mandungan', 'Srimartani', 'Kec. Piyungan', '55792', '', '087839901453', 'suharnosmuha74@gmail.com', 0, '', '0000-00-00', '207/KEP/III.4/22/PTT/2011', '2011-07-01', 4, 0, 5, 'SRI SUMARSILAH', 1, 'TRI ASIH', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402143107740001', '', '', '', '0', '0', '\r'),
(169, 304, '', 1, 'YOGYAKARTA', '1968-02-24', '', 6, 4, 1, 'KI PENJAWI', '38', '9', 'LEDOK WARUNGBOTO', 'LEDOK WARUNGBOTO', 'Kec. Umbulharjo', '', '', '', 'sunardigebes@gmail.com', 0, '', '0000-00-00', 'E-2/53/KTT/1990', '1990-07-01', 4, 2, 5, 'SUPRAPTI', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471132402680002', '', '', '', '0', '0', '\r'),
(170, 305, '3345743644200013', 1, 'YOGYAKARTA', '1965-10-13', '', 6, 9, 1, 'PRINGGOKUSUMAN GT II/569 YOGYAKARTA', '29', '8', 'PRINGGOKUSUMAN', 'PRINGGOKUSUMAN', 'Kec. Gedongtengen', '55272', '', '08179444250', 'spyyadi65@gmail.com', 0, '', '0000-00-00', 'E-1/E.565/XI/1983', '1983-08-01', 4, 0, 5, 'JURIYAH', 1, 'SUNARSIH', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471052408961382', '', '', '', '0', '0', '\r'),
(171, 306, '7860757659110032', 1, 'BANTUL', '1979-05-28', '', 6, 4, 1, 'Pandeyan', '4', '26', 'Pandeyan', 'Bangunharjo', 'Kec. Sewon', '55187', '', '081215631330', 'thidayanto25@gmail.com', 0, '', '0000-00-00', '454/III.4/KEP/26/KTT/2010', '2010-07-01', 4, 0, 5, 'MURDINEM', 1, 'ENDAH TRIWAHYUNI', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402152805790002', '', '', '', '0', '0', '\r'),
(172, 307, '7458746649200003', 1, 'YOGYAKARTA', '1968-11-26', '', 7, 3, 1, 'PRINGGOKUSUMAN', '31', '8', 'PRINGGOKUSUMAN', 'PRINGGOKUSUMAN', 'Kec. Gedongtengen', '55272', '02749125547', '081328748500', 'wahyoe145@gmail.com', 0, '', '0000-00-00', 'E-2/383/a/VII/33/KTT/1999', '1999-07-01', 4, 0, 5, 'WIJI', 1, 'DARTI LESTARI', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471052611680001', '', '', '', '0', '0', '\r'),
(173, 308, '', 1, 'Yogyakarta', '1981-03-02', '', 1, 4, 1, 'Terban GK V/652-A', '25', '5', 'TERBAN', 'TERBAN', 'Kec. Gondokusuman', '', '', '081903883647', '', 0, '', '0000-00-00', '', '0000-00-00', 4, 0, 5, '', 1, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3471030203810003', '', '', '', '0', '0', '\r'),
(174, 309, '', 1, 'Yogyakarta', '1995-03-18', '', 6, 11, 1, 'Gadingan', '9', '3', 'Gadingan', 'Banyuraden', 'Kec. Gamping', '', '', '082288778522', 'prasistadidyaadi@gmail.com', 0, '', '0000-00-00', '322/KEP.PEG/III.0/D/2019', '2019-07-01', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404011803950002', '', '', '', '0', '0', '\r'),
(175, 310, '', 2, 'Sleman', '1996-07-13', '', 6, 13, 1, 'Kamal Kulon', '', '', 'Kamal Kulon', 'Margomulyo', 'Kec. Seyegan', '', '', '08988041696', 'aufaisma.putri96@gmail.com', 0, '', '0000-00-00', '', '2020-08-18', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3404055307960001', '', '', '', '0', '0', '\r'),
(176, 311, '', 1, 'Bantul', '1991-09-30', '', 6, 12, 1, 'Donoloyo', '', '', 'Donoloyo', 'Tamanan', 'Kec. Banguntapan', '', '', '085647703188', 'setyabayu231@gmail.com', 0, '', '0000-00-00', '', '2020-08-18', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3402123009910004', '', '', '', '0', '0', '\r'),
(177, 312, '', 2, 'Pekalongan', '1997-03-13', '', 6, 9, 1, 'Dusun Mulungan', '6', '12', 'Mulungan', 'Sendangadi', 'Kec. Mlati', '', '', '085877555346', 'sazza97aizah@gmail.com', 0, '', '0000-00-00', '', '2020-08-18', 4, 0, 5, '', 2, '', '', 0, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '3326105303970002', '', '', '', '0', '0', '\r'),
(178, 353, '8349743646200003', 1, 'Bandung', '1965-10-17', '', 1, 1, 1, 'Perumahan Gumuk Indah Blok B/59 Sidoarum, Godean', '8', '26', 'Tinom', 'Sidoarum', 'Kec. Godean', '55564', '02746497742', '085743217887', 'abdulkj65@gmail.com', 0, '', '0000-00-00', '465/III.4/KEP/2004', '2004-02-02', 4, 11, 4, 'Siti Saodah', 1, 'Wardinah', '196508121990032002', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '782856405542000', 'abdulkarim Jusuf.', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(179, 354, '1249765667130133', 1, 'Bantul', '1987-09-17', '', 1, 1, 1, 'Jl. Jogokaryan No. 22', '35', '10', '', 'Mantrijeron', 'Kec. Mantrijeron', '55143', '0', '081802706864', 'kirno_agus@yahoo.com', 14, '', '0000-00-00', '108/KEP.PEG/III.0/D/2014', '2014-07-01', 4, 3, 4, 'Sumiyem', 1, 'Zulkhati Isnaeni', '', 17, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '442848032543000', 'AGUS SUKIRNO', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(180, 355, '2056762663200003', 1, 'Yogyakarta', '1984-07-24', '', 1, 8, 1, 'Kepuh Kulon', '2', '0', 'Kepuh Kulon', 'Wirokerten', 'Kec. Banguntapan', '55194', '-', '085228111777', 'agusyulisaputro@gmail.com', 0, '', '0000-00-00', '327/KEP/III.4/2012', '2012-04-02', 4, 3, 4, 'Suratinah', 1, 'Putri Marganing Utami', '0                 ', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '982892341541000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(181, 356, '2151746648300013', 2, 'Maospati Magetan', '1968-08-19', '0', 1, 1, 1, 'Suryodiningratan MJ II/711 Yogyakarta', '33', '9', 'Suryodiningratan', 'Suryodiningratan', 'Kec. Mantrijeron', '55141', '0', '08562883743', 'ardhaagustini@gmail.com', 0, '', '0000-00-00', '462/III.4/KEP/2004', '2004-02-02', 4, 15, 5, 'Pamonah', 1, 'Heri Nuryanto', '0                 ', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686090341541000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(182, 357, '', 1, 'Bantul', '1987-03-22', '', 6, 1, 1, '', '7', '13', 'Pundong', 'Srihardono Bantul ', 'Kec. Pundong', '55771', '', '089611020009', 'ahmad.hemat.perkasa@gmail.com', 0, '', '0000-00-00', '567/KEP.PEG/III.0/D/2017', '2011-07-20', 4, 0, 5, 'Inayah ', 1, 'Dina Mardliani', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(183, 358, '2250755656200003', 2, 'Sleman', '1977-09-18', '0', 1, 1, 1, 'Patran I, Tegal Rejo Sumbersari Moyudan Sleman', '6', '3', 'Tegal Rejo', 'Sumbersari', 'Kec. Moyudan', '55563', '0', '081392386810', 'ainiwinoto77@gmail.com', 0, '', '0000-00-00', '587/III.4/KEP/2005', '2005-01-03', 4, 10, 5, 'Ngabidah', 1, 'Agus Winoto', '0                 ', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365579689542000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(184, 359, '9033756658200003', 1, 'Sungailiat', '1978-07-01', '', 1, 1, 1, 'Jl.Parangtritis KM 25', '68', '0', 'Greges', 'Donotirto', 'Kec. Kretek', '55163', '081392806861', '089630666567', 'surat_anasjogja@yahoo.co.id', 15, '', '0000-00-00', '583/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Kiptiyah', 1, 'Gritnawati', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '363725334542000', 'Anas Syaifullah', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(185, 360, '3548755656300042', 2, 'Bantul', '1977-02-16', '', 1, 1, 1, 'Blali Seloharjo Pundong Bantul 55771', '1', '0', 'Blali', 'Seloharjo', 'Kec. Pundong', '55771', '0', '082135231566', 'andriawati233@gmail.com', 0, '', '0000-00-00', '1189/KEP/III.4/2012', '2012-10-23', 4, 0, 5, 'Sudaryati', 1, 'Ikhsan Fitrianto', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(186, 361, '', 2, 'Gunungkidul', '1996-03-24', '', 6, 1, 1, 'Logandeng', '21', '5', 'Logandeng', 'Playen', 'Kec. Playen', '55861', '', '08983102234', 'anindyautami@gmail.com', 0, '', '0000-00-00', '465/KEP/III.4.AU.403/A/2018', '2018-07-16', 5, 0, 5, 'Sugini', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(187, 362, '1445757658300042', 2, 'Rembang', '1979-01-13', '', 1, 1, 1, 'Gg. Poncowolo', '57', '12', 'Ketanggungan', 'Wirobrajan', 'Kec. Wirobrajan', '55253', '0', '08157934224', 'dyna.ismi13@gmail.com', 0, '', '0000-00-00', '352/KEP.PEG/III.0/D/2014', '2014-04-01', 4, 0, 5, 'Edi Sulistiati', 1, 'Anesia Surya', '197812152014061001', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '982167728541000', 'ANESIA SURYA', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(188, 363, '5357763664110033', 1, 'YOGYAKARTA', '1985-10-15', '', 1, 1, 1, 'Gedongkiwo MJ.I/631 A Yogyakarta', '36', '8', 'Gedongkiwo', 'Gedongkiwo', 'Kec. Mantrijeron', '55142', '0', '085743216755', 'pitrang@gmail.com', 0, '', '0000-00-00', '164/SMK-TS/SK/E.23/VII/2009', '2009-07-13', 5, 0, 4, 'SITI YUDIATI', 1, 'Fitria Kusumawardhani', '0                 ', 17, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(189, 364, '', 1, 'Kuningan', '1989-09-04', '', 6, 6, 1, 'Jalan Atmosukarto 9 B-24', '13', '3', '', 'Kotabaru', 'Kec. Gondokusuman', '55224', '', '087848248787', 'acepsetiawan89@gmail.com', 0, '', '0000-00-00', '19/SK/YB/VII/2015', '2015-07-01', 4, 0, 4, 'Rasiwen', 1, 'Evita Ratih Dewayani', '199110112014042001', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(190, 365, '9145765666110023', 1, 'Bantul', '1987-08-13', '', 1, 1, 1, 'Wonokromo 2 Pleret Bantul Yogyakarta 55791', '2', '0', 'wonokromo', 'Wonokromo', 'Kec. Pleret', '55791', '0', '08562555664', 'cahya_ijo13@yahoo.co.id', 16, '', '0000-00-00', 'E2/439/III.4/KEP/55/GTT/2009', '2009-07-01', 4, 0, 5, 'Laili Farchiyatun', 1, 'Nur Baiti Mukfat', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(191, 366, '3335747648200003', 1, 'Tanjungkarang', '1969-10-03', '0', 1, 1, 1, 'Warungboto UH 4/761 Yk', '29', '7', '0', 'Warungboto', 'Kec. Umbulharjo', '55164', '0', '081227987111', 'rdidirahmad@gmail.com', 0, '', '0000-00-00', '578/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Mutiah', 1, 'Hariyanti', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686060302541000', 'DIDI RAHMADI', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(192, 367, '0447767669130173', 1, 'Karangsari', '1989-11-15', '', 1, 1, 1, 'Semuten', '2', '0', 'Semuten', 'Jatimulyo', 'Kec. Dlingo', '55783', '0', '085726088819', 'dwiarifjupiter@gmail.com', 0, '', '0000-00-00', '341/KEP.PEG/III.0/D/2018', '2013-07-02', 4, 0, 5, 'Suryati', 1, 'nurul inayah', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(193, 368, '5842761662210152', 2, 'Sleman', '1983-03-10', '', 1, 1, 1, 'Jingin, Margomulyo, Seyegan, Sleman', '5', '25', 'Jingin', 'Margomulyo', 'Kec. Seyegan', '55561', '0', '085156095440', 'dwi.ratna.p@gmail.com', 0, '', '0000-00-00', '439/III.4/Kep/51/GTT/2009', '2009-07-01', 4, 0, 5, 'Sugirah', 1, 'Agung Nugroho', '198306062008011007', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(194, 369, '5456755656200012', 1, 'Bantul', '1977-01-24', '', 1, 1, 1, 'Taruban Palbapang Bantul 55713', '6', '0', 'Taruban', 'Palbapang', 'Kec. Bantul', '55713', '0', '081328195486', 'edi.haryanto.muga@gmail.com', 16, '', '0000-00-00', 'E.2/592/III.4/KEP/2005', '2005-01-03', 4, 10, 4, 'Sriyanah', 1, 'Ida Nurhayati', '197808272006042015', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365837814543000', 'Edi Haryanto', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(195, 370, '5955764665110032', 1, 'Yogyakarta', '1986-06-23', '', 1, 1, 1, 'Suronatan NG II/901 Yogyakarta 55262', '46', '8', '0', 'Notoprajan', 'Kec. Ngampilan', '55262', '0274417581', '0895344044229', 'ediputrawirawanspdt@gmail.com', 0, '', '0000-00-00', '75/KEP.PEG/III.0/D/2015', '2015-04-01', 4, 3, 4, 'Amri Khozanah', 1, 'Nurul Fadhilah Ruhani', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '669312399541000', 'Edi Putra Wirawan', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(196, 371, '7535765666130093', 2, 'Bantul', '1987-12-03', '', 1, 1, 1, 'Nglorong Pajangrejo', '5', '0', 'Nglorong', 'Panjangrejo', 'Kec. Pundong', '55771', '', '081904104965', 'ekamadusari0@gmail.com', 0, '', '0000-00-00', '008.035/KEP.KEPSEK.GTT/I/2013', '2012-01-02', 4, 0, 5, 'Ponijem', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(197, 372, '', 2, 'Jepara', '1993-04-23', '', 6, 1, 1, 'Jl.Timoho, Baciro Gendeng Yogyakarta', '48', '20', 'Gendeng', 'Gondokusuman', 'Kec. Gondokusuman', '', '085200555284', '085200555284', 'evifahrotunnisa@gmail.com', 0, '', '0000-00-00', '670/III.4/VII/2014', '2014-07-14', 5, 0, 5, 'Nduriyati', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(198, 373, '0744748650200022', 1, 'Bantul', '1970-04-12', '0', 1, 1, 1, 'Jl. Janti Gg. Nakula No. 41 Karangjambe Yogyakarta', '2', '0', 'Karangjambe', 'Banguntapan', 'Kec. Banguntapan', '55163', '0', '081328824150', 'rfatkkhur@gmail.com', 0, '', '0000-00-00', '469/III.4/KEP/2004', '2004-02-16', 4, 11, 5, 'Siti Tunisah', 1, 'Sumarini', '0                 ', 16, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '686092321543000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(199, 374, '9345759661300003', 2, 'Bantul', '1981-10-13', '', 1, 1, 1, 'Greges Donotirto Kretek Bantul', '58', '0', 'Greges', 'Donotirto', 'Kec. Kretek', '55772', '0', '081328194412', 'gritnaw03@gmail.com', 0, '', '0000-00-00', '715/KEP.PEG/III.0/D/2019', '2007-07-01', 4, 0, 5, 'Mursiti', 1, 'Anas Syaifullah', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(200, 375, '6342761664210063', 2, 'Kulon Progo', '1983-10-10', '', 1, 1, 1, 'Granti wetan RT. 11/04 Ngestiharjo Wates Kulon Progo', '11', '4', 'Granti Wetan', 'Ngestiharjo', 'Kec. Wates', '55611', '0', '081229453006', 'kusjunanti83@gmail.com', 0, '', '0000-00-00', 'no:/kep/III.4/GTT/2012', '2012-07-01', 5, 3, 5, 'Ngamini', 1, 'Sugiharto', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(201, 376, '9948760662110062', 1, 'Sleman', '1982-06-16', '', 1, 1, 1, 'Plembangan', '6', '26', 'Bulu', 'Jogotirto', 'Kec. Berbah', '55573', '081931773616', '0895421628941', 'hawinmustofa@gmail.com', 14, '', '0000-00-00', '439/III.4/KEP/57/GTT/2009', '2009-07-01', 4, 3, 4, 'Mujiyem', 1, 'Istiningsih', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '752579342542000', 'HAWIN MUSTOFA', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(202, 377, '6747762663200032', 1, 'Yogyakarta', '1984-03-15', '', 6, 1, 1, 'Semaken Pucungrejo Muntilan Magelang 56414', '3', '15', 'Semaken', 'Pucungrejo', 'Kec. Muntilan', '56414', '0', '082134333895', 'dendra03@gmail.com', 0, '', '0000-00-00', '376/III.4/KEP/72/GTT/2007', '2007-07-01', 4, 0, 5, 'Partinah', 1, 'Yulinda Devi Pramita', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '753372986524000', 'Hendra Triatmojo', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(203, 378, '2844757659200012', 1, 'Bantul', '1979-05-12', '', 1, 1, 1, 'Trukan Segoroyoso Pleret', '6', '0', 'Trukan', 'Segoroyoso', 'Kec. Pleret', '55791', '0', '085641392767', 'hendri_p2006@smkmuh3-yog.sch.id', 0, '', '0000-00-00', '312 / KEP / III.4 / 2012', '2012-04-02', 4, 0, 4, 'Harsiyah', 1, 'Tri Hastirin', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(204, 379, '4057744646200003', 1, 'Bandung', '1966-07-25', '0', 1, 1, 1, 'Jl. Wonosari km 10,  Gondosari, Sumokaton, Sitimulyo, Piyungan, Bantul', '4', '0', 'Gondongsari', 'Sitimulyo', 'Kec. Piyungan', '55792', '', '082137153139', 'wk_5s@yahoo.co.id', 0, '', '0000-00-00', '276/a/VII/62/2000', '2000-07-01', 4, 11, 4, 'Kartinah', 1, 'Emy Farida', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '341126209343000', 'Heri Prihandono', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(205, 380, '8239755657300003', 2, 'Kebumen', '1977-09-07', '0', 1, 1, 1, 'Wirobrajan WB 2/54 Yogyakarta 55252', '27', '6', 'Wirobrajan', 'Wirobrajan', 'Kec. Wirobrajan', '55252', '', '081392447797', 'hidayah_rokhmah@yahoo.co.id', 0, '', '0000-00-00', '581/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Usuluddiniyah', 3, 'Imam Muhadi', '0                 ', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '782860902541000', 'Hidayaturrokhmah', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(206, 381, '4344752653200013', 1, 'Yogyakarta', '1974-10-12', '0', 1, 1, 1, 'Bausasran DN III/ 749 Yogyakarta', '45', '11', 'DN III', 'Bausasran', 'Kec. Danurejan', '55211', '0', '081329362332', 'hindroharimawan74@gmail.com', 0, '', '0000-00-00', '589/III.4/KEP/2005', '2005-07-01', 4, 10, 4, 'Salbiyah', 1, 'Nurbayti Mudiyatun', '', 7, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686030974541000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(207, 382, '4641750651200002', 2, 'Yogyakarta', '1972-03-09', '', 1, 1, 1, 'Kuncen WB 1 / 328 B  Yogyakarta', '39', '8', '0', 'Pakuncen', 'Kec. Wirobrajan', '55253', '0', '085868562768', 'fatzaa@yahoo.com', 0, '', '0000-00-00', '463/III.4/KEP/2004', '2004-02-02', 4, 10, 4, 'Susianti', 1, 'Irvan Andi Wiranata', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686072331541000', 'Ika Fatwaningsih', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(208, 383, '0858743644300012', 2, 'Surakarta', '1965-05-26', '', 1, 1, 1, 'Taman Giwangan Asri II B-8 Malangan Giwangan Yogyakarta', '42', '13', 'Malangan', 'Giwangan', 'Kec. Umbulharjo', '55163', '02744396542', '081218329594', 'indriputrisolo@gmail.com', 3, '', '0000-00-00', '467/III4/KEP/2004', '2004-02-16', 4, 11, 4, 'Suprapti', 1, 'Mohammad Subandriyo', '196203081985031011', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686031261541000', 'Indri Sulistyaningsih', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(209, 384, '5152751653200003', 1, 'Riau', '1973-08-28', '', 1, 1, 1, 'Dusun Kayen, Sindumartani, Ngemplak, Sleman', '1', '22', 'Kayen', 'Sindumartani', 'Kec. Ngemplak', '55163', '0', '089652365380', 'tribuanasakti28@gmail.com', 5, '', '0000-00-00', '608/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Hatidjah', 1, 'Sumartini', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '782851059542000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(210, 385, '3853752653200002', 1, 'Ngawi', '1974-05-21', '', 1, 1, 1, 'Perum Pesona Kotagede A.7 Singosaren Banguntapan Bantul', '5', '0', 'Sarirejo I', 'Singosaren', 'Kec. Banguntapan', '55193', '0', '085729345719', 'irwandafi@gmail.com', 14, '', '0000-00-00', '584/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Siti Purwati', 1, 'Lilik Zakiyah', '197512112006042009', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365449669543000', 'Irwan Hermawan', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(211, 386, '9542740643200003', 1, 'Sleman', '1962-12-10', '', 1, 7, 1, 'Tegal Senggotan RT. 04 Tirtonirmolo Kasihan Bantul', '4', '0', 'Tegal Senggotan', 'Tirtonirmolo', 'Kec. Kasihan', '55181', '0274381815', '08562593796', 'iskan10kandar@gmail.com', 0, '', '0000-00-00', '946/III.4/KEP/2011', '2011-11-29', 4, 0, 4, 'Wakiyem', 1, 'Siti Chotimah', '196705191992031005', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '257977629542000', 'ISKANDAR, DRS', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(212, 387, '2755759661200002', 1, 'Batang', '1981-04-23', '', 1, 1, 1, 'Jl. Gedongkuning Selatan Gg.Cendana Babadan Baru Banguntapan Bantul', '12', '0', 'Babadan baru', 'Banguntapan', 'Kec. Banguntapan', '55198', '0274-383327', '085643399492', 'kustejo_teo@yahoo.com', 17, '', '0000-00-00', '585/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Sri Kunaini', 1, 'Diana Andriyani Pratamawati', '198406022010122003', 5, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '365449289543000', 'kustejo', 1, '', '', '', '', '', '', '', '-7', '110', '16023L0010460141014615\r'),
(213, 388, '6846751654200012', 1, 'Pemalang', '1973-05-14', '0', 6, 1, 1, 'Suronatan NG II/902 Yogyakarta', '46', '8', 'Suronatan', 'Notoprajan', 'Kec. Ngampilan', '55262', '02747014600', '081804236111', 'syauqialghifari123@gmail.com', 0, '', '0000-00-00', 'E-2/579/a/Vii/06/GTT/1997', '1997-07-01', 4, 10, 5, 'Kapiyah', 1, 'Siti Hanifah', '0                 ', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686092313541000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(214, 389, '', 1, 'Yogyakarta', '1981-05-03', '', 6, 1, 1, 'BUNCAR', '1', '10', 'NAWUNG', 'GAYAMHARJO', 'Kec. Prambanan', '55572', '0274883451', '081330007010', 'bimonugroho030581@gmail.com', 14, '', '0000-00-00', '', '2017-07-17', 5, 0, 5, 'Sudiharyati', 1, 'Sri Lestari', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(215, 390, '7542739641300002', 2, 'Kebumen', '1961-02-10', '', 1, 1, 1, 'Dukuh 06/03 Bumirejo, Lendah, Kulonprogo', '6', '3', 'Dukuh', 'Bumirejo', 'Kec. Lendah', '55663', '0', '081904189728', 'mariyahmardi@gmail.com', 18, '', '0000-00-00', '460/III.4/KEP/2004', '2004-02-02', 4, 4, 4, 'Soiyah', 1, 'Sumardi', '195306201990021001', 11, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686059767544000', 'Mariyah', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(216, 391, '7359755656200003', 1, 'Jambi', '1977-10-27', '0', 1, 1, 1, 'Semingin', '4', '10', 'Semingin', 'Sumbersari', 'Kec. Moyudan', '55563', '0', '089643024369', 'elkahfi08.06@gmail.com', 0, '', '0000-00-00', '586/III.4/KEP/2006', '2006-01-02', 4, 10, 5, 'Rodiyah', 1, 'Dewi Masyithoh', '197802182009032001', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686072281542000', 'masyhuri', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(217, 392, '2858758659200002', 1, 'Yogyakarta', '1980-05-20', '0', 1, 1, 1, 'Jl. Gondosuli GK IV/102 RT. 42/11 Yk', '42', '11', 'Baciro', 'Baciro', 'Kec. Gondokusuman', '55225', '085105888804', '08562966008', 'harpan.jogja@gmail.com', 8, '', '0000-00-00', 'E-2/381/a/VII/S2/GTT/2005', '2005-07-31', 4, 3, 4, 'Siami', 1, 'Noor Laily Rahmawati, S.E.', '', 17, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '686059684541000', '', 1, '', '', '', '', '', '', '', '0', '0', '16023L0010460141016412\r'),
(218, 393, '', 1, 'Pamekasan', '1992-02-04', '', 6, 1, 1, 'Jl.Pramuka No.62 Umbulharjo Giwangan', '', '', '', 'Giwangan', 'Kec. Umbulharjo', '', '', '082322525689', 'mohammadjailani2@gmail.com', 0, '', '0000-00-00', '491/KET/III.4/D/2018', '2018-07-16', 5, 1, 5, 'Ernawati', 2, '', '', 15, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(219, 394, '4340751653200033', 1, 'Klaten', '1973-08-10', '', 6, 1, 1, 'Jatimulyo TR I/487 A Yogyakarta', '15', '4', 'Jatimulyo', 'Kricak', 'Kec. Tegalrejo', '55242', '0', '081235530088', 'mhsahal73@gmail.com', 0, '', '0000-00-00', '376/III.4/Kep/69/GTT/2007', '2007-07-01', 4, 0, 5, 'Tonah', 1, 'Nining Indaryani', '197505112008102002', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '261986889525000', 'Muhamat Sahal', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(220, 395, '5337754654200003', 1, 'Sleman', '1976-05-10', '', 1, 1, 1, 'Jl. K.H Mukhtar Dawam, Sawahan', '3', '28', 'Sawahan', 'Nogotirto', 'Kec. Gamping', '55292', '0', '081904195120', 'akuarwana@yahoo.com', 0, '', '0000-00-00', '1446/KEP/III.4/2012', '2012-11-20', 4, 0, 4, 'Siti Rochmah', 1, 'Sri Utami', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '482965096542000', 'MUHAMMAD ACHSANUDIN', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(221, 396, '', 1, 'JOGJAKARTA', '1987-10-23', '', 6, 1, 1, 'Dalem KG III/927', '45', '10', 'Dalem', 'Purbayan', 'Kec. Kotagede', '55173', '0', '085643678400', 'alrifqi.23@gmail.com', 1, '', '0000-00-00', '430/KEP.PEG/III.0/D/2015', '2015-07-01', 4, 0, 5, 'Wahyu Listyorini', 1, 'Hendri Astuti', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '811116219541000', 'MUHAMMAD AL RIFQI', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(222, 397, '0350763665110043', 1, 'Sleman', '1985-10-18', '', 1, 1, 1, 'No 33B Somodaran Banyuraden Gamping Sleman 55293', '2', '10', 'Somodaran', 'Banyuraden', 'Kec. Gamping', '55293', '081390007008', '081390007008', 'anam@smkmuh3-yog.sch.id', 0, '', '0000-00-00', '713/KEP.PEG/III.0/D/2009', '2009-07-01', 4, 3, 5, 'Sri Sunarsih', 1, 'Fitri Rifa\'atun', '000000000000000000', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '451765028542000', 'Muhammad Badriatul Anam', 1, '', '', '', '', '', '1117806', '', '-7', '110', '\r'),
(223, 398, '', 1, 'Yogyakarta', '1991-05-24', '', 6, 1, 1, 'Jalan Kenari, Miliran UH II/280, Muja Muju Yogyakarta', '48', '1', 'Miliran', 'Muja Muju', 'Kec. Umbulharjo', '55165', '0', '0817260328', 'alfathi@windowslive.com', 0, '', '0000-00-00', '473/KET/III.4/D/2015', '2015-07-01', 4, 0, 5, 'Siti Tri Muryaningsih', 1, 'Sri Wahyuningsih', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', 'Belum ada', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(224, 399, '7235760662110043', 1, 'Bantul', '1982-09-03', '', 1, 1, 1, 'Payungan Triharjo Pandak Bantul', '6', '0', 'Payungan, Ciren', 'Triharjo', 'Kec. Pandak', '55761', '0', '081931706686', 'denwoto@gmail.com', 4, '', '0000-00-00', '355/KEP.PEG/III.0/D/2014', '2014-03-26', 4, 0, 4, 'Paijah', 1, 'Sukasih', '', 9, '0000-00-00', 'Ya', 'Tidak', 'Tidak', 'Tidak', '451765887543000', 'Narwoto', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(225, 400, '5542754655200002', 1, 'Klaten', '1976-02-10', '0', 1, 1, 1, 'Jl.Raya Wonosari - Semanu', '2', '3', 'Sambirejo', 'Semanu', 'Kec. Semanu', '55163', '0', '081328346675', 'ngadinidien@yahoo.co.id', 0, '', '0000-00-00', '1186/KEP/III.4/2012', '2012-10-23', 4, 12, 4, 'Lastari', 1, 'Anita', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365701499545000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(226, 401, '1553758659300052', 2, 'Bantul', '1980-02-21', '', 1, 1, 1, 'Pelem lor RT. 04 Baturetno Banguntapan Bantul', '4', '1', 'Pelem Lor', 'Baturetno', 'Kec. Banguntapan', '55197', '0', '085643920078', 'nini_fisika@yahoo.co.id', 0, '', '0000-00-00', '431/KEP/III.4/2012', '2012-04-02', 4, 0, 5, 'Jumirah', 1, 'Eko Susilo', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '546228230543000', 'Nini Subini', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(227, 402, '4343747652200003', 1, 'YOGYAKARTA', '1969-11-10', '', 1, 7, 1, '', '26', '6', 'TEGAL CATAK', 'WARUNGBOTO', 'Kec. Umbulharjo', '55164', '', '02748511837', 'nuryono10111969@gmail.com', 0, '', '0000-00-00', 'E-2/962/a/VII/2004', '2004-10-01', 4, 8, 5, 'SUBIRAH', 1, 'RITA FERINATA', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(228, 403, '7645749651200002', 1, 'Jambi', '1971-03-13', '', 1, 1, 1, 'Mantrijeron, MJ III/815 Yogyakarta', '58', '16', 'Mantrijeron', 'Mantrijeron', 'Kec. Mantrijeron', '55143', '', '08121569330', 'panyusunan13@gmail.com', 0, '', '0000-00-00', '577/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'L. Hasibuan', 1, 'Woro Prastiwi', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '696086743541000', 'Panyusunan', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(229, 404, '2134765666230123', 2, 'Sleman', '1987-08-02', '', 1, 1, 1, 'Pondok I Widodomartani Ngemplak Sleman Yogyakarta', '1', '30', 'Pondok I', 'Widodomartani', 'Kec. Ngemplak', '55584', '0', '089673349497', 'prapti.hartati@gmail.com', 0, '', '0000-00-00', '123/III.A/2.b/I/2011', '2011-07-14', 4, 0, 4, 'Semi', 1, 'Anggit Prihantoro', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '-', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(230, 405, '5534754656200002', 1, 'Jember', '1976-02-02', '', 1, 1, 1, 'Kemasan Rt. 01/18 Sendangtirto Berbah Sleman', '1', '18', 'Kemasan', 'Sendangtirto', 'Kec. Berbah', '55573', '0', '081328432004', 'priaduana_pria@yahoo.com', 0, '', '0000-00-00', '590/III.4/2005', '2005-01-03', 4, 10, 4, 'Sri Wahyuning Astuti', 1, 'Sri Andayani', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '782863401542000', 'Priaduana Abdul Gafar', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(231, 406, '5533768669130212', 2, 'Bantul', '1990-02-01', '', 1, 1, 1, '', '3', '0', 'Demen, Jati', 'Sriharjo', 'Kec. Imogiri', '55782', '0', '085975204123', 'renizufa@gmail.com', 0, '', '0000-00-00', '665/KEP.PEG/III.0/D/2018', '2014-07-01', 4, 3, 5, 'Mardilah', 1, 'Fatoni', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(232, 407, '0839753654210092', 2, 'Bantul', '1975-05-07', '', 1, 1, 1, 'Bintaran Kulon Srimulyo', '2', '0', 'Bintaran Kulon', 'Srimulyo', 'Kec. Piyungan', '55792', '0', '087839464845', 'purwakasih@yahoo.co.id', 0, '', '0000-00-00', '1190/KEP/III.4/2012', '2012-10-23', 4, 0, 5, 'Tukinem', 1, 'Jokowidiyanto', '197110051993121001', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '597535517543000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r');
INSERT INTO `identitas` (`id_identitas`, `id_user`, `nuptk`, `id_jk`, `tempat_lahir`, `tgl_lahir`, `nip`, `id_status`, `id_ptk`, `id_agama`, `alamat`, `rt`, `rw`, `dusun`, `desa`, `kecamatan`, `pos`, `tlp`, `hp`, `email`, `id_tugas`, `sk_cpns`, `tgl_cpns`, `sk_pangkat`, `tmt_pangkat`, `id_lembaga`, `id_pangkat`, `id_sumber_gaji`, `nama_ibu`, `id_status_kawin`, `nama_istri_suami`, `nip_suami_istri`, `id_pekerjaan`, `tmt_pns`, `lisensi_kepsek`, `diklat_pegawai`, `keahlian_braille`, `bahasa_isyarat`, `npwp`, `nama_pajak`, `id_warga`, `bank`, `no_rek`, `nama_rek`, `nik`, `no_kk`, `karpeg`, `karis_karsu`, `lintang`, `bujur`, `nuks`) VALUES
(233, 408, '5042763664200033', 1, 'Kulon Progo', '1985-07-10', '', 1, 1, 1, 'kaliwangan kidul, temon kulon, temon, kulon progo', '13', '3', 'kaliwangan kidul', 'temon kulon', 'Kec. Temon', '55654', '0', '082137401073', 'rogertato7@gmail.com', 0, '', '0000-00-00', '686/KEP.PEG/III.0.D/2013', '2013-07-01', 4, 3, 5, 'Rr Siti Nuryani', 1, 'siti zainandari', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '747257855544000', 'Rogertato', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(234, 409, '4547754657200003', 1, 'Sragen', '1976-12-15', '0', 1, 1, 1, 'Jl. Bimo 10 Sokowaten Bgt Btl', '5', '13', 'Sokowetan', 'Banguntapan', 'Kec. Banguntapan', '55198', '0', '081328233597', 'rosidul_anwar@yahoo.com', 0, '', '0000-00-00', '417/III.4/KEP/2009', '2009-05-19', 4, 0, 5, 'Patonah', 1, 'Nely Fadhlia', '0                 ', 9, '0000-00-00', 'Ya', 'Tidak', 'Ya', 'Tidak', '686072232528000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(235, 410, '3935756657200002', 1, 'Kulon Progo', '1978-06-03', '0', 1, 1, 1, 'Sremo Tengah Hargowilis Kokap Kulon Progo 55653', '63', '23', 'Sremo Tengah', 'Hargowilis', 'Kec. Kokap', '55653', '0', '08122709207', 'setyoharmadi@yahoo.com', 16, '', '0000-00-00', '591/III.4/KEP/2005', '2005-01-02', 4, 3, 4, 'Tumini', 1, 'Sri Maisyaroh', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365856152544000', 'Setyo Harmadi', 1, '', '', '', '', '', '', '-', '0', '0', '\r'),
(236, 411, '', 1, 'BANTUL', '1992-01-06', '', 6, 1, 1, 'JL. IMOGIRI TIMUR KM 12', '2', '', 'Bembem', 'TRIMULYO', 'Kec. Jetis', '55781', '', '081215517600', 'sidiqrahmat007@gmail.com', 0, '', '0000-00-00', '070/KEP/III.4.AU.134/D/2017', '2017-07-01', 5, 0, 5, 'SARJINEM', 1, 'Puput Fajar Widyaningrum', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '836247882543000', 'Sidiq Rahmat', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(237, 412, '7447752653300002', 2, 'Pekalongan', '1974-01-15', '', 1, 1, 1, 'Mutihan Rt. 04/ Wirokerten Banguntapan, Bantul.', '4', '0', 'Mutihan', 'Wirokerten', 'Kec. Banguntapan', '55192', '0', '081328 474271', 'sitikhotijah052@gmail.com', 0, '', '0000-00-00', '471/111.4/kep/2004', '2004-02-02', 4, 11, 4, 'Nadhiroh', 1, 'Haryoto', '', 12, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686072059543000', 'SITI KHOTIJAH', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(238, 413, '5238753655300043', 2, 'Bantul', '1975-06-09', '', 1, 1, 1, 'Gemblangan Timbulharjo Sewon Bantul', '8', '46', 'Gemblangan', 'Timbulharjo', 'Kec. Sewon', '55186', '0', '085729463833', 'sitikevin7@gmail.com', 0, '', '0000-00-00', '949/III.4/KEP/2011', '2011-12-01', 4, 3, 4, 'Zumaroh', 1, 'Wagiman Ibnu Arifin', '196911121997031008', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365436104543000', 'Siti Maimunah', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(239, 414, '8656759659300002', 2, 'Bantul', '1981-03-24', '', 1, 1, 1, 'Kanggotan Pleret Pleret Bantul 55791', '6', '6', 'Kanggotan', 'Pleret', 'Kec. Pleret', '55791', '0', '081270891481', 'ngaisah79@gmail.com', 0, '', '0000-00-00', '423/KEP/III.4/2012', '2012-04-02', 4, 0, 5, 'Bariyem', 1, 'Budi Riyanto', '', 16, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(240, 415, '1347764666230123', 2, 'Bantul', '1986-10-15', '', 1, 1, 1, 'Numpukan RT. 07/14 Karangtengah Imogiri Bantul 55782', '7', '14', 'Numpukan', 'Karang Tengah', 'Kec. Imogiri', '55782', '0', '089674058485', 'ceetyaisya@gmail.com', 14, '', '0000-00-00', '218/KEP/III.4/42/GTT/2011', '2011-07-02', 4, 0, 4, 'Giyem', 1, 'Irawan Subarkah', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '957826340543000', 'Siti Ngaisah', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(241, 416, '7843739640300002', 2, 'Sleman', '1961-05-11', '1961051119', 5, 1, 1, 'Barak I RT. 05/15 Margoluwih Seyegan Sleman 55561', '5', '15', 'Barak 1', 'Margoluwih', 'Kec. Seyegan', '55561', '0', '08122792196', 'hartati.tatik93@gmail.com', 0, '05/I13.III/C.VI/1988', '1987-12-01', '374/I13.III/C V/89', '1989-11-01', 1, 4, 1, 'Tukirah', 3, 'M Yazid Abdul Azim', '-                 ', 1, '1989-11-01', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '489200071542000', 'Sri Hartati', 1, '', '', '', '', '', 'E 496189', '091723CC', '-7', '110', '\r'),
(242, 417, '7845742643300012', 2, 'Gunung Kidul', '1964-05-13', '0', 1, 1, 1, 'Puri Melati E-5 Dawukan Sendnagtirto Berbah Sleman', '8', '43', 'Dawukan', 'Sendangtirto', 'Kec. Berbah', '55163', '0', '081804166788', 'srimulyani0564@gmail.com', 0, '', '0000-00-00', '1187/KEP/III.4/2012', '2012-10-23', 4, 0, 5, 'Marsiyem', 1, 'Suharno', '60060300          ', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686059858541000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(243, 418, '9640752653300042', 2, 'Parakan Temanggung', '1974-03-08', '', 1, 1, 1, 'Jl. Pramuka 48 Yogyakarta', '27', '7', 'Sidikan', 'Pandeyan', 'Kec. Umbulharjo', '55161', '', '083872196440', 'cutenindha07@gmail.com', 0, '', '0000-00-00', '588/III.4/KEP/2005', '2005-01-01', 4, 10, 5, 'Siti Rukoyah', 1, 'Inur Supriyanto', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686030453541000', 'Sri Nur Indah Hikmawati', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(244, 419, '1840768669230052', 2, 'Bantul', '1990-05-08', '', 1, 1, 1, 'Samiran', '4', '0', 'Samiran', 'Parangtritis', 'Kec. Kretek', '55772', '0', '085868444080', 'miss.independent182@gmail.com', 0, '', '0000-00-00', '664/KEP.PEG/III.0/D/2018', '2014-07-01', 4, 0, 5, 'Narti', 2, '', '', 1, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(245, 420, '8938753655200002', 2, 'Ngawi', '1975-06-06', '0', 1, 1, 1, 'Blunyahrejo TR II/678 Karangwaru Tegalrejo', '25', '6', 'Blunyahrejo', 'Karangwaru', 'Kec. Tegalrejo', '55241', '', '081578878876', 'uminetita33@yahoo.com', 0, '', '0000-00-00', '579/lll.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Sumini', 1, 'Suranto', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686031253541000', '', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(246, 421, '4036746648200023', 1, 'Yogyakarta', '1968-07-04', '', 1, 8, 1, 'Mergangsan Kidul MG II/1269 Yogyakarta', '74', '24', '0', 'Wirogunan', 'Kec. Mergangsan', '55151', '', '082243922888', 'planet7yk@gmail.com', 0, '', '0000-00-00', '948/III.4/KEP/2011', '2001-08-10', 4, 0, 4, 'Sri Mardiningsih', 1, 'Vivi Handayani', '082138005268      ', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '686030651541000', 'SUBAKDO EKO YULIANTO', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(247, 422, '5242753655300013', 2, 'Bantul', '1975-09-10', '', 1, 1, 1, 'Wonotingal RT. 02 Poncosari Srandakan Bantul', '2', '0', 'Wonotingal', 'Poncosari', 'Kec. Srandakan', '55762', '0', '081328644321', 'sumarsih708@yahoo.com', 0, '', '0000-00-00', '582/III.4/KEP/2006', '2006-01-02', 4, 10, 4, 'Suwarni', 1, 'Ratna', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365485523543000', 'Sumarsih', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(248, 423, '7654748650200002', 1, 'Probolinggo', '1970-03-22', '0', 1, 1, 1, 'Jejeran 1 Wonokromo, Pleret, Bantul', '5', '0', 'Jejeran 1', 'Wonokromo', 'Kec. Pleret', '55791', '0', '08562911216', 'sumaryoko@yahoo.com', 0, '', '0000-00-00', '470/III.4/KEP/2004', '2004-02-02', 4, 11, 4, 'Supiati', 1, 'Rumtutiati', '', 7, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '365652700543000', '', 1, '', '', '', '', '', '', '', '-7', '110', '\r'),
(249, 424, '', 2, 'Sleman', '1986-10-12', '', 1, 1, 1, 'Botokan RT.019  Argosari Sedayu Bantul Yogyakarta 55752', '19', '0', 'Botokan', 'Argosari', 'Kec. Sedayu', '55752', '', '083867132266', 'str.adty@gmail.com', 0, '', '0000-00-00', '682/KEP.PEG/III.0/D/2018', '2015-07-04', 4, 0, 5, 'Ratnawati', 1, 'Muhammad Yunus', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(250, 425, '1163753657200003', 1, 'Sleman', '1975-08-31', '', 1, 1, 1, 'Krikilan Tegaltirto Berbah Sleman', '6', '11', 'Krikilan', 'Tegaltirto', 'Kec. Berbah', '55573', '0', '081328196030', 'warnohanobbh@gmail.com', 14, '', '0000-00-00', '1188/KEP/III.4/2012', '2012-10-23', 4, 0, 4, 'Poniyem', 1, 'Susilawati', '', 10, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '546333022542000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(251, 426, '1553760660200002', 2, 'Bantul', '1982-02-21', '', 1, 1, 1, 'Turi, Sidomulyo, Bambanglipuro, Bantul', '3', '0', 'Turi', 'Sidomulyo', 'Kec. Bambang Lipuro', '55764', '0', '087739292011', 'utamitrijoko@gmail.com', 0, '', '0000-00-00', '617/KEP/III.4/2012', '2012-04-02', 4, 0, 5, 'Sadjinem', 1, 'Joko Kuntoro', '198102012014061001', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '546126095543000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(252, 427, '2839758660200042', 1, 'Kulon Progo', '1980-05-07', '', 1, 1, 1, 'Bejaten, Jatisarono, Nanggulan, Kulon Progo, Yogyakarta', '39', '14', 'Bejaten', 'Jatisarono', 'Kec. Nanggulan', '55671', '0', '085228288636', 'zizrobiu@gmail.com', 0, '', '0000-00-00', '407/KEP.PEG/III.0/D/2016', '2016-10-01', 4, 3, 5, 'Suratinem', 1, 'Ari Triawati', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '545553174544000', 'Umar Abdul Aziz', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(253, 428, '1235761662200033', 1, 'BOJONEGORO', '1983-09-03', '0', 6, 1, 1, 'Jl Katelan', '10', '3', 'BRAKBUNDER', 'KATELAN', 'Kec. Tangen', '57261', '081234569843', '081227000913', 'wahyugyokarto@gmail.com', 0, '', '0000-00-00', '514/KEP/III.4.AU.403/A/2015', '2015-07-27', 5, 0, 5, 'YUALIMAH', 1, 'YULI INDRIASTUTIK', '198809232010012004', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '000000000000000', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(254, 429, '8438751653300003', 2, 'BANTUL', '1973-11-06', '', 1, 1, 1, 'GLONDONG', '2', '0', 'GLONDONG', 'TIRTONIRMOLO', 'Kec. Kasihan', '55181', '', '08175470328', 'wiwin73bantul@gmail.com', 0, '', '0000-00-00', '317/III.4/KEP/2009', '2000-07-17', 4, 11, 4, 'MUKIYEM', 1, 'BUDI SUPRIYANTO', '197402282006041017', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '875516510543000', 'WINARNI', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(255, 430, '0034764665130203', 1, 'Bantul', '1986-07-02', '', 1, 1, 1, 'Kerten RT. 05/- , Imogiri, Imogiri, Bantul, Yogyakarta', '5', '0', 'Kerten', 'Imogiri', 'Kec. Imogiri', '55782', '', '081807496140', 'yulimuga86@gmail.com', 0, '', '0000-00-00', '218/KEP/III.4/37/GTT/2011', '2011-07-02', 4, 3, 5, 'Suprihatin', 1, 'Ari Wahyuni', '', 9, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '', '', 1, '', '', '', '', '', '', '', '0', '0', '\r'),
(256, 431, '7345761662110023', 1, 'Pangkalpinang', '1983-10-13', '', 1, 1, 1, 'Jl. Cundo Manik', '3', '0', 'Dladan-Nglebeng', 'Tamanan', 'Kec. Banguntapan', '55191', '0', '081392853883', 'zanu_ma124@yahoo.com', 14, '', '0000-00-00', '356/KEP.PEG/III.0/D/2014', '2014-04-01', 4, 10, 5, 'Marsihan', 1, 'Kumara Dewi Linda Sri Rahayu', '198408182011012003', 5, '0000-00-00', 'Tidak', 'Tidak', 'Tidak', 'Tidak', '783780651541000', 'ZANU', 1, '', '', '', '', '', '', '', '0', '0', '\r');

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
(5, 'Kepala Sekolah'),
(6, 'Guru Kelas'),
(7, 'Guru BK'),
(8, 'Guru TIK'),
(9, 'Laboran'),
(10, 'Tenaga Perpustakaan'),
(11, 'Teknisi'),
(12, 'Driver'),
(13, 'Pustakawan');

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
(6, 'Komite Sekolah'),
(7, 'Lainnya');

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
  `pangkat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`id_pangkat`, `pangkat`) VALUES
(1, 'GOL-I/A'),
(2, 'GOL-II/A'),
(3, 'GOL-III/A'),
(4, 'GOL-IV/A'),
(5, 'LAINNYA'),
(6, 'GOL-I/B'),
(7, 'GOL-I/C'),
(8, 'GOL-II/B'),
(9, 'GOL-II/C'),
(10, 'GOL-III/B'),
(11, 'GOL-III/C'),
(12, 'GOL-IV/B'),
(13, 'GOL-IV/C'),
(14, 'GOL-II/D'),
(15, 'GOL-III/D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pekerjaan`
--

INSERT INTO `pekerjaan` (`id_pekerjaan`, `pekerjaan`) VALUES
(1, 'Tidak Bekerja'),
(2, 'Nelayan'),
(3, 'Petani'),
(4, 'Peternak'),
(5, 'PNS/TNI/Polri'),
(6, 'GTT/PTT'),
(7, 'Pedagang Kecil'),
(8, 'Pedangang Besar '),
(9, 'Karyawan Swasta'),
(10, 'Wiraswasta'),
(11, 'Pensiunan'),
(12, 'Buruh'),
(13, 'TKI'),
(14, 'Sudah Meninggal'),
(15, 'Tidak Dapat Diterapkan'),
(16, 'Lainnya\r\n'),
(17, 'Wirausaha');

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

INSERT INTO `sekolah` (`id_sekolah`, `nama_sekolah`, `npsn`, `alamat`, `status`, `id_pendidikan`, `jumlah_siswa`, `id_akreditasi`, `kepsek`, `operator`, `kurikulum`, `status_kepemilikan`, `sk_pendirian`, `tgl_sk_pendirian`, `sk_izin_operasional`, `tgl_sk_izin_operasional`) VALUES
(1, 'SMAS MUHAMMADIYAH 3 YOGYAKARTA', '20403149', 'JL. Kapten Piere Tendean 58 Yogyakarta, RT 53 RW 11, KETANGGUNGAN, Wirobrajan, Wirobrajan, Kota Yogyakarta, D.I. Yogyakarta, 55252', 'Swasta', 5, 347, 1, 'Fitri Sari Sukmawati', 'Rohmat Junandar', 'Kurikulum 2013', 'Yayasan', '0268/III.A/I.D/2002', '1953-08-05', '0268/III.A/I.D/2000', '1953-08-05'),
(2, 'SD MUHAMMADIYAH MILIRAN', '20403340', 'Miliran Uh II/304, RT 04 RW 02, Miliran, Muja Muju, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55165', 'Swasta', 3, 100, 1, 'Arif Rahman Hakim', 'Henry Cahyono', 'Kurikulum 2013', 'Yayasan', '668/III.4/D/2008', '1982-07-21', '668/III.4/D/2008', '2012-08-21'),
(3, 'SD MUHAMMADIYAH NITIKAN', '69830190', 'Kranon Nitikan UH 6, RT 45 RW 11, Nitikan, Sorosutan, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55162', 'Swasta', 3, 579, 1, 'Saijan', 'Ayu Septiana', 'Kurikulum 2013', 'Yayasan', '015/KEP/III.0/A/2014', '2014-03-07', '0001/UH/6448/32/2013', '2013-10-08'),
(4, 'SD MUHAMMADIYAH PAKEL', '20403323', 'Jalan Pakel Baru 40, RT 28 RW 08, Pakel Baru, Sorosutan, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55162', 'Swasta', 3, 495, 1, 'Menik Kamriana', 'Astri Yuni Mardiyanti', 'Kurikulum 2013', 'Yayasan', '2890/L-1841/DIY-66/77', '1977-09-01', '-', '1910-01-01'),
(5, 'SD MUHAMMADIYAH SOKONANDI 1', '20403351', 'Jalan Kapas No. 5A, Semaki Umbulharjo, Semaki, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55166', 'Swasta', 3, 403, 1, 'Anisa Rofiah', 'Samsu Hidayat', 'Kurikulum 2013', 'Yayasan', '2886/L-1837/DIY-64/77', '1977-09-01', '2886/L-1837/DIY-64/77', '1977-09-01'),
(6, 'SD MUHAMMADIYAH WARUNGBOTO', '20409865', 'Jl. Veteran No. 108, RT 34 RW 08, Warungboto, Warungboto, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55164', 'Swasta', 3, 140, 1, 'Imam Syafi\'i', 'Yuliyanto', 'Kurikulum 2013', 'Yayasan', '188/DIKDAS/1438', '2011-04-11', '2/LPF-02/BH/P/04/20I7', '2017-05-04'),
(7, 'SMP MUHAMMADIYAH 2 YOGYAKARTA', '20403244', 'Jl. Kapas II / 7a, Semaki, Semaki, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55166', 'Swasta', 4, 504, 1, 'Naning Hidayat', 'Agus Musthofa', 'Kurikulum 2013', 'Yayasan', '214/B', '1949-10-31', '2912/M.588/DIY.23/77', '1977-09-01'),
(8, 'SMP MUHAMMADIYAH 8 YOGYAKARTA', '20403240', 'Jl. Kenari Miliran UH II/302, RT 06 RW 02, Miliran, Muja Muju, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55163', 'Swasta', 4, 227, 1, 'Erfin Widyanto', 'Musrifan', 'Kurikulum 2013', 'Yayasan', '2919/M-594/DIY-75/77', '1975-01-01', '0393/H/1986', '1986-05-12'),
(9, 'SMAS MUHAMMADIYAH 2 YOGYAKARTA', '20403158', 'JL. KAPAS NO. 7, RT 26 RW 08, Semaki, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55166', 'Swasta', 5, 449, 1, 'Slamet Purwo', 'Triyana', 'Kurikulum 2013', 'Yayasan', '0261/III.A/1.D/2000', '2002-09-30', '0261/III.A/1.D/2000', '2002-09-30'),
(10, 'SMKS MUHAMMADIYAH 1 YOGYAKARTA', '20403285', 'JL. NITIKAN NO. 48, RT 01 RW 02, SOROSUTAN, Sorosutan, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55165', 'Swasta', 6, 426, 4, 'Widi Astuti', 'Rikky Handani Saputra', 'Kurikulum 2013', 'Yayasan', 'MPE.103/I/10/1707/1967', '1977-09-01', '0300/H/1986', '1986-05-08'),
(11, 'SMKS MUHAMMADIYAH 3 YOGYAKARTA', '20403275', 'JL. PRAMUKA 62, RT 02 RW 01, Giwangan, Umbulharjo, Kota Yogyakarta, D.I. Yogyakarta, 55163', 'Swasta', 6, 603, 1, 'Suprihandono', 'Muhammad Badriantl Anam', 'Kurkulum 2013', 'Yayasan', '0266/H/1986', '1986-05-08', '23628/MPK/74', '1974-07-24'),
(12, 'SD MUHAMMADIYAH DEMANGAN', '20403341', 'Jln Jatayu GK I/226, RT 01 RW 01, Demangan, Gondokusuman, Kota Yogyakarta, D.I. Yogyakarta, 55221', 'Swasta', 3, 350, 1, 'Ani Sulistyaningsih', 'Yus Haryanto', 'Kurikulum 2013', 'Yayasan', 'E-1/531/a/VIII/1994', '1979-07-01', '421/547', '1994-07-01'),
(13, 'SD MUHAMMADIYAH GENDENG', '20403342', 'Jl. Melati Wetan GK IV/374, RT 54 RW 14, Gendeng, Baciro, Gondokusuman, Kota Yogyakarta, D.I. Yogyakarta, 55225', 'Swasta', 3, 180, 1, 'Nuraini Yuni Widiyastuti', 'Dwi Wiradmini', 'Kurikulum 2013', 'Yayasan', '2289/L-1840/DIY-68/77', '1968-08-01', 'E-1/278/77', '1977-02-26'),
(14, 'SD MUHAMMADIYAH SAGAN', '20404156', 'Jl Sagan Baru III GK V/1046, Terban, Gondokusuman, Kota Yogyakarta, D.I. Yogyakarta, 55223', 'Swasta', 3, 401, 1, 'Sugiyanto', 'Avi Ardhianta', 'Kurikulum 2013', 'Yayasan', '3209/L-2025/DIY-69/77', '1977-09-01', '422/4880.2', '2020-08-31'),
(15, 'SD MUHAMMADIYAH SAPEN 1', '20403327', 'Jl. Bimokurdo No.33, RT 24 RW 07, SAPEN, Demangan, Gondokusuman, Kota Yogyakarta, D.I. Yogyakarta, 55221', 'Swasta', 3, 759, 1, 'Agung Rahmanto', 'Andhika Roomandiary Phanaronk', 'Kurikulum 2013', 'Yayasan', '2887/ L-1838/ DIY-66/ 77', '1967-08-01', '2887/ L-1838/ DIY-66/ 77', '1967-09-01'),
(16, 'SD MUHAMMADIYAH SAPEN II', '20403328', 'Jl. Bimokurdo No.33, RT 24 RW 07, SAPEN, Demangan, Gondokusuman, Kota Yogyakarta, D.I. Yogyakarta, 55521', 'Swasta', 3, 758, 1, 'Rohimah', 'Andhika Roomandiary Phanaronk', 'Kurikulum 2013', 'Yayasan', ' 2887/ L-1838/ DIY-66/ 77', '1967-08-01', '2887/ L-1838/ DIY-66/ 77', '1967-09-01'),
(17, 'SMP MUHAMMADIYAH 10 YOGYAKARTA', '20403243', 'Sagan Gk. V/ 1046, RT 44 RW 09, Terban, TERBAN, Gondokusuman, Kota Yogyakarta, D.I. Yogyakarta, 55223', 'Swasta', 4, 144, 1, 'Esti Priyantini', 'Edi Purnomo', 'Kurikulum 2013', 'Yayasan', '2921/M.596/DIY.76/77', '1977-01-01', '018/C/KEP/I 8', '1985-01-07'),
(18, 'SD MUHAMMADIYAH KARANGKAJEN I', '20403344', 'Jl. Menukan 2, Karangkajen, Brontokusuman, Mergangsan, Kota Yogyakarta, D.I. Yogyakarta, 55153', 'Swasta', 3, 317, 1, 'Tri Nugroho', 'Wulandari', 'Kurikulum 2013', 'Yayasan', '2879/L-1830/DIY-18/77', '1918-11-13', '2879/L-1830/DIY-18/77', '1918-11-13'),
(19, 'SD MUHAMMADIYAH KARANGKAJEN II', '20403346', 'Jl. Menukan 2, Brontokusuman, Mergangsan, Kota Yogyakarta, D.I. Yogyakarta, 55153', 'Swasta', 3, 322, 1, 'Novia Nuryany', 'Eni Widayati', 'Kurikulum 2013', 'Yayasan', '2897/L-1848/DIY-68/77', '1977-09-01', '2897/L-1848/DIY-68/77', '1977-09-01'),
(20, 'SMP MUHAMMADIYAH 9 YOGYAKARTA', '20403239', 'Karangkajen MG.III/1039 Telp.(0274) 370169, Karangkajen, Brontokusuman, Mergangsan, Kota Yogyakarta, D.I. Yogyakarta, 55153', 'Swasta', 4, 285, 1, 'Susamta', 'Rubiyanto', 'Kurikulum 2013', 'Yayasan', '0383/H/1986', '1986-05-12', '0383/H/1986', '1986-05-12'),
(21, 'SD MUHAMMADIYAH KLECO 1', '20403348', 'Jl. Nyi Pembayun no. 20, Prenggan, Kotagede, Kota Yogyakarta, D.I. Yogyakarta, 55172', 'Swasta', 3, 273, 1, 'Hindun Yafa Chotijah', 'Dian Alfitasari', 'Kurikulum 2013', 'Yayasan', '2885/L-1836/DIY-35/77', '1977-09-01', '422/4495.1', '2020-08-05'),
(22, 'SD MUHAMMADIYAH KLECO 2', '20403349', 'Jl. Tegal Gendu 3, Prenggan, Kotagede, Kota Yogyakarta, D.I. Yogyakarta, 55172', 'Swasta', 3, 139, 1, 'Amirudin, S.Pd, M.Pd', 'Zuhud Zuliyadi', 'Kurikulum 2013', 'Yayasan', '2908/L-1859/DIY-62/77', '1977-09-01', '422/4495.2', '2020-08-05'),
(23, 'SD MUHAMMADIYAH KLECO 3', '20403350', 'Jl. Nyi Pembayun 20, Prenggan, Kotagede, Kota Yogyakarta, D.I. Yogyakarta, 55172', 'Swasta', 3, 155, 1, 'Siti Nurjanah Hartati', 'Alif Qori\'atul Angfir', 'Kurikulum 2013', 'Yayasan', '2902/L-1860/DIY-71/77', '1977-09-01', '442/4495.3', '2020-08-05'),
(24, 'SD MUHAMMADIYAH PURBAYAN', '20403325', 'Jl. Purbayan No. 11, RT 55 RW 13, Purbayan, Purbayan, Kotagede, Kota Yogyakarta, D.I. Yogyakarta, 55173', 'Swasta', 3, 384, 1, 'Ulva Daian Citra Resmi', 'Hanang Indrianta', 'Kurikulum 2013', 'Yayasan', '3215/L-2027/DIY-76/77', '1976-04-22', '2147483647', '1976-04-22'),
(25, 'SMP MUHAMMADIYAH 7 YOGYAKARTA', '20403249', 'Purbayan Kotagede Yogyakarta, RT 56 RW 13, PURBAYAN, Purbayan, Kotagede, Kota Yogyakarta, D.I. Yogyakarta, 55173', 'Swasta', 4, 398, 1, 'Supriyadi', 'Galih Wahyu Wijaya', 'Kurikulum 2013', 'Yayasan', '3197/M-670/DIY-65/77', '1986-12-05', '420/A/A21/SDSMP/68', '1968-01-01'),
(26, 'SMAS MUHAMMADIYAH 4 YOGYAKARTA', '20403148', 'JL. MONDORAKAN NO. 51, RT 49 RW 16, Trunojayan, Prenggan, Kotagede, Kota Yogyakarta, D.I. Yogyakarta, 55172', 'Swasta', 5, 197, 1, 'M. Arif Prajoko', 'Saatono', 'Kurikulum 2013', 'Yayasan', '1893/I.13.4/I/IK/1984', '1984-04-28', '3642/II/141/DIY-78/1979', '1978-01-02'),
(27, 'SD MUHAMMADIYAH KARANGWARU', '20404154', 'Karangwaru Lor TR. II No. 14 Tegalrejo, RT 09 RW 04, KARANGWARU LOR, Karangwaru, Tegalrejo, Kota Yogyakarta, D.I. Yogyakarta, 55241', 'Swasta', 3, 424, 1, 'Yuliyani Haryatun', 'Cahyo Nanik Sardi', 'Kurikulum 2013', 'Yayasan', '2888/L-1839/DIY-69/77', '1977-09-01', '2888/L-1839/DIY-69/77', '1977-09-01'),
(28, 'SD MUHAMMADIYAH TEGALREJO', '20403366', 'Jl. Hos Cokroaminoto TR.III / 415 Yogyakarta, RT 13 RW 04, Tegalrejo, Tegalrejo, Tegalrejo, Kota Yogyakarta, D.I. Yogyakarta, 55244', 'Swasta', 3, 296, 1, 'Hadi Nuryanto', 'Rizki Niwanda Nurcahya', 'A', 'Yayasan', '3212/L-2026/DIY-69/77', '1977-09-01', '422/4758', '2020-08-24'),
(29, 'SMAS MUHAMMADIYAH 1 YOGYAKARTA', '20403157', 'Jl. Gotongroyong II Petinggen, RT 05 RW 05, Petinggen, Karangwaru, Tegalrejo, Kota Yogyakarta, D.I. Yogyakarta, 55241', 'Swasta', 5, 786, 1, 'Herynugroho', 'Budi Kuswantoro', 'Kurikulum 2013', 'Yayasan', '2922/M-597/DIY-49/77', '1977-09-01', '0534/H/1986', '1986-06-24'),
(30, 'SD MUHAMMADIYAH DANUNEGARAN', '20403319', 'Jln Parangtritis 46 Yogyakarta, DANUNEGARAN, Mantrijeron, Mantrijeron, Kota Yogyakarta, D.I. Yogyakarta, 55143', 'Swasta', 3, 137, 1, 'Sri Isdiyanti', 'FIKA NOVIANDARI', 'Kurikulum 2013', 'Yayasan', '2895/L-1846/DIY-62/77', '1977-09-01', '2895/L-1846/DIY-62/77', '1977-09-01'),
(31, 'SD MUHAMMADIYAH JOGOKARIYAN', '20403343', 'Jl. Jogokaryan 77 A, RT 46 RW 12, Mantrijeron, Mantrijeron, Kota Yogyakarta, D.I. Yogyakarta, 55143', 'Swasta', 3, 179, 1, 'Fika Widiana Kuspratiwi', 'Ridwan Adi Darmawan', 'Kurikulum 2013', 'Yayasan', '2896/L.1847/DIY.73/77', '1973-07-01', '2896/L.1847/DIY.73/77', '1973-07-01'),
(32, 'SD MUHAMMADIYAH SURYOWIJAYAN', '20403365', 'Jl. Wahid Hasyim No 34 Yogyakarta, Gedongkiwo, Gedongkiwo, Mantrijeron, Kota Yogyakarta, D.I. Yogyakarta, 55142', 'Swasta', 3, 124, 1, 'Hartanto', 'Nisful Hararah Muharrami', 'Kurikulum 2013', 'Yayasan', '2907/L-1858/DIY-68/77', '1968-07-01', 'E-1/278/77', '1977-02-26'),
(33, 'SMAS MUHAMMADIYAH 6 YOGYAKARTA', '20403138', 'JL. KH. WAKHID HASYIM NO. 16, RT 20 RW 04, Suryowijayan, Gedongkiwo, Mantrijeron, Kota Yogyakarta, D.I. Yogyakarta, 55142', 'Swasta', 5, 19, 1, 'Zulbahri', 'Sigit Yuliyanto', 'Kurikulum 2013', 'Yayasan', '0260/III.A/1.D/2000', '2002-09-30', '019/I.13/Kpts/1989', '1989-01-16'),
(34, 'SMKS MUHAMMADIYAH 4 YOGYAKARTA', '20403276', 'JL. SURYODININGRATAN MJ. II/862 YOGYAKARTA, RT 43 RW 12, Suryodiningratan, Suryodiningratan, Mantrijeron, Kota Yogyakarta, D.I. Yogyakarta, 55141', 'Swasta', 6, 118, 1, 'Dewi Renaningtias', 'SUPARYONO', 'Kurikulum 2013', 'Yayasan', '0281/III.A/1.D/2000', '2000-03-04', '049/113/KPTS/1989', '1989-02-28'),
(35, 'SD MUHAMMADIYAH WIROBRAJAN I', '20403367', 'Kuncen Wb I/ 328 A, Pakuncen, Wirobrajan, Kota Yogyakarta, D.I. Yogyakarta, 55253', 'Swasta', 3, 121, 1, 'Sri Wahyuni', 'Septi Banun Ikawati', 'Kurikulum 2013', 'Yayasan', '28941L 1895/DIY-69177', '1969-01-01', 'E-1/278/77', '1977-09-01'),
(36, 'SD MUHAMMADIYAH WIROBRAJAN II', '20403368', 'Komplek Masjid Kuncen, RT 21 RW 05, Pakuncen, Pakuncen, Wirobrajan, Kota Yogyakarta, D.I. Yogyakarta, 55253', 'Swasta', 3, 120, 1, 'Sri Agustinawati', 'Maryono', 'Kurikulum 2013', 'Yayasan', '2903/L-1854/DIY-71/77', '1977-09-01', '2903/L-1854/DIY-71/77', '1977-09-01'),
(37, 'SD MUHAMMADIYAH WIROBRAJAN III', '20403369', 'Jl. GatutKaca No 19 A Wirobrajan, Wirobrajan, Wirobrajan, Wirobrajan, Kota Yogyakarta, D.I. Yogyakarta, 55252', 'Swasta', 3, 633, 1, 'Cahyono', 'Jaenul', 'Kurikulum 2013', 'Yayasan', '2904/L-1855/DIY-71-77', '1977-09-01', 'J A 5/160/4', '1971-09-08'),
(38, 'SMP MUHAMMADIYAH 3 YOGYAKARTA', '20403245', 'Jl. Kapten Pierre Tendean No. 19 Yogyakarta, Wirobrajan, Wirobrajan, Wirobrajan, Kota Yogyakarta, D.I. Yogyakarta, 55252', 'Swasta', 4, 552, 1, 'Heriyanti', 'Yudi Purbosantoso', 'Kurikulum 2013', 'Yayasan', '2914/M-589/DIY-51/77', '1977-09-01', '2914/M-589/DIY-51/77', '1977-09-01'),
(39, 'SMAS MUHAMMADIYAH 7 YOGYAKARTA', '20404174', 'JL. KAPTEN P TENDEAN 41 YOGYAKARTA, Wirobrajan, Wirobrajan, Wirobrajan, Kota Yogyakarta, D.I. Yogyakarta, 55252', 'Swasta', 5, 214, 1, 'Darmansyah', 'Cory Wahyu Kurniawan', 'Kurikulum 2013', 'Yayasan', '0269/III.A/1.D/2000', '2002-09-30', '0269/III.A/1.D/2000', '2000-03-04'),
(40, 'SMP MUHAMMADIYAH 5 YOGYAKARTA', '20403247', 'Patehan Kraton, RT 18 RW 04, Patehan, Kraton, Kota Yogyakarta, D.I. Yogyakarta, 55133', 'Swasta', 4, 265, 1, 'Sulamiyah', 'Rizqi Destriyanto', 'Kurikulum 2013', 'Yayasan', '2916/M.591/DIY-58/77', '1958-02-26', 'E-1/E.350/VIII/83', '1983-08-01'),
(41, 'SD MUHAMMADIYAH KAUMAN YOGYAKARTA', '20403347', 'Kauman GM I/374 Yogyakarta, RT 40 RW 12, Ngupasan, Gondomanan, Kota Yogyakarta, D.I. Yogyakarta, 55122', 'Swasta', 3, 364, 1, 'Layin Fauziyah', 'YUNAN AHADI', 'Kurikulum 2013', 'Yayasan', '2880/L-1831/DIY-23/77', '1977-09-01', '2880/L-1831/DIY-23/77', '1977-09-01'),
(42, 'SD MUHAMMADIYAH PRINGGOKUSUMAN', '20403324', 'Jl. Pringgokusuman 28, RT 17 RW 04, Pringgokusuman, Gedongtengen, Kota Yogyakarta, D.I. Yogyakarta, 55272', 'Swasta', 3, 70, 1, 'Hernawan Priyantoro', 'Wiji Lestari', 'Kurikulum 2013', 'Yayasan', '2905/L-1856/DIY-69/77', '1969-01-01', 'E-1/278/77', '1977-02-26'),
(43, 'SMP MUHAMMADIYAH 6 YOGYAKARTA', '20403248', 'Notoyudan GT II/1272, RT 85 RW 24, Pringgokusuman, Gedongtengen, Kota Yogyakarta, D.I. Yogyakarta, 55272', 'Swasta', 4, 255, 1, 'Asfandi', 'Andrianto Nurprasetyo Prabancana', 'Kurikulum 2013', 'Yayasan', '3196/M-669/DIY-58/77', '1974-07-24', 'NO 23258/MPK/74', '1974-07-24'),
(44, 'SD MUHAMMADIYAH NGADIWINATAN', '20403329', 'Ngadiwinatan Ng I/ 1231 A, Ngadiwinatan, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 3, 174, 1, 'Musthofa', 'Edy Maryanto', 'Kurikulum 2013', 'Yayasan', '2883/L-1834/DIY-48/77', '1948-08-01', '007/D-007/1-48/77', '1977-09-01'),
(45, 'SD MUHAMMADIYAH NGUPASAN 1 YOGYAKARTA', '20403320', 'Jl. Bhayangkara No. 7, Ngadiwinatan, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 3, 136, 1, 'Hartoyo', 'RISKA DWI JAYANTI', 'Kurikulum 2013', 'Yayasan', '2881/L-1832/DIY-27/77', '1977-09-01', '005/D-005/1-27/1/1977', '1977-09-01'),
(46, 'SD MUHAMMADIYAH NGUPASAN II', '20403321', 'Jl Bhayangkara 7 Yogyakarta, RT 61 RW 12, Ngadiwinatan, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 3, 134, 1, 'Endah Irawati', 'Laminah', 'Kurikulum 2013', 'Yayasan', '2882/L.1833/DIY-70/77', '1977-09-01', '422/4721', '2020-08-19'),
(47, 'SD MUHAMMADIYAH NOTOPRAJAN', '20403322', 'Jl. K.H Agus Salim No. 66, RT 41 RW 07, Notoprajan, Notoprajan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55262', 'Swasta', 3, 139, 1, 'Asrofi Tiktana', 'Kharismawan Lutfi Nugroho', 'Kurikulum 2013', 'Yayasan', '289/L-1842/DIY-70/77', '1970-01-02', '289/L-1842/DIY-70/77', '1970-01-02'),
(48, 'SD MUHAMMADIYAH PURWODININGRATAN 2', '20404155', 'Purwodiningratan Ng I/ 902 D, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 3, 282, 1, 'Gintoro', 'BAYU MURDIANA', 'Kurikulum 2013', 'Yayasan', 'E.1/278/77', '1969-01-01', '896/KEP/I.0/B/2019', '1977-02-26'),
(50, 'SD MUHAMMADIYAH SURONATAN', '20403364', 'Suronatan NG II/834 Yogyakarta, RT 45 RW 08, Suronatan, Notoprajan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55262', 'Swasta', 3, 411, 1, 'M Slamet Riyanto', 'Kukuh Darmawan', 'Kurikulum 2013', 'Yayasan', '2878/L-1829/DIY-18/77', '1977-09-01', '2878/L-1829/DIY-18/77', '1910-01-01'),
(51, 'SMP MUHAMMADIYAH 1 YOGYAKARTA', '20403242', 'Purwodiningratan Ng I/902b, Purwodiningratan, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 4, 449, 1, 'Siti Roikhanah', 'Basuki Heru Darwanto', 'Kurikulum 2013', 'Yayasan', '0366/H/1986', '1986-12-05', 'D.05072004', '1985-01-25'),
(52, 'SMAS MUHAMMADIYAH 5 YOGYAKARTA', '20403147', 'PURWODININGRATAN NG. I 902 A YOGYAKARTA, RT 47 RW 10, Purwodiningratan, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 5, 165, 1, 'Titin Yulianti Prawesti', 'DIINUN HANAFI', 'Kurikulum 2013', 'Yayasan', '0745/H/1986', '1979-05-08', '0745/H/1986', '1984-04-28'),
(53, 'SD MUHAMMADIYAH SOKONANDI 2', '20403352', 'Jalan Notowinatan, Gunung Ketur, Pakualaman, Kota Yogyakarta, D.I. Yogyakarta, 55111', 'Swasta', 3, 397, 1, 'Sofyan', 'Ria Aderita', 'Kurikulum 2013', 'Yayasan', '2885/L-1837/DIY-64/77', '1977-09-01', '2885/L-1837/DIY-64/77', '1977-09-01'),
(54, 'SMP MUHAMMADIYAH 4 YOGYAKARTA', '20403246', 'Jalan Ki Mangunsarkoro No. 43, RT 09 RW 03, Gunungketur, Gunung Ketur, Pakualaman, Kota Yogyakarta, D.I. Yogyakarta, 55111', 'Swasta', 4, 242, 1, 'Rini Diah Herawati', 'Nugroho Purnomo Putro', 'Kurikulum 2013', 'Yayasan', '2915/M-590/DIY-55/77', '1977-09-01', '624/KEP/I/B/2019', '2019-10-24'),
(55, 'SD MUHAMMADIYAH BAUSASRAN I', '20403418', 'Jl. Ronodigdayan 60 Yogyakarta, Bausasran, Danurejan, Kota Yogyakarta, D.I. Yogyakarta, 55211', 'Swasta', 3, 136, 1, 'Suwarjo', 'Nur Taqiyah', 'Kurikulum 2013', 'Yayasan', '2877/L-1828/DIY-16/77', '1977-09-01', '2877/L-1828/DIY-16/77', '1977-09-01'),
(56, 'SD MUHAMMADIYAH BAUSASRAN II', '20403374', 'Jalan Ronodigdayan No. 60, RT 36 RW 10, Bausasran, Danurejan, Kota Yogyakarta, D.I. Yogyakarta, 55211', 'Swasta', 3, 136, 1, 'PLT - Suwarjo', 'DEDEN FACHRI AHDIANY', 'Kurikulum 2013', 'Yayasan', '0313/DN/2008 2665/001', '2008-05-24', '2906/L-1857/DIY-71/77', '1971-01-01'),
(57, 'SMKS MUHAMMADIYAH 2 YOGYAKARTA', '20403284', 'JL. TUKANGAN NO.1 YOGYAKARTA, RT 17 RW 4, Tegal Panggung, Tegal Panggung, Danurejan, Kota Yogyakarta, D.I. Yogyakarta, 55212', 'Swasta', 6, 140, 4, 'Moch Harpan Nursitadhi', 'Marita Dias Vetraningrum', 'Kurikulum 2013', 'Yayasan', '2929/K-564/DIY-65/77', '1965-08-01', '2929/K-564/DIY-65/77', '1965-08-01'),
(59, 'SD MUHAMMADIYAH PURWODININGRATAN I', '20403326', 'Purwodiningratan Ng I/902 C, RT 47 RW 10, PURWODININGRATAN, Ngampilan, Ngampilan, Kota Yogyakarta, D.I. Yogyakarta, 55261', 'Swasta', 3, 169, 1, 'PLT - Sigit Kurniawan', 'Bayu Jatmiko', 'Kurikulum 2013', 'Yayasan', '2884/L-1835/DIY-68/77', '1977-09-01', '1193/KEP/I.0/B/2020', '2020-01-27');

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
  `sumber_gaji` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sumber_gaji`
--

INSERT INTO `sumber_gaji` (`id_sumber_gaji`, `sumber_gaji`) VALUES
(1, 'APBN'),
(2, 'APBD Provinsi'),
(3, 'APBD Kab/Kota'),
(4, 'Yayasan'),
(5, 'Sekolah'),
(6, 'Lembaga Donor'),
(7, 'Lainnya');

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
(9, 'Guru Pembimbing Ekstrakulikuler'),
(10, 'Koordinator Pengembangan PKB/PKG'),
(11, 'Pelaksana PBJ'),
(12, 'Wakasek Kurikulum'),
(13, 'Bendahara BOS'),
(14, 'Kepala Program Keahlian'),
(15, 'Pembina Pramuka Putra'),
(16, 'Kepala Bengkel'),
(17, 'Wakil Kepala Sekolah'),
(18, 'Pembina Pramuka Putri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_sekolah` int(11) NOT NULL,
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

INSERT INTO `users` (`id_user`, `id_sekolah`, `nama`, `email`, `username`, `password`, `image`, `id_role`, `created_at`, `updated_at`, `active`) VALUES
(1, 3, 'Admin', 'admin1@gmail.com', 'admin1', 'admin123', 'default.png', 2, '2021-06-17 13:41:32', '2021-06-17 13:41:32', 1),
(2, 7, 'Admin', 'admin@gmail.com', 'admin2', 'admin123', 'default.png', 2, '2021-06-17 13:41:32', '2021-06-17 13:41:32', 1),
(3, 0, 'Super Admin', 'superadmin@gmail.com', 'superadmin', 'superadmin123', 'superadmin123', 1, '2021-08-22 15:59:53', '2021-08-22 15:59:53', 1),
(4, 7, 'Agung Hardiyanto', 'agungmuha@gmail.com', 'user1', 'user123', '', 3, NULL, NULL, 1),
(5, 7, 'Agus Ridwan', 'goesridwan@gmail.com', 'user2', 'user123', '', 3, NULL, NULL, 1),
(6, 7, 'Andadari Putri', 'andadari75@gmail.com', 'user3', 'user123', '', 3, NULL, NULL, 1),
(7, 7, 'Badruddin Abdul Rochman K', 'badrudinark@gmail.com', 'user4', 'user123', '', 3, NULL, NULL, 1),
(8, 7, 'Bangun Catur Prasetyo', 'caturprasetyo60@yahoo.co.id', 'user5', 'user123', '', 3, NULL, NULL, 1),
(9, 7, 'Bayu Widiya Dwi Santoso', 'bayuwidiyadwi@gmail.com', 'user6', 'user123', '', 3, NULL, NULL, 1),
(10, 7, 'Catur Kurniawan', 'catur.ckp@gmail.com', 'user7', 'user123', '', 3, NULL, NULL, 1),
(11, 7, 'Chasanah', 'chasanah.ircham@gmail.com', 'user8', 'user123', '', 3, NULL, NULL, 1),
(12, 7, 'Desiani Putri Lestari', 'deashyputri12@gmail.com', 'user9', 'user123', '', 3, NULL, NULL, 1),
(13, 7, 'DWI AYU OKTAVIA', 'dwiayuoktavia@gmail.com', 'user10', 'user123', '', 3, NULL, NULL, 1),
(14, 7, 'Dyah Pangestuti', 'pangestutidyah78@gmail.com', 'user11', 'user123', '', 3, NULL, NULL, 1),
(15, 7, 'Eko Harianto', 'masekoharianto_28@yahoo.co.id', 'user12', 'user123', '', 3, NULL, NULL, 1),
(16, 7, 'Eko Nurhidayat', 'ekonurhidayat_69@yahoo.com', 'user13', 'user123', '', 3, NULL, NULL, 1),
(17, 7, 'Enita Yuniati', 'enita.prita@gmail.com', 'user14', 'user123', '', 3, NULL, NULL, 1),
(18, 7, 'Fahmi Haedar Ali', 'fahmihaedar@gmail.com', 'user15', 'user123', '', 3, NULL, NULL, 1),
(19, 7, 'FAJAR ARIF WIDODO', 'f.arif88@gmail.com', 'user16', 'user123', '', 3, NULL, NULL, 1),
(20, 7, 'Fajar Noor Trisna W', 'anandatauzi@gmail.com', 'user17', 'user123', '', 3, NULL, NULL, 1),
(21, 7, 'Ferra Fijantari', 'ferrafijantari@yahoo.co.id', 'user18', 'user123', '', 3, NULL, NULL, 1),
(22, 7, 'Indriani Ika Puspitasari', 'indrianiikapuspita01@gmail.com', 'user19', 'user123', '', 3, NULL, NULL, 1),
(23, 7, 'Ismiyati', 'ismi.yati.2063@gmail.com', 'user20', 'user123', '', 3, NULL, NULL, 1),
(24, 7, 'Juwanti', 'juwanti88@gmail.com', 'user21', 'user123', '', 3, NULL, NULL, 1),
(25, 7, 'Kurniawan Surya Andriyanto', 'kurniawansurya4.ks@gmail.com', 'user22', 'user123', '', 3, NULL, NULL, 1),
(26, 7, 'Lilies Dwi Sulistyowati', 'liliessulis9@gmail.com', 'user23', 'user123', '', 3, NULL, NULL, 1),
(27, 7, 'M. Fajar Widyakusuma', 'mfjrwdy@gmail.com', 'user24', 'user123', '', 3, NULL, NULL, 1),
(28, 7, 'Muhammad Fauzan Hamdani', 'fauzanhamdan000@gmail.com', 'user25', 'user123', '', 3, NULL, NULL, 1),
(29, 7, 'Muhammad Nurdin', 'nurdin_mtop90@yahoo.co.id', 'user26', 'user123', '', 3, NULL, NULL, 1),
(30, 7, 'Muhammad Nurhadi', 'muhammadnurhadi043@gmail.com', 'user27', 'user123', '', 3, NULL, NULL, 1),
(31, 7, 'Mustakim', 'mustajabtakim@gmail.com', 'user28', 'user123', '', 3, NULL, NULL, 1),
(32, 7, 'Nur Afiati', 'afiati_nur@yahoo.co.id', 'user29', 'user123', '', 3, NULL, NULL, 1),
(33, 7, 'Nur Hidayati', 'hidayati.nur30@gmail.com', 'user30', 'user123', '', 3, NULL, NULL, 1),
(34, 7, 'Nur Ika Pujiastuti', 'nurikapujiastuti@gmail.com', 'user31', 'user123', '', 3, NULL, NULL, 1),
(35, 7, 'NURLAILAH', 'nlailah58@gmail.com', 'user32', 'user123', '', 3, NULL, NULL, 1),
(36, 7, 'Nurul Anisa', 'nb.1703@gmail.com', 'user33', 'user123', '', 3, NULL, NULL, 1),
(37, 7, 'Olga Frida Zwastikawati', 'zwastikawati94@gmail.com', 'user34', 'user123', '', 3, NULL, NULL, 1),
(38, 7, 'Ratmi Larasati', 'rlarasati19@yahoo.com', 'user35', 'user123', '', 3, NULL, NULL, 1),
(39, 7, 'Rivan Setiawan', 'rivansetiawan81@gmail.com', 'user36', 'user123', '', 3, NULL, NULL, 1),
(40, 7, 'Saeful Bahri', 'bsaeful84@yahoo.co.id', 'user37', 'user123', '', 3, NULL, NULL, 1),
(41, 7, 'Samsul Ahmadi', 'samsulahmadi2021@gmail.com', 'user38', 'user123', '', 3, NULL, NULL, 1),
(42, 7, 'Satimin Agus S.', 'satigusis@gmail.com', 'user39', 'user123', '', 3, NULL, NULL, 1),
(43, 7, 'Sekar Ayu Larasati', 'sekarayularasati30@gmail.com', 'user40', 'user123', '', 3, NULL, NULL, 1),
(44, 7, 'Sri Endarwati', 'sri.endarwati65@gmail.com', 'user41', 'user123', '', 3, NULL, NULL, 1),
(45, 7, 'Suhari Marjiyo', 'hrsaja@gmail.com', 'user42', 'user123', '', 3, NULL, NULL, 1),
(46, 7, 'Suharyadi', 'drssuharyadi47@gmail.com', 'user43', 'user123', '', 3, NULL, NULL, 1),
(47, 7, 'Tri Maharjanti', 'trimaharjanti19@gmail.com', 'user44', 'user123', '', 3, NULL, NULL, 1),
(48, 7, 'Tri Utami', 'tri.utami983@gmail.com', 'user45', 'user123', '', 3, NULL, NULL, 1),
(49, 7, 'Wahyu Cholivah', 'wahyuolifik@gmail.com', 'user46', 'user123', '', 3, NULL, NULL, 1),
(50, 7, 'Wijiati Parmadi', 'wijiparmadi@gmail.com', 'user47', 'user123', '', 3, NULL, NULL, 1),
(51, 7, 'Yeni Muhliawati', 'yenimuhliawati@gmail.com', 'user48', 'user123', '', 3, NULL, NULL, 1),
(52, 7, 'Yuni Kurniasih', 'yunikurniasih74@gmail.com', 'user49', 'user123', '', 3, NULL, NULL, 1),
(53, 7, 'Yushinta Wibowo', 'yushinta_wibowo@yahoo.co.id', 'user50', 'user123', '', 3, NULL, NULL, 1),
(54, 7, 'Zainal Muttaqin', 'inalarabic23.zm@gmail.com', 'user51', 'user123', '', 3, NULL, NULL, 1),
(55, 3, 'Aisyah Tun Mahmudah', 'aisyah.sdmuhnitikan@gmail.com', 'user52', 'user123', '', 3, NULL, NULL, 1),
(56, 3, 'Arifin', 'arifn.uad19@gmail.com', 'user53', 'user123', '', 3, NULL, NULL, 1),
(57, 3, 'Beta Pusdikawati', 'teletabeta@gmail.com', 'user54', 'user123', '', 3, NULL, NULL, 1),
(58, 3, 'Dedie Adhy Aksa Toto Utomo', 'dedie.umi8@gmail.com', 'user55', 'user123', '', 3, NULL, NULL, 1),
(59, 3, 'Dewi Puri Kurniasih', 'dewipuri0975@gmail.com', 'user56', 'user123', '', 3, NULL, NULL, 1),
(60, 3, 'Diah Pramusinta', 'diahpramu1511@gmail.com', 'user57', 'user123', '', 3, NULL, NULL, 1),
(61, 3, 'Dwi Yuli Isminingsih', 'dwiyuliisminingsih@gmail.com', 'user58', 'user123', '', 3, NULL, NULL, 1),
(62, 3, 'Edi Muji Hartono', 'eddiemuhnitikan13@gmail.com', 'user59', 'user123', '', 3, NULL, NULL, 1),
(63, 3, 'Eko Wahyono', 'ismailabuafkar@gmail.com', 'user60', 'user123', '', 3, NULL, NULL, 1),
(64, 3, 'Elis Triwinarni', 'elisaaffandie@gmail.com', 'user61', 'user123', '', 3, NULL, NULL, 1),
(65, 3, 'Gatot Wisnu Wibowo', 'gatoet.kita@gmail.com', 'user62', 'user123', '', 3, NULL, NULL, 1),
(66, 3, 'Hanafiah', 'hanafiah2@gmail.com', 'user63', 'user123', '', 3, NULL, NULL, 1),
(67, 3, 'Hera Nur Agista', 'hera.nur.agista@gmail.com', 'user64', 'user123', '', 3, NULL, NULL, 1),
(68, 3, 'Ihsan Hermawan', 'jembatanmatematikaku@gmail.com', 'user65', 'user123', '', 3, NULL, NULL, 1),
(69, 3, 'Imam Muklas', 'abahimam74@gmail.com', 'user66', 'user123', '', 3, NULL, NULL, 1),
(70, 3, 'Imas Masitoh', 'imasuad@gmail.com', 'user67', 'user123', '', 3, NULL, NULL, 1),
(71, 3, 'Lia Suryanto', 'liasuryanto13@gmail.com', 'user68', 'user123', '', 3, NULL, NULL, 1),
(72, 3, 'Nuning Tri Utami', 'nunningsapen@gmail.com', 'user69', 'user123', '', 3, NULL, NULL, 1),
(73, 3, 'Puguh Budi Prasojo', 'ppuguhbudiprasojo@gmail.com', 'user70', 'user123', '', 3, NULL, NULL, 1),
(74, 3, 'Retno Purwaningsih', 'purwaningsihcantik@gmail.com', 'user71', 'user123', '', 3, NULL, NULL, 1),
(75, 3, 'Riani Nur Khasanah', 'mamaoziza@gmail.com', 'user72', 'user123', '', 3, NULL, NULL, 1),
(76, 3, 'Saleh Santoso', 'salehsantoso15@gmail.com', 'user73', 'user123', '', 3, NULL, NULL, 1),
(77, 3, 'Seflin Marinda Lesmana', 'seflinmarindalesmana@gmail.com', 'user74', 'user123', '', 3, NULL, NULL, 1),
(78, 3, 'Siti Hafsoh', 'shafsoh0@gmail.com', 'user75', 'user123', '', 3, NULL, NULL, 1),
(79, 3, 'Sulhan Jamroji', 'sulhanelblitary@gmail.com', 'user76', 'user123', '', 3, NULL, NULL, 1),
(80, 3, 'Susiana', 'bumiqusiana@gmail.com', 'user77', 'user123', '', 3, NULL, NULL, 1),
(81, 3, 'Tri Rohmani', 'trirohmani04@gmail.com', 'user78', 'user123', '', 3, NULL, NULL, 1),
(82, 3, 'Tugimin', 'tugimin.nitikan@gmail.com', 'user79', 'user123', '', 3, NULL, NULL, 1),
(83, 3, 'Wahyu Mar\'atus Sholihah', 'ayoe.physicsuad@gmail.com', 'user80', 'user123', '', 3, NULL, NULL, 1),
(84, 3, 'Wahyu Nur Hidayat', 'wahyunurhidayat461@gmail.com', 'user81', 'user123', '', 3, NULL, NULL, 1),
(85, 3, 'Wahyu Puji Astuti', 'wahyuzahro9@gmail.com', 'user82', 'user123', '', 3, NULL, NULL, 1),
(86, 3, 'Yudy Johari, S.Kom', 'yudyntk@gmail.com', 'user83', 'user123', '', 3, NULL, NULL, 1),
(87, 3, 'Yulian Bangun Prayoga', 'prayogayulian80@gmail.com', 'user84', 'user123', '', 3, NULL, NULL, 1),
(226, 9, 'Slamet Purwo', 'slamet.purwa2006@yahoo.com', 'user85', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(227, 9, 'Agus Ramadiansyah', 'agusramadiansyah1978@gmail.com', 'user86', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(228, 9, 'Agus Winoto', 'agus.winoto20@gmail.com', 'user87', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(229, 9, 'Bambang Legowo', 'bambanglegowo1969@gmail.com', 'user88', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(230, 9, 'Berkah Beno Widodo', 'benoberkah@gmail.com', 'user89', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(231, 9, 'Dwi Jayanti', 'dj_muha@yahoo.com', 'user90', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(232, 9, 'Dwi Kurniatun', 'dwyxhistory@gmail.com', 'user91', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(233, 9, 'Ebma Yudhasatria', 'ebma.yudha@gmail.com', 'user92', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(234, 9, 'Endang Sri Suwarti', 'endanggeografi@gmail.com', 'user93', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(235, 9, 'Eny Widyastuti', 'e_widyastuti@ymail.com', 'user94', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(236, 9, 'Fatma Taufiyanti', 'fatma_tau@yahoo.com', 'user95', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(237, 9, 'Fitri Nur Hayati', 'hayatinur110888@gmail.com', 'user96', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(238, 9, 'Fitriana Yuniastuti', 'anna_trya@yahoo.co.id', 'user97', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(239, 9, 'Gunarno', 'gunarno0046@gmail.com', 'user98', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(240, 9, 'Hary Kuswantara', 'kuswantara29hary@gmail.com', 'user99', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(241, 9, 'Hasta Dewi', 'dewihasta@yahoo.co.id', 'user100', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(242, 9, 'Himti Murwijayanti', 'himti0690@gmail.com', 'user101', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(243, 9, 'Ihdanisak Mutia', 'ihdanisak24@gmail.com', 'user102', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(244, 9, 'Ikawati Qodaryatun', 'qikawati@yahoo.com', 'user103', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(245, 9, 'Ikhvan Sujiyanto', 'Ikhvansujiyanto1601@gmail.com', 'user104', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(246, 9, 'Indah Fajarwati', 'indahimron13@gmail.com', 'user105', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(247, 9, 'Indra Suwarna', 'indrasuwarna17@gmail.com', 'user106', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(248, 9, 'Indri Rosiana Dewi', 'indrirosianasosiologi47@gmail.com', 'user107', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(249, 9, 'Ismanto', 'ismantoa04@gmail.com', 'user108', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(250, 9, 'Juang Hasdya Firmansyah', 'juanghasdyaf@gmail.com', 'user109', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(251, 9, 'Luthfiana Fatmawati', 'luthfiana.fatmawati.28@gmail.com', 'user110', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(252, 9, 'M. Tri Nurdiantoro', 'treenur75@gmail.com', 'user111', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(253, 9, 'Mukhlis', 'mukhlisu97@gmail.com', 'user112', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(254, 9, 'Muniroh', 'munirohghozali@gmail.com', 'user113', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(255, 9, 'Nanik Tri Purwaningsih', 'naniktri.match@gmail.com', 'user114', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(256, 9, 'NINGRUM HARJIANTI', 'ningrumharjianti22@gmail.com', 'user115', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(257, 9, 'Prayitno', 'prayitnodrs@gmail.com', 'user116', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(258, 9, 'Rahmatul Huda', 'rahmatulhuda78@gmail.com', 'user117', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(259, 9, 'Retno Sumirat', 'sumirat.retno@yahoo.co.id', 'user118', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(260, 9, 'Rina Novrida Ditasari', 'rina.novrida@gmail.com', 'user119', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(261, 9, 'Rohmatunnazilah', 'r.nazilah@gmail.com', 'user120', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(262, 9, 'S A R A H', 'sarah.chemistry95@gmail.com', 'user121', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(263, 9, 'Sapto Hari Pratomo', 'saptoharipratomo22@gmail.com', 'user122', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(264, 9, 'Sariyana', 'sariyana0319@gmail.com', 'user123', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(265, 9, 'Slamet Abdullah', '', 'user124', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(266, 9, 'Subroto', 'subrotowidi@gmail.com', 'user125', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(267, 9, 'Sugeng Hadi Triyanto', 'antok_sht@yahoo.co.id', 'user126', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(268, 9, 'Sumarni', 'eyangkamila@gmail.com', 'user127', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(269, 9, 'Sumarti', 'sumartidra2012@gmail.com', 'user128', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(270, 9, 'Suryadi', 'suryadigiyana@yahoo.com', 'user129', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(271, 9, 'Swasti Rahmalia', 'S4elia@yahoo.com', 'user130', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(272, 9, 'Tri Suryani', 'trisuryani976@gmail.com', 'user131', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(273, 9, 'Wahyu Wijayanta', 'wijaya770@gmail.com', 'user132', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(274, 9, 'Yatmidi', 'yatmidi.yayat@gmail.com', 'user133', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(275, 9, 'Aflaharani Uhacham, M,Pd.', 'Aflaharaniuhacham28@gmail.com', 'user134', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(276, 9, 'Arifin Nur Himawan, S,Pd', 'arifinnurhimawan4283@gmail.com', 'user135', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(277, 9, 'Kevin Didenta Bima Priambada, S,Pd.', 'kevindidenta@gmail.com', 'user136', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(278, 9, 'Yanuar Vidyastuti, S.Sn', '', 'user137', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(279, 9, 'Culiyasih, S,Pd', '', 'user138', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(280, 9, 'Dyah Mutiara Praditasari, S,Pd', 'dyahmutiara36@gmail.com', 'user139', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(281, 9, 'Nur Sigit  Triyogantara, S,Pd.', '', 'user140', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(282, 9, 'Atika Zulfi, S,Pd.', 'atikazulfi93@gmail.com', 'user141', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(283, 9, 'Juni Prasetya, M,Pd.', 'juniprasetya83@gmail.com', 'user142', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(284, 9, 'Fauzan Nur Aprilianto, S,Pd.', 'fauzanaprilia@gmail.com', 'user143', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(285, 9, 'Adi Kustanto', 'koestanto99@gmail.com', 'user144', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(286, 9, 'Aswari', 'ASWARISMUHA@yahoo.co.id', 'user145', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(287, 9, 'Ibnu Santosa', 'ibnusantosa87@gmail.com', 'user146', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(288, 9, 'Iim Mukaromah', 'iimmukaromah@gmail.com', 'user147', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(289, 9, 'Istiyar', 'official.istiyar.jkd@gmail.com', 'user148', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(290, 9, 'Istu Ardiyani', 'ist.ard83@gmail.com', 'user149', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(291, 9, 'Jumadi', 'jumadi.muha@gmail.com', 'user150', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(292, 9, 'Khoirul Sudarsono', 'khoirulsudarsono7@gmail.com', 'user151', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(293, 9, 'M. Taufik Nur Ismail', 'outledtokolampu@gmail.com', 'user152', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(294, 9, 'Mahadi', 'adimahadewa444@gmail.com', 'user153', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(295, 9, 'Muhammad Noor Imam An Naafi', 'muhammadnoorimam01@gmail.com', 'user154', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(296, 9, 'Mukhammad Khusnudin', 'mukhammadkhusnudin2017@gmail.com', 'user155', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(297, 9, 'Mulatsih', 'asiehmuha93@gmail.com', 'user156', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(298, 9, 'Nurdayati', 'Nurdayati208@gmail.com', 'user157', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(299, 9, 'Raharja', 'raharjaarjo@gmail.com', 'user158', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(300, 9, 'Rubiman', 'rizariza2207@gmail.com', 'user159', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(301, 9, 'Samsul Hadi', 'samsulh51064@gmail.com', 'user160', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(302, 9, 'Sugiyono', 'sugiyonoais@gmail.com', 'user161', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(303, 9, 'Suharno', 'suharnosmuha74@gmail.com', 'user162', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(304, 9, 'Sunardi', 'sunardigebes@gmail.com', 'user163', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(305, 9, 'Supriyadi', 'spyyadi65@gmail.com', 'user164', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(306, 9, 'Taufik Hidayanto', 'thidayanto25@gmail.com', 'user165', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(307, 9, 'Wahyu Samsudin', 'wahyoe145@gmail.com', 'user166', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(308, 9, 'Pujangganing Rahayu', '', 'user167', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(309, 9, 'Didya Adi Prasista, S.Kom', 'prasistadidyaadi@gmail.com', 'user168', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(310, 9, 'Aufaisma Afifah Putri, S,IP', 'aufaisma.putri96@gmail.com', 'user169', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(311, 9, 'Setya Bayu Kurniawan', 'setyabayu231@gmail.com', 'user170', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(312, 9, 'Sazza Aizah, S.Si', 'sazza97aizah@gmail.com', 'user171', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(353, 11, 'Abdulkarim Jusuf', 'abdulkj65@gmail.com', 'user172', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(354, 11, 'Agus Sukirno', 'kirno_agus@yahoo.com', 'user173', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(355, 11, 'Agus Yuli Saputro', 'agusyulisaputro@gmail.com', 'user174', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(356, 11, 'Agustini Nurhayati', 'ardhaagustini@gmail.com', 'user175', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(357, 11, 'Ahmad Hemat Perkasa', 'ahmad.hemat.perkasa@gmail.com', 'user176', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(358, 11, 'Aini Rusanah', 'ainiwinoto77@gmail.com', 'user177', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(359, 11, 'Anas Syaifullah', 'surat_anasjogja@yahoo.co.id', 'user178', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(360, 11, 'Andriawati Rahayu', 'andriawati233@gmail.com', 'user179', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(361, 11, 'ANINDYA DWI UTAMI', 'anindyautami@gmail.com', 'user180', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(362, 11, 'Ardiana Rahayu', 'dyna.ismi13@gmail.com', 'user181', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(363, 11, 'Arfan Pitrang Uzi', 'pitrang@gmail.com', 'user182', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(364, 11, 'Asep Setiawan', 'acepsetiawan89@gmail.com', 'user183', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(365, 11, 'Cahya Indrasyah', 'cahya_ijo13@yahoo.co.id', 'user184', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(366, 11, 'Didi Rahmadi', 'rdidirahmad@gmail.com', 'user185', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(367, 11, 'Dwi Arif Hidayatuloh', 'dwiarifjupiter@gmail.com', 'user186', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(368, 11, 'Dwi Ratna Purwaningsih', 'dwi.ratna.p@gmail.com', 'user187', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(369, 11, 'Edi Haryanto', 'edi.haryanto.muga@gmail.com', 'user188', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(370, 11, 'Edi Putra Wirawan', 'ediputrawirawanspdt@gmail.com', 'user189', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(371, 11, 'Eka Madusari', 'ekamadusari0@gmail.com', 'user190', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(372, 11, 'Evi Dwi Fahrotun Nisa', 'evifahrotunnisa@gmail.com', 'user191', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(373, 11, 'Fatkhurrahman', 'rfatkkhur@gmail.com', 'user192', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(374, 11, 'Gritnawati', 'gritnaw03@gmail.com', 'user193', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(375, 11, 'Hartutik Kusjunanti', 'kusjunanti83@gmail.com', 'user194', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(376, 11, 'Hawin Mustofa', 'hawinmustofa@gmail.com', 'user195', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(377, 11, 'Hendra Triatmojo', 'dendra03@gmail.com', 'user196', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(378, 11, 'Hendri Purwanto', 'hendri_p2006@smkmuh3-yog.sch.id', 'user197', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(379, 11, 'Heri Prihandono', 'wk_5s@yahoo.co.id', 'user198', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(380, 11, 'Hidayaturrokhmah', 'hidayah_rokhmah@yahoo.co.id', 'user199', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(381, 11, 'Hindro Harimawan', 'hindroharimawan74@gmail.com', 'user200', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(382, 11, 'Ika Fatwaningsih', 'fatzaa@yahoo.com', 'user201', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(383, 11, 'Indri Sulistyaningsih', 'indriputrisolo@gmail.com', 'user202', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(384, 11, 'Irman Tribuana Sakti', 'tribuanasakti28@gmail.com', 'user203', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(385, 11, 'Irwan Hermawan', 'irwandafi@gmail.com', 'user204', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(386, 11, 'Iskandar', 'iskan10kandar@gmail.com', 'user205', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(387, 11, 'Kustejo', 'kustejo_teo@yahoo.com', 'user206', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(388, 11, 'Makhrus', 'syauqialghifari123@gmail.com', 'user207', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(389, 11, 'MANTIK BIMO NUGROHO', 'bimonugroho030581@gmail.com', 'user208', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(390, 11, 'Mariyah', 'mariyahmardi@gmail.com', 'user209', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(391, 11, 'Masyhuri', 'elkahfi08.06@gmail.com', 'user210', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(392, 11, 'Moch Harpan Nursitadhi', 'harpan.jogja@gmail.com', 'user211', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(393, 11, 'MOHAMMAD JAELANI', 'mohammadjailani2@gmail.com', 'user212', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(394, 11, 'Muhamat Sahal', 'mhsahal73@gmail.com', 'user213', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(395, 11, 'Muhammad Achsanudin', 'akuarwana@yahoo.com', 'user214', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(396, 11, 'Muhammad Al Rifqi', 'alrifqi.23@gmail.com', 'user215', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(397, 11, 'Muhammad Badriatul Anam', 'anam@smkmuh3-yog.sch.id', 'user216', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(398, 11, 'Muhammad Hafidh Putranto', 'alfathi@windowslive.com', 'user217', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(399, 11, 'Narwoto', 'denwoto@gmail.com', 'user218', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(400, 11, 'Ngadini', 'ngadinidien@yahoo.co.id', 'user219', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(401, 11, 'Nini Subini', 'nini_fisika@yahoo.co.id', 'user220', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(402, 11, 'Nuryono', 'nuryono10111969@gmail.com', 'user221', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(403, 11, 'Panyusunan', 'panyusunan13@gmail.com', 'user222', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(404, 11, 'Prapti Hartati', 'prapti.hartati@gmail.com', 'user223', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(405, 11, 'Priaduana Abdul Gafar', 'priaduana_pria@yahoo.com', 'user224', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(406, 11, 'Reni Zufaidah', 'renizufa@gmail.com', 'user225', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(407, 11, 'Retna Purwa Kasih', 'purwakasih@yahoo.co.id', 'user226', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(408, 11, 'Rogertato', 'rogertato7@gmail.com', 'user227', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(409, 11, 'Rosidul Anwar', 'rosidul_anwar@yahoo.com', 'user228', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(410, 11, 'Setyo Harmadi', 'setyoharmadi@yahoo.com', 'user229', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(411, 11, 'Sidiq Rahmat', 'sidiqrahmat007@gmail.com', 'user230', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(412, 11, 'Siti Khotijah', 'sitikhotijah052@gmail.com', 'user231', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(413, 11, 'Siti Maimunah', 'sitikevin7@gmail.com', 'user232', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(414, 11, 'Siti Ngaisah', 'ngaisah79@gmail.com', 'user233', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(415, 11, 'Siti Ngaisah', 'ceetyaisya@gmail.com', 'user234', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(416, 11, 'Sri Hartati', 'hartati.tatik93@gmail.com', 'user235', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(417, 11, 'Sri Mulyani', 'srimulyani0564@gmail.com', 'user236', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(418, 11, 'Sri Nur Indah Hikmawati', 'cutenindha07@gmail.com', 'user237', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(419, 11, 'Sri Sumartini', 'miss.independent182@gmail.com', 'user238', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(420, 11, 'Sri Wahyuni', 'uminetita33@yahoo.com', 'user239', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(421, 11, 'Subakdo Eko Yulianto', 'planet7yk@gmail.com', 'user240', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(422, 11, 'Sumarsih', 'sumarsih708@yahoo.com', 'user241', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(423, 11, 'Sumaryoko', 'sumaryoko@yahoo.com', 'user242', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(424, 11, 'Sutri Wardati', 'str.adty@gmail.com', 'user243', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(425, 11, 'Suwarno', 'warnohanobbh@gmail.com', 'user244', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(426, 11, 'Tri Utami', 'utamitrijoko@gmail.com', 'user245', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(427, 11, 'Umar Abdul Aziz', 'zizrobiu@gmail.com', 'user246', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(428, 11, 'Wahyudiharto', 'wahyugyokarto@gmail.com', 'user247', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(429, 11, 'Winarni', 'wiwin73bantul@gmail.com', 'user248', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(430, 11, 'Yulianto', 'yulimuga86@gmail.com', 'user249', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(431, 11, 'Zanu', 'zanu_ma124@yahoo.com', 'user250', 'user123', '', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

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
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_sekolah` (`id_sekolah`);

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
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT untuk tabel `jenis_ptk`
--
ALTER TABLE `jenis_ptk`
  MODIFY `id_ptk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id_lembaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

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
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

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
-- Ketidakleluasaan untuk tabel `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
