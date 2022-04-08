-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2022 pada 03.01
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog_levi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_judul` varchar(50) CHARACTER SET latin1 NOT NULL,
  `berita_isi` text CHARACTER SET latin1 NOT NULL,
  `berita_penulis` varchar(50) CHARACTER SET latin1 NOT NULL,
  `berita_tanggal` date NOT NULL,
  `berita_lokasi` varchar(50) CHARACTER SET latin1 NOT NULL,
  `kategori_id` int(5) NOT NULL,
  `berita_foto` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_berita`
--

INSERT INTO `tbl_berita` (`berita_id`, `berita_judul`, `berita_isi`, `berita_penulis`, `berita_tanggal`, `berita_lokasi`, `kategori_id`, `berita_foto`) VALUES
(1, 'makanan ', 'fjhyqwfdywq', 'nis', '2022-04-13', 'tasik', 1, 'h3.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(5) NOT NULL,
  `blog_judul` varchar(100) DEFAULT NULL,
  `blog_content` text DEFAULT NULL,
  `blog_penulis` varchar(100) DEFAULT NULL,
  `blog_tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `blog_cover` varchar(100) NOT NULL,
  `kategori_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_judul`, `blog_content`, `blog_penulis`, `blog_tgl`, `blog_cover`, `kategori_id`) VALUES
(91, 'makanan khas indonesia', '        Upaya mendorong agar makanan khas Indonesia tempe jadi warisan budaya tak benda Unesco terus dilakukan. Salah satunya dengan menelusuri sejarah makanan yang sudah berabad-abad dilestarikan di bumi Nusantara ini.', 'nisa', '2022-04-04 11:50:41', 'h3.png', 0),
(92, 'Tari Bali', '    Bali sempat terpengaruh oleh beberapa kerajaan, seperti Kediri, Majapahit, dan Singasari. Masa itu dinamakan pula sebagai zaman Hindu Jawa atau Jawa Hindu. Melansir jurnal bertajuk ‘Tari Bali: Sebuah Telaah Historis’, zaman tersebut berlangsung dari tahun 900 hingga 1350.', 'tina', '2022-04-04 11:53:15', 'h4.jpg', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(5) NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_ket`) VALUES
(32, 'dsgsdfg', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_judul` varchar(100) NOT NULL,
  `menu_content` text NOT NULL,
  `menu_penulis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indeks untuk tabel `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
