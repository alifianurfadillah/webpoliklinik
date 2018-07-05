-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 08 Agu 2016 pada 08.52
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poliklinik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

CREATE TABLE IF NOT EXISTS `dokter` (
  `id` int(4) NOT NULL,
  `kodedokter` varchar(8) NOT NULL,
  `nmdokter` varchar(50) NOT NULL,
  `almdokter` varchar(50) NOT NULL,
  `telpdokter` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id`, `kodedokter`, `nmdokter`, `almdokter`, `telpdokter`) VALUES
(1, '45', 'gf', 'vbh', 'gbh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwalpraktek`
--

CREATE TABLE IF NOT EXISTS `jadwalpraktek` (
  `id` int(4) NOT NULL,
  `kodejadwal` varchar(8) NOT NULL,
  `hari` varchar(8) NOT NULL,
  `jammulai` time NOT NULL,
  `jamselesai` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwalpraktek`
--

INSERT INTO `jadwalpraktek` (`id`, `kodejadwal`, `hari`, `jammulai`, `jamselesai`) VALUES
(2, '12', 'senin', '00:00:12', '00:00:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenisbiaya`
--

CREATE TABLE IF NOT EXISTS `jenisbiaya` (
  `id` int(4) NOT NULL,
  `idjenisbiaya` varchar(6) NOT NULL,
  `namabiaya` varchar(50) NOT NULL,
  `tarif` int(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenisbiaya`
--

INSERT INTO `jenisbiaya` (`id`, `idjenisbiaya`, `namabiaya`, `tarif`) VALUES
(1, '12', 'dfd', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(4) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `typeuser` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `typeuser`) VALUES
(1, 'anggi', 'anggi', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE IF NOT EXISTS `obat` (
  `id` int(4) NOT NULL,
  `kodeobat` varchar(10) NOT NULL,
  `nmobat` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `hargajual` int(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id`, `kodeobat`, `nmobat`, `merk`, `satuan`, `hargajual`) VALUES
(1, '1', 'tgd', 'gh', 'gh', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE IF NOT EXISTS `pasien` (
  `id` int(4) NOT NULL,
  `nopasien` varchar(10) NOT NULL,
  `namapas` varchar(50) NOT NULL,
  `almpas` varchar(50) NOT NULL,
  `telppas` varchar(16) NOT NULL,
  `tgllahirpas` date NOT NULL,
  `jeniskelpas` varchar(8) NOT NULL,
  `tglregistrasi` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id`, `nopasien`, `namapas`, `almpas`, `telppas`, `tgllahirpas`, `jeniskelpas`, `tglregistrasi`) VALUES
(1, '123', 'jhk', 'jnk', '082267000317', '1999-02-04', 'Pria', '2016-02-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(4) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `namapeg` varchar(50) NOT NULL,
  `almpeg` varchar(50) NOT NULL,
  `telppeg` varchar(16) NOT NULL,
  `tgllhrpeg` date NOT NULL,
  `jnskelpeg` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `namapeg`, `almpeg`, `telppeg`, `tgllhrpeg`, `jnskelpeg`) VALUES
(1, '4', 'bgb', 'df', 'gfdf', '0000-00-00', 'Wanita');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemeriksaan`
--

CREATE TABLE IF NOT EXISTS `pemeriksaan` (
  `id` int(4) NOT NULL,
  `nmpasien` varchar(50) NOT NULL,
  `nopemeriksaan` varchar(8) NOT NULL,
  `keluhan` varchar(225) NOT NULL,
  `diagnosa` varchar(225) NOT NULL,
  `perawatan` varchar(225) NOT NULL,
  `tindakan` varchar(225) NOT NULL,
  `beratbadan` int(2) NOT NULL,
  `tensidiastolik` int(4) NOT NULL,
  `tensisistolik` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemeriksaan`
--

INSERT INTO `pemeriksaan` (`id`, `nmpasien`, `nopemeriksaan`, `keluhan`, `diagnosa`, `perawatan`, `tindakan`, `beratbadan`, `tensidiastolik`, `tensisistolik`) VALUES
(1, 'ag', '12', 'df', 'fg', 'gf', 'fgh', 0, 56, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `id` int(4) NOT NULL,
  `nopendaftaran` varchar(16) NOT NULL,
  `tglpendaftaran` date NOT NULL,
  `nourut` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poliklinik`
--

CREATE TABLE IF NOT EXISTS `poliklinik` (
  `id` int(4) NOT NULL,
  `kodepoli` varchar(5) NOT NULL,
  `namapoli` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `poliklinik`
--

INSERT INTO `poliklinik` (`id`, `kodepoli`, `namapoli`) VALUES
(1, '56h', 'hggf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep`
--

CREATE TABLE IF NOT EXISTS `resep` (
  `id` int(4) NOT NULL,
  `noresep` varchar(5) NOT NULL,
  `jumlah` int(12) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `resep`
--

INSERT INTO `resep` (`id`, `noresep`, `jumlah`) VALUES
(1, '12', 344);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwalpraktek`
--
ALTER TABLE `jadwalpraktek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jenisbiaya`
--
ALTER TABLE `jenisbiaya`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poliklinik`
--
ALTER TABLE `poliklinik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resep`
--
ALTER TABLE `resep`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jadwalpraktek`
--
ALTER TABLE `jadwalpraktek`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `jenisbiaya`
--
ALTER TABLE `jenisbiaya`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pemeriksaan`
--
ALTER TABLE `pemeriksaan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poliklinik`
--
ALTER TABLE `poliklinik`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `resep`
--
ALTER TABLE `resep`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
