-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Apr 2021 pada 17.54
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
-- Database: `db_dapodik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id_agama` int(11) NOT NULL,
  `agama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_ptk`
--

CREATE TABLE `jenis_ptk` (
  `id_ptk` int(11) NOT NULL,
  `ptk` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jk`
--

CREATE TABLE `jk` (
  `id_jk` int(11) NOT NULL,
  `jk` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `lembaga` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `pekerjaan` varchar(128) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `npsn` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_pegawai`
--

CREATE TABLE `status_pegawai` (
  `id_status` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_perkawinan`
--

CREATE TABLE `status_perkawinan` (
  `id_status_kawin` int(11) NOT NULL,
  `status_kawin` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sumber_gaji`
--

CREATE TABLE `sumber_gaji` (
  `id_sumber_gaji` int(11) NOT NULL,
  `sumber_gaji` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tugas_tambahan`
--

CREATE TABLE `tugas_tambahan` (
  `id_tugas` int(11) NOT NULL,
  `nama_tugas` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `active` tinyint(1) NOT NULL
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_agama`);

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
-- Indeks untuk tabel `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD KEY `id_user` (`id_user`);

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
  MODIFY `id_agama` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jenis_ptk`
--
ALTER TABLE `jenis_ptk`
  MODIFY `id_ptk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jk`
--
ALTER TABLE `jk`
  MODIFY `id_jk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kebutuhan_khusus`
--
ALTER TABLE `kebutuhan_khusus`
  MODIFY `id_kebutuhan_khusus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id_lembaga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `id_pangkat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_pegawai`
--
ALTER TABLE `status_pegawai`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `status_perkawinan`
--
ALTER TABLE `status_perkawinan`
  MODIFY `id_status_kawin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `sumber_gaji`
--
ALTER TABLE `sumber_gaji`
  MODIFY `id_sumber_gaji` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tugas_tambahan`
--
ALTER TABLE `tugas_tambahan`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `warga_negara`
--
ALTER TABLE `warga_negara`
  MODIFY `id_warga` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
