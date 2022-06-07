-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jun 2022 pada 06.46
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spforwardcf1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `pass`, `nama`) VALUES
(1, 'admin', 'admin', 'administrator'),
(2, 'adminbaru', 'adminbaru', 'adminbaru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode`, `nama_gejala`) VALUES
(4, 'KK1', 'LUKA PADA GUSI'),
(5, 'KK2', 'GIGI TERASA SAKIT'),
(6, 'KK3', 'PASIEN MENGALAMI DEMAM'),
(7, 'KK4', 'GUSI MUDAH BERDARAH'),
(8, 'KK5', 'GUSI BENGKAK DAN SAKIT'),
(9, 'KK6', 'NYERI SAAT MENGGUNYAH MAKANAN'),
(10, 'KK7', 'TERDAPAT NANAH PADA GUSI'),
(11, 'KK8', 'GUSI TURUN DAN MENYUSUT'),
(12, 'KK9', 'GIGI SENSITIF TERHADAP MAKANAN PANAS ATAU DINGIN'),
(13, 'KK10', 'NYERI SPONTAN'),
(14, 'KK11', 'MUNCULNA GIGI PERMANEN BERDEMPETAN DENGAN GIGI SUSU'),
(15, 'KK12', 'TERDAPAT PLAK PADA GIGI'),
(16, 'KK13', 'TERLIHAT RETAKAN PADA GIGI ATAU GIGI TERLIHAT CACAT'),
(17, 'KK14', 'GUSI BERDARAH'),
(18, 'KK15', 'MULUT TERSA TIDAK ENAK'),
(19, 'KK16', 'WARNA GIGI BERUBAH ATAU BERBEDA DENGAN YANG LAINNYA'),
(20, 'KK17', 'GIGI TERASA SAKIT SAAT MAKAN MAKANAN YANG PANAS ATAU DINGIN'),
(21, 'KK18', 'EMAIL GIGI MENIPIS'),
(22, 'KK19', 'ADA LUBANG PADA GIGI'),
(23, 'KK20', 'GIGI SUSU GOYANG'),
(24, 'KK21', 'NODA BEWARNA COKELAT, HITAM, ATAU PUTIH PADA PERMUKAAN GIGI'),
(25, 'G1', 'tidak mau bersosialisasi'),
(26, 'G2', 'males berinteraksi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kerusakan`
--

CREATE TABLE `kerusakan` (
  `id_kerusakan` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kerusakan`
--

INSERT INTO `kerusakan` (`id_kerusakan`, `kode`, `nama`) VALUES
(2, 'KG1', 'ULKUS DEKUBITUS'),
(3, 'KG2', 'GINGIVITIS'),
(4, 'KG3', 'ABSES'),
(5, 'KG4', 'PULPITIS'),
(6, 'KG5', 'PERSISTENSI'),
(7, 'KG6', 'CALCULUS'),
(8, 'KG7', 'GIGI FRAKTUR'),
(9, 'KG8', 'PERIODONTITIS'),
(10, 'KG9', 'GANGREN PULPA'),
(11, 'KG10', 'KARIES GIGI'),
(12, 'K1', 'Gangguan Kepribadian Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `persentase` float NOT NULL,
  `kerusakan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konsultasi`
--

INSERT INTO `konsultasi` (`id`, `id_pasien`, `persentase`, `kerusakan`) VALUES
(1, 2, 80, 'ULKUS DEKUBITUS'),
(2, 2, 95.2, 'ULKUS DEKUBITUS'),
(3, 5, 95.2, 'ULKUS DEKUBITUS'),
(4, 5, 40, 'ULKUS DEKUBITUS'),
(25, 5, 60, 'GIGI FRAKTUR'),
(29, 6, 40, 'PULPITIS'),
(30, 6, 40, 'PULPITIS'),
(31, 6, 40, 'PULPITIS'),
(32, 5, 20, 'KARIES GIGI'),
(33, 5, 48, 'PULPITIS'),
(34, 5, 0, ''),
(35, 5, 20, 'KARIES GIGI'),
(36, 5, 60, 'KARIES GIGI'),
(37, 5, 20, 'KARIES GIGI'),
(38, 5, 20, 'KARIES GIGI'),
(39, 5, 20, 'KARIES GIGI'),
(40, 5, 60, 'KARIES GIGI'),
(41, 5, 0, ''),
(42, 5, 4, 'ULKUS DEKUBITUS'),
(43, 5, 64, 'ULKUS DEKUBITUS'),
(44, 5, 4, 'ULKUS DEKUBITUS'),
(45, 5, 4, 'ULKUS DEKUBITUS'),
(46, 5, 0, ''),
(47, 5, 80, 'PERSISTENSI'),
(48, 5, 48, 'PULPITIS'),
(49, 5, 48, 'PULPITIS'),
(50, 5, 48, 'PULPITIS'),
(51, 5, 48, 'PULPITIS'),
(52, 5, 0, ''),
(53, 5, 0, ''),
(54, 5, 20, 'PERSISTENSI'),
(55, 5, 20, 'KARIES GIGI'),
(56, 5, 0, ''),
(57, 5, 0, ''),
(58, 5, 32, 'GIGI FRAKTUR'),
(59, 5, 40, 'KARIES GIGI'),
(60, 5, 80, 'GIGI FRAKTUR'),
(61, 5, 0, ''),
(62, 5, 20, 'GIGI FRAKTUR'),
(63, 5, 20, 'GIGI FRAKTUR'),
(64, 5, 0, ''),
(65, 5, 0, ''),
(66, 5, 80, 'PERSISTENSI'),
(67, 5, 60, 'ULKUS DEKUBITUS'),
(68, 5, 40, 'PERSISTENSI'),
(69, 5, 20, 'KARIES GIGI'),
(70, 5, 20, 'PERIODONTITIS'),
(71, 5, 40, 'GANGREN PULPA'),
(72, 5, 20, 'GANGREN PULPA'),
(73, 5, 20, 'GANGREN PULPA'),
(74, 5, 20, 'GANGREN PULPA'),
(75, 5, 0, ''),
(76, 5, 20, 'KARIES GIGI'),
(77, 5, 14.4, 'ULKUS DEKUBITUS'),
(78, 5, 0, ''),
(79, 5, 20, 'KARIES GIGI'),
(80, 7, 40, 'GANGREN PULPA'),
(81, 7, 20, 'KARIES GIGI'),
(82, 8, 33.6, 'ULKUS DEKUBITUS'),
(83, 7, 48, 'GIGI FRAKTUR'),
(84, 8, 40, 'GIGI FRAKTUR'),
(85, 8, 60, 'PERSISTENSI'),
(86, 0, 60, 'ULKUS DEKUBITUS'),
(87, 8, 32, 'CALCULUS'),
(88, 8, 40, 'PERSISTENSI'),
(89, 8, 20, 'ULKUS DEKUBITUS'),
(90, 5, 0, ''),
(91, 5, 0, ''),
(92, 5, 0, ''),
(93, 5, 0, ''),
(94, 5, 0, ''),
(95, 5, 0, ''),
(96, 5, 0, ''),
(97, 5, 0, ''),
(98, 5, 0, ''),
(99, 5, 0, ''),
(100, 5, 0, ''),
(101, 5, 0, ''),
(102, 5, 0, ''),
(103, 5, 0, ''),
(104, 5, 0, ''),
(105, 5, 0, ''),
(106, 5, 0, ''),
(107, 5, 0, ''),
(108, 5, 0, ''),
(109, 5, 20, 'PERSISTENSI'),
(110, 5, 20, 'GIGI FRAKTUR'),
(111, 5, 0, ''),
(112, 5, 0, ''),
(113, 5, 0, ''),
(114, 5, 20, 'PERSISTENSI'),
(115, 5, 20, 'GIGI FRAKTUR'),
(116, 5, 20, 'GIGI FRAKTUR'),
(117, 5, 0, ''),
(118, 5, 0, ''),
(119, 5, 0, ''),
(120, 5, 0, ''),
(121, 5, 0, ''),
(122, 5, 0, ''),
(123, 5, 0, ''),
(124, 5, 0, ''),
(125, 5, 0, ''),
(126, 5, 20, 'PERSISTENSI'),
(127, 5, 20, 'PERSISTENSI'),
(128, 5, 20, 'KARIES GIGI'),
(129, 5, 0, ''),
(130, 5, 0, ''),
(131, 5, 0, ''),
(132, 5, 30, 'Gangguan Kepribadian Ringan'),
(133, 5, 29, 'Gangguan Kepribadian Ringan'),
(134, 5, 30, 'Gangguan Kepribadian Ringan'),
(135, 5, 0, ''),
(136, 5, 10, 'Gangguan Kepribadian Ringan'),
(137, 5, 30, 'Gangguan Kepribadian Ringan'),
(138, 5, 0, ''),
(139, 5, 0, ''),
(140, 5, 0, ''),
(141, 5, 30, 'Gangguan Kepribadian Ringan'),
(142, 5, 10, 'Gangguan Kepribadian Ringan'),
(143, 5, 30, 'Gangguan Kepribadian Ringan'),
(144, 5, 0, ''),
(145, 5, 0, ''),
(146, 5, 30, 'Gangguan Kepribadian Ringan'),
(147, 5, 0, ''),
(148, 5, 30, 'Gangguan Kepribadian Ringan'),
(149, 5, 10, 'Gangguan Kepribadian Ringan'),
(150, 5, 0, ''),
(151, 5, 29, 'Gangguan Kepribadian Ringan'),
(152, 5, 29, 'Gangguan Kepribadian Ringan'),
(153, 5, 29, 'Gangguan Kepribadian Ringan'),
(154, 5, 29, 'Gangguan Kepribadian Ringan'),
(155, 5, 30, 'Gangguan Kepribadian Ringan'),
(156, 5, 30, 'Gangguan Kepribadian Ringan'),
(157, 5, 30, 'Gangguan Kepribadian Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilaipakar`
--

CREATE TABLE `nilaipakar` (
  `id_nilai` int(11) NOT NULL,
  `id_kerusakan` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `mb` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilaipakar`
--

INSERT INTO `nilaipakar` (`id_nilai`, `id_kerusakan`, `id_gejala`, `mb`) VALUES
(2, 2, 4, 0.8),
(3, 2, 5, 0.4),
(4, 2, 6, 0.6),
(5, 3, 7, 0.4),
(6, 3, 8, 0.8),
(7, 3, 9, 0.6),
(8, 3, 11, 0.8),
(9, 3, 15, 0.4),
(10, 4, 6, 0.4),
(11, 4, 8, 0.8),
(12, 4, 20, 0.6),
(13, 4, 12, 0.4),
(14, 4, 10, 0.8),
(15, 5, 20, 0.6),
(16, 5, 13, 0.6),
(17, 5, 22, 0.6),
(18, 6, 14, 1),
(19, 6, 23, 0.6),
(20, 7, 8, 0.4),
(21, 7, 7, 0.6),
(22, 7, 15, 0.6),
(23, 8, 9, 0.4),
(24, 8, 12, 0.6),
(25, 8, 16, 1),
(26, 9, 9, 0.6),
(27, 9, 17, 0.6),
(28, 9, 18, 0.4),
(29, 9, 10, 0.6),
(30, 10, 19, 0.8),
(31, 10, 20, 0.6),
(32, 11, 5, 0.6),
(33, 11, 12, 0.4),
(34, 11, 22, 0.8),
(35, 11, 24, 0.8),
(36, 12, 25, 0.5),
(37, 12, 26, 0.3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jk` varchar(15) NOT NULL,
  `usia` varchar(3) NOT NULL,
  `hp` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `username`, `pass`, `nama`, `jk`, `usia`, `hp`, `email`, `alamat`) VALUES
(5, 'gunawan', 'gunawan', 'Gunawan', 'Laki-laki', '25', '222', 'aaa@gmail.com', 'aaa'),
(8, 'user', 'user', 'user saja', 'Perempuan', '24', '2554', 'user@gmail.com', 'jambi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penanganan`
--

CREATE TABLE `penanganan` (
  `id_penanganan` int(11) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `penanganan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penanganan`
--

INSERT INTO `penanganan` (`id_penanganan`, `kode`, `penanganan`) VALUES
(1, 'S01', 'Penanganan 1'),
(2, 'S02', 'Penanganan 2'),
(4, 'S04', 'Penanganan 4'),
(5, 'S05', 'Penanganan 5'),
(7, 'S06', 'Penanganan 6'),
(8, 'S07', 'Penanganan 7'),
(9, 'S08', 'Penanganan 8'),
(10, 'S09', 'Penanganan 9'),
(11, 'S10', 'Penanganan 10'),
(12, 'S03', 'Penanganan 3'),
(13, 'K1', 'beri nasihat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rule_penanganan`
--

CREATE TABLE `rule_penanganan` (
  `id_rule` int(11) NOT NULL,
  `kode_kerusakan` varchar(20) NOT NULL,
  `kode_penanganan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rule_penanganan`
--

INSERT INTO `rule_penanganan` (`id_rule`, `kode_kerusakan`, `kode_penanganan`) VALUES
(5, 'KG1', 'S01'),
(6, 'KG2', 'S02'),
(7, 'KG3', 'S03'),
(8, 'KG4', 'S04'),
(9, 'KG5', 'S05'),
(10, 'KG6', 'S06'),
(11, 'KG7', 'S07'),
(12, 'KG8', 'S08'),
(13, 'KG9', 'S09'),
(14, 'KG10', 'S10'),
(15, 'K1', 'K1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indeks untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  ADD PRIMARY KEY (`id_kerusakan`);

--
-- Indeks untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id`,`id_pasien`);

--
-- Indeks untuk tabel `nilaipakar`
--
ALTER TABLE `nilaipakar`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indeks untuk tabel `penanganan`
--
ALTER TABLE `penanganan`
  ADD PRIMARY KEY (`id_penanganan`);

--
-- Indeks untuk tabel `rule_penanganan`
--
ALTER TABLE `rule_penanganan`
  ADD PRIMARY KEY (`id_rule`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kerusakan`
--
ALTER TABLE `kerusakan`
  MODIFY `id_kerusakan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT untuk tabel `nilaipakar`
--
ALTER TABLE `nilaipakar`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `penanganan`
--
ALTER TABLE `penanganan`
  MODIFY `id_penanganan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `rule_penanganan`
--
ALTER TABLE `rule_penanganan`
  MODIFY `id_rule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
