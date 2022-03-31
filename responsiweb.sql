-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 06:19 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `responsiweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `judul`, `tanggal`, `isi`, `gambar`) VALUES
(1, 1, 'SEJARAH', '2022-03-29', '                    <p class=\"fw-bold\">PROFIL KAMPUS UNIVERSITAS PALANGKA RAYA</p>\r\n                    <p>Universitas Palangka Raya (UPR) merupakan sebuah perguruan tinggi negeri yang berlokasi di Provinsi Kalimantan Tengah.\r\n                        UPR sendiri berdiri sejak tanggal 10 November 1963 yang mana sekaligus menjadi perguruan tinggi negeri tertua di Kalimantan Tengah. \r\n                        Kampus ini juga memiliki 8 Fakultas di antranya Fakultas Ekonomi dan Bisnis, Fakultas Keguruan dan Ilmu Pendidikan, Fakultas Hukum, \r\n                        Fakultas Teknik, Fakultas Pertanian, Fakultas Matematika dan Ilmu Pengetahuan, Fakultas Ilmu Sosial dan Ilmu Politik dan Fakultas Kedokteran.\r\n                    </p>\r\n                    <p class=\"fw-bold\">SEJARAH UNIVERSITAS PALANGKA RAYA</p>\r\n                    <p>\r\n                        Awal pembentukan Universitas Palangka Raya dilakukan pada tahun 1962 oleh Panitia Persiapan Pembentukan Universitas di Kalimantan Tengah \r\n                        mendapat dukungan formal dari Pemerintah Daerah Kalimantan Tengah dengan nama Universitas Palangka Raya yang diresmikan oleh Menteri Perguruan Tinggi\r\n                        dan Ilmu Pendidikan (PTIP) yaitu Bapak Prof. Dr . Ir. Tojib Hadiwijaya berdasarkan Surat Keputusan Menteri PTIP Nomor 141 Tanggal 10 November 1963 dengan 3 (tiga) fakultas,\r\n                        yaitu Fakultas Ekonomi, Fakultas Pertanian dan Fakultas Kehutanan. Pada saat yang bersamaan berdiri pula IKIP Bandung Cabang Palangka Raya dengan 2 (dua) fakultas,\r\n                        yaitu Fakultas Ilmu Pendidikan (FIP) dan Fakultas Keguruan Ilmu Sosial (FKIS). Pada tanggal 24 Juli 1969, IKIP Bandung Cabang Palangka Raya tersebut diintergrasi ke dalam Universitas Palangka Raya.\r\n                    </p>\r\n                    <p>\r\n                        Dalam perjalanan selanjutnya, Fakultas Pertanian dan Fakultas Kehutanan yang waktu itu ditempatkan di Kuala Kapuas, hanya dapat berjalan kurang lebih 1 (satu) tahun. \r\n                        Pada tahun 1973, FKIS diubah namanya menjadi Fakultas Keguruan. Oleh karena itu, hingga tahun 1981 Universitas Palangka Raya\r\n                        hanya memiliki 3 (tiga) fakultas, yaitu Fakultas Ekonomi, Fakultas Ilmu Pendidikan dan Fakultas Keguruan.\r\n                        </p>\r\n                    <p>\r\n                        Menyadari kebutuhan akan tenaga-tenaga terampil di bidang pertanian dan kehutanan di Kalimantan Tengah, maka pada tahun 1981 Universitas Palangka Raya \r\n                        membuka fakultas baru yaitu Fakultas Non-Gelar Teknologi yang menyelenggarakan program pendidikan pada jenjang Diploma 3 (D-3). \r\n                        Pada Tahun 1982, berdasarkan Surat Keputusan Presiden Republik Indonesia Nomor: 67/1982 tanggal 7 September 1982,\r\n                        Fakultas Ilmu Pendidikan dan Fakultas Keguruan digabung menjadi Fakultas Keguruan dan Ilmu Pendidikan (FKIP) hingga sekarang.\r\n                        Sementara itu pada tahun 1991, Fakultas Pertanian secara resmi berdiri menggantikan Fakultas Non-Gelar Teknologi sesuai dengan Surat Keputusan Menteri Pendidikan dan Kebudayaan Nomor: 0312/0/1991 tanggal 6 Juni 1991.\r\n                    </p>\r\n                    <p>\r\n                        Kemudian, seiring dengan perkembangan dari masa ke masa, pada tahun 2000, berdirilah Fakultas Teknik dan kemudian diikuti oleh berdirinya Fakultas Hukum pada tahun 2003.\r\n                        . Fakultas Ilmu Sosial dan Pemerintah diresmikan pada tahun 2012 selanjutnya pada tahun 2013 berdirilah Fakultas Kedokteran \r\n                        dan terakhir pada tahun 2018 diresmikannya Fakultas Matematika Ilmu Pengetahuan Alam Universitas Palangka Raya.\r\n                        Sehingga dengan demikian, hingga saat ini, Universitas Palangka Raya telah memiliki 8 (delapan) fakultas, yaitu Fakultas Keguruan dan Ilmu Pendidikan, \r\n                        Fakultas Ekonomi dan Bisnis, Fakultas Pertanian, Fakultas Teknik, Fakultas Hukum, Fakultas Ilmu Sosial dan \r\n                        Ilmu Politik, Fakultas Kedokteran serta Fakultas Matematika Ilmu Pengetahuan Alam.\r\n                    </p>', ''),
(2, 1, 'Visi & Misi', '2022-03-29', '                    <p><strong>VISI UNIVERSITAS PALANGKA RAYA</strong><br><br>Universitas Palangka Raya menjadi perguruan tinggi terbaik dalam menghasilkan sumber daya manusia (SDM) yang berkualitas, bermoral Pancasila dan berdaya saing tinggi</p>\r\n<p><strong>MISI UNIVERSITAS PALANGKA RAYA</strong></p>\r\n<ol>\r\n<li>Menyelenggarakan pendidikan dan pengajaran secara efektif dan profesional.</li>\r\n<li>Menyelenggarakan penelitian dan pengabdian kepada masyarakat untuk kemajuan ilmu pengetahuan dan teknologi serta kesejahteraan masyarakat.</li>\r\n<li>Membina kehidupan akademik yang demokratis dan dinamis dengan mendayagunakan sumberdaya secara optimal, transparan, akuntabel, dan meningkatkan kualitas sumberdaya manusia berkelanjutan.</li>\r\n<li>Menyelenggarakan pengelolaan universitas berdasarkan paradigma baru manajemen pendidikan tinggi yang berazas otonomi, evaluasi, akuntabilitas, akreditasi, dan jaminan mutu yang bermuara pada peningkatan kualitas yang berkelanjutan.</li>\r\n</ol>    ', ''),
(20, 2, 'Rekrutmen Calon Satuan Tugas Pencegahan dan Penanganan Kekerasan Seksual Di Lingkungan UPR', '2022-03-29', '', '830.jpeg'),
(21, 2, 'UPR Membangun Desa Berkarya untuk Indonesia', '2022-03-30', '<p>Rektor Universitas Palangka Raya (UPR) Dr. Andrie Elia, S.E., M.Si. menghadiri Kegiatan Pencanangan UPR membangun desa berkarya untuk Indonesia dalam rangka mendukung program Merdeka Belajar Kampus Merdeka (MBKM) untuk mempersiapkan SDM unggul untuk Indonesia Tangguh, kegiatan dilaksanakan di Kelurahan Tumbang Talaken Kecamatan Manuhing Kabupaten Gunung Mas, Senin 29 Oktober 2021.</p> <p>Rektor Hadir didampingi oleh Ketua Dharma Wanita Persatuan Universitas Palangka Raya (UPR) Dra. Riap Susilawati, M.Si. para Dekan di lingkungan Universitas Palangka Raya, Para Dosen pembimbing lapangan KKN-T baik dari Kabupaten Gunung Mas maupun Barito Selatan. Hadir secara langsung dalam kegiatan tersebut Bupati Gunung Mas Jaya S. Monong beserta para pejabat struktural di lingkungan Kabupaten Gunung Mas. </p> <p>Dalam kegiatan tersebut dilaksanakan juga penandatanganan Piagam Komitmen Bersama mendukung program Merdeka Belajar Kampus Merdeka (MBKM) Universitas Palangka Raya yang ditandatangani secara langsung oleh Rektor Universitas Palangka Raya, Bupati Gunung Mas, Ketua LPPM UPR, Camat Manuhing, Lurah Tumbang Talaken, Kades Jalemu Raya dan PT. Kalimantan Hamparan Sawit. </p> <p>Dalam sambutannya Rektor UPR menyampaikan bahwa kegiatan ini merupakan bagian dari program pemerintah melalui Menteri pendidikan Republik Indonesia yaitu Merdeka Belajar Kampus Merdeka dalam pengabdian untuk masyarakat. Program ini juga menjadi kontribusi dan karya besar UPR untuk membangun Kalimantan Tengah, mambangun bangsa Indonesia dalam upaya meningkatkan sumber daya manusia untuk mewujudkan Indonesia emas 2045. </p> <p>Rektor juga memberikan semangat kepada para mahasiswa untuk berani bermimpi dan melakukan hal-hal besar bagi masyarakat melalui program pencanangan UPR membangun desa adalah momentum bagi para mahasiswa sebagai agen of change untuk berkarya dan berbuat membantu pemerintah mempersiapkan SDM unggul untuk Indonesia Tangguh.</p>', 'berita_satu.jpeg'),
(22, 2, 'UPR TUAN RUMAH KKN KEBANGSAAN TAHUN 2022', '2022-03-30', '<p><p>Universitas Palangka Raya (UPR) menjadi tuan rumah dalam pelaksanaan Kuliah Kerja Nyata (KKN) kebangsaan dan KKN Bersama, Badan Kerjasama Perguruan Tinggi Negeri (BKS-PTN) Wilayah Barat. </p>\r\n<p>Adapun Tema yang di usung yaitu “Penerpan Falsafah Huma Betang Sebagai Perwujudan NKRI untuk Mendukung Pengembangan Lumbung Pangan (Food Estate) Menuju Kemandirian Nasional”. Huma Betang (rumah besar) sebagai rumah adat Suku Dayak di Kalimantan Tengah telah menggambarkan filosofi hidup masyarakat Suku Dayak sejak jaman dulu hingga sekarang. Nilai-nilai keadaban kewarganegaraan yang diimplementasikan pada keberadaan Huma Betang Suku Dayak Kalimantan Tengah adalah nilai gotong royong, kebersamaan, toleransi, rukun, dan hidup berdampingan. </p>\r\n<p>KKN Kebangsaan di UPR akan berlangsung dari tanggal 16 juli hingga 31 Agustus 2022 yang akan diikuti oleh kurang lebih 85 Perguruan Tinggi Negeri. Peserta KKN Kebangsaan merupakan mahasiswa/i yang telah lulus seleksi KKN Kebangsaan Oleh Perguruan Tinggi Yang bersangkutan.   </p>\r\n<p>KKN Kebangsaan dilaksanakan di Kabupaten Kapuas dan Kabupaten Pulang Pisau. Lokasi di Kabupaten Kapuas terdapat di 46 desa yang berada di enam kecamatan, yaitu Kecamatan Pulau Petak, Kecamatan Kapuas Timur, Kecamatan Kapuas Hilir, Kecamatan Kapuas Barat, Kecamatan Selat dan Kecamatan Dadahup, Lokasi di Kabupaten Pulang Pisau terdapat 36 desa yang berada di tiga kecamatan, yaitu Kecamatan Maliku, Kecamatan Pandih Batu dan Kecamatan Jabiren Raya.</p></p>', 'berita_dua.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Profil'),
(2, 'Kemahasiswaan'),
(3, 'Pengumuman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `fk_berita_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `fk_berita_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
