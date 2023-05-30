-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2023 at 07:26 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keuanganstp`
--

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `Id_jabatan` int(11) NOT NULL,
  `Nama_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`Id_jabatan`, `Nama_jabatan`) VALUES
(1, 'Kepala bagian umum'),
(2, 'Koordinator lapangan');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `Id_karyawan` int(11) NOT NULL,
  `No_induk_karyawan` int(11) DEFAULT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `Tgl_lahir` date DEFAULT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `Id_jabatan` int(11) DEFAULT NULL,
  `Id_unit_kerja` int(11) DEFAULT NULL,
  `Id_riwayat_pendidikan` int(11) DEFAULT NULL,
  `Id_riwayat_jabatan` int(11) DEFAULT NULL,
  `Id_riwayat_pelatihan` int(11) DEFAULT NULL,
  `Id_riwayat_hukuman` int(11) DEFAULT NULL,
  `Id_keluarga` int(11) DEFAULT NULL,
  `Id_riwayat_cuti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`Id_karyawan`, `No_induk_karyawan`, `Nama`, `Tgl_lahir`, `Foto`, `Id_jabatan`, `Id_unit_kerja`, `Id_riwayat_pendidikan`, `Id_riwayat_jabatan`, `Id_riwayat_pelatihan`, `Id_riwayat_hukuman`, `Id_keluarga`, `Id_riwayat_cuti`) VALUES
(1, 92738933, 'Respati', '1997-01-01', NULL, 2, 2, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `master_agenda`
--

CREATE TABLE `master_agenda` (
  `Id_agenda` int(11) NOT NULL,
  `Tanggal` date DEFAULT NULL,
  `Tanggal_selesai` date DEFAULT NULL,
  `Pukul` varchar(255) DEFAULT NULL,
  `Acara` varchar(255) DEFAULT NULL,
  `Instansi` varchar(255) DEFAULT NULL,
  `Tempat` varchar(255) DEFAULT NULL,
  `Perihal` varchar(255) DEFAULT NULL,
  `Jumlah_pengunjung` int(11) DEFAULT NULL,
  `Id_keterangan` int(25) DEFAULT NULL,
  `Pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `master_agenda`
--

INSERT INTO `master_agenda` (`Id_agenda`, `Tanggal`, `Tanggal_selesai`, `Pukul`, `Acara`, `Instansi`, `Tempat`, `Perihal`, `Jumlah_pengunjung`, `Id_keterangan`, `Pic`) VALUES
(173, '2023-01-03', NULL, '12.30-selesai', 'Monev Pengadaan Barang Dan Jasa 2022 Dan Pengadaan Barang Dan Jasa 2023', 'Setda Surakarta', 'Ruang Tawangarum', 'UNDANGAN', NULL, NULL, 'Ibu Susi'),
(174, '2023-01-04', '0000-00-00', '09.30/ menyesuaikan', 'Kunjungan Industri', 'SMK Muh. Mungkid Magelang', 'KST', 'perihal', 160, 31, 'Pak Budi'),
(175, '2023-01-04', '0000-00-00', '10.00-selesai', 'Kunjungan Industri', 'SMKN 1 Rejotangan Tulungagung', 'KST', 'perihal', 91, 31, 'Pak Budi'),
(176, '2023-01-07', NULL, '09.00-13.00', 'Workshop Kemitraan Program Merdeka Belajar Kampus Merdeka (MBKM)', 'FEB UNS', 'Syariah Hotel Solo', 'UNDANGAN', NULL, NULL, 'Pak Danu'),
(177, '2023-01-07', NULL, '09.00-16.00', 'Test Drive', 'Shopee Xpress', 'KST', NULL, NULL, NULL, 'Pak Danang'),
(178, '2023-01-09', NULL, '08.00-selesai', 'Briefing Bulan Januari 2023', 'KST', 'Aula Gedung RnD', NULL, NULL, NULL, 'Ibu Lucia'),
(179, '2023-01-09', NULL, '09.00-selesai', 'Rapat Koordinasi Anggaran BLUD', 'BPKAD Kota Surakarta', 'BPKAD Kota Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Rony Ibu Ana'),
(180, '2023-01-10', NULL, '08.00-10.00', 'Rekonsiliasi Laporan Keuangan SKPD TA 2022', 'BPKAD Kota Surakarta', 'The Hotel Sunan Solo', 'UNDANGAN', NULL, NULL, 'Pak Agus Pak Budi Ibu Ana'),
(181, '2023-01-10', '0000-00-00', '10.00-selesai', 'Kunjungan Study Komparatif Pengembangan SDM', 'Disnakertrans Kab Musi Banyuasin', 'Ruang Meeting 1', 'perihal', 10, 34, 'Pak Tegar'),
(182, '2023-01-10', NULL, '10.30-12.30', 'Reviu Laporan Keuangan Pemerintah Kota Surakarta Tahun 2022', 'Inspektorat', 'The Hotel Sunan Solo', 'UNDANGAN', NULL, NULL, 'Pak Wahyu, Pak Agus Pak Budi Ibu Ana'),
(183, '2023-01-10', NULL, '14.00-selesai', 'Ekspose Temuan & Pembahasan Rekomendasi Hasil Pemeriksaan', 'Inspektorat', 'Ruang Rapat Inspektorat', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Wahyu Ibu Ana'),
(184, '2023-01-10', NULL, '14.00-selesai', 'Koordinasi Kegiatan Peresmian Kawasan Sains dan Teknologi Solo Technopark dengan tema (Ruang Kolaborasi Digital Penuh Inspirasi) yang rencananya akan dihadiri oleh Presiden RI Bp. Joko Widodo', 'KST', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Yudit'),
(185, '2023-01-10', '0000-00-00', '16.00-selesai', 'Meeting dengan J&T dan Telkom', 'J&T', 'Ruang Seminar Besar', 'perihal', 12, 35, 'Pak Yudit Pak Susilo'),
(186, '2023-01-11', NULL, '11.00-selesai', 'Penjajagan kerjasama dengan STP', 'Viar', 'Ruang Seminar Besar', NULL, NULL, NULL, 'Pak Yudit Pak Susilo'),
(187, '2023-01-11', '2023-01-14', '08.00-19.00', 'Pengambilan Gambar Seluruh Area STP', 'Shopee', 'KST', NULL, NULL, NULL, 'Pak Susilo Pak Danang Pak Untung'),
(188, '2023-01-12', '0000-00-00', '08.00-09.30', 'Kunjungan Industri', 'STKIP Muhammadiyah Blora', 'KST', 'perihal', 20, 32, 'Pak Danu'),
(189, '2023-01-12', NULL, '08.00-selesai', 'DKT Penyusunan Renja Dinas Koperasi UKM dan Perindustrian Kota Surakarta', 'Dinkop UKM Perin', 'Harris Hotel', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(190, '2023-01-12', NULL, '09.00-selesai', 'Prof Paulina akan berkunjung ke STP', 'ICE Institute', 'KST', NULL, NULL, NULL, 'Pak Yudit'),
(191, '2023-01-12', '2023-01-13', '16.00-18.00', 'Talk Show Kolaborasi Solo Technopark', 'Shopee', 'Selasar Shopee Creative & Innovation Hub', 'perihal', 50, 1, 'Pak Untung Pak Danang'),
(192, '2023-01-13', '0000-00-00', '09.00-selesai', 'Kunjungan Diskusi Kebijakan KST untuk Perencanaan Pembangunan Nasional bidang IPTEK ke depan', 'BAPPENAS', 'Ruang Seminar Besar', 'perihal', 5, 34, 'Pak Yudit Pak Chris Pak Susilo'),
(193, '2023-01-13', '0000-00-00', '14.00-selesai', 'Kerjasama Program Soft Opening Solo Safari', 'Solo Safari', 'Ruang Seminar Besar', 'perihal', 5, 34, 'Pak Yudit Pak Susilo'),
(194, '2023-01-13', NULL, '09.00-selesai', 'Persiapan Pelaksanaan SKM pada Unit Pelayanan Publik di Lingkungan Pemkot Surakarta Tahun 2023 Trwulan I (Waktu Pelaksanaan Terlampir)', 'Setda Surakarta', 'Zoom Meeting', 'UNDANGAN', NULL, NULL, 'Ibu Lucia'),
(195, '2023-01-14', '0000-00-00', '15.00-22.00', 'Pekan Kolaborasi Solo Technopark (Foodpark, Live Music, Mini Games)', 'Shopee', 'Outdoor Area', NULL, NULL, NULL, 'Pak Untung Pak Danang'),
(196, '2023-01-15', '0000-00-00', '08.00-19.00', 'Free Fire Qualifier', 'Shopee', 'Garena Gaming & Community Hub', 'perihal', 350, 8, 'Pak Untung Pak Danang'),
(197, '2023-01-15', '0000-00-00', '08.00-selesai', 'Musrenbangkel Jebres', 'Kelurahan Jebres', 'KST', 'perihal', 250, 34, 'Pak Susilo Pak Danang Pak Untung'),
(198, '2023-01-16', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'SMK Widya Praja Ungaran', 'KST', 'perihal', 22, 31, 'Pak Budi'),
(199, '2023-01-16', NULL, '12.30-selesai', 'Sosialisasi Penyusunan Sasaran Kinerja Pegawai Tahun 2023', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Wahyu Pak Agus Pak BUdi'),
(200, '2023-01-17', NULL, '08.00-selesai', 'Desk Evaluasi e-Kinerja', 'BPKPSDM Surakarta', 'Harris Hotel', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(201, '2023-01-17', NULL, '08.30-selesai', 'Undangan Diskusi Kelompok Terbatas (DKT) Penyusunan Rencana Kerja (RENJA) Tahun 2024 Dinas Tenaga Kerja', 'Dinas Tenaga Kerja Kota Surakarta', 'Megaland Hotel', 'UNDANGAN', NULL, NULL, 'Pak Chris'),
(202, '2023-01-17', NULL, '09.00-selesai', 'Rapat Koordinasi Pengendalian Operasional Keuangan (RAKORPOK) \"Evaluasi Capaian Kinerja SPBD TA 2022 dan Percepatan Pelaksanaan APBD TA 2023', 'Setda Surakarta', 'Bale Tawangarum Kompleks Balaikota Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Wahyu'),
(203, '2023-01-17', NULL, '10.00-selesai', 'Pembicaraan lanjutan Gate Akses Kawasan', 'PT MKP Plus Telkom', 'KST', NULL, NULL, NULL, 'Pak Yudit Pak Susilo'),
(204, '2023-01-18', NULL, '09.00-selesai', 'Rapat Penyusunan Kajian Analisis Kebijakan tentang Relevansi Kebijakan Perencanaan Pembangunan Daerah dengan Rangkaian Kegiatan Riset Pemerintah', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(205, '2023-01-18', NULL, '09.00-selesai', 'DKT DPMPTSP Kota Surakarta Tahun 2023', 'DPMPTSP', 'Hotel Horizon Aziza Solo', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(206, '2023-01-18', NULL, '10.00-13.00', 'Tech to Impact - Networking and Sharing Session', 'British Embassy Jakarta', 'Ruang Seminar Besar Gedung Biru', 'UNDANGAN', NULL, NULL, 'Pengelola KST'),
(207, '2023-01-18', NULL, '12.30-selesai', 'Rapat Penyusunan Kajian Monev RAD Sistem Inovasi Daerah Kegiatan Penelitian dan Pengembangan bidang Ekonomi dan Pembangunan', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(208, '2023-01-18', NULL, '13.00-16.00', 'Undangan Pelatihan Pengisian Aplikasi SIMDALBANGDA MURNI Tahun Anggaran 2023', 'Setda Surakarta', 'Ruang Rapat Manganti Praja Kota Surakarta', NULL, NULL, NULL, 'Pak Agus'),
(209, '2023-01-19', NULL, NULL, 'Permohonan Waktu Diskusi Program Pendidikan Komersial Diving', 'PT Pusat Wisata Selam Global', 'KST', 'RESCHEDULE', NULL, NULL, NULL),
(210, '2023-01-19', '0000-00-00', '08.00-selesai', 'Kunjungan Tamu PHE', 'PHE', 'Ruang Meeting 1', 'perihal', 10, 13, 'Pak Tegar'),
(211, '2023-01-19', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'SMK Yos Sudarso Jeruklegi', 'Aula Gedung RnD', 'perihal', 88, 31, 'Pak Budi'),
(212, '2023-01-19', NULL, '10.00-selesai', 'Diskusi Penjajakan Kerjasama', 'VIAR', 'PT Triangle Motorindo Semarang', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Chris Pak Susilo'),
(213, '2023-01-20', NULL, '08.30-selesai', 'Rapat koordinasi Persiapan DKT Balitbangda Kota Surakarta tahun 2023', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Wahyu'),
(214, '2023-01-20', NULL, '14.00-selesai', 'Meeting implementasi kerjasama dengan J&T', 'J&T', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Yudit Pak Susilo Mas Riza'),
(215, '2023-01-20', NULL, '18.30-selesai', 'Pengesahan dan Pengukuhan Dewan Pengurus KADIN Surakarta', 'KADIN Surakarta', 'Diamond International Restaurant', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(216, '2023-01-24', NULL, '13.00-selesai', 'Permohonan Waktu Diskusi Program Pendidikan Komersial Diving', 'PT Pusat Wisata Selam Global', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pak Chris Pak Arief'),
(217, '2023-01-25', '0000-00-00', '08.30-11.00', 'Kunjungan Industri', 'SMK Sunan Drajat Lampongan', 'Aula Gedung RnD', 'perihal', 100, 31, 'Pak Budi'),
(218, '2023-01-25', NULL, '09.00-selesai', 'DKT Badan Penelitian dan Pengembangan Daerah Kota Surakarta tahun 2023', 'Balitbangda Kota Surakarta', 'Harris Hotel', 'UNDANGAN', NULL, NULL, 'Pengelola KST'),
(219, '2023-01-25', NULL, '10.00-11.30', 'Penggunaan Lahan untuk Parkir acara Groundbreaking Museum Sains dan Teknologi Perumda PAU \"Pedaringan\" Kota Surakarta', 'Perumda Pergudangan dan Aneka Usaha \"Pedaringan\"', 'KST', NULL, NULL, NULL, 'Pak Untung'),
(220, '2023-01-25', '0000-00-00', '13.00-selesai', 'Kunjungan Industri', 'SMAN 1 Kalasan', 'Aula Gedung RnD', 'perihal', 155, 31, 'Pak Budi'),
(221, '2023-01-26', NULL, '08.30-selesai', 'Entry Pergeseran APBD TA 2023', 'BPKAD Kota Surakarta', 'Horizon Aziza', 'UNDANGAN', NULL, NULL, 'Pak Agus'),
(222, '2023-01-26', NULL, '09.00-selesai', 'DKT Damkar', 'Damkar', 'UNS Inn', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(223, '2023-01-27', NULL, '08.00-12.00', 'Soft Opening Solo Safari', 'PT Kelola Taman Wisata', 'Solo Safari', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(224, '2023-01-27', NULL, '13.30-selesai', 'Tamu Direksi Bank Mandiri', 'Bank Mandiri', 'MDH', NULL, NULL, NULL, 'Pak Yudit'),
(225, '2023-01-31', NULL, '09.00-selesai', 'Undangan Workshop Pemetaan Kerjasama Daerah Tahun 2024', 'Setda Surakarta', 'Swiss-Bel Hotel Solo', 'UNDANGAN', NULL, NULL, 'Pak Susilo'),
(226, '2023-01-31', NULL, '10.00-selesai', 'Rapat Pembahasan KAK Penyusunan Kajian Indeks Daya Saing Daerah Kota Surakarta', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(227, '2023-01-31', '0000-00-00', '10.00-selesai', 'Kunjungan Industri', 'SMK Krian 1 Sidoarjo', 'KST', 'perihal', 47, 31, 'Pak Budi'),
(228, '2023-01-31', NULL, '10.30-12.00', 'Desk Inputing RUP TA 2023', 'Setda Surakarta', 'Ruang DKK Lt. 3', 'UNDANGAN', NULL, NULL, 'Pak Wahyu Pak Agus'),
(229, '2023-02-01', '0000-00-00', '09.00-10.00', 'Kunjungan', 'PT Nederman Teknologi Indonesia', 'Ruang Pemimpin', 'perihal', 3, 34, 'Pak Yudit'),
(230, '2023-02-01', '0000-00-00', '10.00-selesai', 'Rapat Koordinasi Program Kerja UPTD Kawasan Sains dan Teknologi tahun 2023', 'KST', 'Ruang Teori 2', 'perihal', 17, 34, 'Pengelola KST dan Kadiv'),
(231, '2023-02-01', NULL, '11.30-selesai', 'Kunjungan', 'Bappedalitbang Purworejo', NULL, NULL, NULL, NULL, 'Pak Yudit Pak Rony'),
(232, '2023-02-01', '0000-00-00', '13.00-selesai', 'Kunjungan', 'Ka. UPTD dan Staff Disdag NTT', 'Ruang Meeting 1', 'perihal', 7, 34, 'Pak Rony'),
(233, '2023-02-02', '0000-00-00', '08.00-selesai', 'Kunjungan Industri', 'SMK Kartika XIX-1', 'Aula Gedung RnD', 'perihal', 141, 31, 'Pak Budi'),
(234, '2023-02-02', '0000-00-00', '10.00-selesai', 'Kunjungan Industri', 'SMK YP IPPI Jakarta', 'Aula Gedung RnD', 'perihal', 110, 31, 'Pak Budi'),
(235, '2023-02-03', NULL, '09.00-selesai', 'Rapat Penyusunan Kajian Potensi dan Peluang serta Fasilitasi Pendaftaran HKI untuk Produk Hasil Lomba Krenova dan Hilirisasi Riset', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(236, '2023-02-03', NULL, '09.00-selesai', 'Rapat KAK Digitalisasi IKM dan UMKM', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(237, '2023-02-04', NULL, '08.00-selesai', 'Musrenbangcam Jebres', 'Kecamatan Jebres', 'KST', NULL, NULL, NULL, 'Pak Untung Pak Danang'),
(238, '2023-02-06', NULL, '08.00', 'Briefing Bulan Februari 2023', 'KST', 'Aula Gedung RnD', NULL, NULL, NULL, 'Seluruh Karyawan'),
(239, '2023-02-06', NULL, '11.00', 'Peresmian Kawasan', 'KST', 'KST', NULL, NULL, NULL, 'Pak Yudit'),
(240, '2023-02-06', '0000-00-00', '10.00-selesai', 'Kunjungan Industri', 'SMKN 1 Sidayu Gresik', 'Aula Gedung RnD', 'perihal', 120, 31, 'Pak Budi'),
(241, '2023-02-05', NULL, '10.00-12.00', 'Pelatihan by Grab \"Sosialisasi dan Pendaftaran Grab Food\"', 'GRAB', 'MDH', NULL, NULL, NULL, 'Mbak Rika'),
(242, '2023-02-05', NULL, '10.00-12.00', 'Podcast \"Berkesenian menambah cuan dalam akusisi musik jimbe\"', 'ISI', 'Podcast MDH', NULL, NULL, NULL, 'Mbak Rika'),
(243, '2023-02-06', NULL, '10.00-13.00', 'Pelatihan Pengenalan Makanan Timlo Solo dalam Kemasan Pertama Metode Retort', 'Mandiri', 'MDH', NULL, NULL, NULL, 'Mbak Rika'),
(244, '2023-02-06', NULL, '11.00-13.00', 'Pembicara Tasya \"Jualan berhasil lewat TikTok\"', 'Mandiri', 'MDH', NULL, NULL, NULL, 'Mbak Rika'),
(245, '2023-02-06', NULL, '14.00-16.00', 'Seller Center dan Optimalisasi Manajemen Toko Lebih Lanjut serta KUM Digital Mandiri x Shopee', 'Mandiri', 'MDH', NULL, NULL, NULL, 'Mbak Rika'),
(246, '2023-02-07', '0000-00-00', '08.30-selesai', 'Rakortek BRIDA \"Pembinaan Teknik untuk Penguatan Ekosistem Riset dan Inovasi Daerah untuk Pembangunan Berkelanjutan', 'BRIN', 'Auditorium Gedung B.J. Habibie BRIN', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(247, '2023-02-08', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'SMKS Katolik Santo Pius Blora', 'KST', 'perihal', 20, 31, 'Pak Budi'),
(248, '2023-02-08', '0000-00-00', '13.00-selesai', 'Kunjungan Industri', 'SMK Muhammadiyah 3 Karanganyar', 'KST', 'perihal', 51, 31, 'Pak Budi'),
(249, '2023-02-08', NULL, '13.30', 'Kunjungan', 'Solo Safari', 'KST', NULL, NULL, NULL, 'Pak Yudit'),
(250, '2023-02-09', NULL, '09.30-09.45', 'Narasumber Kopi Istimewa MTATV', 'MTA TV', 'Zoom Meeting', 'RESCHEDULE', NULL, NULL, 'Pak Yudit'),
(251, '2023-02-09', '0000-00-00', '09.00-selesai', 'Tamu Solopos', 'Solopos', 'Ruang Meeting 1', 'perihal', 3, 34, 'Pak Yudit'),
(252, '2023-02-09', NULL, '13.00-selesai', 'Rapat Evaluasi Penyelenggaraan Peresmian KST STP', 'KST', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pengelola'),
(253, '2023-02-10', '0000-00-00', '09.00-selesai', 'Studi Banding', 'UIN Salatiga', 'Ruang Meeting 1', 'perihal', 7, 32, 'Pak Danu'),
(254, '2023-02-10', '0000-00-00', '09.00-10.00', 'Outing Class', 'SDIT Mujahidin Surakarta', 'Ruang Seminar STC SSC', 'perihal', 73, 33, 'Ibu Ani'),
(255, '2023-02-10', NULL, '11.00-selesai', 'Pendataan Sentra Jajanan Makanan di lingkungan Foodcourt Solo Technopark', 'Puskesmas Ngoresan', 'KST', NULL, NULL, NULL, 'Pak Untung'),
(256, '2023-02-11', '0000-00-00', '09.00-16.00', 'Test Drive', 'Shopee Xpress', 'KST', 'perihal', 12, 1, 'Pak Danang'),
(257, '2023-02-13', '0000-00-00', NULL, 'Pump Operation, Maintence and Troubleshooting', 'PHE', 'Ruang Teori 2', 'KUNJUNGAN', 18, NULL, 'Pak Tegar'),
(258, '2023-02-13', '0000-00-00', NULL, 'Mechanical Maintenance, Testing, and Diagnostics', 'PHE', 'Ruang Meeting 2', 'KUNJUNGAN', 14, NULL, 'Pak Tegar'),
(259, '2023-02-13', '0000-00-00', NULL, 'Oil and Gas Separation System Operation', 'PHE', 'Lab CAD/CAM', 'KUNJUNGAN', 10, NULL, 'Pak Tegar'),
(260, '2023-02-13', '0000-00-00', '10.00-selesai', 'Kunjungan Industri', 'SMK PGRI Brati Grobogan', 'KST', 'perihal', 152, 31, 'Pak Budi'),
(261, '2023-02-13', NULL, '10.00-selesai', 'Tamu MKP', 'MKP', 'Ruang Seminar Besar STC', NULL, NULL, NULL, 'Pak Susilo'),
(262, '2023-02-13', NULL, '13.00-selesai', 'Briefing Bulan Februari 2023', 'KST', 'Aula Gedung RnD', NULL, NULL, NULL, 'Seluruh Karyawan'),
(263, '2023-02-14', '0000-00-00', '09.00-selesai', 'Outing Class', 'TK Bakti XI Surakarta', 'Ruang Seminar STC SSC', 'perihal', 22, 33, 'Ibu Ani Ibu Lucia'),
(264, '2023-02-14', NULL, '11.00-12.00', 'Desk Pemetaan Potensi Kerja Sama Daerah Tahun 2024', 'Setda Surakarta', 'Solo Bistro', 'UNDANGAN', NULL, NULL, 'Mas Riza'),
(265, '2023-02-14', NULL, '11.00-selesai', 'Pemeriksaan Fisik BMN yang akan dihibahkan', 'BRIN', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pak Wahyu Pak Susilo'),
(266, '2023-02-15', '0000-00-00', '08.30-selesai', 'Outing Class', 'TK Bakti XI Surakarta', 'Ruang Seminar STC SSC', 'perihal', 27, 33, 'Ibu Ani Ibu Lucia'),
(267, '2023-02-17', NULL, '08.00-selesai', 'Foto Bersama dalam rangka memperingati HUT ke-278 Kota Solo', 'KST', 'KST', NULL, NULL, NULL, 'Seluruh Karyawan'),
(268, '2023-02-15', '0000-00-00', '08.30-selesai', 'Bimtek Aplikasi e-BLUD', 'BPKAD Kota Surakarta', 'Grand Hap Hotel', NULL, NULL, NULL, 'Pak Wahyu Ibu Ana'),
(269, '2023-02-15', '0000-00-00', '10.00-selesai', 'Outing Class', 'SMA Al-Azhar Syifa Budi Solo', 'Ruang Seminar STC SSC', 'perihal', 116, 33, 'Ibu Ani Ibu Lucia'),
(270, '2023-02-15', NULL, '10.00-selesai', 'Pemeriksaan Fisik BMN yang akan dihibahkan', 'BRIN', 'KST', NULL, NULL, NULL, 'Pengelola KST'),
(271, '2023-02-15', NULL, '12.30-selesai', 'Pembahasan KAK Kajian Evaluasi Penilaian STP BLUD KST', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', NULL, NULL, NULL, 'Pak Rony'),
(272, '2023-02-15', NULL, '13.00-selesai', 'Perkenalan Smart ID', 'Smart ID', 'Zoom Meeting', NULL, NULL, NULL, 'Pengelola KST'),
(273, '2023-02-16', '0000-00-00', '09.00-selesai', 'Outing Class', 'TK Bakti XI Surakarta', 'Ruang Seminar STC SSC', 'perihal', 23, 33, 'Ibu Ani Ibu Lucia'),
(274, '2023-02-16', NULL, '09.00-selesai', 'Liputan tentang Menengok Wisata Edukatif Ramah Anak Solo Technopark', 'PT Penerbitan Sarana Bobo', 'KST', NULL, NULL, NULL, 'Ibu Ani'),
(275, '2023-02-16', NULL, '10.00-selesai', 'Koordinasi Awal Program Pra-Inkubasi Tahun 2023', 'KST STP', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pak Danu'),
(276, '2023-02-16', '0000-00-00', '10.30-selesai', 'Kunjungan Mengenal dan Belajar tentang Ilmu Pengetahuan dan Teknologi', 'MTs NDM Surakarta', 'Ruang Seminar STC SSC', 'perihal', 160, 33, 'Ibu Ani Ibu Lucia'),
(277, '2023-02-16', NULL, '13.00-14.00', 'Undangan Rapat Koordinasi Pengelolaan KI pada DPSP Borobudur', 'Kementrian Koordinator Bidang Kemaritiman dan Investasi RI', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Rony'),
(278, '2023-02-16', NULL, '13.00-14.30', 'National Onboarding Peserta Program MSIB Angkatan 4 sekaligus pembekalan bagi seluruh peserta program', 'Kampus Merdeka', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Yudit Mas Risky'),
(279, '2023-02-17', NULL, '10.00-selesai', 'Meeting dengan Tim Facebook', 'Facebook', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Yudit Pak Susilo'),
(280, '2023-02-18', NULL, '08.00-11.30', 'Peminjaman Ruang Foto Buku Kenangan', 'SMKN 1 Surakarta', 'KST', NULL, NULL, NULL, 'Pak Untung Pak Danang'),
(281, '2023-02-20', NULL, '07.30-09.30', 'Opening Ceremony MSIB Solo Technopark Tahun 2023', 'KST', 'Zoom Meeting', NULL, NULL, NULL, 'Mas Risky'),
(282, '2023-02-20', NULL, '08.30-selesai', 'Rapat Teknis TKKSD tentang TL Kerjasama', 'Setda Surakarta', 'Ruang Rapat Bag. Tata Pemerintahan Setda', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Susilo'),
(283, '2023-02-20', '0000-00-00', NULL, 'Oil & Gas Separation System Operation', 'OGSCI', 'KST', 'KUNJUNGAN', 7, NULL, 'Pak Tegar'),
(284, '2023-02-20', NULL, NULL, 'Process Flow, Piping, and Instrument Diagrams', 'OGSCI', 'KST', 'KUNJUNGAN', 9, NULL, 'Pak Tegar'),
(285, '2023-02-20', '0000-00-00', NULL, 'Valve Technology Selection Operation Maintenance', 'OGSCI', 'Ruang Teori Gedung RnD', 'KUNJUNGAN', 10, NULL, 'Pak Tegar'),
(286, '2023-02-21', NULL, '08.00-10.00', 'Kick Off Hetero For Start up Season 3', 'Dinkop UKM Prov Jawa Tengah', 'Bioskop Cinepolis Javamall Semarang', 'UNDANGAN', NULL, NULL, '-'),
(287, '2023-02-21', '0000-00-00', '08.30-selesai', 'Kunjungan Industri', 'SMKN 1 Buahdua Sumedang', 'Aula Gedung RnD', 'perihal', 115, 31, 'Pak Budi'),
(288, '2023-02-21', NULL, '09.00-10.00', 'Narasumber dengan Tema \"Menyiapkan SDM Siap Terjun Di Dunia Kerja Profesional\"', 'MTATV', 'Studio 2 MTATV', 'UNDANGAN', NULL, NULL, 'Pak Chris'),
(289, '2023-02-21', '0000-00-00', '09.00-selesai', 'Temu Admin Media Sosial dalam Rangka Pelatihan Peningkatan Keamanan Akun Media Sosial bersama Meta Indonesia', 'Diskominfo Provinsi Jawa Tengah', 'Seminar Besar STC', 'perihal', 90, 34, 'Pak Susilo'),
(290, '2023-02-21', NULL, '09.00-selesai', 'Membahas Hasil Evaluasi PDSD Tahun 2022 dan Persiapan Pelaksanaan PDSD Tahun 2023', 'BAPPEDA Prov. Jawa Tengah', 'Kantor Bappeda Prov Jawa tengah', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(291, '2023-02-21', '0000-00-00', '09.30-selesai', 'Benchmarking Pengelolaan Technopark', 'Solusi247', 'Shopee VIP', 'perihal', 5, 1, 'Pak Yudit Pak Danu'),
(292, '2023-02-21', NULL, '10,00-selesai', 'Survey SSC', 'TK Alif Smart Surakarta', 'SSC', NULL, NULL, NULL, 'Ibu Ani'),
(293, '2023-02-21', NULL, '10.00-selesai', 'Koordinasi Pelaksanaan Program Pra-Inkubasi Tahun 2023', 'IBT', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pak Danu'),
(294, '2023-02-21', NULL, '13.00-selesai', 'Tindak Lanjut Pengembangan Aplikasi Manajemen Talent dan Manajemen Pelatihan Berbasis Artificial Intelegence', 'Diskominfo SP Surakarta', 'Diskominfo SP Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Eko Pak Budi Diklat'),
(295, '2023-02-22', '0000-00-00', '08.00-selesai', 'Pertemuan Rutin Kelas GoFood YEC', 'Gojek', 'GOTO', 'perihal', 30, 4, 'Pak Danang'),
(296, '2023-02-22', NULL, '08.30-09.30', 'Meeting koordinasi internal KST STP', 'KST STP', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pengelola KST STP'),
(297, '2023-02-22', '0000-00-00', '13.00-selesai', 'Meeting pembahasan pelatihan OGSCI dengan Pertamina Hulu Indonesia di STP', 'OGSCI', 'Ruang Seminar Besar', 'perihal', 10, 13, 'Pak Yudit Pak Susilo'),
(298, '2023-02-22', NULL, '13.00-selesai', 'Bimtek Pengajuan Rekomendasi Statistik (Romantik) SKM', 'Diskominfo SP Surakarta', 'Diskominfo SP Surakarta', 'UNDANGAN', NULL, NULL, 'Ibu Lucia'),
(299, '2023-02-23', NULL, '09.00-selesai', 'Interview Calon Pegawai', 'KST STP', 'Ruang Pemimpin BLUD UPTD KST', 'KUNJUNGAN', 5, NULL, 'Pak Yudit'),
(300, '2023-02-23', NULL, '09.00-selesai', 'Rapat Pembahasan Dokumen Aset Kawasan Sains dan Teknologi Solo Technopark', 'KST STP', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pengelola Bagian Kerjasama MSIB'),
(301, '2023-02-23', NULL, '09.00-selesai', 'Undangan Pembahasan Prioritas Kerjasama Daerah Kota Surakarta Tahun 2024', 'Setda Surakarta', 'Mahalaya, The Legacy Hotel Solo', 'UNDANGAN', NULL, NULL, 'Mas Riza'),
(302, '2023-02-23', '0000-00-00', '09.00-selesai', 'Kegiatan OFTA (Out Tracking Fun Adventure)', 'SD Alam Bengawan Solo', 'Ruang Seminar STC SSC', 'perihal', 50, 33, 'Ibu Ani Ibu Lucia'),
(303, '2023-02-23', NULL, '12.30-selesai', 'Pembahasan Surat Edaran Sekretaris Daerah tentang Inovasi', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(304, '2023-02-24', NULL, '07.00-08.00', 'Senam', 'KST STP', 'Lapangan Basket', NULL, NULL, NULL, 'All'),
(305, '2023-02-24', NULL, '08.00-selesai', 'Pembahasan Tindak Lanjut Perjanjian Sewa antara Solo Technopark dan PT. Shopee International Indonesia', 'Setda Surakarta', 'Ruang Natapraja', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Yudit Pak Wahyu Pak Susilo'),
(306, '2023-02-24', NULL, '09.30-selesai', 'Youtuber talent nya Mantappu Corp satu management sama Jerome Pollin. Namanya Leonardo Edwin', 'KST STP', 'KST STP', 'RESCHEDULE', NULL, NULL, 'Mas Risky'),
(307, '2023-02-24', '0000-00-00', '13.00-selesai', 'Kunjungan oleh kelompok siswa ekstrakulikuler KIR', 'SMP Batik Surakarta', 'Ruang Seminar STC SSC', 'perihal', 22, 33, 'Ibu Ani Ibu Lucia'),
(308, '2023-02-25', NULL, '08.00-15.00', 'Pendaftaran Mahasiswa Baru Universitas Terbuka', 'Universitas Terbuka', 'Outdoor Area', NULL, NULL, NULL, 'Pak Susilo Pak Danang'),
(309, '2023-02-25', NULL, '08.30-selesai', 'Sinergitas Dunia Pendidikan dan Dunia Usaha/Industri dalam Menyiapkan Lulusan Sekolah Kejuruan/Vokasi, Lembaga Pendidikan Keterampilan yang Kompeten dan Berkualitas di Surakarta', 'Dewan Pendidikan Kota Surakarta', 'Rumah Dinas Walikota Surakarta/Loji Gandrung', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(310, '2023-02-25', NULL, '09.00-12.00', 'Sahabat Becik Surakarta PKBM Piwulang Becik', 'PKBM Piwulang Becik', 'Lapangan Futsal/Basket', NULL, NULL, NULL, 'Pak Susilo Pak Danang'),
(311, '2023-02-25', '0000-00-00', '09:00 ‒ 16:00', 'Test Drive kandidat Driver Shopee Xpress', 'Shopee Xpress', 'KST', 'perihal', 10, 1, 'Pak Danang'),
(312, '2023-02-27', '0000-00-00', '08.00-10.30', 'Benchmarking Sentra Hak Kekayaan Intelektual (HKI) UNIDA Gontor', 'UNIDA Gontor', 'Ruang Meeting 1', 'perihal', 11, 34, 'Pak Chris Pak Danu'),
(313, '2023-02-27', '0000-00-00', NULL, 'Mechanical Joint Integrity', 'OGSCI', 'Ruang Teoiri Gedung Rnd', 'KUNJUNGAN', 14, NULL, 'Pak Tegar'),
(314, '2023-02-27', '0000-00-00', NULL, 'Risk Analysis and Assessment', 'OGSCI', 'Ruang Teoiri Gedung Rnd', 'KUNJUNGAN', 38, NULL, 'Pak Tegar'),
(315, '2023-02-28', NULL, '08.30-selesai', 'Rapat Internal Monev Standar Pelayanan dan SOP Balitbangda Kota Surakarta', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(316, '2023-02-28', NULL, '14.00-selesai', 'Rapat Koordinasi Penerimaan Mahasiswa Baru AK Tekstil Solo Tahun 2023', 'AK Tekstil Solo', 'AK Tekstil Solo', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Rony'),
(317, '2023-03-01', NULL, '08.00-15.00', 'Pendaftaran Mahasiswa Baru Universitas Terbuka', 'Universitas Terbuka', 'Outdoor Area', NULL, NULL, NULL, 'Pak Susilo Pak Danang'),
(318, '2023-03-01', '0000-00-00', '10.00-selesai', 'Rapat Koordinasi tentang Hibah dan Pemanfaatan Gedung Solo Trade Center (STC) lantai 2', 'KST', 'Ruang Seminar Besar STC', 'perihal', 10, 34, 'Pengelola KST'),
(319, '2023-03-02', NULL, '08.00-15.00', 'Character Building Diklat APBD Tahun 2023', 'KST', 'Aula Gedung RnD', NULL, NULL, NULL, 'Pak Budi'),
(320, '2023-03-02', '0000-00-00', '09.00-10.30', 'Pembahasan KAK DED Prasling Kawasan Sains dan Teknologi', 'KST', 'Ruang Meeting 1 Gedung RnD', 'perihal', 10, 34, 'Pengelola KST'),
(321, '2023-03-02', '0000-00-00', '12.30-selesai', 'Pembahasan KAK DED Pemeliharaan Gedung Kawasan Sains dan Teknologi', 'KST', 'Ruang Meeting 1 Gedung RnD', 'perihal', 10, 34, 'Pengelola KST'),
(322, '2023-03-03', NULL, '07.00', 'Senam', 'KST', 'Lapangan Basket', 'All', NULL, NULL, 'Bu Lucia'),
(323, '2023-03-03', NULL, '08.30-selesai', 'Undangan Rapat Koordinasi Persiapan Kegiatan Hilirisasi Riset Perguruan Tinggi', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', NULL, NULL, NULL, 'Pak Rony Pak Susilo Pak Danu'),
(324, '2023-03-03', '0000-00-00', '08.30-selesai', 'Permohonan Kegiatan Studi Tiru', 'LPP Kelas IIA Malang', 'Ruang Meeting', 'perihal', 7, 34, 'Pak Yudit Pak Danu'),
(325, '2023-03-04', '2023-03-05', '09.00-16.00', 'Test Drive', 'Shopee Xpress', 'KST', 'perihal', 10, 1, 'Pak Danang'),
(326, '2023-03-06', NULL, '08.00-selesai', 'Briefing Bulan Maret 2023', 'KST', NULL, NULL, NULL, NULL, 'Seluruh Karyawan'),
(327, '2023-03-06', NULL, '08.00-selesai', 'Forum Kota Layak Anak', 'BPMP2AKB', 'Aula Gedung RnD', NULL, NULL, NULL, 'Ibu Yuli'),
(328, '2023-03-06', '0000-00-00', '09.00-selesai', 'Kunjungan Fieldtrip', 'JSIT Indonesia Wil. Jateng', 'Aula Gedung RnD', 'perihal', 50, 34, 'Pak Budi'),
(329, '2023-03-07', NULL, '09.00-selesai', 'Rapat Koordinasi dan Konfirmasi Data terkait beberapa temuan pemeriksaan BPK atas Laporan Keuangan Daerah Tahun Anggaran 2022', 'BPKAD Kota Surakarta', 'Ruang Rapat Dinas Kesehatan', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(330, '2023-03-07', NULL, '08.30-selesai', 'Permohonan Narasumber untuk Sosialisasi Lomba Kreativitas dan Inovasi Kota Surakarta Tahun 2023', 'Balitbangda Kota Surakarta', 'Ballroom Merukawung Lt 2 Solia Zigna Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(331, '2023-03-07', '0000-00-00', '09.00-selesai', 'Kunjungan Eksplorasi Lingkungan di Bidang Industri', 'SMA Nasima', 'Aula Gedung RnD', 'perihal', 67, 31, 'Pak Budi'),
(332, '2023-03-07', NULL, '10.00-selesai', 'Rapat Koordinasi Laporan RBA BLUD TA.2023', 'BPKAD Kota Surakarta', 'BPKAD Kota Surakarta', 'UNDANGAN', NULL, NULL, 'Ibu Ana'),
(333, '2023-03-07', '0000-00-00', '13.00-selesai', 'Kunjungan Industri', 'SMAN 1 Kalianda', 'Aula Gedung RnD', 'perihal', 110, 31, 'Pak Budi'),
(334, '2023-03-08', '0000-00-00', '10.45-selesai', 'Forum Kapasitas Nasional III 2023', 'Petronas', 'Ruang Seminar Besar', 'perihal', 10, 11, 'Pak Yudit Pak Chris Pak Tegar'),
(335, '2023-03-08', NULL, '08.00-selesai', 'Bimtek Peningkatan Kapasitas PPK \"Pengendalian Kontrak dan Mitigasi Hukum', 'Setda Surakarta', 'The Hotel Sunan Solo', 'UNDANGAN', NULL, NULL, 'Pak Roni'),
(336, '2023-03-08', NULL, '12.30-selesai', 'Rapat Koordinasi dan Briefing Kegiatan Penyusunan Renja', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Roni'),
(337, '2023-03-08', '0000-00-00', '09.00-12.00', 'Kunjungan Industri', 'Politeknik AKBARA Surakarta', 'Aula Gedung RnD', 'perihal', 34, 32, 'Pak Budi'),
(338, '2023-03-08', '0000-00-00', '08.00-selesai', 'Outing Class', 'TK Cemara Dua Surakarta', 'Ruang Seminar STC SSC', 'perihal', 47, 33, 'Ibu Ani Ibu Lucia'),
(339, '2023-03-09', '0000-00-00', '09.00-selesai', 'Audit KAP', 'KAP Ganung AB', 'Ruang Meeting 1', 'perihal', 4, 34, 'Ibu Ana'),
(340, '2023-03-09', '0000-00-00', '11.00-selesai', 'Koordinasi penanganan surat permohonan dan/atau aspirasi yang ditujukan kepada Presiden RI dengan Pemerintah Kota Surakarta', 'Setneg', 'Ruang Seminar STC', 'perihal', 3, 34, 'Pak Yudit Pak Susilo'),
(341, '2023-03-09', NULL, '09.00-selesai', 'TM Lomba Keterampilan Siswa (LKS)', 'SMK Katolik ST Mikael Surakarta', 'Ruang Cad cam & IBT', NULL, NULL, NULL, 'Pak Budi Pak Respati'),
(342, '2023-03-09', NULL, '09.00-11.00', 'Kunjungan Industri', 'SMK Gamaliel 1 Madiun', 'Aula Gedung RnD', NULL, NULL, NULL, 'Pak Budi'),
(343, '2023-03-09', '0000-00-00', '10.00-selesai', 'Kunjungan Industri', 'SMK N 1 Kalitengah Lamongan', 'Aula Gedung RnD', 'perihal', 114, 31, 'Pak Budi'),
(344, '2023-03-10', '0000-00-00', NULL, 'Pelatihan Katalog Elektronik bagi Pejabat Pembuat Komitmen dan Pejabat Pengadaan (Piloting)', 'LKPP', 'Hybrid', 'UNDANGAN', NULL, NULL, NULL),
(345, '2023-03-09', NULL, '16.00-selesai', 'Penutupan Pelatihan Barista Dinas Tenaga Kerja Kota Surakarta', 'Dinas Tenaga Kerja Kota Surakarta', 'Solia Zigna Hotel', 'UNDANGAN', NULL, NULL, 'Pak Chris Pak Budi'),
(346, '2023-03-10', NULL, '07.00-08.00', 'Senam', 'KST', 'Lapangan Basket', 'All', NULL, NULL, 'Ibu Lucia'),
(347, '2023-03-13', NULL, '08.00-selesai', 'Pelaksanaan Lomba Keterampilan Siswa (LKS)', 'SMK Katolik ST Mikael Surakarta', 'Ruang Cad cam & IBT', NULL, NULL, NULL, 'Pak Budi Pak Respati'),
(348, '2023-03-13', NULL, '08.00-selesai', 'Seminar Xegara Sustainable Prosperity with Xegara NFT', 'Xegara', 'The Sunan Hotel', 'UNDANGAN', NULL, NULL, 'Pak Danu'),
(349, '2023-03-13', '0000-00-00', '07.30-selesai', 'Introduction to Oil&Gas-Pre Employment-BPA', 'OGSCI', 'Aula Gedung RnD', 'perihal', 46, 13, 'Pak Chris Pak Tegar'),
(350, '2023-03-13', '0000-00-00', '09.00-selesai', 'Bimtek Pengelolaan Keuangan Daerah Tahun 2023', 'BPKAD Kota Surakarta', 'Hotel Swiss Bell In Saripetojo', 'UNDANGAN', NULL, NULL, 'Pak Agus'),
(351, '2023-03-13', '0000-00-00', '07.30-selesai', 'Oil&Gas System Separation Operation', 'OGSCI', 'Ruang Meeting 2', 'perihal', 7, 13, 'Pak Chris Pak Tegar'),
(352, '2023-03-14', NULL, '09.00-selesai', 'Pembukaan Pelatihan Barbershop Dinas Tenaga Kerja Kota Surakarta Tahun 2023', 'Dinas Tenaga Kerja Kota Surakarta', 'Hotel Sahid Jaya', 'UNDANGAN', NULL, NULL, 'Pak Budi'),
(353, '2023-03-14', NULL, '08.00-15.00', 'Meeting Pembahasan Program Pembelajaran dan Pengembangan Pekerja Hulu Migas Periode Tahun 2023', 'SKK Migas', 'Hotel Alila', 'UNDANGAN', NULL, NULL, 'Pak Chris Pak Tegar Tim Petrotekno'),
(354, '2023-03-14', '0000-00-00', '09.00-12.00', 'Penandatanganan PKS Universitas TATI Malaysia', 'Universitas TATI Malaysia', 'Seminar Besar STC', 'perihal', 12, 32, 'Pak Yudit Pak Susilo Pak Arif'),
(355, '2023-03-14', '0000-00-00', '08.30-selesai', 'Outing Class', 'TK Idola', 'MDH&SSC', 'perihal', 56, 33, 'Ibu Ani&tim'),
(356, '2023-03-14', NULL, '09.30-selesai', 'Seleksi Presentasi Kegiatan Hilirisasi Riset Perguruan Tinggi', 'Balitbangda Kota Surakarta', 'Tawangpraja Balaikota', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Danu'),
(357, '2023-03-14', NULL, '14.00-selesai', 'Pembahasan Laporan Pendahuluan Kajian Analisis Kebijakan tentang Relevansi Kebijakan Perencanaan Pembangunan Daerah dengan Rangkaian Kegiatan Riset Pemerintah', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(358, '2023-03-14', NULL, '19.30-selesai', 'Sinkronisasi proggram pembinaan UMKM', 'Bank Indonesia', 'Manik Bistro', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(359, '2023-03-15', '0000-00-00', '09.00-selesai', 'Kunjungan Analisis Regulatory Impact Assessment (RIA)', 'Dinas Perdagangan', 'Ruang Meeting 1', 'perihal', 4, 34, 'Pak Wahyu'),
(360, '2023-03-15', NULL, '09.00-selesai', 'Forum Konsultasi Publik \"Pelayanan Publik Balitbangda Tahun 2023\"', 'Balitbangda Kota Surakarta', 'Swiss Bell Hotel', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Danu'),
(361, '2023-03-15', NULL, '08.00-selesai', 'Izin Lokasi Shooting Produksi Program Soft News', 'MGMP Broadcasting Surakarta', 'KST', NULL, NULL, NULL, 'Pak Susilo Pak Danang'),
(362, '2023-03-15', '0000-00-00', '08.30-12.00', 'Outing School', 'SMP Lazuardi Kamila', 'Seminar Besar STC&SSC', 'perihal', 85, 33, 'Ibu Ani&tim'),
(363, '2023-03-15', '0000-00-00', '10.30-selesai', 'Outing Class', 'MITTQUM Surakarta', 'Seminar Besar STC&SSC', 'perihal', 44, 33, 'Ibu Ani&tim'),
(364, '2023-03-15', NULL, '10.00-11.00', 'Permohonan Siaran Live From Location', 'Metta Solo FM', 'KST', NULL, NULL, NULL, 'Mas Risky'),
(365, '2023-03-16', '0000-00-00', '08.00-selesai', 'Outing Class', 'TK Tunas Mekar', 'MDH&SSC', 'perihal', 28, 33, 'Ibu Ani&tim'),
(366, '2023-03-16', NULL, '08.00-12.00', 'Bazar&Service Kendaraan Bermotor Driver Shopeefood Solo Raya', 'Shopee', 'Outdoor STC&Garena', NULL, NULL, NULL, 'Pak Danang'),
(367, '2023-03-16', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'FEB Universitas Kuningan', 'KST STP', 'perihal', 215, 32, 'Pak Danu&tim'),
(368, '2023-03-16', '0000-00-00', '09.00-11.00', 'Permohonan Kunjungan Industri', 'SMK Negeri 3 Wonosari', 'Aula Gedung RnD', 'perihal', 140, 31, 'Pak Budi'),
(369, '2023-03-16', NULL, '09.00-selesai', 'FGD Penyusunan Rekomendasi PEL/FEDEP Kota Surakarta', 'BAPPEDA Kota Surakarta', 'Sala View Hotel', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(370, '2023-03-16', NULL, '09.30-selesai', 'Pemaparan Laporan Pendahuluan Kajian Digitalisasi IKM dan UMKM', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(371, '2023-03-16', '0000-00-00', '07.30-selesai', 'Oprasi Produksi Lepas Pantai', 'OGSCI', 'Ruang Teori', 'perihal', 11, 13, 'Pak Chris Pak Tegar'),
(372, '2023-03-17', NULL, '07.00-08.00', 'Senam', 'KST', 'Lapangan', 'All', NULL, NULL, 'Ibu Lucia'),
(373, '2023-03-17', '0000-00-00', '08.30-selesai', 'Outing Class', 'SMP Widya Wacana', 'Seminar Besar&SSC', 'perihal', 90, 31, 'Ibu Ani&tim'),
(374, '2023-03-17', NULL, '08.30-selesai', 'Rapat Pembahasan Laporan Pendahuluan Kajian Evaluasi Penilaian BLUD UPT KST', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Roni'),
(375, '2023-03-17', '0000-00-00', '10.00-selesai', 'Outing Class', 'SMP Widya Wacana', 'Seminar Besar&SSC', 'perihal', 90, 31, 'Ibu Ani&tim'),
(376, '2023-03-18', NULL, '11.00-16.00', 'Studi Banding Online BEM Sekolah Vokasi UNS dengan BEM Sekolah Vokasi Univ. Brawijaya', 'BEM Sekolah Vokasi UNS', 'MDH', NULL, NULL, NULL, 'Pak Danang'),
(377, '2023-03-18', NULL, '07.30-selesai', 'Tempat Acara Awarding', 'Ormawa Kerohanian Islam UNS', 'KST', 'Tidak Ada CP, email belum di balas', NULL, NULL, NULL),
(378, '2023-03-20', NULL, '08.30-selesai', 'Pembuatan 2 Video, yaitu Video Ucapan Selamat menunaikan ibadah puasa dan Video Ucapan Selamat Hari Raya Idul Fitri.', 'KST', 'Fountain', 'DITUNDA', NULL, NULL, 'Ibu Lucia'),
(379, '2023-03-20', '0000-00-00', '09.00-selesai', 'Outing Class', 'TK Widya Satya', 'Ruang Seminar Besar&SSC', 'Kunjungan', 10, 33, 'Ibu Ani&tim'),
(380, '2023-03-20', NULL, '09.00-selesai', 'Koordinasi Awal Program Pra-Inkubasi Tahun 2023', 'IBT', 'Ruang Meeting ,Gedung Sembrani', NULL, NULL, NULL, 'Pak Danu'),
(381, '2023-03-20', NULL, NULL, 'Kunjungan Nestle', 'KST', 'Nestle', NULL, NULL, NULL, 'Pak Yudit'),
(382, '2023-03-21', NULL, '08.30-selesai', 'FGD Business Gathering bersama Regulator dan Industri', 'FEB UNS', 'Gedung Soedara Soepono FEB UNS', 'UNDANGAN', NULL, NULL, 'Pak Chris'),
(383, '2023-03-21', NULL, '08.30-selesai', 'Workshop Aplikasi SIJALAK KOAR dalam rangka Inputing Data Dukung PEKPPP', 'Setda Surakarta', 'Harris Hotel', 'UNDANGAN', NULL, NULL, 'Pak Agus'),
(384, '2023-03-21', NULL, '09.30-selesai', 'Rapat Persiapan Penyelenggaraan Festival Ekonomi Keuangan Digital Indonesia Tahun 2023', 'Kemenkop', 'Zoom Meeting', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(385, '2023-03-21', NULL, '10.00-selesai', 'Rapat Pendampingan 1 (Analisa Produk, Rencana Pengembangan Prototype dan Penjelasan Penyusunan RAB', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Roni, Pak Susilo, Pak Danu'),
(386, '2023-03-21', NULL, '16.30-20.00', 'Rapat Anggota Tahunan Kopkar Mikael Tahun Buku 2022', 'Koperasi Mikael', 'Orient Resto', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Chris'),
(387, '2023-03-24', NULL, '08.30-selesai', 'Paparan Awal Hasil Audit UPTD Kawasan Sains dan Teknologi oleh KAP Ganung AB', 'KST', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pengelola KST Staf Keuangan'),
(388, '2023-03-24', NULL, '13.00-selesai', 'Koordinasi Proker dan Sosialisasi Incubator Bisnis', 'UNISRI', 'Ruang Seminar Gedung B UNSRI', 'UNDANGAN', NULL, NULL, 'Pak Danu'),
(389, '2023-03-28', NULL, '10.00-selesai', 'Rapat Pendampingan II (Penyusunan RAB dan Rencana Kegiatan untuk Pengembanan Prototype I)', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(390, '2023-03-29', NULL, '09.00-selesai', 'Pembahasan Laporan Pendahuluan Kajian Indeks Daya Saing Daerah', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(391, '2023-03-29', NULL, '13.30-selesai', 'Pembahasan Konsep/Konten Booth FEKDI 2023', 'Kemenkop', 'Zoom Meeting', 'UNDANGAN', NULL, NULL, 'Pak Yudit, Pak Chris, Pak Susilo, Pak Danu'),
(392, '2023-03-30', NULL, '08.30-selesai', 'Rakor Kelembagaan Inkubator di Jawa Tengah', 'BAPPPEDA Prov Jawa Tengah', 'Gedung PKK Jawa Tengah', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Danu'),
(393, '2023-03-30', NULL, '13.00-selesai', 'Rapat Koordinasi Usulan Tarif Retribusi BLUD dalam Raperda Pajak dan Retribusi Daerah', 'Badan Pendapatan Daerah', 'Bapenda', 'UNDANGAN', NULL, NULL, 'Pak Roni'),
(394, '2023-03-31', NULL, '08.30-selesai', 'Rapat Pejabat Pengelola dan Serah Terima Hasil Audit KAP', 'KST', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pengelola, Keuangan'),
(395, '2023-03-31', NULL, '10.00-selesai', 'Rapat Koordinasi Persiapan Acara FEKDI 2023', 'KST', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pak Yudit, Pak Chris, Pak Susilo, Pak Danu Mas Risky'),
(396, '2023-03-31', NULL, '10.00-selesai', 'Pembahasan kerjasama Petrotekno', 'Petrotekno', NULL, NULL, NULL, NULL, 'Pak Yudit Pak Chris Pak Susilo'),
(397, '2023-03-31', NULL, NULL, 'Koordinasi kelistrikan J&T', 'J&T', NULL, NULL, NULL, NULL, 'Pak Susilo'),
(398, '2023-03-31', NULL, '13.00-15.00', 'Workshop Pengembangan Produk Kreatifitas dan Penalaran Mehasiswa', 'FK UNS', 'Ruang Auditorium FK UNS', 'UNDANGAN', NULL, NULL, 'CEO Solo Abadi'),
(399, '2023-03-31', NULL, '14.00-selesai', 'Diskusi dengan HRD dan Yayasan Karya Bhakti', 'ATMI', NULL, NULL, NULL, NULL, 'Pak Yudit'),
(400, '2023-04-01', '2023-04-02', '09.00-16.00', 'Test Drive kandidat Driver Shopee Xpress', 'Shopee Xpress', 'KST', 'perihal', 15, 1, 'Pak Danang Pak Untung'),
(401, '2023-04-02', '2023-04-06', '16.00-18.00', 'Pekan Olahraga Antar Angkatan Matematika (PORTAKA)', 'UNS', 'Lapangan Basket', NULL, NULL, NULL, 'Pak Susilo Pak Danang Pak Tegar'),
(402, '2023-04-03', NULL, '09.30-11.00', 'Uji TA', 'ATMI', 'ATMI', NULL, NULL, NULL, 'Pak Yudit'),
(403, '2023-03-03', NULL, '13.30-selesai', 'Sosialisasi Kerjasama SME Support Japan 2023 - 2024', 'KemenkopUKM', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Danu'),
(404, '2023-04-04', NULL, '12.30-14.00', 'Uji TA', 'ATMI', 'ATMI', NULL, NULL, NULL, 'Pak Yudit'),
(405, '2023-04-04', NULL, '09.00-selesai', 'Rapat Pendampingan III (Tahap Development-Progress Pengadaan Bahan/Material/Peralatan Pegembangan Prototype Penyusunan RAB dan Rencana Kegiatan', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Susilo Pak Danu'),
(406, '2023-04-04', '0000-00-00', '09-00-14.30', 'Next Young Entrepreneur Unisri Batch X', 'UNISRI&IBT', 'Ruang Teori 2 Gedung RnD', 'perihal', 30, 21, 'Pak Danu'),
(407, '2023-04-05', NULL, '09.00-selesai', 'Rapat Konsolidasi Metode Perhitungan Unsur TPP dari Perangkat Daerah Pengampu BLUD', 'Setda Surakarta', 'Ruang Natapraja', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(408, '2023-04-05', NULL, '09.30-11.00', 'Uji TA', 'ATMI', 'ATMI', NULL, NULL, NULL, 'Pak Yudit'),
(409, '2023-04-05', NULL, '13.00-14.30', 'Rapat Pejabat Pengelola', 'KST', 'Ruang Meeting 1', NULL, NULL, NULL, 'Pengelola KST'),
(410, '2023-04-06', NULL, '09.00-selesai', 'Workshop Pengisian Aplikasi e-SAKIP Kota Surakarta', 'Setda Surakarta', 'Ruang Rapat Manganti Praja Kota Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(411, '2023-04-06', '0000-00-00', '09-00-14.30', 'Next Young Entrepreneur Unisri Batch X', 'UNISRI&IBT', 'Ruang Teori 2 Gedung RnD', 'perihal', 30, 21, 'Pak Danu'),
(412, '2023-04-06', NULL, '15.00-17.00', 'Dari Pesantren untuk Pesantren', 'Shopee', 'Gedung Gumarang', NULL, NULL, NULL, 'Pak Untung Pak Danang'),
(413, '2023-04-08', NULL, '08.30-13.00', 'Laporan Pengurus AIBI periode 2010-2022; Pemilihan Ketua dan Sekjen AIBI periode 2023-2027', 'AIBI', 'Zoom Meeting', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Danu'),
(414, '2023-04-10', '0000-00-00', '09-00-14.30', 'Next Young Entrepreneur Unisri Batch X', 'UNISRI&IBT', 'Ruang Teori 2 Gedung RnD', 'perihal', 30, 21, 'Pak Danu'),
(415, '2023-04-11', NULL, '09.00-selesai', 'Penjelasan Teknis Learning Manajemen Sytem', 'BKDPSDM', 'Zoom Meeting', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(416, '2023-04-11', NULL, '09.00-selesai', 'Observasi untuk Tugas Mata Kuliah', 'UNS', 'KST', NULL, NULL, NULL, 'Pak Tegar'),
(417, '2023-04-11', NULL, '12.00-17.00', 'Produksi Photoshot dan Take Video Reels bersama Honda Jateng', 'SOC Media Group', 'Shopee', NULL, NULL, NULL, 'Pak Susilo'),
(418, '2023-04-12', '0000-00-00', '10.00-selesai', 'Survey/ Kunjungan', 'UTP', 'Aula Gedung RnD', 'perihal', 50, 32, 'Pak Budi Mbak Eva'),
(419, '2023-04-12', '0000-00-00', '09-00-14.30', 'Next Young Entrepreneur Unisri Batch X', 'UNISRI&IBT', 'Ruang Teori 2 Gedung RnD', 'perihal', 30, 21, 'Pak Danu'),
(420, '2023-04-12', '0000-00-00', '09.00-selesai', 'Bimtek Pengelolaan Science Center', 'BRIN', 'Taman Pintar', 'UNDANGAN', NULL, NULL, 'Ibu Ani Ibu Lucia MSIB'),
(421, '2023-04-13', NULL, '10.00-12.00', 'Kunjungan dr Sragen TP konsultasi BLUD', 'Sragen TP', 'Ruang Meeting', NULL, NULL, NULL, 'Pak Chris Pak Susilo'),
(422, '2023-04-13', NULL, '09.00-selesai', 'Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK) Kota Surakarta Triwulan I TA 2023', 'Setda Surakarta', 'Balai Tawangarum', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(423, '2023-04-13', NULL, '13.00-selesai', 'Pengarahan Pergeseran Tahap II APBD TA 2023', 'BPKAD Kota Surakarta', 'Ruang Rapat Dinas Kesehatan', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(424, '2023-04-14', NULL, '09.00-selesai', 'Rapat Koordinasi Teknis Pembahasan FEKDI 2023 bersama internal Kemenko Perekonomian dan mitra kerja (exhibition booth dan ministage)', 'Kemenko', 'Zoom Meeting', NULL, NULL, NULL, 'Pak Chris Pak Danu'),
(425, '2023-04-14', NULL, '13.00-selesai', 'Kunjungan Direktur dan wakil komisaris utama bank Mandiri. Agenda audiensi dengan UMKM binaan bank Mandiri di STP', 'Bank Mandiri', 'MDH', NULL, NULL, NULL, 'Pak Yudit Pak Susilo Pak Danu'),
(426, '2023-04-15', '0000-00-00', '09.00-16.00', 'Test Drive', 'Shopee Xpress', 'KST', 'perihal', 22, 1, 'Pak Danang'),
(427, '2023-04-17', NULL, '08.00-selesai', 'Rapat Koordinasi Monitoring dan Evaluasi (MONEV) Pengadaan Barang/Jasa', 'Setda Surakarta', 'Ruang Tawangarum', 'UNDANGAN', NULL, NULL, 'Pak Rony'),
(428, '2023-04-17', NULL, '09.00-selesai', 'Rapat Pembahasan Laporan Pendahuluan Kajian Inovasi Kebijakan Penyediaan Insfrastruktur dalam rangka Mendorong Perkembangan Kota Surakarta Bagian Utara', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(429, '2023-04-18', NULL, '09.00-selesai', 'Rapat Sosialisasi Kegiatan 5ME2045:LPDP Business Competition', 'LPDP', 'Zoom Meeting', 'UNDANGAN', NULL, NULL, 'Pak Danu'),
(430, '2023-04-18', NULL, '13.00-selesai', 'Rapat Kerja Pansus tentang Laporan Keterangan Pertanggungjawaban Walikota TA 2022', 'DPRD Kota Surakarta', 'Ruang Badan Anggaran DPRD Kota Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Yudit, Pak Rony'),
(431, '2023-04-18', NULL, '13.00-selesai', 'Rapat Pembahasan Belanja Modal BLUD & BOS APBD TA 2023', 'BPKAD Kota Surakarta', 'Ruang Rapat BPKAD Lt. II', 'UNDANGAN', NULL, NULL, 'Pak Wahyu'),
(432, '2023-04-18', NULL, '14.00-selesai', 'Briefing karyawan', 'KST', 'Aula Gedung RnD', 'KUNJUNGAN', 110, NULL, 'Ibu Lucia'),
(433, '2023-04-20', NULL, '14.30-16.00', 'Uji TA', 'ATMI', 'ATMI', NULL, NULL, NULL, 'Pak Yudit'),
(434, '2023-04-23', '0000-00-00', NULL, 'Photo Video Competition Sekuter Fest 2023', 'Sekuter Fest', 'KST', NULL, NULL, NULL, 'Pak Untung'),
(435, '2023-04-26', '0000-00-00', '11.30-selesai', 'Pengarahan Kepala Balitbangda dan Sinkronisasi Kegiatan UPTD STP', 'KST', 'Aula Gedung RnD', 'perihal', 186, 34, 'Ibu Lucia'),
(436, '2023-04-27', NULL, '09.00-selesai', 'Pembahasan Laporan Pendahuluan Kajian Potensi dan Peluang serta Fasilitas Pendaftaran HKI', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Roni'),
(437, '2023-04-27', NULL, '09.00-selesai', 'Rapat Kerja Pansus tentang Laporan Keterangan Pertanggungjawaban Walikota TA 2022', 'DPRD Kota Surakarta', 'DPRD Surakarta', 'UNDANGAN', NULL, NULL, 'Pak Yudit'),
(438, '2023-04-27', '0000-00-00', '09.00-selesai', 'Bimbingan Teknis RKAP-PD TA 2023', 'BPKAD Kota Surakarta', 'Sunan Hotel', 'UNDANGAN', NULL, NULL, 'Pak Wahyu Pak Agus'),
(439, '2023-04-28', NULL, '07.00-08.00', 'Senam', 'KST', 'Lapangan Basket', 'All', NULL, NULL, 'Ibu Lucia'),
(440, '2023-04-28', '0000-00-00', '13.00-selesai', 'Kunjungan Jawara UMKM', 'Jawara UMKM', 'Gedung Sembrani', 'perihal', 5, 34, 'Pak Yudit'),
(441, '2023-04-29', NULL, NULL, 'Peminjaman Tempat Parkir World Dance Day 24 Jam Menari ke 17', 'ISI', 'KST', NULL, NULL, NULL, 'Pak Untung'),
(442, '2023-04-29', '0000-00-00', '09.00-16.00', 'Test Drive', 'Shopee Xpress', 'KST', 'Kunjungan', 22, 1, 'Pak Untung'),
(443, '2023-05-02', NULL, '09.00-selesai', 'Rapat Pendampingan IV (Tahap Development Progress Pengembangan Prototype)', 'Balitbangda Kota Surakarta', 'Ruang Rapat Balitbangda', 'UNDANGAN', NULL, NULL, 'Pak Rony Pak Danu Pak Susilo'),
(444, '2023-05-03', NULL, '09.00-selesai', 'Rakor Penyelarasan Perwali tentang Remunerasi BLUD UPT KST pada Balitbangda Kota Surakarta', 'Setda Surakarta', 'Ruang Rapat Bagian Hukum', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Susilo'),
(445, '2023-05-03', '0000-00-00', '09.30-selesai', 'FGD Penyusunan Kajian Digitalisasi IKM dan UMKM Kota Surakarta', 'Balitbangda Kota Surakarta', 'Gedung Sembrani', 'perihal', 35, 29, 'Pak Untung Pak Danu'),
(446, '2023-05-03', '0000-00-00', '13.00-selesai', 'Solo Media dan Influencer Trip 2023', 'Dinas Kebudayaan dan Pariwisata', 'KST', 'perihal', 35, 34, 'Pak Untung'),
(447, '2023-05-04', NULL, '08.30-selesai', 'Sosialisasi dan Koordinasi Program Pra Inkubasi Tahun 2023', 'KST', 'Gedung Sembrani', NULL, NULL, NULL, 'Pak Danu'),
(448, '2023-05-04', '0000-00-00', '11.00-selesai', 'Survei', 'UGM', 'Gedung Sembrani', 'perihal', 5, 32, 'Pak Chris Pak Danu'),
(449, '2023-05-04', NULL, '09.00-selesai', 'Rapat Pejabat Pengelola', 'KST', 'Ruang Meeting 1', 'KUNJUNGAN', 5, NULL, 'Pejabat Pegelola KST'),
(450, '2023-05-06', '0000-00-00', '09.00-16.00', 'Test Drive', 'Shopee Xpress', 'KST', 'Kunjungan', 22, 1, 'Pak Untung'),
(451, '2023-05-08', NULL, '11.00-selesai', 'Forum Silaturahmi Civitas Akademik dan Stakeholder AK-Tekstil Solo', 'AK Tekstil Solo', 'Aula AK Tekstil Solo', 'UNDANGAN', NULL, NULL, 'Pak Yudit Pak Rony'),
(452, '2023-05-08', '0000-00-00', '08.00-selesai', 'Advance Maintenance', 'OGSCI', 'KST', 'Kunjungan', 10, 13, 'Pak Chris Pak Tegar'),
(453, '2023-05-09', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'MAN 2 Majalengka', 'Aula Gedung RnD', 'Kunjungan', 71, 31, 'Pak Budi'),
(454, '2023-05-10', '0000-00-00', '13.00-15.00', 'Kunjungan KKL', 'IAIN Kudus', 'Aula Gedung RnD', 'Kunjungan', 116, 32, 'Pak Budi'),
(455, '2023-05-15', '0000-00-00', '08.00-selesai', 'Operator Lapangan Lepas Pantai dan Darat', 'OGSCI', 'KST', 'Kunjungan', 9, 13, 'Pak Chris Pak Tegar'),
(456, '2023-05-21', '0000-00-00', '06.00-selesai', 'Family Gathering KBIT RA Alif Smart', 'KBIT RA Alif Smart', 'KST', 'perihal', 350, 34, 'Ibu Ani&tim'),
(457, '2023-05-22', '0000-00-00', '08.00-selesai', 'Production Optimization', 'OGSCI', 'KST', 'Kunjungan', 10, 13, 'Pak Chris Pak Tegar'),
(458, '2023-05-23', NULL, '10.00-selesai', 'Loading Barang Lomba Krenova 2023', 'Balitbangda Kota Surakarta', 'STC', NULL, NULL, NULL, 'Pak Untung'),
(459, '2023-05-24', '0000-00-00', '07.00-selesai', 'Lomba Krenova 2023', 'Balitbangda Kota Surakarta', 'STC', NULL, NULL, NULL, 'Pak Untung'),
(460, '2023-05-24', '0000-00-00', '08.00-selesai', 'Kunjungan Industri', 'SMKN 1 Lemahsugih', 'Aula Gedung RnD', 'Kunjungan', 159, 31, 'Pak Budi Mbak Eva'),
(461, '2023-05-25', '0000-00-00', '08.00-selesai', 'Kunjungan Industri', 'SMKN 4 Tasikmalaya', 'Aula Gedung RnD', 'Kunjungan', 242, 31, 'Pak Budi'),
(462, '2023-06-08', '0000-00-00', '13.00-selesai', 'Kunjungan Industri', 'SMKN 1 Way Panji Lampung', 'Aula Gedung RnD', 'Kunjungan', 211, 31, 'Pak Budi Mbka Eva'),
(463, '2023-06-12', '0000-00-00', '08.00-selesai', 'Operator Lapangan Lepas Pantai dan Darat', 'OGSCI', 'KST', 'Kunjungan', 11, 13, 'Pak Chris Pak Tegar');
INSERT INTO `master_agenda` (`Id_agenda`, `Tanggal`, `Tanggal_selesai`, `Pukul`, `Acara`, `Instansi`, `Tempat`, `Perihal`, `Jumlah_pengunjung`, `Id_keterangan`, `Pic`) VALUES
(464, '2023-06-13', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'SMK 1 Geneng Ngawi', 'Aula Gedung RnD', 'Kunjungan', 111, 31, 'Pak Budi'),
(465, '2023-06-15', '0000-00-00', '10.00-selesai', 'Company Visit Singapore Management University', 'UGM', 'KST', 'Kunjungan', 39, 32, 'Pak Chris Pak Danu'),
(466, '2023-06-26', '0000-00-00', '09.00-selesai', 'Kunjungan Industri', 'SMK PGRI 1 KEDIRI', 'Aula Gedung RnD', 'Kunjungan', 262, 31, 'Pak Budi Mbak Eva'),
(467, '2023-07-04', NULL, NULL, 'Kunjungan Industri', 'SMKS Al Wahab Kradenan', 'Aula Gedung RnD', 'KUNJUNGAN', 69, NULL, 'Pak Budi Mbak Eva'),
(468, '2023-07-11', '0000-00-00', '14.00-selesai', 'Kunjungan Industri', 'Politeknik Negeri Bali', 'Aula Gedung RnD', 'Kunjungan', 126, 32, 'Pak Budi');

-- --------------------------------------------------------

--
-- Table structure for table `master_barang`
--

CREATE TABLE `master_barang` (
  `Id_barang` int(11) NOT NULL,
  `Nama_barang` varchar(255) DEFAULT NULL,
  `No_registrasi` varchar(255) DEFAULT NULL,
  `Nama_gedung` varchar(255) DEFAULT NULL,
  `Nama_ruanganarea` varchar(255) DEFAULT NULL,
  `Tanggal_masuk` date DEFAULT NULL,
  `Tanggal_keluar` date DEFAULT NULL,
  `Tanggal_masuk_barang` date DEFAULT NULL,
  `JenisMerkTipe` varchar(255) DEFAULT NULL,
  `Kode_label_STP` varchar(255) DEFAULT NULL,
  `Kode_label_pemkot` varchar(255) DEFAULT NULL,
  `Jumlah_barang` int(11) DEFAULT NULL,
  `Gambar` varchar(255) DEFAULT NULL,
  `Drive` varchar(255) DEFAULT NULL,
  `Kondisi_barang` varchar(255) DEFAULT NULL,
  `Catatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `master_barang`
--

INSERT INTO `master_barang` (`Id_barang`, `Nama_barang`, `No_registrasi`, `Nama_gedung`, `Nama_ruanganarea`, `Tanggal_masuk`, `Tanggal_keluar`, `Tanggal_masuk_barang`, `JenisMerkTipe`, `Kode_label_STP`, `Kode_label_pemkot`, `Jumlah_barang`, `Gambar`, `Drive`, `Kondisi_barang`, `Catatan`) VALUES
(2001, 'Cabinet Pico CBNT 2 Doors w/4', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/CPC/CMC/06/2022/6', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000007', 1, NULL, NULL, 'Baik', 'sedikit berkarat'),
(2002, 'Cabinet Pico CBNT 2 Doors w/4', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/CPC/CMC/06/2022/5', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000006', NULL, NULL, NULL, 'Baik', NULL),
(2003, 'Cabinet Pico CBNT 2 Doors w/4', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/CPC/CMC/06/2022/3', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000011', NULL, NULL, NULL, 'Baik', NULL),
(2004, 'Cabinet Pico CBNT 2 Doors w/4', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/CPC/CMC/06/2022/2', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000008', NULL, NULL, NULL, 'Baik', NULL),
(2005, 'Cabinet Pico CBNT 2 Doors w/4', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/CPC/CMC/06/2022/4', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000009', NULL, NULL, NULL, 'Baik', NULL),
(2006, 'Cabinet Pico CBNT 2 Doors w/4', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/CPC/CMC/06/2022/1', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000010', NULL, NULL, NULL, 'Baik', NULL),
(2007, 'Cabinet Malca Credenza', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/STC/CMC/06/2022/5', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000036', NULL, NULL, NULL, 'Baik', NULL),
(2008, 'Cabinet Monaco Credenza', '', 'STC', 'Mushola', NULL, NULL, NULL, 'Meubeler', 'STP/STC/CMC/06/2022/3', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000042', NULL, NULL, NULL, 'Baik', NULL),
(2009, 'Meja Training', '', 'STC', 'Ruang Seminar Besar', NULL, NULL, NULL, 'Meja Portable', NULL, NULL, 38, NULL, NULL, 'Baik', NULL),
(2010, 'Meja Training Yori', '', 'STC', 'Ruangan Seminar Besar', NULL, NULL, NULL, 'Meja Yori Portable', 'STP/STC/MTY/06/2022/21\r\nSTP/STC/MTY/06/2022/32\r\nSTP/STC/MTY/06/2022/13\r\nSTP/STC/MTY/06/2022/27\r\nSTP/STC/MTY/06/2022/1\r\nSTP/STC/MTY/06/2022/22\r\nSTP/STC/MTY/06/2022/18\r\nSTP/STC/MTY/06/2022/43\r\nSTP/STC/MTY/06/2022/5\r\nSTP/STC/MTY/06/2022/29\r\nSTP/STC/MTY/06/20', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.008.000025\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.008.000031\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.008.000044\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.008.000056\r\n12.01.11.32.15.01.02.01', 13, NULL, NULL, 'Baik', 'update jumlah meja 20 Maret'),
(2011, 'Sound system', '', 'STC', 'Ruangan Seminar Besar STC', NULL, NULL, NULL, 'Huper', 'STP/SS/12/2022/01 (satunya tidak berlabel)', NULL, 2, NULL, 'https://drive.google.com/open?id=14lyaSExtsrTHjsAcunyQdWusc2CpSS1e', 'Baik', NULL),
(2012, 'Meja tamu kaca', '', 'STC', 'Ruangan Seminar Besar STC', NULL, NULL, NULL, NULL, 'STP/STC/MTK/06/2022/36 - 13 - yang dua lainnya tidak berlabel', NULL, 4, NULL, 'https://drive.google.com/open?id=1ZRLI47nBMNutueqiDRUfMfZyJdxK5wNq', 'Baik', NULL),
(2013, 'Proyektor', '', 'STC', 'Ruangan Seminar Besar STC', NULL, NULL, NULL, 'Epson EB-E500 1', 'STP/PE/02/2023', NULL, 1, NULL, 'https://drive.google.com/open?id=1vdsKHHh5ogUGUr2bgyQyJreiQLdmvC3C', 'Baik', NULL),
(2014, 'Cabinet Sieben 2208GIW', '', 'STC', 'Ruangan Seminar Besar STC', NULL, NULL, NULL, 'Lemari Sieben', 'STP/STC/CS/06/2022/8', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000028', NULL, NULL, NULL, 'Baik', NULL),
(2015, 'Cabinet Sieben 2208GIW', '', 'STC', 'Ruangan Seminar Besar STC', NULL, NULL, NULL, 'Lemari Sieben', 'STP/STC/CS/06/2022/7', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000029', NULL, NULL, NULL, 'Baik', NULL),
(2016, 'Sofa 2 Seater Ziva', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Sofa Ziva', 'STP/STC/SSZ/06/2022/7', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.048.000017', NULL, NULL, NULL, 'Baik', NULL),
(2017, 'Sofa 3 seater Ziva', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Sofa Ziva', 'STP/STC/SSZS/06/2022/4', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.048.000039', NULL, NULL, NULL, 'Baik', NULL),
(2018, 'Meja Kaca Tamu', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Meja Kaca', 'STP/STC/MKT/06/2022/24', '12.01.11.32.15.01.02.01.2017/1.3.2.05.003.002.011.000008', NULL, NULL, NULL, 'Baik', NULL),
(2019, 'Meja Manajerial', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Meja Monaco', 'STP/STC/MMM/06/2022/1', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.002.000017', NULL, NULL, NULL, 'Baik', NULL),
(2020, 'Kursi Kerja Manajer', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Kursi Sauber', 'STP/STC/KMSM/06/2022/5', '12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000102', NULL, NULL, NULL, 'Baik', NULL),
(2021, 'Kursi Kerja', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Kursi Sauber', 'STP/STC/KKS/06/2022/66', '12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000035', NULL, NULL, NULL, 'Baik', NULL),
(2022, 'Kursi Kerja Sauber', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Kursi Sauber', 'STP/STC/KKS/06/2022/67', '12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000002', NULL, NULL, NULL, 'Baik', NULL),
(2023, 'Meja Kaca Kecil', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Meja Kaca', 'STP/STC/MKT/06/2022/16', NULL, NULL, NULL, NULL, 'Baik', NULL),
(2024, 'Meja Kaca Kecil', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Meja Kaca', 'STP/STC/MKT/06/2022/15', '-', NULL, NULL, NULL, 'Baik', NULL),
(2025, 'Sofa 2 Seater', '', 'STC', 'SKK MIGAS', NULL, NULL, NULL, 'Sofa Ziva', 'STP/STC/SSZ/06/2022/11', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.048.000022', NULL, NULL, NULL, 'Baik', NULL),
(2026, 'Kursi Training', '', 'STC', 'Solcorn', NULL, NULL, NULL, 'Kursi Training Wizard', NULL, NULL, 9, NULL, NULL, 'Baik', NULL),
(2027, 'Sofa 2 Seater', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Sofa Ziva', 'STP/STC/SSZ/06/2022/01\r\n STP/STC/SSZ/06/2022/15', '/1.3.2.05.002.001.048.000021\r\n/1.3.2.05.002.001.048.000025', 2, NULL, NULL, 'Baik', NULL),
(2028, 'Sofa 3 Seater', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Sofa Ziva', 'STP/STC/SSZS/06/2022/2', '/1.3.2.05.002.001.048.000049', 1, NULL, NULL, 'Baik', NULL),
(2029, 'Cabinet sieben 2208GIW', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Lemari Sieben', 'STP/STC/CS/06/2022/4\r\nSTP/STC/CS/06/2022/3\r\nSTP/STC/CS/06/2022/5\r\nSTP/STC/CS/06/2022/3', '12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000025\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000022\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000023\r\n/1.3.2.05.001.004.006.000024', 4, NULL, NULL, 'Baik', NULL),
(2030, 'Meja Sekat 4 Kursi', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Meja Sekat Sieben', 'STP/STC/MSKS/06/2022/4\r\nSTP/STC/MSKS/06/2022/2', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.002.000025', 2, NULL, NULL, 'Baik', NULL),
(2031, 'Meja Cabinet', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Meja Cabinet Sevati', 'STP/STC/CSC/06/2022/8 \r\nSTP/STC/CSC/06/2022/6\r\nSTP/STC/CSC/06/2022/5', '12.01.11.32.15.01.02.01.2017//1.3.2.05.001.004.006.000019\r\n12.01.11.32.15.01.02.01.2017//1.3.2.05.001.004.006.000016\r\n12.01.11.32.15.01.02.01.2017//1.3.2.05.001.004.006.000018', 3, NULL, NULL, 'Baik', NULL),
(2032, 'Meja Meeting', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Meja Meeting Sevati', 'STP/STC/MMSM/06/2022/2\r\nSTP/STC/MMSM/06/2022/1', '-', 2, NULL, NULL, 'Baik', NULL),
(2033, 'Kursi Kerja Manajer', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Kursi Sauber', '-', '-', 1, NULL, NULL, 'Baik', NULL),
(2034, 'Dudukan Portable', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Dudukan Portable', '-', '-', 2, NULL, NULL, 'Baik', NULL),
(2035, 'Meja Kaca Tamu', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Meja Kaca', 'STP/STC/MKT/06/2022/40', '12.01.11.32.15.01.02.01.2017//1.3.2.05.003.002.011.000012', 1, NULL, NULL, 'Baik', NULL),
(2036, 'Kursi Bar', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Kursi Zaneta', NULL, NULL, 4, NULL, NULL, 'Baik', NULL),
(2037, 'Meja Kaca Kecil', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Meja Kaca', '-', '-', 1, NULL, NULL, 'Baik', NULL),
(2038, 'Kursi Kerja', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Kursi Sauber', NULL, NULL, 14, NULL, NULL, 'Baik', NULL),
(2039, 'Kursi Hadap Sauber', '', 'STC', 'Solocorn', NULL, NULL, NULL, 'Kursi Sauber', NULL, NULL, 10, NULL, NULL, 'Baik', NULL),
(2040, 'Cabinet Sevati', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Cabinet Meja Sevati Credenza', 'STP/STC/CMC/06/2022/11\r\nSTP/STC/CSC/06/2022/9\r\nSTP/STC/CSC/06/2022/1\r\nSTP/CPC/CMC/06/2022/10', '-\r\n-\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000014\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.001.004.006.000013', 4, NULL, NULL, 'Baik', NULL),
(2041, 'Meja Kaca Tamu', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Meja Kaca', 'STP/STC/MTK/06/2022/39\r\n -\r\nSTP/STC/MTK/06/2022/38', '12.01.11.32.15.01.02.01.2017//1.3.2.05.003.002.011.000016\r\n12.01.11.32.15.01.02.01.2017//1.3.2.05.003.002.011.000015\r\n-', 3, NULL, NULL, 'Baik', NULL),
(2042, 'Sofa 3 Seater', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Sofa', 'STP/STC/SSZS/06/2022/9\r\nSTP/STC/SSZS/06/2022/10', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.048.000042', 2, NULL, NULL, 'Baik', NULL),
(2043, 'Sofa 2 Seater', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Sofa', 'STP/STC/SSZ/06/2022/16\r\nSTP/STC/SSZ/06/2022/17', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.048.000033\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.048.000034', 2, NULL, NULL, 'Baik', NULL),
(2044, 'Meja Manajer', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Meja Manajer Sevati', 'STP/STC/MMS/06/2022/2\r\nSTP/STC/MMS/06/2022/1', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.002.000019\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.002.000018', 2, NULL, NULL, 'Baik', NULL),
(2045, 'Cabinet rak laci kecil', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'cabinet rak', NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1Ut_wY53O05j5XRHjo1iVPls-hUjF_Sj9', 'Baik', NULL),
(2046, 'Kursi Kerja Manajer', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Kursi Kerja Sauber', 'STP/STC/KMSM/06/2022/1', '12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000106', 1, NULL, NULL, 'Baik', NULL),
(2047, 'Kursi Kerja Sauber', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Kursi Sauber', 'STP/STC/KKS/06/2022/1\r\nSTP/STC/KKS/06/2022/2\r\nSTP/STC/KKS/06/2022/3', '12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000077\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000031\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.003.003.009.000030', 3, NULL, NULL, 'Baik', NULL),
(2048, 'Kursi Hadap Sauber', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Kursi Sauber', 'STP/STC/KHSV/06/2022/4 \r\nSTP/STC/KHSV/06/2022/1\r\nSTP/STC/KHSV/06/2022/15\r\nSTP/STC/KHSV/06/2022/3\r\nSTP/STC/KHSV/06/2022/2', '12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.031.000056\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.031.000054\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.031.000047\r\n12.01.11.32.15.01.02.01.2017/1.3.2.05.002.001.031.000053\r\n12.01.11.32.15.01.02.01', 5, NULL, NULL, 'Baik', NULL),
(2049, 'Papan Tulis dan Stand', '', 'STC', 'Tokopedia', NULL, NULL, NULL, 'Papan tulis', '-', '-', 1, NULL, NULL, 'Baik', NULL),
(2050, NULL, '', 'Welding', 'Kursi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1BZYvC2EdEIYOlZGUdjFUhL7EfkUdUGn1', 'Baik', NULL),
(2051, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=15f8k0zN9kVNygw9K3X1MS19DpDhinIUW', 'Baik', NULL),
(2052, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1VS7fP2wpZRLbTTZfEieOKdTVKrgCpqPp', 'Baik', NULL),
(2053, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0004', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', NULL),
(2054, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0003', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', NULL),
(2055, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0013', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', NULL),
(2056, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0011', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', NULL),
(2057, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0004', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', NULL),
(2058, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0012', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', NULL),
(2059, 'Kotak P3K', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1kggfdoDHBAJbJDURCePHfm0xDU8UNdnE', 'Baik', NULL),
(2060, 'Rak Penyimpanan', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1MnTI6JAQ6ntpF_OK60-nPYXPl0Gl9AtT', 'Baik', NULL),
(2061, 'Rak Penyimpanan Merah', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1mWjjJ0lAF6etxX_wymnurowsZnQ-YOm1', 'Baik', NULL),
(2062, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.10.02.01/02.09.01.33.10.0001', 1, NULL, 'https://drive.google.com/open?id=1h8I-W1qbKOUKPuMIc-PJ1223_GyEjEIG', 'Baik', NULL),
(2063, 'RAK MERAH', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/RM/12/2022 (01)', NULL, 1, NULL, 'https://drive.google.com/open?id=1zUvRODp_CD73GOr1iCN6rasI8P0iw7cK', 'Baik', NULL),
(2064, 'XJJ-50-SERIES', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/XJJ-50/12/2022 (01)', '12.11.32.15.01.10.02.01/02.09.01.34.02.0001', 1, NULL, 'https://drive.google.com/open?id=1PnMq5a3gjUyQKFA68HBuUv0w8xKFuPzB', 'Baik', NULL),
(2065, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1wpRbqUFSV70wFNzIwbvp0XWV2w5JrL9V', 'Baik', NULL),
(2066, 'Tabung pemadam', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'CITRA PERKASA ASYLUM', NULL, 'Label rusak', 1, NULL, 'https://drive.google.com/open?id=1Rv_2NO-7JMT_MoPOOLFHCrpJy5NTEqPK', 'Baik', NULL),
(2067, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1EqXxPkPHOpPHMWaoPEzTsaMhnsHyG2Bp', 'Baik', NULL),
(2068, 'Dispenser', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'Miyako', NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=14ACgs6c-CxFFK_YO9x4nDpegF60IHgFg', 'Rusak ringan', NULL),
(2069, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, 'https://drive.google.com/open?id=1KVreNe1Pc-FGkrtdsbjcKt1pdWyzgZSy', 'Baik', NULL),
(2070, 'MEJA PRAKTEK KAYU 1', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/MPK/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=1JRH52cGbf2EFPLdLHf_9S8q95bVu086E', 'Baik', NULL),
(2071, 'Meja', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1qD09X0gZsiBma_3exh3axVln0NNm3ajq', 'Baik', NULL),
(2072, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'https://drive.google.com/open?id=1sQ6HSoDo-_OpzPxHCffc0d9Ied6nlPUn', 'Baik', NULL),
(2073, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1JvLOjgRdZ-1rl2a3c16fOBhhVlVErNFl', 'Baik', NULL),
(2074, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=18lmALLi7Fjig99y19YIOjT73Ve-4axzc', 'Baik', NULL),
(2075, 'DIGITAL INVERTER AC/DC PULSE TIG WELDING 315A  KW1400714', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'Krisbow', NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1k5lFFamcy-vAJwSIIwC0pAVgEdWyi3Bi', 'Baik', NULL),
(2076, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.09.02.01/02.09.01.33.01.0004', 1, NULL, 'https://drive.google.com/open?id=15i9tv2HLk1Qt7a8mEKDwgqRGzyTxen-o', 'Rusak', NULL),
(2077, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'https://drive.google.com/open?id=1064F7BWfSmcX9BYPTcKVSegNvzIaCRnx', 'Baik', NULL),
(2078, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'TIG 220AD M-JB MultiPro', NULL, '12.11.32.15.01.16.02.01/02.04.01.01.19.0017\r\n-', 2, NULL, 'https://drive.google.com/open?id=18DHx9BWBwc6uBe1VCYZHVxSBbwIa7mK8', 'Baik', NULL),
(2079, 'MIG/MMA-JGBT Inverter technology', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.16.02.01/02.04.01.01.19.0022\r\n-', 2, NULL, 'https://drive.google.com/open?id=1e5lNzR6LCDhSGIbbJItQLj2j4pDvgvIb', 'Baik', NULL),
(2080, 'E 300 DC MERKLE', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15 01.09.02.01/02.09.01.33.01.0005', 1, NULL, 'https://drive.google.com/open?id=17F5lvT4vPxNnlydl8TyKNHgi4X6RDovk', 'Baik', NULL),
(2081, 'Meja', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1QiwaF4eQ-XY6TBrKHwlUdmVRdgobenYQ', 'Baik', NULL),
(2082, 'Kursi panjang', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1NcPUIcjb_jMjCOaYX90Xn380_wknPzG3', 'Baik', NULL),
(2083, 'KURSI TRAINING KAYU 55', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/KTK/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=10mhRVyfzoWRQooh0Va5JCBFvDQJROzuc', 'Rusak', NULL),
(2084, 'KURSI KERJA ATMI 38', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'ATMI', 'STP/KKA/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=1w-uDpyi95c3zZOjsNruWLsqp5VVCmyCk', 'Baik', NULL),
(2085, 'Kemper Welding', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=12QYGcT4zSq4ELd15_-d0_FuQgSdpc9ey', 'Baik', NULL),
(2086, 'Rak Besi Warna Jingga', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'https://drive.google.com/open?id=1U9hGlTXOcwbrqiq23TBzzCWk3eKWPymA', 'Baik', NULL),
(2087, 'DryRod  Electrode Stabilizing Oven', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'DryRod', NULL, 'Label luntur', 1, NULL, 'https://drive.google.com/open?id=1GxTTa-2skCf94SzooeJnGsRyWHUpdF2p', 'Baik', NULL),
(2088, 'Panel listrik', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'Pyramid', NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1tSZLALeomR9_WZfG7FU4Kb97qRRjPGJk', 'Baik', NULL),
(2089, 'Hydraulic Press Model HP-30', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'Krisbow', NULL, 'Label rusak', 1, NULL, 'https://drive.google.com/open?id=1fx6WpMZqdrfIbWkQIJiigEImTVGLok2X', 'Baik', NULL),
(2090, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0002', NULL, NULL, 'https://drive.google.com/open?id=1AnTbh5gkps6yYBY-JpAMVHFD1DRmIGvy', 'Baik', NULL),
(2091, 'Goodweld 200D', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.01.11.32.15.01.02.01.2017/1.3.2.03.001.007.008.000037\r\n12.01.11.32.15.01.02.01.2017/1.3.2.03.001.007.008.000038', 2, NULL, 'https://drive.google.com/open?id=1zNAusb_j_jNkxviu7kUwSIQXNRIoX1RJ', 'Baik', NULL),
(2092, 'NBC-270', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1CLQcSp8u7AYVrBVcexsDhJ9VFvzAjzA_', 'Baik', '*foto: barang yang di bawah'),
(2093, 'Mesin Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'MERKLE CompactMI 350 D', NULL, '12.11.32.15.01.10.02.01 / 02.09.08.09.18.0001', NULL, NULL, 'https://drive.google.com/open?id=1hHqQjcDj2MisnMblWG2G-i-wX8jNHLz5', 'Baik', '*foto: barang di atas'),
(2094, 'Meja las (?)', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL, 'https://drive.google.com/open?id=1-FZ-_VV4VR3DQZ6i2c02IhZyBabd_d4Y', 'Rusak ringan', NULL),
(2095, 'KOBEWEL', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/KOB.KMD/12/2022 (01)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1nsmBcjSYQQ8eohrkeVAwAZiFQtPkMJgj', 'Baik', NULL),
(2096, 'Mesin Las TIG 220AD M-JB MultiPro', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.16.02.01/02.04.01.01.19.0019', 1, NULL, 'https://drive.google.com/open?id=1bnhj9IP-cuii3LJqAYP4EMXNqA0jiIpZ', 'Baik', NULL),
(2097, 'CABINET LOKER 4', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/CL/05/2022', NULL, NULL, NULL, 'https://drive.google.com/open?id=1iyOeo0dFXIVc2dr3F6yiMi3OxhzIYiJx', 'Baik', NULL),
(2098, 'Tabung Gas Las', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1gPeAPJUyr0xScdpvZ0IS4tT9Ym_b4HEw', 'Baik', NULL),
(2099, 'Origo Arc300', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1xlNPMB9bA3VCyLKRivjgTgqoEaJPahhB', 'Baik', NULL),
(2100, 'INDUSTRIAL BENCH GRINDER', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1530uHi8KMApwwCEj7aUkFYOhRh1G9TlR', 'Baik', NULL),
(2101, 'Mesin Las ZX7-400T', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, 'Label luntur', 2, NULL, 'https://drive.google.com/open?id=16bYtqub9dQ8TS25elmRY1-a3UvVeyagt', 'Baik', NULL),
(2102, 'Almari', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.10.02.02 / 02.06.01.04.01.0010', NULL, NULL, 'https://drive.google.com/open?id=1mHIIx5TEeBi5TnCFTL2Chdo_crOdYOBa', 'Baik', NULL),
(2103, 'Rak Sapu', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1Yyytz-c7tIPflXUxLDfqABRNboJfZVFy', 'Baik', NULL),
(2104, 'Fire Extinguisher', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.10.02.01 / 02.06.02.07.17.0002', NULL, NULL, 'https://drive.google.com/open?id=1_R7HmAEyc0YYXlRwu3TNIXL6LRIMaxdk', 'Baik', NULL),
(2105, 'Kipas', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.16.02.01 / 02.06.02.04.06.0020', NULL, NULL, 'https://drive.google.com/open?id=1cl1KT-yj8Qmwtp_1CLAATNLxEFozkQm3', 'Baik', NULL),
(2106, 'Simulator', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/SIM/05/2022 (4)', NULL, NULL, NULL, 'https://drive.google.com/open?id=11jMuNJ75yBXtA4xtU_uAocxhBDSIecKv', 'Baik', NULL),
(2107, 'Papan Tulis', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1-14JPTDz3gZo1JISHn7CVOJVe-xigwOs', 'Baik', NULL),
(2108, 'Meja Kerja', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1SzLwi5M7UfApCERSw-WkqRPcVpk6dIuk', 'Baik', NULL),
(2109, 'MESIN LAS / INVERTER', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/MLI/12/2022/ (01)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1cMIxJVMH3LtHfZa874zTQ7kvANAZKHBn', 'Baik', NULL),
(2110, 'Panel 2', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1YIkaggbMzYFqjHlpwQ3tM1bOAjCss5bG', 'Baik', NULL),
(2111, 'KURSI KERJA ATMI 35', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/ KKA/05/2022', '12.11.32.15.01.13.02.01 / 02.06.02.01.29.0020', NULL, NULL, 'https://drive.google.com/open?id=12twU0DfcXfsYBdONxN99-ZBZGFyUabvw', 'Baik', NULL),
(2112, 'KURSI KERJA ATMI 34', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/ KKA/05/2022', '12.11.32.15.01.13.02.01 / 02.06.02.01.29.0012', NULL, NULL, 'https://drive.google.com/open?id=1H2YwkeaaJWSHCvRonTqitOSKMsTXSR42', 'Baik', NULL),
(2113, 'Kursi Kerja Atmi 33', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/ KKA/05/2022', NULL, NULL, NULL, 'https://drive.google.com/open?id=1hyGi4r-4NQJcowRE4p3HbSetvODtq6j6', 'Baik', NULL),
(2114, 'Tempat Sampah', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1sLdy3wd8BePYkvza8cZH1Ozq6Uzsl-eT', 'Baik', NULL),
(2115, 'Meja Besi', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1ut5hshnoLeudH4W9vySN2vQQ3ENOShLL', 'Baik', NULL),
(2116, 'KURSI FUTURA 396', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'FUTURA', 'STP/FUT/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=199-nGxkeFru3NNg1Zfd9JHrn7llavB-5', 'Baik', NULL),
(2117, 'LEMARI PENYIMPANAN', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'Krisbow', 'STP/LPKB/12/2022 (11)', NULL, 1, NULL, 'https://drive.google.com/open?id=1oNPYAbXelDHCSuceSzZyZz4tV8dnUJms', 'Baik', NULL),
(2118, 'Tabung', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'https://drive.google.com/open?id=1KaynZ88UXsKNaep7LnMmQTSjNjdo3si7', 'Baik', NULL),
(2119, 'POINT WELDER POT-32', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.11.02.01/02.09.01.33.07.0001', 1, NULL, 'https://drive.google.com/open?id=1VKodEc9hn1DobDBpU3fpXVvl-Ctez-wA', 'Baik', NULL),
(2120, 'HYL', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, '12.01.11.32.15.01.02.01.2017/1.3.2.03.001.007.008.000042', 1, NULL, 'https://drive.google.com/open?id=1eGu73zIFdoGddpjfCYfvzYZP2Iy7aWLY', 'Baik', NULL),
(2121, 'MEJA PRAKTIK KAYU 2', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/MPK/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=1OLSFfEkAPsx3-muCrKli7seUJZVB9m_B', 'Baik', NULL),
(2122, 'Container', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=18oq2Jh5R4mQKxTFCLju4fPg3zt04hGSV', 'Baik', NULL),
(2123, NULL, '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1Yrxexqt6DQBKKlJi1Nfgo04PAnB-kETz', 'Baik', NULL),
(2124, 'Kipas Angin', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, 'CKE', NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1fiDwvQEycqHCYphEdsr4ve84kX52Ms2K', 'Baik', NULL),
(2125, 'Welding Environtment Simulator', '', 'Welding', 'Lantai 1', NULL, NULL, NULL, NULL, 'STP/SIM/05/2022 (4)', NULL, 1, NULL, 'https://drive.google.com/open?id=1A8j_oxXTbjEm2LjChEXSPtwMyfmgaeRE', 'Baik', NULL),
(2126, NULL, '', 'Welding', 'Lantai 1 (Depan panel)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1s1s4cFemN9oPFtMKQlDTEM2rLnHwiqA9', 'Rusak ringan', NULL),
(2127, NULL, '', 'Welding', 'Lantai 1 (lorong bilik, depan panel listrik)', NULL, NULL, NULL, NULL, NULL, '12.01.11.32.15.01.02.01.2017/1.3.2.03.001.007.008.000039', 1, NULL, 'https://drive.google.com/open?id=1fML9jx692fAp_5WCKpyv_272Z9mk2xd7', 'Baik', NULL),
(2128, NULL, '', 'Welding', 'Lantai 1 (lorong bilik, depan panel listrik)', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.04.02.01/02.04.01.01.19.0011', NULL, NULL, 'https://drive.google.com/open?id=1yx3zhRcZPN19U4GdT6ClM1KDv22FRh5N', 'Baik', NULL),
(2129, NULL, '', 'Welding', 'Lantai 1 (lorong bilik, depan panel listrik)', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.16.02.01/02.04.01.01.19.0021', 1, NULL, 'https://drive.google.com/file/d/1WISOE1u_tTbbisef1SAvOWn2cKsvqqq6/view?usp=share_link', 'Baik', NULL),
(2130, 'MEJA BARANG KAYU PANJANG 5', '', 'Welding', 'Lantai 1 (lorong bilik, depan panel)', NULL, NULL, NULL, NULL, 'STP/MBKP/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=17KAFV6KMRPl5SmM4PmY0dN4zC1qyxUCl', 'Baik', NULL),
(2131, NULL, '', 'Welding', 'Lantai 1 (lorong bilik, depan panel)', NULL, NULL, NULL, NULL, NULL, '-\r\n-\r\n12.11.32.15.01.11.02.01/02.09.01.52.37.0002)', 1, NULL, 'https://drive.google.com/open?id=1EBMynAWZheG_ZHjILi-EaEIdjGWQCMyx', 'Baik', NULL),
(2132, 'MEJA PRAKTIK KAYU 1', '', 'Welding', 'Lantai 1 (lorong bilik, depan panel)', NULL, NULL, NULL, NULL, 'STP/MPK/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=1l4YI_VAfkrUpShF5Q8sGGzT4YfDYRHaN', 'Baik', NULL),
(2133, 'MEJA 9', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1yrXB8RX5ZBMTMUSnoA5KQxCIVjgfnnrQ', 'Rusak', NULL),
(2134, 'MEJA 15', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/SUR/02/2022', NULL, NULL, NULL, 'https://drive.google.com/open?id=1ha4PshmIpOf7LyLCoSW9V1CcHV72LgEC', 'Rusak', NULL),
(2135, 'Panel listrik', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1-53xaRYbKpOlIOeKBNNAeuijqikqsGzb', 'Baik', NULL),
(2136, 'MEJA KERJA HIJAU RAK', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/MKHR/12/2022 (004)', '4.2.11.32.15.01.09.02.01/02.04.02.01.02 TP065', 1, NULL, 'https://drive.google.com/open?id=1_z6UyxybVXo9tLAAX5IIkH4D4_6ostgP', 'Baik', NULL),
(2137, 'KURSI TRAINING KAYU 50', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/KTK/05/2022', NULL, 1, NULL, 'https://drive.google.com/open?id=1HevEXkGkSWRuWkqExYSIM9X7CwlLTll1', 'Baik', NULL),
(2138, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1Je8jAYZLc2bp4g-h2I_hD2iUYxtobgmk', 'Baik', NULL),
(2139, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'https://drive.google.com/open?id=1QcclvhkmFt9k5Dx3T6gClHqNPnDGxnpq', 'Baik', NULL),
(2140, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1dIrwRpe5alPeJTCS2PkRS6OHYH23deR9', 'Baik', NULL),
(2141, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1kF0baq-m3u9ZKEfnfDY99mtR27Psj98Z', 'Baik', NULL),
(2142, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1CDb3uDPpogn_31C70cQOU2u8nHyGJUf8', 'Baik', NULL),
(2143, 'Kobewel', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, '12.11.32.15.01.10.02.01/02.09.01.33.01.0008', 1, NULL, 'https://drive.google.com/open?id=1KwHxsff5nHLoacQm0tlmivOdIQ3fs1DV', 'Baik', NULL),
(2144, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1XR0Wp4Agx-X_SsipZNIvdtkJPTAL2aPX', 'Baik', NULL),
(2145, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1h-vr4aqmaK-E8H_kpSiuponRpaKvjpwP', 'Baik', NULL),
(2146, 'KURSI TRAINING KAYU', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/KTK/05/2022 (51)\r\nSTP/KTK/05/2022 (52)\r\nSTP/KTK/05/2022 (53)', NULL, 3, NULL, 'https://drive.google.com/open?id=1uRvpRt9IFPgNYRn6xcUA_9MHRtApH8gT', 'Baik', NULL),
(2147, NULL, '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1GtSMN2ZwyQVaxnI7ygMLg9rEB4dnZE8N', 'Baik', NULL),
(2148, 'MEJA 12', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/SUR/02/2022', NULL, NULL, NULL, 'https://drive.google.com/open?id=1hIZ6U564bkx22PNs6F9UG0b9tM93a2l7', 'Baik', NULL),
(2149, 'MEJA 4', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/SUR/02/2022', NULL, NULL, NULL, 'https://drive.google.com/open?id=1kfwJ2HbzsJIvHhQ806mLmV6aEIq7F5Ma', 'Rusak', NULL),
(2150, 'MEJA 11', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/SUR/02/2022', NULL, NULL, NULL, 'https://drive.google.com/open?id=1kfwJ2HbzsJIvHhQ806mLmV6aEIq7F5Ma', 'Rusak', NULL),
(2151, 'Panel', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1Rd2eJoJonkPQ5LlFgTPkMiRAsTvdxdNg', 'Baik', NULL),
(2152, 'MEJA PERALATAN WELDING', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/MPW/12/2022/01', NULL, NULL, NULL, 'https://drive.google.com/open?id=1ME-k5BWyfWHzQM_gW-AV9zJs_k2oZPqL', 'Baik', NULL),
(2153, 'MEJA KERJA HIJAU RAK', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/MKHR/12/2022 (005)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1Mx0vhsvjC0kLdNjT8SQn1Nze0w_oUWmI', 'Baik', NULL),
(2154, 'MEJA KERJA HIJAU RAK', '', 'Welding', 'Lantai 2', NULL, NULL, NULL, NULL, 'STP/MKHR/12/2022 (003)', NULL, NULL, NULL, 'https://drive.google.com/open?id=1yUBZWOb9pl7UtxPrZY8CEA5UCbOXhoRC', 'Baik', NULL),
(2155, NULL, '', 'Welding', 'Papan Tulis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://drive.google.com/open?id=1nGFgLELvalNysABjx3JPo0kz45q6mBkf', 'Baik', NULL),
(2156, 'KURSI KERJA ATMI 34', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, 'ATMI', 'STP/KKA/05/2022 (34)\r\nSTP/KKA/05/2022 (33)\r\nSTP/KKA/05/2022 (35)', '12.11.32.15.01.13.02.01/02.06.02.01.29.0012\r\n-\r\n12.11.32.15.01.13.02.01/02.06.02.01.29.0006', 3, NULL, 'https://drive.google.com/open?id=1LrfL6V3cSsRG99k1gli0s0eSvhZlejdl', 'Baik', NULL),
(2157, 'Rak Pajangan', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=12DnXqIj23bv_BxLJlH77z7qZl1mo7eAB', 'Baik', NULL),
(2158, 'Meja Kerja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1h55TPytt6twQH3vX2PZ6yGC_6MQoLgtX', 'Baik', NULL),
(2159, 'Kursi Kerja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=19Ick7zJaS8jsE4dMBC4XsyHYbCRzI5BN', 'Baik', NULL),
(2160, 'Loker 9 Pintu', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, 'Krisbow', NULL, '12.11.32.15.01.16.02.01/02.04.02.06.11.0057', 1, NULL, 'https://drive.google.com/open?id=1lwo-7CNGIlPJCCXtvrwWqYFOWAHZSCS9', 'Baik', NULL),
(2161, 'CABINET BROTHER 6', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, 'STP/CB/05/2022', '12.11.32.15.01.10.02.01/02.06.01.04.01.0008', 1, NULL, 'https://drive.google.com/open?id=1bUfdVeQapCKK9vqFFQ3CFm3V6JcK_kQb', 'Baik', NULL),
(2162, 'MEJA KERJA ATMI 22', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, 'ATMI', 'STP/MKA/05/2022', '12.11.32.15.01.09.02.01/02.06.02.01.11.TF042', 1, NULL, 'https://drive.google.com/open?id=1IVypUaqg_zf1OW2UH1ZzphUUDVAbrb1Z', 'Baik', NULL),
(2163, 'Meja Kerja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=10rztO_x2P9n6Lp4ktxUlaMbdfXDFfUob', 'Baik', NULL),
(2164, 'KURSI HADAP TRAINING 3', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, 'STP/KHT/05/2022', NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1uzpmxfRMCIOIvh5-P-rM_kuFc1DQVN75', 'Baik', NULL),
(2165, 'Meja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1fRnZVDjvCxhLAhOyywC4vTS-eEAWGlyR', 'Baik', NULL),
(2166, 'Meja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1zp8Ih2bowGUclkBAPd-lfL065HmyhowO', 'Baik', NULL),
(2167, 'Meja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1Fw6iD7OmQpoWKkvKyO39js4QVZkxuWsQ', 'Baik', NULL),
(2168, 'Kursi Kerja', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'https://drive.google.com/open?id=18q-S3rQhpDGi6yPA5Nz1-e2qZndn3cGh', 'Baik', NULL),
(2169, 'Papan Spons', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=1HX4kWOaW62ipnOyJbHf3poe36SaPf0ID', 'Baik', NULL),
(2170, 'Filling Cabinet 3 Loker', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, 'Krisbow', NULL, 'Label rusak', 1, NULL, 'https://drive.google.com/open?id=1A6DEIPrjIvmaQpnJcsFWAOlDgufZoEvL', 'Baik', NULL),
(2171, 'AC', '', 'Welding', 'Ruangan Dalam Kaca', NULL, NULL, NULL, 'Daikin', NULL, NULL, 1, NULL, 'https://drive.google.com/open?id=137yRQMr2YP6o6TpdEkqyzTp0zH1tTgDV', 'Baik', NULL),
(2172, 'Laptop', '', 'Welding', 'Ruangan Dalam Kaca', '0000-00-00', '0000-00-00', '0000-00-00', 'Lenovo', '', '12.01.11.32.15.01.02.01.2017/1.3.2.10.001.002.002.000043', 1, NULL, '', 'Baik', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_belanja`
--

CREATE TABLE `master_belanja` (
  `Id_jenisbelanja` int(11) NOT NULL,
  `Jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_belanja`
--

INSERT INTO `master_belanja` (`Id_jenisbelanja`, `Jenis`) VALUES
(2, 'Barang/Jasa'),
(3, 'Modal');

-- --------------------------------------------------------

--
-- Table structure for table `master_cuti`
--

CREATE TABLE `master_cuti` (
  `Id_cuti` int(11) NOT NULL,
  `Jenis_cuti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `master_cuti`
--

INSERT INTO `master_cuti` (`Id_cuti`, `Jenis_cuti`) VALUES
(1, 'Nikah'),
(2, 'Melahirkan');

-- --------------------------------------------------------

--
-- Table structure for table `master_divisi`
--

CREATE TABLE `master_divisi` (
  `Id_divisi` int(11) NOT NULL,
  `Nama_divisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_divisi`
--

INSERT INTO `master_divisi` (`Id_divisi`, `Nama_divisi`) VALUES
(2, 'Logistik'),
(3, 'Anggaran'),
(4, 'Akuntansi'),
(5, 'Pengelolaan Aset'),
(6, 'Diklat'),
(7, 'Produksi dan Pemasaran'),
(8, 'Riset dan Inkubator'),
(9, 'Sentra Fasilitas Hak Kekayaan Intelektual'),
(10, 'Pemberdayaan Kawasan'),
(11, 'Kerjasama dan Hukum'),
(12, 'Administrasi dan Kepegawaian');

-- --------------------------------------------------------

--
-- Table structure for table `master_instansi`
--

CREATE TABLE `master_instansi` (
  `Id_instansi` int(11) NOT NULL,
  `Nama_instansi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_jenis_peraturan`
--

CREATE TABLE `master_jenis_peraturan` (
  `Id_jenisperaturan` int(11) NOT NULL,
  `Jenis_peraturan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_keterangan`
--

CREATE TABLE `master_keterangan` (
  `Id_keterangan` int(11) NOT NULL,
  `Keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `master_keterangan`
--

INSERT INTO `master_keterangan` (`Id_keterangan`, `Keterangan`) VALUES
(1, 'Shopee'),
(2, 'Bukalapak'),
(3, 'Tokopedia'),
(4, 'GoTo'),
(5, 'Blibli'),
(6, 'Bank Mandiri'),
(7, 'Amazon Web Service'),
(8, 'Garena'),
(9, 'ACER-Gloria Taiwan-ICE Institute'),
(10, 'SKK Migas'),
(11, 'Petronas'),
(12, 'Petrotekno'),
(13, 'Pertamina Hulu Energi'),
(14, 'Quest Motor'),
(15, 'Indofarma'),
(16, 'Nestle'),
(17, 'BSSN'),
(18, 'Kemendikbudristek Dikti'),
(19, 'Pijar Foundation'),
(20, 'Apple Developer Academy @BINUS'),
(21, 'UNISRI'),
(22, 'UNIBA'),
(23, 'LPDP'),
(24, 'Scholar Official'),
(25, 'Bappeda Jateng'),
(26, 'UNS'),
(27, 'Inaspoc'),
(28, 'UIN'),
(29, 'Balitbangda'),
(30, 'Kemenko'),
(31, 'Kunjungan Sekolah'),
(32, 'Kunjungan Universitas'),
(33, 'SSC'),
(34, 'Kunjungan Instansi'),
(35, 'J&T');

-- --------------------------------------------------------

--
-- Table structure for table `master_pegawai`
--

CREATE TABLE `master_pegawai` (
  `Id_pegawai` int(11) NOT NULL,
  `Nama_pegawai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_pegawai`
--

INSERT INTO `master_pegawai` (`Id_pegawai`, `Nama_pegawai`) VALUES
(1, 'Rony Widjanarko'),
(2, 'Wahyu Hermawan'),
(3, 'Bp Yudit Cahyantoro NS, ST, MT.'),
(4, 'Bp. Untung Priyohananto, SE'),
(5, 'Bp. Christian Ardinto, ST'),
(6, 'Susilo Budi Arianto'),
(7, 'Lucia Citra Hirawati'),
(8, 'Oktafianto Nugroho'),
(9, 'Danang Cahyono'),
(10, 'Anang Tri Ruwiyanto'),
(11, 'Sapardi'),
(12, 'Sri Purwanto'),
(13, 'Sarino'),
(14, 'Nanang Dwi Setyawan'),
(15, 'Ariyani Oktaviana R'),
(16, 'Agus Tri Hananto'),
(17, 'Anang Hardyka'),
(18, 'Budiharto'),
(19, 'Respati Hendro P'),
(20, 'Mulyanto'),
(21, 'Eko Anggoro'),
(22, 'Agus Wahyudi'),
(23, 'Erwin Sudrajat'),
(24, 'Budi Purwanto'),
(25, 'Agus Jatmiko'),
(26, 'Putra Adi Widrajat'),
(27, 'Febri'),
(28, 'Chrissania Dhika Wismara'),
(29, 'Levi Tanri'),
(30, 'Tommy Trisula'),
(31, 'Andreas'),
(32, 'Budi fahmi Aji'),
(33, 'Abednego Danu S'),
(34, 'Risky Budi Kurniawan'),
(35, 'Riza Kurniawan'),
(36, 'Tegar Pinatar'),
(37, 'Yuli Tri Hartuti'),
(38, 'Ridho Adhi Prabowo'),
(39, 'Hanifah Hasna'),
(40, 'Arief Wibowo'),
(41, 'Gesang'),
(42, 'Eva Sofyana'),
(43, 'Bangun Fajar K'),
(44, 'Anton Efendi'),
(45, 'Sri Hartono'),
(47, 'Jati Utomo'),
(49, 'Ani Anggraeni');

-- --------------------------------------------------------

--
-- Table structure for table `master_penerimaan`
--

CREATE TABLE `master_penerimaan` (
  `Id_penerimaan` int(11) NOT NULL,
  `Kode_penerimaan` varchar(100) DEFAULT NULL,
  `Bulan` varchar(100) NOT NULL,
  `Tanggal` date NOT NULL,
  `Nama_pembayar` varchar(500) NOT NULL,
  `Keperluan` varchar(2000) NOT NULL,
  `Alamat_instansi` varchar(200) DEFAULT NULL,
  `No_tandaterima` varchar(500) DEFAULT NULL,
  `Besaran_biaya` double NOT NULL,
  `Id_metode` int(100) DEFAULT NULL,
  `Bukti` varchar(200) DEFAULT NULL,
  `Status` enum('voice','invoice') DEFAULT NULL,
  `Drive` varchar(200) DEFAULT NULL,
  `Keterangan` enum('verifikasi','nonverifikasi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_penerimaan`
--

INSERT INTO `master_penerimaan` (`Id_penerimaan`, `Kode_penerimaan`, `Bulan`, `Tanggal`, `Nama_pembayar`, `Keperluan`, `Alamat_instansi`, `No_tandaterima`, `Besaran_biaya`, `Id_metode`, `Bukti`, `Status`, `Drive`, `Keterangan`) VALUES
(544, NULL, 'Januari', '2023-01-03', 'Bapak Nanang', 'Pembayaran Chip/Gram 76 Kg @4.200', 'Surakarta', 'KM-23/01/01', 319200, 1, NULL, 'voice', 'https://drive.google.com/open?id=1drZ8ChyfBmYSb4qBYy6fa5MsI8KtKoaV', 'verifikasi'),
(545, NULL, 'Januari', '2023-01-03', 'Bibli', 'Bibli Class Series', 'Bibli', '000993832269', 14700000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1WVg-ve-3tQHDyKzgOnFn4JiNEHXXFVFm', 'verifikasi'),
(546, NULL, 'Januari', '2023-01-04', 'Erlangga Febyansyah', 'Pembayaran prakerin', 'UNISRI', 'KM-23/01/02', 40000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1Uj_bXjIXfOWgqlak27lfyTHd9klPUxk6', 'verifikasi'),
(547, NULL, 'Januari', '2023-01-04', 'SKK Migas', 'Pembayaran Sewa Ruangan SKK Migas', 'SKK Migas', '000994092834', 8330000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1Xzz9t0j20xLQA2maOUtmfJ_PtgGlB7LP', 'verifikasi'),
(548, NULL, 'Januari', '2023-01-06', 'Anonim', 'Anonim', 'Anonim', 'WB0020106000764', 7100000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1zgIY2_EVhs9xQm32Rl5JcOJd2fBIgzr1', 'verifikasi'),
(549, NULL, 'Januari', '2023-01-06', 'Garindo', 'Pembayaran Sewa Ruang Garindo', 'Garindo', '6763750927', 50000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1NKfyrcZdFnDSbWS5LOvC-asCDJBmRRxv', 'verifikasi'),
(550, NULL, 'Januari', '2023-01-06', 'Garindo', 'Pembayaran Sewa Ruang Garindo', 'Garindo', '6763758627', 2600000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1Mom-8vOaRLoveA-Ad9OUaTXUAvTfKNOw', 'verifikasi'),
(551, NULL, 'Januari', '2023-01-09', 'Rossi Septian Wibowo', 'Biaya pendaftaran Diklat APBD', 'Surakarta', 'KM-23/01/03', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=19kv_ebcbE6-UaihSyHPiyF89jUVY6E6T', 'verifikasi'),
(552, NULL, 'Januari', '2023-01-10', 'Bp. Didik Chandra', 'Pembayaran Surface Grinding Touch Up 2 Sisi (A) 1 Pcs @Rp 200.000, Surface Grind', 'Bengkel Dharma Sarana Mekanik', 'KM-23/01/04', 400000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1Su_GIrXZ7dOGj4OlVkPNu4qUWRJrGaH2', 'verifikasi'),
(553, NULL, 'Januari', '2023-01-10', 'Bp. Didik Chandra', 'Pembayaran Sewa Mesin Punch 40 Ton 15 Jam @Rp 45.000', 'Bengkel Dharma Sarana Mekanik', 'KM-23/01/05', 675000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1NsIj3PGr24qA9JJVei98zruq2zJiqKmI', 'verifikasi'),
(554, NULL, 'Januari', '2023-01-10', 'Bp Didik Chandra', 'Pembayaran Resharpening Blade (A) 4 Pcs @Rp 30.000 Resharpening Blade (B) 4 Pcs ', 'Bengkel Dharma Sarana Mekanik', 'KM-23/01/06', 320000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1Saf1hFWN8sv5t3f-wj218iSYjkI_7F8H', 'verifikasi'),
(555, NULL, 'Januari', '2023-01-11', 'Fernando Aji Nugroho', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMKN 8 Surakarta', 'KM-23/01/07', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1OllCQHB4JMqq4KMS_3bivghiOUQh-jYl', 'verifikasi'),
(556, NULL, 'Januari', '2023-01-16', 'IKhlas Wicaksono', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Progam APBD 2023', 'SMK N 5 Surakarta', 'KM-23/01/08', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1rhCvmQCLNiPANqbUrgLq-UUvqkWHmOY8', 'verifikasi'),
(557, NULL, 'Januari', '2023-01-16', 'Vanya Astita Yunadhi P', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Progam APBD 2023', 'SMK N 6 Surakarta', 'KM-23/01/09', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1J7PY31sOdqUHWqqp8AwYT3mKxmvKGQHO', 'verifikasi'),
(558, NULL, 'Januari', '2023-01-17', 'Sri Purwanti Nugrahanny', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Progam APBD 2023', 'MA AL Islam Surakarta', 'KM-23/01/10', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1kwXOPz_FiDdvhP78ZGSGwRs-i7e3zcMq', 'verifikasi'),
(559, NULL, 'Januari', '2023-01-17', 'Galih Fandi Pratama', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Progam APBD 2023', 'SMA Kejar Paket C', 'KM-23/01/11', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=12ZhiKg-fvm-99lDdDy815Qn84fBXZXme', 'verifikasi'),
(560, NULL, 'Januari', '2023-01-17', 'Muhammad Ahnafreyza Adinata', 'Pembayaran Biaya Pendaftaran Diklat Desain Manufaktur Progam APBD 2023', 'SMK N 9 Surakarta', 'KM-23/01/12', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1F55vxro5rtLxLjw9hW3cMHwC6un1rV9m', 'verifikasi'),
(561, NULL, 'Januari', '2023-01-17', 'Natanael Kevin Christ S', 'Pembayaran Prakerin', 'SMK N 4 Sukoharjo', 'KM-23/01/13', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1J2_7PTXjHtv-AKP6bOYhpFhXJYxubbRv', 'verifikasi'),
(562, NULL, 'Januari', '2023-01-17', 'Rengga Albertha A S', 'Pembayaran Prakerin', 'SMK N 4 Sukoharjo', 'KM-23/01/14', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=10PcfQy47mduAk7gDjkYBXZcYdONPrzWx', 'verifikasi'),
(563, NULL, 'Januari', '2023-01-18', 'Nathan AG', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Kristen 2 Surakarta', 'KM-23/01/15', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1j8H62T_sg3PZL9EuUichOJRLVoFsxCf7', 'verifikasi'),
(564, NULL, 'Januari', '2023-01-18', 'Ariya Bayu Setiyawan', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Kristen 2 Surakarta', 'KM-23/01/16', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=16S3rB8plFF4FII-26_KcbGhzZ4-_Jxio', 'verifikasi'),
(565, NULL, 'Januari', '2023-01-18', 'Stefanus Januar Ardi N', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Kristen 2 Surakarta', 'KM-23/01/17', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1jiKdrT3EloU7C9ZCxkiu5huVSaqAYT5F', 'verifikasi'),
(566, NULL, 'Januari', '2023-01-18', 'SKK Migas', 'Pembayaran Sewa Ruangan  SKK Migas', 'SKK Migas', '000999442309', 8330000, 2, NULL, 'voice', 'https://drive.google.com/open?id=14ktMwGHvOvFw9b5eOhCYbxQ4w6EFO09Z', 'verifikasi'),
(567, NULL, 'Januari', '2023-01-19', 'Muhammad Rafly Romadhoni', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Bhineka Karya', 'KM-23/01/18', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1ZWJ1V-cUarbBHu56psyWADQ4NK7fmJgK', 'verifikasi'),
(568, NULL, 'Januari', '2023-01-19', 'Ilham Wigunardi', 'Pembayaran Pelunasan Diklat Mandiri Mekanik Manufaktur', 'SMK N 1 Nogosari Boyolali', 'KM-23/01/19', 3800000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1KOLaUJY-A9nxp4S_0HHfdJQ2tvmjTqOB', 'verifikasi'),
(569, NULL, 'Januari', '2023-01-19', 'Medco', 'Pembayaran Diklat Kerjasama Medco', 'Medco', '799102560498301', 253624000, 2, NULL, 'voice', 'https://drive.google.com/open?id=163PIN7Xyy1o8FEyYMVj0x6SU5P-k2E97', 'verifikasi'),
(570, NULL, 'Januari', '2023-01-24', 'Arbian Purnama P.S', 'Pembayaran Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK Bhineka Karya', 'KM-23/01/20', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1cFhZ5c_v3K3a7Luo2Su-zwbeNNUT0MZq', 'verifikasi'),
(571, NULL, 'Januari', '2023-01-24', 'Ardiansyah', 'Pembayaran Pelatihan Under Water Wet Welding (Durasi 2 Bulan) @Rp 20.000.000 + B', 'Tebo Jambi', '0270434005-9994/ KM-23/01/28', 20050000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1cfNSaAjoPNEGsnqwwZDteCLlW8SJx1E_', 'verifikasi'),
(572, NULL, 'Januari', '2023-01-25', 'Aradhitya Bintang A.S', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 2 Surakarta', 'KM-23/01/21', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1T-abc6-Sxs7Zh092LhIldx6tUsKRkDZE', 'verifikasi'),
(573, NULL, 'Januari', '2023-01-26', 'Tomas Dwi Utama', 'Pelunasan Pembayaran Diklat Mandiri Pengelasan (Welding) + Biaya Pendaftaran', 'SMK Kristen 2 Surakarta', 'KM-23/01/22', 3450000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1TNFj1JqBG5FQu8R6y6hVYBMGfeVdGEOx', 'verifikasi'),
(574, NULL, 'Januari', '2023-01-26', 'Medco', 'Pembayaran Diklat Kerjasama Medco', 'Medco', '799102561840001', 253624000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1Ymel_YAN4tY50H4pYD3GWaBfyAtRvKIY', 'verifikasi'),
(575, NULL, 'Januari', '2023-01-26', 'Theodorus Mirko', 'Pembayaran Pelatihan Las MIG Dasar (Durasi 40 Jam) 1 Orang @Rp 6.500.000, Pelati', 'Politeknik ATMI Surakarta', '0219594610-6175/ KM-23/01/27', 14000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1tu8POVqRijzgieXAoI9XGNCYm2pjRH8P', 'verifikasi'),
(576, NULL, 'Januari', '2023-01-26', 'Ralali', 'Pembayaran Cicilan Sewa Ruang Ralali', 'Ralali', '006860627477', 10000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=10gNxCeXc2NrGe7lhcdPSr1CuQr2D7wjE', 'verifikasi'),
(577, NULL, 'Januari', '2023-01-28', 'Enjel Sukmawati', 'Pelunasan Pembayaran Diklat Mandiri Desain Manufaktur', 'SMK Sakti Gemolong Sragen', '78129729/2834254126/ KM-23/01/', 4000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1WaWE3eKi7klfbk7Ubo-CZGACxdn4uOot', 'verifikasi'),
(578, NULL, 'Januari', '2023-01-30', 'Farhan Mahendratama', 'Pelunasan Pembayaran Diklat Mandiri Mekanik Manufaktur + Biaya Pendaftaran', 'SMK N 1 Nogosari Boyolali', 'KM-23/01/23', 3850000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1b-abMzn02bljCCzPz2kRUElCoby2pLHz', 'verifikasi'),
(579, NULL, 'Januari', '2023-01-30', 'Valent Mizar Muhana', 'Pelunasan Pembayaran Diklat Mandiri Mekanik Manufaktur + Biaya Pendaftaran', 'MAN 1 Klaten', 'KM-23/01/24', 3850000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1Szu8bnZeUCaF-mzUhl8JJWrGkP1x6TdG', 'verifikasi'),
(580, NULL, 'Januari', '2023-01-30', 'Giga Surwanda Ainurrohman', 'Pelunasan Pembayaran Diklat Mandiri Mekanik Manufaktur', 'SMK Dayawangsa Wonogiri', 'KM-23/01/25', 3900000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1hApIMrO6fnhW0NsPuojmKbKsFUVqP9dg', 'verifikasi'),
(581, NULL, 'Januari', '2023-01-30', 'Ralali', 'Pembayaran Cicilan Sewa Ruang Ralali', 'Ralali', '006873767826', 10000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1hsi_hfPYe-Cn-xPajOS5VDBEOf-MFaCk', 'verifikasi'),
(582, NULL, 'Januari', '2023-01-31', 'Fany Sofyanto', 'Pembayaran Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK Muh 3 Surakarta', 'KM-23/01/29', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1fFbQ09N43Yu8wuQhP-Br2aRv9NOPuo4M', 'verifikasi'),
(583, NULL, 'Januari', '2023-01-31', 'Ibu Agustin', 'Pembayaran DP ke 1 Penggerjaan Pemotongan Pipa PDAM 3 Titik @Rp 30.000.000', 'CV Mekkar Jaya', 'KM-23/01/30', 30000000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1UCf8Msqyg3q0k4cJonvxVTd9IZJf4QWz', 'verifikasi'),
(584, NULL, 'Januari', '2023-01-31', 'Bank Jateng', 'Pembayaran Bunga Jagir', 'Bank Jateng', '1002007181INC', 869891, 2, NULL, 'voice', 'https://drive.google.com/open?id=1gjF0hAQdWCQa_BhxqXdIapAqfZ8q7QZe', 'verifikasi'),
(585, NULL, 'Januari', '2023-01-31', 'Bank Mandiri', 'Pembayaran Bunga', 'Bank Mandiri', '13826', 100198.81, 2, NULL, 'voice', 'https://drive.google.com/open?id=1GuJp7Dun3jbKWnaMXvJi5E3ZhrFqVjx0', 'verifikasi'),
(586, NULL, 'Februari', '2023-02-01', 'Medy Chokiyansyah', 'Pelunasan Pembayaran Diklat Mandiri Mekanik Manufaktur + Biaya Pendaftaran', 'SMA N 1 Balitang Sumatra Selatan', 'KM-23/02/01', 3000000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1rsVp33_j9RMpNH8DHEu-7SY0hlP42tf_', 'verifikasi'),
(587, NULL, 'Februari', '2023-02-01', 'Gilang Ajie Saputra', 'Pelunasan Pembayaran Diklat Mandiri Pengelasan (Welding)', 'SMK N 1 Nogosari Boyolali', 'KM-23/02/02', 3850000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1CgabMvR3e4Hu0TLWXQOJFkp3vFaySTr1', 'verifikasi'),
(588, NULL, 'Februari', '2023-02-03', 'Cahyo Anjar Sulistiyanto', 'Pelunasan Pembayaran Diklat Mandiri Pengelasan (Welding)', 'SMK Bhineka Karya Simo Boyolali', 'KM-23/02/03', 3850000, 1, NULL, 'voice', 'https://drive.google.com/open?id=15g7KhiI0EfKweTNVq98-GY8DIh3WtZ5l', 'verifikasi'),
(589, NULL, 'Februari', '2023-02-03', 'Garena', 'Pembayaran Listrik Garena bulan Januari', 'Garena', '001006725538', 206158, 2, NULL, 'voice', 'https://drive.google.com/open?id=140zxIo0NI3-ZpiDJAZcTjM7tmy9zJHAA', 'verifikasi'),
(590, NULL, 'Februari', '2023-02-06', 'Anonim', 'Anonim', 'Anonim', '6920875626', 10000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1yI-Gj317aOJusfnfOJkbelxyFfDW1M0e', 'verifikasi'),
(591, NULL, 'Februari', '2023-02-06', 'Anonim', 'Anonim', 'Anonim', '0221044346-3000', 575000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1v4WCRhMYtOWUCFNw8VlHeO-k_TAy0Tlo', 'verifikasi'),
(592, NULL, 'Februari', '2023-02-06', 'CV Mitra Sentosa Mandiri', 'Pembayaran Produksi atas Invoice 23/INV/01/014', 'CV Mitra Sentosa Mandiri', '99102', 6840000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1TpduHJ-8MNdyzJS6RNKUgi-DUXiqK0z5', 'verifikasi'),
(593, NULL, 'Februari', '2023-02-07', 'Azhar Maulana Prayoga', 'Pelunasan Pembayaran Diklat Mandiri Pengelasan (Welding)', 'SMK Tunas Harapan', '99101/ KM-23/02/04', 3924000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1vTdf-JWrEkvEkaRBhegu5dZvsBc32bSa', 'verifikasi'),
(594, NULL, 'Februari', '2023-02-07', 'Bank Mandiri', 'Pembayaran Listrik Bank Mandiri', 'Bank Mandiri', '13826', 98239.6, 2, NULL, 'voice', 'https://drive.google.com/open?id=17Bo3qScwGxTgNJrvlu5hVfg6IO0S_JMk', 'verifikasi'),
(595, NULL, 'Februari', '2023-02-08', 'UPTD KST', 'Setor kembali atas Belanja Perjalanan Dinas, dll', 'UPTD KST', 'WB0020208000489', 2706000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1pD31AhfJJwd79NeXNM8vQWNinZw8PdOs', 'verifikasi'),
(596, NULL, 'Februari', '2023-02-08', 'PT Imbang Tata Alam', 'DP atas Invoice 22/INV/11/244 Training dan Sertifikasi OPLP Batch 2 & 3', 'PT Imbang Tata Alam', '001008514713', 200000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1y809B3SJpL36TK7uknNGuCXTlww19CqI', 'verifikasi'),
(597, NULL, 'Februari', '2023-02-10', 'Bp. Sulistyo', 'Sewa Mesin Resharpening Tool 2 Jam @Rp 20.000', 'SMK Bhineka Karya Surakarta', 'KM-23/02/05', 40000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1kKT5mySakhPIfTDDT7zhzAwHvmf4o2Sr', 'verifikasi'),
(598, NULL, 'Februari', '2023-02-13', 'Petrotekno', 'Diklat HCML', 'Petrotekno', '001010075579', 22344000, 2, NULL, 'voice', 'https://drive.google.com/open?id=15tkqs0dSjgDUj_szjLpuuDkOskKLrHEi', 'verifikasi'),
(599, NULL, 'Februari', '2023-02-13', 'Petrotekno', 'Diklat HCML', 'Petrotekno', '001010075580', 23324000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1Z_Kdf_sLVyb4CxrIgwZwLzpwGY5Vduq7', 'verifikasi'),
(600, NULL, 'Februari', '2023-02-13', 'Petrotekno', 'Diklat HCML', 'Petrotekno', '001010075581', 64680000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1RipT51zaTO7YROxCi1V3Nk2gqvu-QyKW', 'verifikasi'),
(601, NULL, 'Februari', '2023-02-14', 'Bp. Eko', 'Pembayaran Surface Grinding 1 Sisi (Touch Up) 1 set @Rp 175.000', 'PT Apsara Tiyasa Sambada', 'KM-23/02/06', 175000, 1, NULL, 'voice', 'https://drive.google.com/open?id=15Bc3MeL_SbkFqNhxulZUj4b8LXxmllI4', 'verifikasi'),
(602, NULL, 'Februari', '2023-02-14', 'Ibu Agustin', 'Pelunasan Pembayaran Pengerjaan Pemotongan Pipa PDAM 3 Titik @Rp 30.000.000', 'CV Mekkar Jaya', 'KM-23/02/07', 55500000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1nA6Tp2teN6x7dmP8W-kDS6pCDX9PKJmC', 'verifikasi'),
(603, NULL, 'Februari', '2023-02-14', 'Hernanda Putut Wibisono', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMAN 2 Surakarta', 'KM-23/02/08', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1DanPHWhT2DSmB_zrqv1RXHoT6kRFZ9Bk', 'verifikasi'),
(604, NULL, 'Februari', '2023-02-16', 'Muhammad Ilham Nurmajid', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMAN 5 Surakarta', 'KM-23/02/09', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1PRBx2SSccsxCcqLPVgfIuJp15TvEdzRD', 'verifikasi'),
(605, NULL, 'Februari', '2023-02-16', 'Mind ID', 'Pembayaran dari Mind ID atas Invoice 22/INV/10/238', 'Mind ID', '001011936956', 164640000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1N_jpjIM9aQUFV8a3W9vZk4JguqOWcLhY', 'verifikasi'),
(606, NULL, 'Februari', '2023-02-16', 'Anonim', 'Anonim', 'Anonim', '6975813642', 6000000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1ncpb0VlTPl3aHeBs0m4XwwR1ZVTIgtVv', 'verifikasi'),
(607, NULL, 'Februari', '2023-02-17', 'PT ATMI (WF)', 'Pembayaran Produksi PT ATMI (WF) atas Invoice 22/INV/11/250 dan 22/INV/11/251', 'PT ATMI (WF)', '001012142395', 21560000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1MzWDSg3oEdgsAnWL7171FEZQgb4Dljd7', 'verifikasi'),
(608, NULL, 'Februari', '2023-02-20', 'Rahmat Syahputra', 'Pembayaran Pelatiha  Las SMAW 3-4 G (Plat) + Biaya Pendaftaran dari SMK Bina Pat', 'SMK Bina Patria 1 Sukoharjo', '13813', 5550000, 2, NULL, 'voice', 'https://drive.google.com/open?id=13kyh1j133iyNcQ6A6ILoEyyXvoNhDJQ4', 'verifikasi'),
(609, NULL, 'Februari', '2023-02-21', 'Sdr. Natan', 'Pembayaran Sewa Mesin Resharpening Tool 1 Jam @Rp 20.000', 'SMK Bhineka Karya Surakarta', 'KM-23/02/10', 20000, 1, NULL, 'voice', 'https://drive.google.com/open?id=106cvGATc5I6xQr2eBbms-tJRPRNAKm-P', 'verifikasi'),
(610, NULL, 'Februari', '2023-02-22', 'Ekyas Prima Lanang Dewangga', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/11', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1tfs-7AwPmMNMLBqEtlr5je57ktLLQixk', 'verifikasi'),
(611, NULL, 'Februari', '2023-02-22', 'Dimas Dwi Prasetyo', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/12', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=16PLDR0d79OYhvuZK3k5mI9DVB40pf2Cs', 'verifikasi'),
(612, NULL, 'Februari', '2023-02-22', 'Favian Maxentia', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/13', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1jN43mdyM1rR_iB2JCrOTciJ7PN51tgGV', 'verifikasi'),
(613, NULL, 'Februari', '2023-02-22', 'RM Ivan Mustofa', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/14', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1oJklkKLOQEUm5nwCQ32K5XNIA_fXQuPW', 'verifikasi'),
(614, NULL, 'Februari', '2023-02-22', 'M. Akbar Arya Mukti', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/15', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1Uc2j9B4Dt2Ij5MND0ejg_bfPszcZ9s5b', 'verifikasi'),
(615, NULL, 'Februari', '2023-02-22', 'Iqbal Imam Ghozali', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/16', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1HMVVyN4uCue0aCRUSrL1M7YL6ZX7VzN8', 'verifikasi'),
(616, NULL, 'Februari', '2023-02-22', 'Bagas Dwi Susinto', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/02/17', 80000, 1, NULL, 'voice', 'https://drive.google.com/open?id=12532S33gZshSkv3yOhUJmjZ50Pk-MZgp', 'verifikasi'),
(617, NULL, 'Februari', '2023-02-22', 'Susilo Dimas Wicaksono', 'Pelunasan Pembayaran Diklat Mandiri Pengelasan (Welding)', 'SMK PPS 2 Ngrambe Ngawi', '007003875100/ KM-23/02/23', 5300000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1iNjMte-hrWmqupKndhSBCssZeEloprz_', 'verifikasi'),
(618, NULL, 'Februari', '2023-02-22', 'Bapak Suratno', 'Pembayaran Produksi Bapak Suratno', 'Surakarta', '9983822612-0018', 480000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1L76ff50mI9RAbtMXrhEiRdN-CxQISd_H', 'verifikasi'),
(619, NULL, 'Februari', '2023-02-24', 'PT King Otomasi', 'Pembayaran Produksi PT King Otomasi', 'PT King Otomasi', 'WB0020224000999', 11550000, 2, NULL, 'voice', 'https://drive.google.com/open?id=16Q_QID49JtNEl2-v-2Y7-7wp1aHDTQNy', 'verifikasi'),
(620, NULL, 'Februari', '2023-02-27', 'Nur Cahyo Kuncoro Wibowo', 'Pembayaran Biaya Pendaftaran Diklat Mandiri Mekanik Manufaktur', 'SMA ABBS Surakarta', 'KM-23/02/22', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=164dL0SwZEvuNUYZfpYC5689Dw0hyWRYz', 'verifikasi'),
(621, NULL, 'Februari', '2023-02-28', 'Tito Malik Annas', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 9 Surakarta', 'KM-23/02/24', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1fLMvdmiSX2ThBl3y7NlF9eErcCgf-tDc', 'verifikasi'),
(622, NULL, 'Februari', '2023-02-28', 'Bank Mandiri', 'Pembayaran Bunga', 'Bank Mandiri', '13826', 101319.96, 2, NULL, 'voice', 'https://drive.google.com/open?id=1oJIYshnS-6OVG8zFI9LeI5xN52DDLFXI', 'verifikasi'),
(623, NULL, 'Februari', '2023-02-28', 'PT IFARS', 'Pembayaran dari PT IFARS atas Invoice 23/INV/01/018', 'PT IFARS', '0100268256-4897', 2600000, 2, NULL, 'voice', 'https://drive.google.com/open?id=1ya7MspxdpvjhTYp3kOwZjLxNN_dRx2kA', 'verifikasi'),
(624, NULL, 'Februari', '2023-02-28', 'Bank Jateng', 'Pembayaran Bunga Jagir', 'Bank Jateng', '1002007181INC', 1158976, 2, NULL, 'voice', 'https://drive.google.com/open?id=1bTeiSyQZz7ZkxnW0YUerHhMFH6dJA1C5', 'verifikasi'),
(625, NULL, 'Maret', '2023-03-01', 'Kevin Kwee Kay Liong', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMA Santo Yosef Surakarta', 'KM-23/03/01', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1KXCky1dRf0VrZhMkwuVOCdSpoxQFJYUo', 'verifikasi'),
(626, NULL, 'Maret', '2023-03-01', 'Bapak Widada', 'Pembayaran Noozle 30 Pcs @Rp 25.000', 'Surakarta', 'KM-23/03/02', 750000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1giyec3clOeQmkY0s_8pn-yKoAsN2AL5y', 'verifikasi'),
(627, NULL, 'Maret', '2023-03-03', 'Bapak Nanang', 'Pembayaran Chip/Gram 120 Kg @Rp 4.150', 'Surakarta', 'KM-23/03/04', 498000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1XNjoy44ENnCx25XpRuoHwU0P062kwI49', 'verifikasi'),
(628, NULL, 'Maret', '2023-03-03', 'Aldyan Okta', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 5 Surakarta', 'KM-23/03/05', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1rKeIN7Qq4ZNRlurplghXStChlFKiRNgf', 'verifikasi'),
(629, NULL, 'Maret', '2023-03-08', 'Aunurrofiq Ilham Nofandreas', 'Pembayaran Biaya Pendaftaran Diklat Mandiri Desain Manufaktur', 'SMK Penda 3 Jatipuro Karanganyar', 'KM-23/03/06', 50000, 1, NULL, 'voice', 'https://drive.google.com/open?id=1vINHUgej_cdTvUu7YNhyUXJiqnH6lXfW', 'verifikasi'),
(639, 'PNR20230324110921', 'Maret', '2023-03-10', 'Bp Karmanto', 'Pembayaran Pisau Cutting DFA 2 Pcs @Rp 300.000', 'PT Aneka Teknik Sentosa', 'KM-23/03/07', 600000, 1, '748001564_KM-23.03.07_Bp. Karmanto.pdf', 'voice', 'https://drive.google.com/open?id=11Jg8fDfBHJ0Esx7-BAbI505vmoOdP0cK', 'verifikasi'),
(641, 'PNR20230324114042', 'Maret', '2023-03-13', 'Wisnu Muhamartha', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMKN 5 Surakarta', 'KM-23/03/08', 50000, 1, '1985251018_KM-23.03.08_Wisnu Muhamartha.pdf', 'voice', 'https://drive.google.com/open?id=1ldDCJ2n8mqJzq_UgcU3tFATxVWjP0zJG', 'verifikasi'),
(642, 'PNR20230324114817', 'Maret', '2023-03-13', 'Muhammad Taufik Iqbal Susanto', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMKN 5 Surakarta', 'KM-23/03/09', 50000, 1, '330865590_KM-23.03.09_Muhammad Taufik Iqbal Susanto.pdf', 'voice', 'https://drive.google.com/open?id=1dIAQPQpAexenSw6uuEN4zbUS9Oc7iLwr', 'verifikasi'),
(645, 'PNR20230324142127', 'Maret', '2023-03-15', 'Bapak Bagus', 'Pembayaran sewa Ruangan, Gd. RnD, Kawasan Solo Technopark. Ruangan ex IBT 1 Hari @Rp 1.000.000, Ruang Teori 1 Hari @Rp. 1.250.000, Pemakaian mesin bubut 4 mesin @Rp. 120.000, Pemakaian mesin milling 4 mesin @Rp. 180.000', 'SMK Katolik ST Mikael', 'KM-23/03/10', 3450000, 1, '1807638301_KM-23.03.10_Bapak Bagus.pdf', 'voice', 'https://drive.google.com/open?id=1qwWTR8F9dZbsew7AIm77OFDCYFIe7R7g', 'verifikasi'),
(647, 'PNR20230327110148', 'Maret', '2023-03-16', 'Najwa Aulia Iswahyudi', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/14', 40000, 1, '1609820724_KM-23.03.14_Najwa Aulia Iswahyudi.pdf', 'voice', 'https://drive.google.com/open?id=1Fj2laadZmCGZHBV-OcNRvpCnFRl1twU7', 'verifikasi'),
(648, 'PNR20230327110727', 'Maret', '2023-03-16', 'Aurelia Valda Stephanie', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/15', 40000, 1, '60877387_KM-23.03.15_Aurelia Valda Stephanie.pdf', 'voice', 'https://drive.google.com/open?id=1S9BqCpmYTSSCwqgleNt6gVtG_SQV-KpY', 'verifikasi'),
(649, 'PNR20230327110912', 'Maret', '2023-03-16', 'Cantika Hilda Aulia', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/16', 40000, 1, '1717165881_KM-23.03.16_Cantika Hilda Aulia.pdf', 'voice', 'https://drive.google.com/open?id=1SQj5VuN_mnwF1Go1sXntQ3tIydGC-4Yw', 'verifikasi'),
(650, 'PNR20230327111414', 'Maret', '2023-03-16', 'Yualucy Nandha', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/17', 40000, 1, '1864136657_KM-23.03.17_Yualucy Nandha.pdf', 'voice', 'https://drive.google.com/open?id=1xVP5dU2c10vFq-rj7SdC69mAU2A0uAN5', 'verifikasi'),
(651, 'PNR20230327111528', 'Maret', '2023-03-16', 'Dinda Aktiviar Saputri', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/18', 40000, 1, '121860977_KM-23.03.18_Dinda Aktiviar Saputri.pdf', 'voice', 'https://drive.google.com/open?id=1tamB1xUQXoNsuzmbubr6gB_o0TMRUmJS', 'verifikasi'),
(652, 'PNR20230327111637', 'Maret', '2023-03-16', 'Revana Chika Kanahaya', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/19', 40000, 1, '1948946828_KM-23.03.19_Revana Chika Kanahaya.pdf', 'voice', 'https://drive.google.com/open?id=11Q1zLCMgdBLGWMatd6532sYqhVm4kMWh', 'verifikasi'),
(653, 'PNR20230327111905', 'Maret', '2023-03-16', 'Augustin Puspita Hapsari', 'Pembayaran Prakerin', 'SMK Kristen 1 Surakarta', 'KM-23/03/20', 40000, 1, '607354071_KM-23.03.20_Augustin Puspita Hapsari.pdf', 'voice', 'https://drive.google.com/open?id=1OGmlegGBMGLkXOwhZXKnCV2JU_ECThwS', 'verifikasi'),
(654, 'PNR20230327112622', 'Maret', '2023-03-16', 'Dewangga Nalendro Ario Putro', 'Pembayaran Biaya Pendaftaran Diklat Mekanik Manufaktur Progam APBD 2023', 'SMK Penerbangan Surakarta', 'KM-23/03/21', 50000, 1, '824338753_KM-23.03.21_Dewangga Nalendro Ario Putro.pdf', 'voice', 'https://drive.google.com/open?id=1xkQYQX69y9oKL0HQYaYyHM8Bw5ACsUdD', 'verifikasi'),
(655, 'PNR20230327112854', 'Maret', '2023-03-21', 'Sholikhah Rosalinawati Miyardi', 'Pembayaran Prakerin', 'Universitas Negeri Yogyakarta', 'KM-23/03/25', 80000, 1, '1533292741_KM-23.03.25_Sholikhah Rosalinawati Miyardi.pdf', 'voice', 'https://drive.google.com/open?id=1u2d_VRc8GFAQOsZjoeh6eMonmQB6UhdN', 'verifikasi'),
(656, 'PNR20230327152437', 'Maret', '2023-03-27', 'Bp. Isnu', 'Pembayaran Cylindrichal Grinding Product Mandrill 12 Pcs @Rp 150.000', 'CV Cakrawala Engineering', 'KM-23/03/27', 1800000, 1, '1994024713_KM-23.03.27_Bp. Isnu - Sholikhah Rosalina.pdf', 'voice', 'https://drive.google.com/open?id=1EXA2Ns71PiYrh5VnX7i34qVseY71Syrx', 'verifikasi'),
(657, 'PNR20230328152456', 'Maret', '2023-03-28', 'Maharani Suprihatin', 'Pembayaran Prakerin', 'STIE Surakarta', 'KM-23/03/28', 40000, 1, '1754739157_KM-23.03.28_Maharani Suprihatin - Sholikhah Rosalina.pdf', 'voice', 'https://drive.google.com/open?id=1F_ywtEciANMYZ2S6gKRICla06mCJrcN3', 'verifikasi'),
(658, 'PNR20230328152631', 'Maret', '2023-03-28', 'Lintang Ayu Kusumawardhani', 'Pembayaran Prakerin', 'STIE Surakarta', 'KM-23/03/29', 40000, 1, '111895800_KM-23.03.29_Lintang Ayu Kusumawardhani - Sholikhah Rosalina.pdf', 'voice', 'https://drive.google.com/open?id=1BQhW0klJhenDoLVn2nJLkKlgl0DzamL8', 'verifikasi'),
(660, '', 'Maret', '2023-03-29', 'Ardiyanta Wahyu Jadmika', 'Pembayaran Prakerin', 'SMK N 5 Surakarta', 'KM-23/03/32', 40000, 1, '2145741602_KM-23.03.32_Ardiyanta Wahyu Jadmika - Sholikhah Rosalina.pdf', 'voice', 'https://drive.google.com/open?id=1owKGsm76kTNHiLLDDxcd5emyh_sc5jYb', 'verifikasi'),
(661, '', 'Maret', '2023-03-29', 'Satrio Bayu Fadillah ', 'Pembayaran Prakerin ', 'SMK N 1 Gombong Kebumen', 'KM-23/03/37', 80000, 1, '1506837209_KM-23.03.37.pdf', 'voice', 'https://drive.google.com/open?id=1Brt6TEu7t0uDkPy-tZQA5reIQg66bNKV', 'verifikasi'),
(662, '', 'Maret', '2023-03-29', 'Budi Adi Noto Baskoro', 'Pembayaran Prakerin', 'SMK YP Colomadu (Karanganyar)', 'KM-23/03/34', 80000, 1, '1315207133_KM-23.03.34_Budi Adi Noto Baskoro.pdf', 'voice', 'https://drive.google.com/open?id=14-SbWiEHqjaZPFnyd7TsD-wQ0duodDXd', 'verifikasi'),
(663, '', 'Maret', '2023-03-29', 'Agung Budiman', 'Pembayaran Prakerin ', 'SMK N 1 Gombong Kebumen', 'KM-23/03/38', 80000, 1, '50640311_KM-23.03.38.pdf', 'voice', 'https://drive.google.com/open?id=1VbPDmg9paJ6YIjf8Dq-dLWXioqmLiBMi', 'verifikasi'),
(664, '', 'Maret', '2023-03-29', 'Rizal Awwab Nazhif', 'Pembayaran Prakerin', 'SMK YP Colomadu (Karanganyar)', 'KM-23/03/35', 80000, 1, '1052802241_KM-23.03.35_Rizal Awwab Nazhif.pdf', 'voice', 'https://drive.google.com/open?id=1l1n-_fmIYdG3vsaYqr4Tcmh_L1SAX7fG', 'verifikasi'),
(665, '', 'Maret', '2023-03-29', 'Allif Rakhman', 'Pembayaran Prakerin ', 'SMK N 1 Gombong Kebumen', 'KM-23/03/39', 80000, 1, '2092818163_KM-23.03.39.pdf', 'voice', 'https://drive.google.com/open?id=1njhPLfUCqTlvxhc7xHeNHYr1xLY9VhPE', 'verifikasi'),
(666, '', 'Maret', '2023-03-29', 'Muhamad Rifangi', 'Pembayaran Prakerin', 'SMK N 1 Gombong Kebumen', 'KM-23/03/36', 80000, 1, '1918898045_KM-23.03.36_Muhamad Rifangi.pdf', 'voice', 'https://drive.google.com/open?id=1gyeRxmthhHlQVnaB7f7QlPm8pICopbSj', 'verifikasi'),
(669, '', 'Maret', '2023-03-01', 'Bank Mandiri', 'Pembayaran Listrik Mandiri Digipreneur 6 Jan - 8 Feb 23', 'Bank Mandiri', '13800', 393040, 2, '1952695725_Transfer_1. Bukti Bayar Bank Mandiri_13800.pdf', 'voice', 'https://drive.google.com/open?id=13CpbpGjNP71zZ6mj60Xx5lSmd-ruoRpn', 'verifikasi'),
(670, '', 'Maret', '2023-03-01', 'Bank Mandiri', 'Pembayaran Listrik Mandiri Digipreneur 5 Nov - 5 Des 22', 'Bank Mandiri', '13800', 292985.16, 2, '648372580_Transfer_2. Bukti Bayar Bank Mandiri_13800.pdf', 'voice', 'https://drive.google.com/open?id=1UL0PJjWpU9vahHIVi2alTgkvLFAltDvp', 'verifikasi'),
(671, '', 'Maret', '2023-03-01', 'Bank Mandiri', 'Pembayaran Listrik Mandiri Digipreneur 6 Des 22 - 5 Jan 23', 'Bank Mandiri', '13800', 322168.1, 2, '545446146_Transfer_3. Bukti Bayar Bank Mandiri_13800.pdf', 'voice', 'https://drive.google.com/open?id=1S4GbHPi4cqolfkXQsIw6x600EVoxJLuq', 'verifikasi'),
(672, '', 'Maret', '2023-03-02', 'Nur Cahyo Kuncoro Wibowo', 'Cicilan Pembayaran Diklat Mandiri Mekanik Manufaktur (Transfer)', 'SMA ABBS Surakarta', '7054338278 / KM-23/03/03', 4000000, 2, '749366142_Transfer_4. KM-23.03.03_Nur Cahyo Kuncoro Wibowo.pdf', 'voice', 'https://drive.google.com/open?id=1CfID2FvuzHsP2A_mNzAwDH0DWXclaMKF', 'verifikasi'),
(673, '', 'Maret', '2023-03-06', 'Anonim', 'Anonim', 'Anonim', 'WB0020306000856', 7052000, 2, '1076400634_Transfer_5. Bukti Bayar Anonim_WB0020306000856.pdf', 'voice', 'https://drive.google.com/open?id=1YGJTc7dJtWZu9Lh_AH8emL1q6WWLaMHw', 'verifikasi'),
(675, '', 'Maret', '2023-03-17', 'PT. ITA', 'Pembayaran Pelunasan Pelatihan dan Sertifikasi Operator Kepala Produksi', 'PT. ITA', '001023773784', 353500000, 2, '858084568_Transfer_6. Bukti Bayar PT. ITA_001023773784.pdf', 'voice', 'https://drive.google.com/open?id=1fFPYPfM1_kyyEf5bR9RmicDlmUjl57NH', 'verifikasi'),
(676, '', 'Maret', '2023-03-17', 'ATMI', 'Pembayaran Produksi Dari ATMI', 'ATMI', '001024703071', 11616000, 2, '988567691_Transfer_7. Bukti Bayar ATMI_001024703071.jpeg', 'voice', 'https://drive.google.com/open?id=1OEOz0tnrb0vtlxQ4j1MyG3szIz13N25l', 'verifikasi'),
(677, '', 'Maret', '2023-03-31', 'Bank Mandiri', 'Pembayaran Bunga', 'Bank Mandiri', '13826', 118047.61, 2, '155059535_Transfer_16. Bukti Bayar Bank Mandiri_13826.pdf', 'voice', 'https://drive.google.com/open?id=1OaKWGksPY1BcqUVgx5AcFyRYxt0pv0aP', 'verifikasi'),
(678, '', 'Maret', '2023-03-21', 'Mitra Kurnia Teknindo', 'Pembayaran Produksi Dari Mitra Kurnia Teknindo', 'Mitra Kurnia Teknindo', '007165138975', 495000, 2, '1025736423_Transfer_8. Bukti Bayar Mitra Kurnia Teknindo_007165138975.jpeg', 'voice', 'https://drive.google.com/open?id=1UJBCgbFTFwhBviQMDiNnqcolzTgZwuvN', 'verifikasi'),
(679, '', 'Maret', '2023-03-31', 'Shopee', 'Pembayaran Listrik Shopee bulan Februari', 'Shopee', '001030583353', 872766, 2, '1123371730_Transfer_15. Bukti Bayar Shopee_001030583353.pdf', 'voice', 'https://drive.google.com/open?id=1JMlQLRwiGoIkXGbgoau1JHqzFIs4UlAD', 'verifikasi'),
(680, '', 'Maret', '2023-03-24', 'Anonim', 'Anonim', 'Anonim', '001026815741', 412114, 2, '1754877967_Transfer_9. Bukti Bayar Anonim_001026815741.pdf', 'voice', 'https://drive.google.com/open?id=1f0FyJgVgBKlArHriy-q_Rid4ByRvxONh', 'verifikasi'),
(681, '', 'Maret', '2023-03-31', 'Shopee', 'Pembayaran Listrik Shopee bulan Januari', 'Shopee', '001030583352', 144455, 2, '966051199_Transfer_14. Bukti Bayar Shopee_001030583352.pdf', 'voice', 'https://drive.google.com/open?id=1iKrDEK9qtGvWQ_6TdcQf7_1BAM0xOB_y', 'verifikasi'),
(682, '', 'Maret', '2023-03-28', 'Shopee', 'Pembayaran Listrik Kantor Shopee', 'Shopee', '001028691437', 559735, 2, '1955053832_Transfer_10. Bukti Bayar Shopee_001028691437.pdf', 'voice', 'https://drive.google.com/open?id=1Yj1KhFw-8lctdM6OtVJV9hpbUJH--e12', 'verifikasi'),
(684, '', 'Maret', '2023-03-31', 'Shopee', 'Pembayaran Listrik Shopee bulan Januari', 'Shopee', '001030583351', 635162, 2, '1283105669_Transfer_13. Bukti Bayar Shopee_001030583351.pdf', 'voice', 'https://drive.google.com/open?id=1ZhynmSGFXkDk8iyKzEUh60PLbaLnRVQU', 'verifikasi'),
(685, '', 'Maret', '2023-03-28', 'Shopee', 'Pembayaran Listrik Outdoor Shopee', 'Shopee', '001028691438', 768726, 2, '1829207199_Transfer_11. Bukti Bayar Shopee_001028691438.pdf', 'voice', 'https://drive.google.com/open?id=1z_wCPkNNKJmA72iP7T0g_tYvq09uHiT9', 'verifikasi'),
(686, '', 'Maret', '2023-03-31', 'Bank Jateng ', 'Pembayaran Bunga Jagir', 'Bank Jateng ', '1002007181INC', 1193996, 2, '1239977161_Transfer_12. Bukti Bayar Bank Jateng_1002007181INC.pdf', 'voice', 'https://drive.google.com/open?id=1uJpy_SXePNrgaUq66fsK7A0AINVwTyl-', 'verifikasi'),
(688, '', 'Maret', '2023-03-29', 'Aufa Syafiyyulain Amrullah', 'Pembayaran Prakerin', 'SMKN 5 Surakarta', 'KM-23/03/33', 40000, 1, '1008952584_KM-23.03.33_Aufa Syafiyyulain Amrullah.pdf', 'voice', 'https://drive.google.com/open?id=1_segx6zQoC1dl8lRp9Gb15o0L0tq9l5M', 'verifikasi'),
(691, '', 'April', '2023-04-06', 'Ridho Devawijaya Sambada', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 5 Surakarta', 'KM-23.04.01', 50000, 1, '47565361_KM-23.04.01_Ridho Devawijaya Sambada.pdf', 'voice', 'https://drive.google.com/open?id=1_tkXT1CTw84xvkhDXoydm3NbSIYhMlOx', 'verifikasi'),
(692, '', 'April', '2023-04-06', 'Rafael Petro Arya Pratama ', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK Kristen 2 Surakarta', 'KM-23.04.02', 50000, 1, '604729713_KM-23.04.02_Rafael Petro Arya Pratama.pdf', 'voice', 'https://drive.google.com/open?id=1PovnLwFQ3behhQIDnJ7pPZxP7bJ1IeiJ', 'verifikasi'),
(693, '', 'April', '2023-04-10', 'Felix Rahul Agustav Bernadi', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 5 Surakarta', 'KM-23.04.03', 50000, 1, '1104032514_KM-23.04.03_Felix Rahul Agustav Bernadi.pdf', 'voice', 'https://drive.google.com/open?id=1LjiFY7KIP0CpbZGrBtkPimQljF2zP6CJ', 'verifikasi'),
(694, '', 'April', '2023-04-13', 'Daniel Wida Eka Saputra', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK Kristen 2 Surakarta', 'KM-23.04.05', 50000, 1, '433531386_KM-23.04.05_Daniel Wida Eka Saputra.pdf', 'voice', 'https://drive.google.com/open?id=17MXWyz1d2LxAXdjwhd-NjvVMXKWvEVlm', 'verifikasi'),
(695, '', 'April', '2023-04-13', 'Prasta Adi Bima Wicaksana', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 2 Surakarta', 'KM-23.04.06', 50000, 1, '1160912520_KM-23.04.06_Prasta Adi Bima Wicaksana.pdf', 'voice', 'https://drive.google.com/open?id=1-yrxW7KMCFIXTxOUchEMAWSJdktABrF6', 'verifikasi'),
(696, '', 'April', '2023-04-17', 'Bohdan Elian Rastanto', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Progam APBD 2023', 'SMA N 2 Surakarta', 'KM-23/04/07', 50000, 1, '160723268_KM-23.04.07_Bohdan Elian Rastanto.pdf', 'voice', 'https://drive.google.com/open?id=1lgoL6S4jzTg9ZtMk9ocsCJzXL0JZ0l0N', 'verifikasi'),
(697, '', 'April', '2023-04-17', 'Erna Safitri', 'Pembayaran Prakerin', 'Politeknik Pratama Mulia Surakarta', 'KM-23/04/08', 40000, 1, '1185659575_KM-23.04.08_Erna Safitri.pdf', 'voice', 'https://drive.google.com/open?id=1uKQ3s2WdmSllAAoltcCJXezjPwcFcVwG', 'verifikasi'),
(698, '', 'April', '2023-04-18', 'Bapak Nanang', 'Pembayaran Chip/Gram 236 Kg @Rp 4.300', 'Surakarta', 'KM-23/04/10', 1014800, 1, '1325681015_KM-23.04.10_Bapak Nanang.pdf', 'voice', 'https://drive.google.com/open?id=1NrGK19p-GsCiTrrLDz7w77pCZ9daAQxr', 'verifikasi'),
(699, '', 'April', '2023-04-18', 'Maheswara Ibnu Ramadhani ', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK Batik 2 Surakarta ', 'KM-23/04/11', 50000, 1, '956006376_KM-23.04.11_Maheswara Ibnu Ramadhani.pdf', 'voice', 'https://drive.google.com/open?id=1mvUxtt8dO5eXktsPkku1ToLOyr4AkHyE', 'verifikasi'),
(700, '', 'April', '2023-04-18', 'Aurelius Natanael Prasetyanto ', 'Biaya Pendaftaran Diklat Manufaktur Program APBD 2023', 'SMK Bhineka Karya ', 'KM-23/04/12', 50000, 1, '871527571_KM-23.04.12_Aurelius Natanael Prasetyanto.pdf', 'voice', 'https://drive.google.com/open?id=1UgMOABpaQP6zfoSIN-yh2VjU0K72sGmx', 'verifikasi'),
(701, '', 'April', '2023-04-26', 'Afif Mufrizal Zain', 'Pembayaran Prakerin', 'SMK Bina Patria 1 Sukoharjo', 'KM-23/04/13', 80000, 1, '1385441235_KM-23.04.13_Afif Mufrizal Zain.pdf', 'voice', 'https://drive.google.com/open?id=13PPRz6x0k27pr590W4pgLxtou9NxAmSs', 'verifikasi'),
(702, '', 'April', '2023-04-26', 'Fauzi Nur Ferdiyanto ', 'Pembayaran Prakerin', 'SMK Bina Patria 1 Sukoharjo', 'KM-23/04/14', 80000, 1, '1340549713_KM-23.04.14_Fauzi Nur Ferdiyanto.pdf', 'voice', 'https://drive.google.com/open?id=1l_6NnI8iAhhOt9cd1XRTKGpR8D_xvJNK', 'verifikasi'),
(703, '', 'April', '2023-04-26', 'Gentha Tri Prasetyo', 'Pembayaran Prakerin', 'SMK Pancasila Surakarta', 'KM-23/04/15', 40000, 1, '450265595_KM-23.04.15_Gentha Tri Prasetyo.pdf', 'voice', 'https://drive.google.com/open?id=1kERaPOWlfld753g2wB38sLdJI6UFuyCA', 'verifikasi'),
(704, '', 'April', '2023-04-27', 'Aprisal Muhammad Kasela', 'Biaya Pembayaran Prakerin', 'SMK Pancasila Surakarta', 'KM-23.04.16', 40000, 1, '1539064190_KM-23.04.16_Aprisal Muhammad Kasela.pdf', 'voice', 'https://drive.google.com/open?id=1DifVuUAUZmo0BcyAZwfz6bSRiKldqrLU', 'verifikasi'),
(705, '', 'Mei', '2023-05-02', 'Muhammad Rafly Romadhoni ', 'Pembayaran Koin Hilang', 'SMK BK Surakarta', 'KM-23/05/01', 25000, 1, '219607998_KM-23.05.01_Muhammad Rafly Romadhoni_1.pdf', 'voice', 'https://drive.google.com/open?id=1NSQyXqsBsRfhRvsAf_PBcMUzHvJE_rLh', 'verifikasi'),
(706, '', 'Mei', '2023-05-02', 'Roshan Fachreza Afriananda', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMKN 2 Surakarta', 'KM-23/05/02', 50000, 1, '924191859_KM-23.05.02_Roshan Fachreza Afriananda.pdf', 'voice', 'https://drive.google.com/open?id=1OCKzS-Rb6m6qu1RymBaGq3nLvQfwAgLT', 'nonverifikasi'),
(707, '', 'Mei', '2023-05-03', 'Sya\'bani Afif Fajar Nugroho', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMKN 2 Surakarta', 'KM-23/05/04', 50000, 1, '1423377210_KM-23.05.04_Sya\'bani Afif Fajar Nugroho.pdf', 'voice', 'https://drive.google.com/open?id=1Idv-PFwICysw2VoQei4PmHbSLH3CXWxi', 'nonverifikasi'),
(708, '', 'April', '2023-04-06', 'Shopee', 'Pembayaran Listrik Shopee Bulan Februari', 'Shopee', '001033346973', 583404, 2, '803246769_Transfer_1. Bukti Bayar Shopee_001033346973.pdf', 'voice', 'https://drive.google.com/open?id=1vd2DOdi7QsDQLM8E-n6Q9kgWjo9NHWCe', 'verifikasi'),
(709, '', 'April', '2023-04-10', 'Sdr. Azka', 'Pembayaran Spesimen Aluminium 4 Pcs @Rp125.000 ', 'Surakarta', '0221324850-8214/KM-23/04/04', 500000, 2, '675465718_Transfer_2. KM-23.04.04_Sdr. Azka.pdf', 'voice', 'https://drive.google.com/open?id=1PemRL2Zz7CV7VbzNNt4jnzNegtVM-NpL', 'verifikasi'),
(710, '', 'April', '2023-04-10', 'Anonim', 'Anonim', 'Anonim', '0203008176-6189', 50000, 2, '1469385443_Transfer_3. Bukti Bayar Anonim_0203008176-6189.pdf', 'voice', 'https://drive.google.com/open?id=1mncV3fWoL_nmWqN-xyY8vYkJK43k5ABi', 'verifikasi'),
(711, '', 'April', '2023-04-13', 'Yanus Darwindo', 'Pembayaran DP PDAM Atas Pengerjaan Pemotongan Pipa Viaduk Gilingan', 'Surakarta', '034067000015482023', 25000000, 2, '2058580882_Transfer_4. Bukti Bayar Yanus Darwindo_034067000015482023.jpg', 'voice', 'https://drive.google.com/open?id=1qcLm2SdgBdu-7yUN4EswYH06HagQA1yV', 'verifikasi'),
(712, '', 'April', '2023-04-14', 'Konakami Digital ID', 'Pembayaran Sewa Ruang Konakami Digital ID', 'Konakami', '001037704039', 102000000, 2, '1108052791_Transfer_5. Bukti Bayar Konakami Digital ID_001037704039.pdf', 'voice', 'https://drive.google.com/open?id=1LEhHdBZFbEaolpYyGw5W-EEJ2fWd0CeD', 'verifikasi'),
(713, '', 'April', '2023-04-17', 'Petronas', 'Pembayaran Diklat Petronas', ' Petronas', '2023000162599100', 349174000, 2, '655613220_Transfer_6. Bukti Bayar Petronas_2023000162599100.pdf', 'voice', 'https://drive.google.com/open?id=1hHLA7gDSqoQdKXT5czpbGL4P2HWKKTeF', 'verifikasi'),
(714, '', 'April', '2023-04-28', 'Alfan Mohammad Shirothu', 'Pembayaran Pelatihan Guru ', 'Surakarta', '7417493706/KM-23/04/17', 7800000, 2, '369917862_Transfer_7. KM-23.04.17_Alfan Mohammad Shirothu.pdf', 'voice', 'https://drive.google.com/open?id=1rldsNgZJhLOQ1thZqhaaMBorxwaarWG4', 'verifikasi'),
(715, '', 'April', '2023-04-30', 'Bank Jateng', 'Pembayaran Bunga Jagir', 'Bank Jateng', '1002007181INC', 816420, 2, '650695520_Transfer_8. Bukti Bayar Bank Jateng_1002007181INC.pdf', 'voice', 'https://drive.google.com/open?id=1P_-RmMT58fumTMmupn6PZYVgazMLvXai', 'verifikasi'),
(716, '', 'April', '2023-04-30', 'Bank Mandiri', 'Pembayaran Bunga', 'Bank Mandiri', '13826', 309770, 2, '1809754179_Transfer_9. Bukti Bayar Bank Mandiri_13826.pdf', 'voice', 'https://drive.google.com/open?id=1EBxC3qyA9E7aqi6RNeIsiOpUPwC8TTFW', 'verifikasi'),
(717, '', 'Mei', '2023-05-04', 'Ivan Ricky Mardiansah', 'Biaya Pendaftaran Diklat Manufaktur Program APBD 2023', 'SMK N 5 SURAKARTA', 'KM-23/05/06', 50000, 1, '493452136_KM-23.05.06_Ivan Ricky Mardiansah.pdf', 'voice', 'https://drive.google.com/open?id=1OmaBj_5hoZ25MDkF4rlIGQHVMVcvsjeB', 'nonverifikasi'),
(718, '', 'Mei', '2023-05-05', 'Aditya Ardiansyah Saputra', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 2 Surakarta', 'KM-23/05/07', 50000, 1, '1539597059_KM-23.05.07_Aditya Ardiansyah Saputra.pdf', 'voice', 'https://drive.google.com/open?id=1HiTc1hOjkCv_6gS3TyQ9KAxCb_NqxWUU', 'nonverifikasi'),
(719, '', 'Mei', '2023-05-08', 'Randy Arya Yudhatama', 'Biaya Pendaftaran Diklat Pengelasan (Welding) Program APBD 2023', 'SMK Tunas Bangsa Tawangsari Sukoharjo', 'KM-23/05/09', 50000, 1, '348121678_KM-23.05.09_Randy Arya Yudhatama.pdf', 'voice', 'https://drive.google.com/open?id=1JeVAclq5V41-AhyMTdXc5BTRjJDlaUj9', 'nonverifikasi'),
(720, '', 'Mei', '2023-05-08', 'Azahra Ulfa Permataningtyas', 'Pembayaran Prakerin', 'SMK N 1 Sawit Boyolali', 'KM-23/05/10', 80000, 1, '178179535_KM-23.05.10_Azahra Ulfa Permataningtyas.pdf', 'voice', 'https://drive.google.com/open?id=1WY-pKVquKe4fs1Qu5bUzkOxX9J8CVBmk', 'nonverifikasi'),
(721, '', 'Mei', '2023-05-08', 'Inayah Tyas Nurani', 'Pembayaran Prakerin', 'SMK N 1 Sawit Boyolali', 'KM-23/05/11', 80000, 1, '365418115_KM-23.05.11_Inayah Tyas Nurani.pdf', 'voice', 'https://drive.google.com/open?id=1jVj4peokUuFzb_CHwrrHDxTzhO5gPfCc', 'nonverifikasi'),
(722, '', 'Mei', '2023-05-09', 'Bapak Nanang', 'Pembayaran Penjualan Chip/Gram 126 Kg @Rp 4.000', 'Surakarta', 'KM-23/05/12', 504000, 1, '1361460846_KM-23.05.12_Bapak Nanang.pdf', 'voice', 'https://drive.google.com/open?id=1OO3wdo1hSuwbEtZhPRsxd9AT6S-zQObh', 'nonverifikasi'),
(723, '', 'Mei', '2023-05-09', 'Heri Sudarsono. ST', 'Pembayaran Machining (Milling Work, Lathe Work) 1 orang @Rp 9.800.000, Welding (SMAW 2/3 G, GMAW 2/3 F, GTAW 5/6 G ROOT) 1 orang @Rp 9.625.000 ', 'SMK Bina Patria 1 Sukoharjo', 'KM-23/05/13', 19425000, 1, '953560230_KM-23.05.13_Heri Sudarsono ST.pdf', 'voice', 'https://drive.google.com/open?id=1KS_I9khBLWylnMggLxXuClQer1UdNJgp', 'nonverifikasi'),
(724, '', 'Mei', '2023-05-10', 'Bima Miftahudin Mardani', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/05/14', 80000, 1, '260021108_KM-23.05.14_Bima Miftahudin Mardani.pdf', 'voice', 'https://drive.google.com/open?id=1Z0CGpuPFIeSs0Px8r0gRTJDtuOAk6o0s', 'nonverifikasi'),
(725, '', 'Mei', '2023-05-10', 'Wahyu Andriyanto', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/05/15', 80000, 1, '153374677_KM-23.05.15_Wahyu Andriyanto.pdf', 'voice', 'https://drive.google.com/open?id=1vCnE4-aGxT8vLp3iizr80rl95qedlFWk', 'nonverifikasi'),
(726, '', 'Mei', '2023-05-10', 'Ignatius Argo Dahono Setyanto', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/05/16', 80000, 1, '1617770755_KM-23.05.16_Ignatius Argo Dahono Setyanto.pdf', 'voice', 'https://drive.google.com/open?id=1Y2_udZgD6R9BRi2qOioHsdj3b6zZJnaK', 'nonverifikasi'),
(727, '', 'Mei', '2023-05-10', 'Benediktus Dwi Handaya Putro', 'Pembayaran Prakerin', 'SMK N 2 Karanganyar', 'KM-23/05/17', 80000, 1, '840652951_KM-23.05.17_Benediktus Dwi Handaya Putro.pdf', 'voice', 'https://drive.google.com/open?id=1Zuptnm8ikoehx1zyWyZPfO1l0NJd6Q_2', 'nonverifikasi'),
(728, '', 'Mei', '2023-05-12', 'Diki Setyawan', 'Cicilan Pembayaran Diklat Welding SMAW 6 G', 'SMK Muh 6 Simo Boyolali', 'KM-23/05/25', 4000000, 1, '755113818_KM-23.05.25_Diki Setyawan.pdf', 'voice', 'https://drive.google.com/open?id=1FPrijFkQ6Q4EZ6sNSqUZppEGQf61ckAL', 'nonverifikasi'),
(729, '', 'Mei', '2023-05-15', 'Gilar Bayu Pamudhito', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMKN 2 Surakarta', 'KM-23/05/28', 50000, 1, '1218682845_KM-23.05.28_Gilar Bayu Pamudhito.pdf', 'voice', 'https://drive.google.com/open?id=1z4ySrbuAp5vVJ2sV8aKXCIihtznyNI27', 'nonverifikasi'),
(730, '', 'Mei', '2023-05-15', 'Anandhifa Ilham Pianggoro', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMAN 2 Surakarta', 'KM-23/05/29', 50000, 1, '5592978_KM-23.05.29_Anandhifa Ilham Pianggoro.pdf', 'voice', 'https://drive.google.com/open?id=10wpyF_Tbt-1whNW6KmcKBJJjKmfKabs-', 'nonverifikasi'),
(731, '', 'Mei', '2023-05-15', 'Deyya Fajar Putra Fernando', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMKN 5 Surakarta', 'KM-23/05/30', 50000, 1, '1114434236_KM-23.05.30_Deyya Fajar Putra Fernando.pdf', 'voice', 'https://drive.google.com/open?id=1CcQ-YwRSgVxoXd_2OZQbkeJ8bBt7X_FE', 'nonverifikasi'),
(732, '', 'Mei', '2023-05-15', 'Aunurrofiq Ilham Nofandreas', 'Cicilan Pembayaran Diklat Mandiri Desain Manufaktur', 'SMK Penda 3 Jatipuro Karanganyar', 'KM-23/05/31', 4000000, 1, '642024370_KM-23.05.31_Aunurrofiq Ilham Nofandreas.pdf', 'voice', 'https://drive.google.com/open?id=1mZiQb_1cGJkytfU2SWOpaIrXHQjgamLN', 'nonverifikasi'),
(733, '', 'Mei', '2023-05-17', 'Randy Arya Yudhatama', 'Cicilan Pembayaran Diklat Mandiri Pengelasan (Welding)', 'SMK Tunas Bangsa Tawangsari Sukoharjo', 'KM-23/05/32', 3900000, 1, '732064_KM-23.05.32_Randy Arya Yudhatama.pdf', 'voice', 'https://drive.google.com/open?id=16VCFmXtwXOlhvzBkpFgL5fiFlMniP4o8', 'nonverifikasi'),
(734, '', 'Mei', '2023-05-17', 'Muhammad Adin Wijaya', ' Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023 ', 'SMK N 5 Surakarta', 'KM-23/05/33', 50000, 1, '935239857_KM-23.05.33_Muhammad Adin Wijaya.pdf', 'voice', 'https://drive.google.com/open?id=1Tqw1bVm-lPCb_vvgkpulPvuI7oYPRyEr', 'nonverifikasi'),
(736, '', 'Mei', '2023-05-17', 'Rizqi Dwi Saputra', ' Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023 ', 'SMA N 7 Surakarta', 'KM-23/05/34', 50000, 1, '1791896966_KM-23.05.34_Rizqi Dwi Saputra - stp keu.pdf', 'voice', 'https://drive.google.com/open?id=1Nu5vudfBlnVMZqPDq13sWtunUiF2lud1', 'nonverifikasi'),
(737, '', 'Mei', '2023-05-19', 'Aradhitya Bintang A.S', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK N 2 SURAKARTA ', 'KM-23/05/49', 50000, 1, '148139754_KM-23.05.49_Aradhitya Bintang A.S.pdf', 'voice', 'https://drive.google.com/open?id=1C2satdGGlr3FKgn_-8XPqTpSGh2_NcbJ', 'nonverifikasi'),
(738, '', 'Mei', '2023-05-19', 'Aditya Tama Arviansyah', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Kristen 2 SURAKARTA ', 'KM-23/05/42', 50000, 1, '155142304_KM-23.05.42_Aditya Tama Arviansyah.pdf', 'voice', 'https://drive.google.com/open?id=1uc5BSojIkcuy5YqcdKwBQLfWasWEyROk', 'nonverifikasi'),
(739, '', 'Mei', '2023-05-17', 'Baptista Chrisna Wahyu D P', ' Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023 ', 'SMK N 2 Surakarta', 'KM-23/05/35', 50000, 1, '375403634_KM-23.05.35_Baptista Chrisna Wahyu D.P.pdf', 'voice', 'https://drive.google.com/open?id=1XLSAkwNn9HEu8_DoZNVCPfQUZHO4m7w_', 'nonverifikasi'),
(740, '', 'Maret', '2023-05-19', 'Herlambang Krisna Aji', 'Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023', 'SMK 2 Kristen Surakarta', 'KM-23/05/47', 50000, 1, '2001837662_KM-23.05.47_Herlambang Krisna Aji.pdf', 'voice', 'https://drive.google.com/open?id=11k9ukBRIaMCZ7ZmGnf8gieA399UX07W8', 'nonverifikasi'),
(741, '', 'Mei', '2023-05-19', 'Bp Supri', 'Pembayaran Ball Stainless 63,35 40 Pcs @Rp 20.000', 'Bengkel Mulia Teknik', 'KM-23/05/36', 800000, 1, '1293845934_KM-23.05.36_Bp. Supri.pdf', 'voice', 'https://drive.google.com/open?id=1r1MtBwxl3paBJRMyfRy2WUA-iUeIMR-B', 'nonverifikasi'),
(742, '', 'Mei', '2023-05-19', 'Surya Saputra', ' Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023 ', 'SMK N 2 Surakarta', 'KM-23/05/37', 50000, 1, '2035424835_KM-23.05.37_Surya Saputra.pdf', 'voice', 'https://drive.google.com/open?id=1VdvPeiY7n6utnE4MddBdZCbpMhZ5XHXB', 'nonverifikasi'),
(743, '', 'Mei', '2023-05-19', 'Manunggal Tri Raharjo', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK MUH 1 SURAKARTA ', 'KM-23/05/43', 50000, 1, '1745531455_KM-23.05.43_Manunggal Tri Raharjo.pdf', 'voice', 'https://drive.google.com/open?id=1D_AlWkCdDnHHvparxY8QRGAjEm6NX4LL', 'nonverifikasi'),
(744, '', 'Mei', '2023-05-22', 'Lauren Putra Laksono', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Grafika Surakarta', 'KM-23/05/53', 50000, 1, '1408852413_KM-23.05.53_LAUREN PUTRA LAKSONO.pdf', 'voice', 'https://drive.google.com/open?id=1AkWlMwGMebsLyaT48Pw0-sxTWVFXAr84', 'nonverifikasi');
INSERT INTO `master_penerimaan` (`Id_penerimaan`, `Kode_penerimaan`, `Bulan`, `Tanggal`, `Nama_pembayar`, `Keperluan`, `Alamat_instansi`, `No_tandaterima`, `Besaran_biaya`, `Id_metode`, `Bukti`, `Status`, `Drive`, `Keterangan`) VALUES
(745, '', 'Mei', '2023-05-19', 'Muhammad Reno Ardiansyah', ' Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023 ', 'SMK N 5 Surakarta', 'KM-23/05/38', 50000, 1, '503069489_KM-23.05.38_Muhammad Reno Ardiansyah.pdf', 'voice', 'https://drive.google.com/open?id=1IwdSIGkIBpWRBlLcl8KOpq0g58tOi79u', 'nonverifikasi'),
(746, '', 'Mei', '2023-05-22', 'Hendranata Candra Setyawan', 'Cicilan pembayaran diklat mandiri pengelasan (welding) + biaya pendaftaran', 'SMK Pembnas Sukoharjo', 'KM-23/05/54', 4000000, 1, '909491881_KM-23. 05.54_HENDRANATA CANDRA.pdf', 'voice', 'https://drive.google.com/open?id=124lqqiK-_ayly9J4o7eD_TEhoyCbmo8o', 'nonverifikasi'),
(747, '', 'Mei', '2023-05-19', 'Resa Ananda Nata', ' Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023 ', 'SMK N 5 Surakarta', 'KM-23/05/39', 50000, 1, '1204104556_KM-23.05.39_Resa Ananda Nata.pdf', 'voice', 'https://drive.google.com/open?id=14CZdxMkr0dgi_Xa9VHmhPLnW1F51345t', 'nonverifikasi'),
(748, '', 'Mei', '2023-05-22', 'Bapak Suyadi', 'Pembayaran Nozzle 12 pcs @25.000', 'SMAN 1 Gondangrejo Karanganyar', 'KM-23/05/55', 300000, 1, '460863723_KM-23.05.55_Bapak Suyadi.pdf', 'voice', 'https://drive.google.com/open?id=16o9McfFBuoXZ6FCtADh5i-aPUrsE422v', 'nonverifikasi'),
(749, '', 'Maret', '2023-05-23', 'Bagusta Putra Pamungkas ', 'Pelunasan Pelatihan LAS SMAW 5-6 G', 'SMK N 2 SURAKARTA ', 'KM-23/05-56', 3400000, 1, '1573914487_KM-23.05.56_Bagusta Putra Pamungkas.pdf', 'voice', 'https://drive.google.com/open?id=1E6F92iPLtr3HdIoi3Pe-p9QFPIlWj9Q5', 'nonverifikasi'),
(751, '', 'Mei', '2023-05-19', 'Mikael Lavio Chrisnandus', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 2 Surakarta', 'KM-23/05/44', 50000, 1, '1991880927_KM-23.05.44_Mikael Lavio Chrisnandus.pdf', 'voice', 'https://drive.google.com/open?id=17uRKO83E2pv_aqV3ZNkOkC8Rkz83W69t', 'nonverifikasi'),
(752, '', 'Mei', '2023-05-23', 'Bagusta Putra Pamungkas ', 'Biaya Pendaftaran Pelatihan LAS SMAW 5-6 G', 'SMK N 2 SURAKARTA ', 'KM-23/05/57', 50000, 1, '264067812_KM-23.05.57_Bagusta Putra Pamungkas.pdf', 'voice', 'https://drive.google.com/open?id=1Q7n0YoCtzDxCfngKRRc0oMkutzQ2HMrI', 'nonverifikasi'),
(753, '', 'Mei', '2023-05-23', 'Razan Afaf Fauzan Fatin ', 'Pelunasan Pembayaran Diklat Welding SMAW 6 G + Biaya Pendaftaran ', 'SMK Bhinneka Karya Simo ', 'KM-23/05/58', 3450000, 1, '1626668806_KM-23.05.58_Razan Afaf Fauzan Fatin.pdf', 'voice', 'https://drive.google.com/open?id=1MKH-kA1INi3N6v2xpcqbZHmWQ56TTM3_', 'nonverifikasi'),
(754, '', 'Mei', '2023-05-19', 'Wahyu Rafi Raharjo', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK Kristen 2 Surakarta', 'KM-23/05/51', 50000, 1, '941660765_KM-23.05.51_Wahyu Rafi Raharjo.pdf', 'voice', 'https://drive.google.com/open?id=17uRKO83E2pv_aqV3ZNkOkC8Rkz83W69t', 'nonverifikasi'),
(755, '', 'Mei', '2023-05-23', 'Diki Setyawan ', 'Pelunasan Pembayaran Diklat Welding SMAW 6 G + Biaya Pendaftaran ', 'SMK Muhammadiyah 6 Simo', 'KM-23/05/59', 3450000, 1, '1042555360_KM-23.05.59_Diki Setyawan.pdf', 'voice', 'https://drive.google.com/open?id=1CRqCQSC3lQ4Aod5pHS9lVE9vzyPeT_hR', 'nonverifikasi'),
(756, '', 'Mei', '2023-05-19', 'Roy Surya Pradana', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 5 Surakarta', 'KM-23/05/52', 50000, 1, '522445224_KM-23.05.52_Roy Surya Pradana.pdf', 'voice', 'https://drive.google.com/open?id=1UnDWZqJfXqxRgCrUy3-x0CoYy95DO3mm', 'nonverifikasi'),
(757, '', 'Mei', '2023-05-24', 'Fevyana Veronica Wijaya ', 'Pembayaran Prakerin', 'Politeknik Pratama Mulia Surakarta', 'KM-23/05/60', 40000, 1, '999150913_KM-23.05.60_Fevyana Veronica Wijaya - Fevyana.pdf', 'voice', 'https://drive.google.com/open?id=16wBaMvYB-eiFKH_1zH1uKhfq2sGukWpx', 'nonverifikasi'),
(758, '', 'Mei', '2023-05-19', 'L Dwi Dharta Tegar S', ' Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023 ', 'ATW Surakarta', 'KM-23/05/41', 50000, 1, '1589804223_KM-23.05.41_L. Dwi Dharta Tegar S.pdf', 'voice', 'https://drive.google.com/open?id=1Ga-u1aEFgLOqTT6SNbF4VEJJruPqBtck', 'nonverifikasi'),
(759, '', 'Mei', '2023-05-24', 'Prasetyawan', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 8 Surakarta', 'KM-23/05/61', 50000, 1, '990810539_KM-23.05.61_Prasetyawan.pdf', 'voice', 'https://drive.google.com/open?id=10l5BigUacr9OI4dUqqHwFntiB3Qj_jCc', 'nonverifikasi'),
(760, '', 'Mei', '2023-05-19', 'Ridwan Alfi Hamdani', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 6 Surakarta', 'KM-23/05/45', 50000, 1, '1022555760_KM-23.05.45_Ridwan Alfi Hamdani.pdf', 'voice', 'https://drive.google.com/open?id=1zQ8WIuKa0-eyuviCR73g3GL9cyuoQevY', 'nonverifikasi'),
(761, '', 'Mei', '2023-05-19', 'Muhammad Kiran Arindra Putra', ' Biaya Pendaftaran Diklat Desain Manufaktur Program APBD 2023 ', 'SMK N 9 Surakarta', 'KM-23/05/46', 50000, 1, '93152584_KM-23.05.46_Muhammad Kiran Arindra Putra.pdf', 'voice', 'https://drive.google.com/open?id=15qZHIqUo1UzdYlXxn7obyUYnR8BxJ51P', 'nonverifikasi'),
(762, '', 'Mei', '2023-05-19', 'Atila Farrel Rainanda', 'Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023', 'SMK N 5 Surakarta', 'KM-23/05/48', 50000, 1, '583896751_KM-23.05.48_Atilla Farrel Rainananda.pdf', 'voice', 'https://drive.google.com/open?id=1JUkdS-RBVpUt7i4XJlHjKcjeX34ByE8X', 'nonverifikasi'),
(763, '', 'Mei', '2023-05-19', 'Bagus Irfansyah', ' Biaya Pendaftaran Diklat Mekanik Manufaktur Program APBD 2023 ', 'UNS', 'KM-23/05/40', 50000, 1, '433324587_KM-23.05.40_Bagus Irfansyah.pdf', 'voice', 'https://drive.google.com/open?id=1CGNNig3Qmw5wPM0rt5wTL-GvU7ExFo3e', 'nonverifikasi'),
(764, '', 'Mei', '2023-05-25', 'Muhammad Zaid Abdullah ', 'Cicilan Pembayaran Diklat Mandiri Mekanik Manufaktur + Biaya Pendaftaran ', 'SMK MUH 1 KLATEN', 'KM-23.05.63', 3950000, 1, '525670156_KM-23.05.63_Muhammad Zaid Abdullah - Erna Safitri.pdf', 'voice', 'https://drive.google.com/open?id=1lxIGmPII0V7-aQmJU2D1_3g7O72sbVD_', 'nonverifikasi'),
(765, '', 'Mei', '2023-05-26', 'Bapak Karmanto', 'Pembayaran pisau cutting 1 DPA 2pcs @300.000', 'PT Aneka Teknik Sentosa', 'KM-23/05/64', 600000, 1, '2009638313_KM-23.05.64_Bapak Karmanto.pdf', 'voice', 'https://drive.google.com/open?id=1Jjr1eCZO3oOTgasxPgmZnktZbVu-AOBk', 'nonverifikasi'),
(766, '', 'Mei', '2023-05-29', 'Bapak Nanang', 'Pembayaran Penjualan Chip/Gram 114 Kg @4000', 'Surakarta', 'KK-23/05/66', 456000, 1, '166247973_KM-23.05.66_Bapak Nanang.pdf', 'voice', 'https://drive.google.com/open?id=14YNIUqK_huuOWaUFDDuGCM2BRC1koBX-', 'nonverifikasi'),
(767, '', 'Mei', '2023-05-29', 'Rizal Adi Hidayat', 'Pelunasan Pembayaran Diklat Mandiri Pengelasan (Welding)', 'SMK DIAN KIRANA 1 SURAKARTA', 'KM-23/05/70', 3850000, 1, '1602092316_KM-23.05.70_Rizal Adi Hidayat - Febbi Nur Fadillah.pdf', 'voice', 'https://drive.google.com/open?id=1wfB7u2BmW-57q0fDZMe3_y2eNWVM4MtO', 'nonverifikasi'),
(768, '', 'Mei', '2023-05-29', 'Muhammad Farchan Aji Saputra', 'Cicilan Pembayaran Diklat Mandiri Pengelasan dan Biaya Pendaftaran', 'SMK DR SUTOMO', 'KM-23/05/69', 3950000, 1, '1596088869_KM-23.05.69_Muhammad Farchan Aji Saputra - Febbi Nur Fadillah.pdf', 'voice', 'https://drive.google.com/open?id=1EkQ3ANAx2bs8pjFrNXwEPfPUJVaVZVZk', 'nonverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `master_pengeluaran`
--

CREATE TABLE `master_pengeluaran` (
  `Id_pengeluaran` int(11) NOT NULL,
  `Kode_pengeluaran` varchar(30) DEFAULT NULL,
  `Id_sumberdana` int(11) NOT NULL,
  `Id_divisi` int(11) NOT NULL,
  `Id_jenis` int(11) NOT NULL,
  `Tanggal` date NOT NULL,
  `Bulan` varchar(20) NOT NULL,
  `Rincian` varchar(255) NOT NULL,
  `Jumlah` double NOT NULL,
  `Bukti_lpj` varchar(255) DEFAULT NULL,
  `Drive` varchar(255) DEFAULT NULL,
  `Keterangan` enum('verifikasi','nonverifikasi') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_pengeluaran`
--

INSERT INTO `master_pengeluaran` (`Id_pengeluaran`, `Kode_pengeluaran`, `Id_sumberdana`, `Id_divisi`, `Id_jenis`, `Tanggal`, `Bulan`, `Rincian`, `Jumlah`, `Bukti_lpj`, `Drive`, `Keterangan`) VALUES
(20, NULL, 2, 2, 2, '2023-01-03', 'Januari', 'Biaya Keperluan Rumah Tangga Kantor (Air Mineral)', 90000, NULL, 'https://drive.google.com/open?id=1t3GMpF9itvziIjrNglggxaCywbWKfisa', 'verifikasi'),
(21, NULL, 2, 2, 2, '2023-01-09', 'Januari', 'Biaya Keperluan Rumah Tangga Kantor (Iuran sampah,', 520000, NULL, 'https://drive.google.com/open?id=1ZEyxZOs1c6DWyh2s9InvqXqNGystrFL6', 'verifikasi'),
(22, NULL, 2, 8, 2, '2023-01-12', 'Januari', 'Biaya Peralatan Inkubator, Biaya Makanan & MInuman', 9000000, NULL, 'https://drive.google.com/open?id=1MNGRykUWv2r6472QuHdYvghckIdulCEv', 'verifikasi'),
(23, NULL, 2, 2, 2, '2023-01-12', 'Januari', 'Biaya BPJS Kesehatan. (Bayar BPJS Kesehatan)', 4627427, NULL, 'https://drive.google.com/open?id=1NXjdtLb9zUkc6b72XVtoIiWtqYEqqHNh', 'verifikasi'),
(24, NULL, 2, 2, 2, '2023-01-12', 'Januari', 'Biaya Keperluan Rumah Tangga Kantor, Biaya FC & Br', 1318400, NULL, 'https://drive.google.com/open?id=1OBgAzIH_b747vunRVoHbsf5lJS-b8m3Q', 'verifikasi'),
(25, NULL, 2, 6, 2, '2023-01-13', 'Januari', 'Biaya bahan 6 mekanik (Biaya bahan 6)', 1152500, NULL, 'https://drive.google.com/open?id=1IGgVxEHHcQ4RINnMTOgGNw76T2TUlt-q', 'verifikasi'),
(26, NULL, 2, 2, 2, '2023-01-17', 'Januari', 'Biaya Pendidikan Karyawan, Biaya Keperluan Rumah T', 1677000, NULL, 'https://drive.google.com/open?id=1DmoAVN9i5tsRsiLR5e8e6duBwEBDd4VF', 'verifikasi'),
(27, NULL, 2, 6, 2, '2023-01-17', 'Januari', 'Biaya Iklan & Promosi - 6 (Brosur-Banner), Biaya A', 1503000, NULL, 'https://drive.google.com/open?id=1870kE46sZNp33lNrSWHztTXBVKDnvos3', 'verifikasi'),
(28, NULL, 2, 7, 2, '2023-01-17', 'Januari', 'Biaya Transport Lokal Produksi (Transport lokal)', 170000, NULL, 'https://drive.google.com/open?id=1bpED4LYVXvwM7GuldiTBUfFACargmvxR', 'verifikasi'),
(29, NULL, 2, 7, 2, '2023-01-18', 'Januari', 'Biaya Transportasi Lokal Produksi, Biaya Pemakaian', 3357000, NULL, 'https://drive.google.com/open?id=1z6PbRzqHec5kU6KscNmCjpWUqh_sIhmE', 'verifikasi'),
(30, NULL, 2, 2, 2, '2023-01-18', 'Januari', 'Biaya Transportasi Lokal Kantor, Biaya Pemeliharaa', 1723500, NULL, 'https://drive.google.com/open?id=1VeICfkcT6jOab8e1O4OSQ61AHd2CWx6B', 'verifikasi'),
(31, NULL, 2, 2, 2, '2023-01-20', 'Januari', 'Biaya Transportasi Lokal Kantor, Biaya Keperluan R', 574000, NULL, 'https://drive.google.com/open?id=1YwzA9wquxCPBO0q9-HKnef4vD3azlgZ4', 'verifikasi'),
(32, NULL, 2, 7, 2, '2023-01-20', 'Januari', 'Biaya Pemakaian Bahan Produksi (Material prod 2300', 90000, NULL, 'https://drive.google.com/open?id=1Su2gDX031U7fD65uUBI_ShHV8uMZs0y8', 'verifikasi'),
(33, NULL, 2, 2, 2, '2023-01-23', 'Januari', 'Biaya Keperluan Rumah Tangga Kantor,\r\nBiaya Benda ', 1500000, NULL, 'https://drive.google.com/open?id=16TltZgpoB_8X5GgsrgYtFCCivutXWARW', 'verifikasi'),
(34, NULL, 2, 2, 2, '2023-01-24', 'Januari', 'Biaya Pemeliharaan Gedung, Biaya Transportasi Loka', 975000, NULL, 'https://drive.google.com/open?id=1wgobpleqnB3yVIQcgg2bCiIk0YZ2-GK5', 'verifikasi'),
(35, NULL, 2, 7, 2, '2023-01-24', 'Januari', 'Biaya Obat-obatan Produksi, Biaya Pemakaian Bahan ', 922500, NULL, 'https://drive.google.com/open?id=1pO9MXMdU4Oj8-HZk8WCrKWB9W_8SRJ7j', 'verifikasi'),
(36, NULL, 2, 6, 2, '2023-01-25', 'Januari', 'Biaya Bahan 6 Mekanik, Biaya Pegawai Instruktur 6.', 2042500, NULL, 'https://drive.google.com/open?id=1zr1uz43U1xzoaSCqS9BdONSo2G3bY3Zu', 'verifikasi'),
(37, NULL, 2, 8, 2, '2023-01-25', 'Januari', 'Biaya Pegawai Inkubator. (Bi.peg. IBT)', 1335000, NULL, 'https://drive.google.com/open?id=1qS0HhsofaO8xCdghrDtis1Ln-PcHrU7a', 'verifikasi'),
(38, NULL, 2, 7, 2, '2023-01-25', 'Januari', 'Biaya Pemakaian Bahan Produksi. (Materai 23001/EO?', 280000, NULL, 'https://drive.google.com/open?id=17lJvrOBJbu5PBfgxnOjAcUnH1uaBMw21', 'verifikasi'),
(39, NULL, 2, 2, 2, '2023-01-25', 'Januari', 'Biaya Transportasi Lokal Kantor, \r\nBiaya Benda Pos', 4245700, NULL, 'https://drive.google.com/open?id=1xM8FHEOfCHJKrvhLg8B7mG9IPiTPSq_0', 'verifikasi'),
(40, NULL, 2, 2, 2, '2023-01-26', 'Januari', 'Biaya Transportasi Lokal Kantor, Biaya Keperluan R', 2515000, NULL, 'https://drive.google.com/open?id=117yun8a0nDl-URbN9boTbJ_ei6BhEiTL', 'verifikasi'),
(41, NULL, 2, 8, 2, '2023-01-26', 'Januari', 'Biaya ATK Inkubator. (ATK IBT)', 509500, NULL, 'https://drive.google.com/open?id=1nDiJpG_uwafwAJEBpWKxnG4rlICrOqwX', 'verifikasi'),
(42, NULL, 2, 7, 2, '2023-01-26', 'Januari', 'Biaya Transport Lokal Produksi. (BBM L300 prod)', 150000, NULL, 'https://drive.google.com/open?id=15fp2DwPaLjUOOTAO_3IlBdDFt3MdodnO', 'verifikasi'),
(43, NULL, 2, 2, 2, '2023-01-31', 'Januari', 'Biaya Transportasi Lokal Kantor, Biaya FC & Brg Ce', 317500, NULL, 'https://drive.google.com/open?id=1NHHImSOe_uAyBc_ICiszSzXTcjRbOhGF', 'verifikasi'),
(44, NULL, 2, 2, 2, '2023-02-01', 'Februari', 'Giro Bank Jateng AC 1-002-00718-1. (Setor tunai)', 30000000, NULL, 'https://drive.google.com/open?id=1asGNy-O_8mbZchbCzBDyYYR9G-XmDtKY', 'verifikasi'),
(45, NULL, 2, 2, 2, '2023-02-01', 'Februari', 'Biaya Pendidikan Karyawan. (Psikotest)', 1178000, NULL, 'https://drive.google.com/open?id=1NVnv6DGS1O5pZXAOU6xX8G0ytYvpUbwX', 'verifikasi'),
(46, NULL, 2, 6, 2, '2023-02-02', 'Februari', 'Biaya Bahan 6 Mekanik. (Material 6)', 2235000, NULL, 'https://drive.google.com/open?id=1fsDDbVEOeVDejEnrn_nTCHrSUX6V_9RD', 'verifikasi'),
(47, NULL, 2, 7, 2, '2023-02-02', 'Februari', 'Biaya Pemeliharaan Mesin Produksi. (Repair mesin C', 1500000, NULL, 'https://drive.google.com/open?id=18Thu8YepTn9ZcwQXTZwp7Jkcm7zxVO07', 'verifikasi'),
(48, NULL, 2, 7, 2, '2023-02-02', 'Februari', 'Biaya Pemakaian Bahan Produksi. (Material prod)', 1435400, NULL, 'https://drive.google.com/open?id=1_0G1uMJnUMV2qcXSi6SqH-AWY5qMgJEJ', 'verifikasi'),
(49, NULL, 2, 2, 2, '2023-02-02', 'Februari', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Pemelih', 1163000, NULL, 'https://drive.google.com/open?id=1byFc613gwQK_-XFphf5F08Q12F8vTL6S', 'verifikasi'),
(50, NULL, 2, 2, 2, '2023-02-02', 'Februari', 'Biaya Pemeliharaan Gedung, Biaya FC & Brg Cetakan/', 545000, NULL, 'https://drive.google.com/open?id=1SISXblwfvZ02zcfhqo7D16gP2YHhcCeH', 'verifikasi'),
(51, NULL, 2, 7, 2, '2023-02-02', 'Februari', 'Biaya Pemakaian Bahan Produksi, Biaya Transportasi', 436700, NULL, 'https://drive.google.com/open?id=1unCa5hQzNg4uzEirbJiWPw1R-_X3r8bK', 'verifikasi'),
(52, NULL, 2, 2, 2, '2023-02-03', 'Februari', 'Biaya Transportasi Lokal Kantor, Biaya Keperluan R', 867000, NULL, 'https://drive.google.com/open?id=1w6tgyzHBmZP0FlOuGCKGw1U4_ifsNoFl', 'verifikasi'),
(53, NULL, 2, 6, 2, '2023-02-06', 'Februari', 'Biaya Bahan 6 Mekanik. (Material 6)', 2818500, NULL, 'https://drive.google.com/open?id=1xvEUsX-qWKJfBbAxSV1rEhkq_hPPyGs8', 'verifikasi'),
(54, NULL, 2, 2, 2, '2023-02-06', 'Februari', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Gaji/Ho', 2512200, NULL, 'https://drive.google.com/open?id=1rLEh168ELeH20Lp2BQjdSI03z-AAt327', 'verifikasi'),
(55, NULL, 2, 6, 2, '2023-02-06', 'Februari', 'Biaya Bahan 6 Menakanik, Biaya Transport Lokal 6. ', 1927000, NULL, 'https://drive.google.com/open?id=1B4rO_6ph_02EsRx7puh0R0PnQd5palog', 'verifikasi'),
(56, NULL, 2, 2, 2, '2023-02-06', 'Februari', 'Biaya Iuaran Kebersihan Kota, \r\nBiaya Keperluan Ru', 1079400, NULL, 'https://drive.google.com/open?id=1oN6xdhfYq8l_-MbN3jnAUaTCcy0lh6Uo', 'verifikasi'),
(57, NULL, 2, 7, 2, '2023-02-06', 'Februari', 'Biaya Pemakaian Bahan Produksi. (Material prod 230', 440000, NULL, 'https://drive.google.com/open?id=1Qq4emtd-uUBqlfT0LABdNEb3Tgw0RY4d', 'verifikasi'),
(58, NULL, 2, 7, 2, '2023-02-06', 'Februari', 'Biaya Pemakaian Bahan Produksi. (Material produksi', 154000, NULL, 'https://drive.google.com/open?id=1ejWMN2v8dSZ4PAMR3rWsd2-IoVXFxgx-', 'verifikasi'),
(59, NULL, 2, 6, 2, '2023-02-07', 'Februari', 'Biaya Bahan 6 Mekanik, Biaya Transport Lokal 6. (M', 2355000, NULL, 'https://drive.google.com/open?id=1nLWaNfme2Dx8wsWIE5XG299NiNlYLapp', 'verifikasi'),
(60, NULL, 2, 2, 2, '2023-02-07', 'Februari', 'Biaya Makanan & Minuman Rapat, Biaya Makanan & Min', 1193000, NULL, 'https://drive.google.com/open?id=1Ivj5Zvd_48xLkrUAgTxnnE6OeevGZYrG', 'verifikasi'),
(61, NULL, 2, 6, 2, '2023-02-07', 'Februari', 'Biaya Lainnya 6. (Honor inst. teori)', 855000, NULL, 'https://drive.google.com/open?id=1o9ve3_Db68wa4jTUgNc-vd16gRgposqj', 'verifikasi'),
(62, NULL, 2, 2, 2, '2023-02-14', 'Februari', 'Biaya BPJS Kesehatan, Biaya BPJS Ketenagakerjaan, ', 35698500, NULL, 'https://drive.google.com/open?id=1tGWRSbg5vN34GCM4hYZKUAWfQHbM3Ldw', 'verifikasi'),
(63, NULL, 2, 7, 2, '2023-02-14', 'Februari', 'Biaya Overhead Lainnya Jasa Produksi, Biaya Pemaka', 3279000, NULL, 'https://drive.google.com/open?id=13MVWXlERBkDcAPZ52vEckvqwvcst0aEA', 'verifikasi'),
(64, NULL, 2, 6, 2, '2023-02-14', 'Februari', 'Biaya bahan 6 Mekanik, Biaya ATK 6, Biaya Perlengk', 2169200, NULL, 'https://drive.google.com/open?id=1vB4EN-WwVj8VF8xf5mwNvN0fmc85xzHz', 'verifikasi'),
(65, NULL, 2, 2, 2, '2023-02-14', 'Februari', 'Biaya Transport Lokal Kantor, Biaya Pemeliharaan G', 1719000, NULL, 'https://drive.google.com/open?id=1Vb3VzyOsVnOqfalZnkaNWwO2o0cE3al6', 'verifikasi'),
(66, NULL, 2, 6, 2, '2023-02-14', 'Februari', 'Biaya bahan 6 Mekanik, Biaya Transport Lokal 6. (M', 1317500, NULL, 'https://drive.google.com/open?id=1EOcpmykR_oweul-Y6cB0hv6uC37VOU8D', 'verifikasi'),
(67, NULL, 2, 2, 2, '2023-02-14', 'Februari', 'Biaya Transportasi Lokal Kantor, Biaya Keperluan R', 868500, NULL, 'https://drive.google.com/open?id=19FL4UXburaXxqmXlZbU6QPoSGl30Qe0X', 'verifikasi'),
(68, NULL, 2, 7, 2, '2023-02-14', 'Februari', 'Biaya Pemakaian Bahan Produksi, Biaya Transport Lo', 769000, NULL, 'https://drive.google.com/open?id=1UZ2_AEtTk4MVVE9s4erJmVvj-Z7Mk7fW', 'verifikasi'),
(69, NULL, 2, 7, 2, '2023-02-14', 'Februari', 'Biaya Transport Lokal Produksi, Biaya Pemakaian Ba', 404500, NULL, 'https://drive.google.com/open?id=1Fl-mAbxBpP1CcEgLi60NjAK-btUhbM9S', 'verifikasi'),
(70, NULL, 2, 6, 2, '2023-02-14', 'Februari', 'Biaya Makanan & Minuman 6. (Maksi UW)', 300000, NULL, 'https://drive.google.com/open?id=1hWaZHh6iTxE14S1zdgSxptL7vt407-NT', 'verifikasi'),
(71, NULL, 2, 2, 2, '2023-02-14', 'Februari', 'Biaya Transport Lokal Kantor, Biaya Keperluan Ruma', 288000, NULL, 'https://drive.google.com/open?id=1Db9Tj-jzaMURFokvjB2_y3Auy-DrYl2j', 'verifikasi'),
(72, NULL, 2, 2, 2, '2023-02-17', 'Februari', 'Biaya Pemeliharaan Inventaris Kantor, Biaya Transp', 2717300, NULL, 'https://drive.google.com/open?id=1c3jtv06UXb4pWaYgmUuFV96S6whNFROq', 'verifikasi'),
(73, NULL, 2, 6, 2, '2023-02-17', 'Februari', 'Biaya bahan 6 Mekanik, Biaya Perlengkapan 6 (Serag', 2080000, NULL, 'https://drive.google.com/open?id=1w6ZgsiuBsuu-AiaJeTkD1CstZFqqbS_o', 'verifikasi'),
(74, NULL, 2, 7, 2, '2023-02-17', 'Februari', 'Biaya Transport Lokal Produksi, Biaya supplies pro', 1559000, NULL, 'https://drive.google.com/open?id=1atKCfQMg8SdJh_kU1mKUStcMBEkJAg4N', 'verifikasi'),
(75, NULL, 2, 2, 2, '2023-02-20', 'Februari', 'Giro Bank Jateng AC 1-002-00718-1, Biaya Keperluan', 41329500, NULL, 'https://drive.google.com/open?id=1OlN1I37twYATVdAppt3BELzALPiRVGwO', 'verifikasi'),
(76, NULL, 2, 6, 2, '2023-02-20', 'Februari', 'Biaya Makanan & Minuman 6', 300000, NULL, 'https://drive.google.com/open?id=1gS7xv-v_prxw0hmmZIkQnI4MZTCv6vPa', 'verifikasi'),
(77, NULL, 2, 6, 2, '2023-02-20', 'Februari', 'Biaya Lainnya 6. (Pengembalian lebih bayar)', 100000, NULL, 'https://drive.google.com/open?id=1lNs6V3oxqUyS4AaoCDNLp-AfOlvPIVCc', 'verifikasi'),
(78, NULL, 2, 2, 2, '2023-02-20', 'Februari', 'Biaya Transportasi Lokal Kantor', 20000, NULL, 'https://drive.google.com/open?id=1oD10KIwRHqPLLmVAiCRJOBsWHvVKoD5g', 'verifikasi'),
(79, NULL, 2, 6, 2, '2023-02-22', 'Februari', 'Biaya Bahan 6 Mekanik; Biaya Transport Lokal 6; Bi', 1184000, NULL, 'https://drive.google.com/open?id=1ZAyXTO67dMSmr6s0JpPZ4DAmAgy7eD-3', 'verifikasi'),
(80, NULL, 2, 2, 2, '2023-02-22', 'Februari', 'Biaya Transportasi Lokal Kantor; Biaya Alat Tulis ', 2204800, NULL, 'https://drive.google.com/open?id=16jfwUGa_FAopE9f5bE_9fYdsY21Zc9Zo', 'verifikasi'),
(81, NULL, 2, 2, 2, '2023-02-22', 'Februari', 'Biaya Renumerasi Pejabat Pengelola Non PNS; Biaya ', 3605700, NULL, 'https://drive.google.com/open?id=1k4ijt-RnJWq4DVsw5PfO7vWfzqU-OIeX', 'verifikasi'),
(82, NULL, 2, 8, 2, '2023-02-22', 'Februari', 'Biaya Pwfawai Inkubator. (Bayar Hutang)', 1335000, NULL, 'https://drive.google.com/open?id=1wAszPoYPJw-2N0yAHUl5MFw8GQYw77v3', 'verifikasi'),
(83, NULL, 2, 6, 2, '2023-02-22', 'Februari', 'Biaya Pegawai Instruktur 6. (Bayar hutang)', 890000, NULL, 'https://drive.google.com/open?id=1rflubgRPT9xda5BS7Hs-dTvv-_diehwn', 'verifikasi'),
(84, NULL, 2, 7, 2, '2023-02-22', 'Februari', 'Biaya Obat-obatan Produksi; Biaya Transport Lokal ', 660300, NULL, 'https://drive.google.com/open?id=1Cx82ZvkNUB06v6rpS4QUktX90K96jD-v', 'verifikasi'),
(85, NULL, 2, 7, 2, '2023-02-23', 'Februari', 'Biaya Pemakaian Bahan Produksi; Biaya Transport Lo', 1532000, NULL, 'https://drive.google.com/open?id=1F2PFLAR_fd-TFt9ZiBkaVWJPgbdQQvUH', 'verifikasi'),
(86, NULL, 2, 7, 2, '2023-02-23', 'Februari', 'Biaya Transport Lokal Produksi; Biaya Pemakaian Ba', 490000, NULL, 'https://drive.google.com/open?id=1TRF8IBNQUpMU6xWk3R7uF-8-16tN2xgH', 'verifikasi'),
(87, NULL, 2, 6, 2, '2023-02-24', 'Februari', 'Biaya Makanan & Minuman 6; Biaya bahan 6 Mekanik. ', 780000, NULL, 'https://drive.google.com/open?id=1V0XoaKTqBgXXSjJYhf1vXEBfg6HnFQH5', 'verifikasi'),
(88, NULL, 2, 7, 2, '2023-02-24', 'Februari', 'Biaya Pemakaian Bahan Produksi; Biaya Transport Lo', 794000, NULL, 'https://drive.google.com/open?id=13y1Jxq9jUoWytLv46YUOT_LLbb5CsZBP', 'verifikasi'),
(89, NULL, 2, 2, 2, '2023-02-24', 'Februari', 'Biaya Pemeliharaan Gedung; Biaya Pemeliharaan & Re', 3025000, NULL, 'https://drive.google.com/open?id=17OW843Mvth7Ho16mkNlmkH8AJh8-OSGl', 'verifikasi'),
(90, NULL, 2, 2, 2, '2023-02-27', 'Februari', 'Biaya Transportasi Lokal Kantor; Biaya Keperluan R', 505500, NULL, 'https://drive.google.com/open?id=1Oq7Phk4fQ6epZNTNg_R4THLO6ELeb4LV', 'verifikasi'),
(91, NULL, 2, 6, 2, '2023-02-27', 'Februari', 'Biaya Transport Lokal 6; Biaya bahan 6 Mekanik; Bi', 7011000, NULL, 'https://drive.google.com/open?id=17chgf5ejFIWZdjvuGYooJ7xsoqo7wODo', 'verifikasi'),
(92, '', 2, 2, 2, '2023-02-28', 'Februari', 'Biaya Gaji/Honor Non Adm & Umum; Biaya Renumerasi ', 77587550, NULL, 'https://drive.google.com/open?id=18ow7-mH3-h_r7FbN5HCHO6VQ2IrBiRGE', 'verifikasi'),
(93, '', 2, 6, 2, '2023-02-28', 'Februari', 'Biaya Pegawai Instruktur 6; Biaya Bahan 6 Mekanik.', 68920667, NULL, 'https://drive.google.com/open?id=1dHAEWMHIndM2aP2fqDzihJl4udW_NHy6', 'verifikasi'),
(94, NULL, 2, 8, 2, '2023-02-28', 'Februari', 'Biaya Pegawai Inkubator. (Gaji karyawan,dll)', 8577059, NULL, 'https://drive.google.com/open?id=1Vy0z6g8xdo7nuNnxikm-9gKxyanR1AsC', 'verifikasi'),
(95, '', 2, 7, 2, '2023-02-28', 'Februari', 'Biaya pegawai karyawan produksi; Biaya Pemeliharaa', 36580277, NULL, 'https://drive.google.com/open?id=1zrpYAfmC_wlxzSuPy5gSz6GKqFJwZoE_', 'verifikasi'),
(96, NULL, 2, 2, 2, '2023-02-28', 'Februari', 'Biaya Pemeliharaan Gedung; Biaya Transportasi Loka', 3026400, NULL, 'https://drive.google.com/open?id=1LVQXNYYbyTiQPR7K9Xsn-EQkdnNV7E12', 'verifikasi'),
(97, NULL, 2, 7, 2, '2023-02-28', 'Februari', 'Biaya supplies produksi; Biaya Transport Lokal Pro', 175000, NULL, 'https://drive.google.com/open?id=1ZtZ7FH-EIjqn5UoSxP6fS4qF5bUA626v', 'verifikasi'),
(98, NULL, 2, 2, 2, '2023-03-02', 'Maret', 'Biaya Gaji/Honor Non Adm & Umum; Biaya Keperluan R', 2803900, NULL, 'https://drive.google.com/open?id=1OPtwukf6t8OOMk3k2Z7hhI_W2sy39nne', 'verifikasi'),
(99, NULL, 2, 6, 2, '2023-03-06', 'Maret', 'Biaya Benda Pos, Material & Paket 6; Biaya Transpo', 395000, NULL, 'https://drive.google.com/open?id=1_cBivDvJW7l5jkpoCJNqxAU9l4ihCUK2', 'verifikasi'),
(100, NULL, 2, 2, 2, '2023-03-06', 'Maret', 'Biaya Transportasi Lokal Kantor; Biaya Pemeliharaa', 1989400, NULL, 'https://drive.google.com/open?id=1K3vjeUkj8rccTGNE47_jRri5kNJO4GDm', 'verifikasi'),
(101, NULL, 2, 8, 2, '2023-03-06', 'Maret', 'Biaya ATK Inkubator; Biaya Transport Lokal Inkubat', 63000, NULL, 'https://drive.google.com/open?id=1hPIjUq0kt0S2pCzaDs93hqM3EX4LUhiw', 'verifikasi'),
(102, NULL, 2, 7, 2, '2023-03-06', 'Maret', 'Biaya ATK Produksi; Biaya Pemakaian Bahan Produksi', 2213000, NULL, 'https://drive.google.com/open?id=1uJAOT7yXuxfeEpShfBK664KMPm1Qw7H_', 'verifikasi'),
(103, NULL, 2, 2, 2, '2023-03-06', 'Maret', 'Biaya Makanan & Minuman Rapat. (Konsumsi tamu Pert', 751000, NULL, 'https://drive.google.com/open?id=1l9h73ftdxIXBp-skN6xnlOVcnm2NwCpf', 'verifikasi'),
(104, NULL, 2, 2, 2, '2023-03-06', 'Maret', 'Biaya Makanan & Minuman Rapat. (Konsumsi pembahasa', 457500, NULL, 'https://drive.google.com/open?id=1sdvKoVgZjCI_lgzvsIYpBCGHb6ZEFKq4', 'verifikasi'),
(105, '', 2, 2, 2, '2023-03-08', 'Maret', 'Biaya Keperluan Rumah Tangga Kantor; Biaya Transpor', 811000, NULL, 'https://drive.google.com/open?id=1gnNZy4dtJokRczD9Nu9ILWP-a4q_kaRV', 'verifikasi'),
(106, '23-KK.03.009', 2, 2, 2, '2023-03-13', 'Maret', 'Biaya BPJS Kesehatan. (BPJS Kesehatan)', 3975200, '1521749591_23-KK.03.009.pdf', 'https://drive.google.com/open?id=17pxcTldkR6y_4YoxZX9s0yS2tqk3r7XD', 'verifikasi'),
(107, '23-KK.03.010', 2, 2, 2, '2023-03-13', 'Maret', 'Biaya Alat Tulis dan Perlengkapan Kantor; Biaya Alat Tulis dan Perlengkapan Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Benda Pos, Materai & Paket Administrasi Umum. (ATK, dll)', 1910300, '237947589_23-KK.03.010.pdf', 'https://drive.google.com/open?id=1Nn_rX4kVN5kDHhuK3dG7PL6KxTzKBa2T', 'verifikasi'),
(108, '23-KK.03.011', 2, 2, 2, '2023-03-13', 'Maret', 'Biaya Alat Tulis dan Perlengkapan Kantor; Biaya Pemeliharaan Gedung; Biaya Pemeliharaan Gedung; Biaya Pemeliharaan Gedung; Biaya Transportasi Lokal Kantor; Biaya Alat Tulis dan Perlengkapan Kantor. (Jilid spiral,dll)', 2351500, '1867985351_23-KK.03.011.pdf', 'https://drive.google.com/open?id=1mUTchXFaFxjg102nwM4BwOG7RJd2xs0I', 'verifikasi'),
(109, '23-KK.03.012', 2, 7, 2, '2023-03-13', 'Maret', 'Biaya Transport Lokal Produksi; Biaya Pemakaian Bahan Produksi; Biaya Pemakaian Bahan Produksi; Biaya Pemakaian Bahan Produksi. (Material prod,dll)', 1010600, '1855618442_23-KK.03.012.pdf', 'https://drive.google.com/open?id=1nU5aopZLJFPgn1KCoOc-rkUxBBP-EdNE', 'verifikasi'),
(110, '23-KK.03.013', 2, 2, 2, '2023-03-13', 'Maret', 'Biaya Keperluan Rumah Tangga Kantor; Biaya Transportasi Lokal Kantor; Biaya Pemeliharaan Gedung. (BBM kendaraan umum)', 980000, '1752353372_23-KK.03.013.pdf', 'https://drive.google.com/open?id=1HXX3SvbycX-RKs7f13jSWt_n-V4YDyy8', 'verifikasi'),
(112, '23-KK.03.014', 2, 7, 2, '2023-03-13', 'Maret', 'Biaya Obat-obatan Produksi; Biaya Pemakaian Bahan Produksi. (P3K Prod, dll)', 559000, '1574796567_23-KK.03.014.pdf', 'https://drive.google.com/open?id=17lNPMwN63pqgCbFqboC0P5zopvawTm-6', 'verifikasi'),
(113, '23-KK/03/015', 2, 6, 2, '2023-03-13', 'Maret', 'Biaya Obat-obatan Diklat; Biaya ATK Diklat. (P3K Diklat, atk diklat)', 639600, '1725150740_23-KK.03.015.pdf', 'https://drive.google.com/open?id=1QTuyyGg9iTMk3YR4TiGg7Q3fs_XtH6KS', 'verifikasi'),
(114, '23-KK/03/016', 2, 2, 2, '2023-03-13', 'Maret', 'Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Benda Pos, Materai & Paket Administrasi Umum; Biaya Makanan & Minuman Rapat. (Air mineral,dll)', 863000, '1765372856_23-KK.03.016.pdf', 'https://drive.google.com/open?id=1fHN2zcE8krD_xaq7qxJUulsXrMdAt-kW', 'verifikasi'),
(115, 'CEK AG 00833941', 2, 2, 2, '2023-03-10', 'Maret', 'Biaya Pemeliharaan Gedung; Biaya Bahan Diklat Mekanik; Biaya Pemeliharaan Inventaris Kantor; Biaya Transfer; Kas Besar; Giro Bank Jateng AC 1-002-00718-1', 580187575, '2099403785_CEK AG 00833941.pdf', 'https://drive.google.com/open?id=1a_I74XA9J6Rbq_zeKATao9soFz66-47e', 'verifikasi'),
(116, '23-KK/03/017', 2, 7, 2, '2023-03-14', 'Maret', 'Biaya Transport Lokal Produksi. (BBM L300 prod)', 130000, '1175107749_23-KK.03.017.pdf', 'https://drive.google.com/open?id=105b8kVls1dQkcHkk0SXcphH3mPlUcXAA', 'verifikasi'),
(117, '23-KK/03.032', 2, 2, 2, '2023-03-24', 'Maret', 'Biaya Makanan dan Minuman Rapat (Konsumsi Kunjungan Lapan Audit KAP Ganung)', 420000, '220531356_23-KK.03.032.pdf', 'https://drive.google.com/open?id=1m9elIzOgVaEXJeOysQTcMomsohDoYh43', 'verifikasi'),
(118, '23-KK.03.020', 2, 2, 2, '2023-03-16', 'Maret', 'Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Pemeliharaan Gedung; Biaya Pemeliharaan & Reparasi Inventaris; Biaya Keperluan Rumah Tangga Kantor; Biaya Pemeliharaan Inventaris Kantor; Biaya Transportasi Lokal Kantor; Biay', 3473600, '1076456253_23-KK.03.020.pdf', 'https://drive.google.com/open?id=1JBgyCvCZnTXPRHSdPEVfZQb5avl4CsdV', 'verifikasi'),
(119, '23-KK/03/018', 2, 6, 2, '2023-03-14', 'Maret', 'Biaya Makanan & Minuman Diklat; Biaya Transport Lokal Diklat; Biaya Benda Pos, Meterai & Paket Diklat; Biaya Supplies Diklat. (Maksi UW, kuas,dll)', 1093500, '1433832939_23-KK.03.0018.pdf', 'https://drive.google.com/open?id=1yGBbYZ4NOUkEebHkC5_Y_R2gFkpZ0N86', 'verifikasi'),
(120, '23-KK/03.031', 2, 7, 2, '2023-03-21', 'Maret', 'Biaya Pemakaian Bahan Produksi (Gas AR)', 277500, '1072026375_23-KK.03.031.pdf', 'https://drive.google.com/open?id=1N2btV2pUifao7ybM_b457t5RAvpYPRHT', 'verifikasi'),
(121, 'CEK AH00861926_Produksi', 2, 7, 2, '2023-03-21', 'Maret', 'Biaya pegawai karyawan produksi; Biaya Supplies produksi; Kas besar. ', 22127126, '1707190584_CEK AH00861926_Produksi.pdf', 'https://drive.google.com/open?id=1R2vGE6UIsoDEsyHylXCNAhIbjampIWPr', 'verifikasi'),
(122, 'CEK AH00861926_Umum', 2, 2, 2, '2023-03-21', 'Maret', 'Biaya BPJS Ketenagakerjaan. Biaya Pemeliharaan Gedung. Biaya transfer.', 20532600, '1700457053_CEK AH00861926_Umum.pdf', 'https://drive.google.com/open?id=1HccXMG5JHw-MzZxJuv6zynWOm1SeVvsV', 'verifikasi'),
(123, 'CEK AH00861926_Diklat', 2, 6, 2, '2023-03-21', 'Maret', 'Biaya Supplies Diklat', 976800, '2020326554_CEK AH00861926_ Diklat.pdf', 'https://drive.google.com/open?id=1E4XDW7C4Hq1OTP2B_Mo6Dec43uh-tcvJ', 'verifikasi'),
(124, '23-KK/03.030', 2, 2, 2, '2023-03-21', 'Maret', 'Biaya Keperluan Rumah Tangga Kantor (Gula+Teh)', 57000, '1035025325_23-KK.03.030.pdf', 'https://drive.google.com/open?id=1BNEEcqhdsuXmy9tTSWvSsJWVaFCABhr8', 'verifikasi'),
(125, '23-KK/03.029', 2, 6, 2, '2023-03-21', 'Maret', 'Biaya Benda Pos, Materai dan Paket Diklat (kirim dokumen)', 20000, '1215260798_23-KK.03.029.pdf', 'https://drive.google.com/open?id=1QJcUPhvVT8MlaafpDa3Jd9jyyKXJmAY5', 'verifikasi'),
(126, '23-KK/03.0019', 2, 2, 2, '2023-03-14', 'Maret', 'Biaya Promosi/ Penjualan; Biaya Promosi/ Penjualan; Biaya Transportasi Lokal Kantor; Biaya FC & Brg Cetakan/Pengadaan Adm Umum; Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor. (Greetting, dll)', 1312700, '314013191_23-KK.03.0019.pdf', 'https://drive.google.com/open?id=1DW0fDopFPDensoQgYvGEVRstza2-PxXT', 'verifikasi'),
(127, '23-KK/03.026', 2, 2, 2, '2023-03-21', 'Maret', 'Biaya FC & Brg Cetakan/Pengadaan Adm Umum; Biaya Transportasi Lokal Kantor; Biaya Pemeliharaan Gedung; Biaya Keperluan Rumah Tangga Kantor. (Cetak nota parkir)', 1620100, '720541670_23-KK.03.026.pdf', 'https://drive.google.com/open?id=1V-csySBTHU4P2SfUNIHPYc524pwuK9ZP', 'verifikasi'),
(128, '23-KK/03/018', 2, 2, 2, '2023-03-15', 'Maret', 'Biaya Pendidikan Karyawan; Biaya Keperluan Rumah Tangga Kantor; Biaya Promosi/ Penjualan. (Psikotest, air mineral, greeting)', 1840000, '1107218065_23-KK.03.018.pdf', 'https://drive.google.com/open?id=1gnKPWbRBwVGd4WfRRyNvwxbE8XETd-bE', 'verifikasi'),
(129, '23-KK/03.028', 2, 6, 2, '2023-03-21', 'Maret', 'Biaya Makanan dan Minuman Diklat (Maksi UW)', 420000, '1834263612_23-KK.03.028.pdf', 'https://drive.google.com/open?id=1fnrDbbQjOoVdj4P3FprzRijl6qSDdAJF', 'verifikasi'),
(130, '23-KK/03/019', 2, 6, 2, '2023-03-16', 'Maret', 'Biaya Benda Pos, Materai & Paket Diklat; Biaya Supplies Diklat; Biaya Transport Lokal Diklat. (Kirim dokumen,dll)', 220000, '2082420314_23-KK.03.019.pdf', 'https://drive.google.com/open?id=1N97rfZrFbx_pYrqMqIZVGJYIKuTyL0Vw', 'verifikasi'),
(131, '23-KK/03/020', 2, 6, 2, '2023-03-21', 'Maret', 'Biaya Transport Lokal Diklat. (Transport rapat dengan Nestle)', 119000, '1143944440_23-KK.03.020.pdf', 'https://drive.google.com/open?id=132HBbF4QQmygjlfMG3L8BzKNmhQRSnDy', 'verifikasi'),
(132, '23-KK/03.025', 2, 7, 2, '2023-03-21', 'Maret', 'Biaya supplies produksi. (Holder)', 987900, '1369195712_23-KK.03.025.pdf', 'https://drive.google.com/open?id=1395PloweUY5DpJpFF7Sv_l2dHM1-cf2x', 'verifikasi'),
(133, '23-KK/03/021', 2, 7, 2, '2023-03-21', 'Maret', 'Biaya Transport Lokal Produksi. (BBM L300 prod)', 150000, '743744730_23-KK.03.021.pdf', 'https://drive.google.com/open?id=1GA6mWYAu65IT8gAKPERsUE7NkZQcVQw_', 'verifikasi'),
(134, '23-KK/03.024', 2, 7, 2, '2023-03-21', 'Maret', 'Biaya Obat-obatan Produksi; Biaya Transport Lokal Produksi; Biaya Pemakaian Bahan Produksi; Biaya Transport Lokal Produksi. (Material prod)', 2545600, '1986445425_23-KK.03.024.pdf', 'https://drive.google.com/open?id=1wWGPFkoS35tLcDkqOpWUaKaxcbGHxgqD', 'verifikasi'),
(135, '23-KK/03.023', 2, 2, 2, '2023-03-21', 'Maret', 'Biaya Makanan & Minuman/Jamuan/Entertaint. (Bintek aplikasi keuangan)', 972700, '2017634723_23-KK.03.023.pdf', 'https://drive.google.com/open?id=1xzCN9FduoLy8u5kRe2w7CXuUbz2GaOQX', 'verifikasi'),
(136, '23-KK/03.027', 2, 2, 2, '2023-03-21', 'Maret', 'Biaya Transportasi Lokal Kantor (BBM Kendaraan Umum)', 20000, '2053969654_23-KK.03.027.pdf', 'https://drive.google.com/open?id=1l69Zk5AIwBp-me6iAHeg9-Xy_um89ufG', 'verifikasi'),
(137, '23-KK/03.022', 2, 2, 2, '2023-03-21', 'Maret', 'Biaya Pemeliharaan Gedung; Biaya Keperluan Rumah Tangga Kantir; Biaya Transportasi Lokal Kantor. (Maintenence)', 2222500, '514453348_23-KK.03.022.pdf', 'https://drive.google.com/open?id=1tr8vf4ly4lvqFkDH_wAjuiTYjGJqveum', 'verifikasi'),
(138, 'AH 00861927', 2, 2, 2, '2023-03-28', 'Maret', 'Kas Besar; PPh Pasal 23; Biaya Pemeliharaan Mesin Welding; Biaya Pemeliharaan Mesin Produksi; Biaya Pemeliharaan Mesin Produksi; Biaya Pemeliharaan Mesin Produksi; Biaya Pemeliharaan Mesin Produksi. (Bayar Tagihan)', 53090728, '404132886_AH 00861927_Div Umum - Sholikhah Rosalina.pdf', 'https://drive.google.com/open?id=1gVmtRI4TDwyt_ktxyPIwpu0X7KclbUd-', 'verifikasi'),
(139, 'AH 00861927', 2, 6, 2, '2023-03-28', 'Maret', 'Biaya Subcont kegiatan diklat. (Bayar Tagihan)', 90664660, '335031682_AH 00861927_Div Diklat - Sholikhah Rosalina.pdf', 'https://drive.google.com/open?id=1zmo-OP-ZdDxtzx9zXooakM1Vjua8kqDW', 'verifikasi'),
(140, 'CD016304', 2, 6, 2, '2023-03-28', 'Maret', 'Biaya Pegawai Instruktur Diklat. (Pengeluaran Karyawan STP)', 890000, '827402455_CD016304_Div Diklat.pdf', 'https://drive.google.com/open?id=1pAhNZGHcTHZHs-Zj0uTFT6xDsSCtuKSg', 'verifikasi'),
(141, 'CD016304', 2, 8, 2, '2023-03-28', 'Maret', 'Biaya Pegawai Inkubator. (Pengeluaran, Karyawan STP)', 1335000, '1272203113_CD016304_Div IBT.pdf', 'https://drive.google.com/open?id=1cJ1D-DEOnVd-7JYEdGCmiSgNjcuwH1Yd', 'verifikasi'),
(142, '23-KK/03.035', 2, 7, 2, '2023-03-28', 'Maret', 'Biaya Pemakaian Bahan Produksi (Handtap M4)', 1350000, '183308461_23-KK.03.035.pdf', 'https://drive.google.com/open?id=1EKJHbeVv3FUmkWrtOyw1IRJGc4fDwZGg', 'verifikasi'),
(143, 'CD016304', 2, 2, 2, '2023-03-28', 'Maret', 'Biaya Renumerasi Pejabat Pengelola Non PNS; Biaya Gaji/Honor Non Adm & Umum. (Pengeluarab, Karyawan STP)', 3726000, '2075755640_CD016304_Div Umum.pdf', 'https://drive.google.com/open?id=1ask2Wj_qTg1Xe0C967StX0D55hLHjQ1c', 'verifikasi'),
(144, '23-KK/03.033', 2, 2, 2, '2023-03-28', 'Maret', 'Biaya Transportasi Lokal Kantor; Biaya Makanan & Minuman Rapat; Biaya keperluan Rumah tangga kantor; Biaya Pemeliharaan gedung; Biaya makanan dan minuman rapat; Biaya transfer. ( BBM kendaraan umum, Konsumsi tamu, dll.)', 1968900, '1508915659_23-KK.03.033.pdf', 'https://drive.google.com/open?id=1F2CtXW0qQiC1dLEKTRekXdajjUZj0Y6g', 'verifikasi'),
(145, '23-KK/03.036', 2, 6, 2, '2023-03-29', 'Maret', 'Biaya Transport Lokal Diklat (Uang Transport)', 150000, '643056161_23-KK.03.036.pdf', 'https://drive.google.com/open?id=1Ok_HZh3IqjSDtdTJ5PzTT6qIYh2CZmzA', 'verifikasi'),
(146, 'CD016307', 2, 2, 2, '2023-03-29', 'Maret', 'Biaya Makan & Minuman Rapat. (Konsumsi rapat,dll)', 360000, '115816794_CD016307 - Sholikhah Rosalina.pdf', 'https://drive.google.com/open?id=1_rplBnwZ1AQyYq6TF4mDeSy_OpVwLFBd', 'verifikasi'),
(147, '23-KK.03.037', 2, 2, 2, '2023-03-31', 'Maret', 'Biaya Benda Pos, Materai & Paket Administrasi Umum', 400000, '755477978_23-KK.03.037.pdf', 'https://drive.google.com/open?id=18Q0Ym7kH3uAkpiNhofLi6ibvQLAx2zn3', 'verifikasi'),
(148, '23-KK.04.001 ', 2, 6, 2, '2023-04-03', 'April', 'Biaya Benda Pos, Materai & Paket diklat; Biaya ATK Diklat; Biaya Supplies Diklat (Pengeluaran, JNE SOLO)', 120000, '2076927840_23-KK.04.001.pdf', 'https://drive.google.com/open?id=1JmDient46PeAPm3pCkXFe8IRAxFxLdww', 'verifikasi'),
(149, '23-KK.04.002', 2, 7, 2, '2023-04-03', 'April', 'Biaya Pemakaian Bahan Produksi; Biaya ATK Produksi; Biaya pemakaian Bahan Produksi; Biaya Transport Lokal Produksi; Biaya Supplies Produksi; Biaya Obat-Obatan Produksi; Biaya Pemeliharaan Mesin Produksi ( Material Prod )', 1514400, '928603894_23-KK.04.002.pdf', 'https://drive.google.com/open?id=1PUKAEjbFrLbb0Mf5afhpaXM2foTrC8-E', 'verifikasi'),
(150, '23-KK.04.004', 2, 2, 2, '2023-04-03', 'April', 'Biaya Alat Tulis dan Perlengkapan Kantor; Biaya Transportasi Lokal Kantor; Biaya Promosi/ Penjualan; Biaya Pemeliharaan Inventaris Kantor; Biaya FC & brg Cetakan/ Penggandaan Adm.umum; Biaya Keperluan Rumah Tangga Kantor; Biaya Pajak Kendaraan; Biaya Peme', 1309100, '1756786611_23-KK.04.004.pdf', 'https://drive.google.com/open?id=1jBlnT64MGf0CdVJRYDkGOXoY_Z_H8j8c', 'verifikasi'),
(151, '23-KK.04.003', 2, 8, 2, '2023-04-03', 'April', 'Biaya FC dan Barang Cetakan/Penggandaan Inkubator; Biaya Transport Lokal Inkubator; Biaya ATK Inkubator (ATK IBT)', 186000, '402815060_23-KK.04.003.pdf', 'https://drive.google.com/open?id=12p39izBBATbflEjDDUai8lfqf6H-9jVo', 'verifikasi'),
(152, '23-KK.04.007', 2, 2, 2, '2023-04-03', 'April', 'Biaya Benda Pos,Materai & Paket Administrasi Umum; Biaya Makanan & minuman Rapat. (kirim dok.hibah,dll)', 403500, '1355865258_23-KK.04.007.pdf', 'https://drive.google.com/open?id=16G5jme2N6gCJ-Ou7rsQKcxnGXlJiAMWS', 'verifikasi'),
(153, '23-KK.04.005', 2, 2, 2, '2023-04-04', 'April', 'Biaya Pemeliharaan Inventaris Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Pemeliharaan Inventaris Mekanik; Biaya Keperluan Rumah Tangga Kantor; Biaya Iuran Kebersihan Kota; Biaya Transportasi Lokal Kantor(Service L300,dll)', 1247000, '1496481335_23-KK.04.005.pdf', 'https://drive.google.com/open?id=113aVJwf0NI8WJ5VK604iZpo5PkLLtUlL', 'verifikasi'),
(159, '23-KK.04.006', 2, 6, 2, '2023-04-04', 'April', 'Biaya Bahan Diklat Mekanik; Biaya Transport Lokal Diklat(WII GLOS)', 136000, '846756038_23-KK.04.006.pdf', 'https://drive.google.com/open?id=1C6MXGWC-HUBd6e_r9-M3gO241iNhtmLi', 'verifikasi'),
(161, '23-KK.04.012', 2, 6, 2, '2023-04-11', 'April', 'Biaya Transportasi Lokal kantor; Biaya Supplies Diklat; Biaya Supplies Diklat. (Power Supply,dll)', 196300, '1934197371_23-KK.04.012.pdf', 'https://drive.google.com/open?id=1slqFst0DYtvNkGpDVNadcY_rA_iv3ngX', 'verifikasi'),
(162, '23-KK.04.008', 2, 2, 2, '2023-04-11', 'April', 'Biaya transportasi Lokal kantor; Biaya Benda Pos, Materai & Paket Administrasi Umum. (BBM Kendaraan Umum, Materai)', 520000, '296068683_23-KK.04.008.pdf', 'https://drive.google.com/open?id=1TfDuSEcuHZ5mDr6pKFhBLw3f2wHJdWTw', 'verifikasi'),
(163, '23-KK.04.010', 2, 2, 2, '2023-04-11', 'April', 'Biaya FC & Brg Cetakan / Penggandaan Adm Umum; Biaya transportasi Lokal kantor; Biaya pemeliharaan Inventaris Kantor; Biaya Alat Tulis dan Perlengkapan Kantor; Biaya pemeliharaan & Reparasi inventaris; Biaya Keperluan Rumah tangga kantor. (Cek msn FC,dll.', 635500, '562358760_23-KK.04.010.pdf', 'https://drive.google.com/open?id=1AJSq2eTkcEfo6cuOhiSyu0sbXVOXMa1g', 'verifikasi'),
(164, '23-KK.04.011', 2, 7, 2, '2023-04-11', 'April', 'Biaya transportasi lokal kantor; Biaya supplies produksi; Biaya supplies produksi; Biaya obat -obatan produksi; Biaya pemakaian bahan produksi; Biaya supplies produksi; Biaya ATK Produksi; Biaya supplies produksi. (Belanja Material Produksi)', 2045100, '2004343227_23-KK.04.011.pdf', 'https://drive.google.com/open?id=1WUc0qsUo-RwN9K_DHvpDUYZRYvk2tk7s', 'verifikasi'),
(165, '23-KK.04.009 ', 2, 2, 2, '2023-04-11', 'April', 'Biaya Benda Pos, Materai & Paket Administrasi Umum; Biaya Transportasi Lokal Kantor; Biaya Makanan & Minumam Rapat; Biaya FC & Brg Cetakan/Penggandaan Adm Umum; Biaya Alat Tulis dan Perlengkapan Kantor. (Materai, dll)', 1139500, '1429120940_23-KK.04.009.pdf', 'https://drive.google.com/open?id=1B8klZdzsUpoETz-49qNiV6h21azR7ZRK', 'verifikasi'),
(166, 'AH00861929 ', 2, 2, 2, '2023-04-11', 'April', 'Biaya BPJS Kesehatan; Biaya Pemeliharaan Gedung; Biaya Pemeliharaan & Reparasi Mesin; Kas Besar.(bayar BPJS,dll)', 68381024, '606065236_AH 00861929.pdf', 'https://drive.google.com/open?id=1ISM1k-YdncEyoN8-3xlUQK6sFT3t1wUB', 'verifikasi'),
(168, '23-KK.04.013', 2, 2, 2, '2023-04-14', 'April', 'Biaya FC & Barang Cetakan/Penggandaan Adm Umum; Biaya Keperluan Rumah Tangga Kantor; Biaya Pajak Kendaraan; Biaya Transportasi Lokal Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Transportasi Lokal Kantor; Biaya Biaya Keperluan Rumah Tangga Kantor; B', 5958900, '1432435983_23-KK.04.013.pdf', 'https://drive.google.com/open?id=18jbM8cO8m_wwcdeCW0MGBSt4K48eg6p2', 'verifikasi'),
(169, '23-KK.04.014', 2, 6, 2, '2023-04-14', 'April', 'Biaya ATK Diklat; Biaya Benda Pos,Materai&Paket Diklat; Biaya Supplies diklat.(ATK diklat,dll)', 274800, '174664929_23-KK.04.014.pdf', 'https://drive.google.com/open?id=1286JQpkC69QZUqfAZCDpDpMUTGZzFKTG', 'verifikasi'),
(170, '23-KK.04.015', 2, 8, 2, '2023-04-14', 'April', 'Biaya ATK Inkubator.(MMt Unisri)', 90000, '1745061938_23-KK.04.015.pdf', 'https://drive.google.com/open?id=1c0TA7MMJQqOPPV230APxhpJJ8HqyUS3y', 'verifikasi'),
(171, '23-KK.04.016', 2, 7, 2, '2023-04-14', 'April', 'Biaya Supplies Produksi, Biaya Transport Lokal Produksi, Biaya Obat-Obatan Produksi, Biaya Supplies Produksi, Biaya Transport Lokal Produksi, Biaya Pemakaian Bahan Produksi (Kacamata, Sarung Tangan)', 2150800, '1559261277_23-KK.04.016.pdf', 'https://drive.google.com/open?id=1r1AhjGvWwcXASW-f9hpmARhw3RQzlx2q', 'verifikasi'),
(173, '23-KK.04.017', 2, 6, 2, '2023-04-17', 'April', 'Biaya Transport Lokal Diklat (Pengeluaran, Marketing)', 100000, '792756235_23-KK.04.017.pdf', 'https://drive.google.com/open?id=1NnRD3LqYjKmSmTZZkKn7Hj-8AwHakSAu', 'verifikasi'),
(174, '23-KK.04.018', 2, 2, 2, '2023-04-17', 'April', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Pemeliharaan Inventaris Kantor (10 galon air mineral,dll)', 240000, '377903212_23-KK.04.018.pdf', 'https://drive.google.com/open?id=1x-l9eRO5tr7eDSu0ArKNF4LUnSy2flf5', 'verifikasi'),
(175, '23-KK.04.016', 2, 8, 2, '2023-04-17', 'April', 'Biaya Lainya (Honor Narsum)', 3990000, '1060210147_23-KK.04.016.pdf', 'https://drive.google.com/open?id=1kRS--8EdFp62nIOxbrPhhWu5yEVgKm87', 'verifikasi'),
(176, 'AH008619931', 2, 2, 2, '2023-04-18', 'April', 'Biaya BPJS Ketenagakerjaan; Biaya Lainnya Inkubator; Biaya Renumerasi Pejabat Pengelola Non PNS; Biaya Gaji/Honor Non Adm&Umum; Biaya Pegawai Instruktur Diklat; PPh Pasal 21; Biaya Transfer; Kas Besar.(BPJS TK, PPh 21,dll)', 30428614, '1857060304_AH008619931.pdf', 'https://drive.google.com/open?id=1zCICUX2pOMRqdMvvPc5A--sIfkdyg6s8', 'verifikasi'),
(177, '23-KK.04.019', 2, 7, 2, '2023-04-18', 'April', 'Biaya Subcont kegiatan Produksi.(Operasional pot. pipa)', 2609600, '427465733_23-KK.04.019.pdf', 'https://drive.google.com/open?id=1u0i-Ni-02fO1eqlaZ8KcJPjESXUHP94Z', 'verifikasi'),
(178, '23-KK.04.020', 2, 6, 2, '2023-04-18', 'April', 'Biaya Perjalanan Dinas.(SPPD ke Yogya)', 1264000, '877058853_23-KK.04.020.pdf', 'https://drive.google.com/open?id=1jD75B4hJ2MfzaaE27UXMszmPSRz0d0rl', 'verifikasi'),
(179, '23-KK.04.021', 2, 2, 2, '2023-04-18', 'April', 'Biaya Makanan & minuman Rapat; Biaya Transportasi Lokal Kantor.(Rapat koor)', 3230000, '828876455_23-KK.04.021.pdf', 'https://drive.google.com/open?id=1fQAcHJS5g045YRvE6wKq898BDUHIIQhL', 'verifikasi'),
(180, '23-KK.04.022', 2, 7, 2, '2023-04-18', 'April', 'Biaya Transport Lokal Produksi; Biaya Supplies produksi.(Supplies Prod)', 563500, '1647782614_23-KK.04.022.pdf', 'https://drive.google.com/open?id=1s9Hwi_gDfCI1Z2b-gEZn3-a-IRzT4i7D', 'verifikasi'),
(181, '23-KK.04.023', 2, 2, 2, '2023-04-27', 'April', 'Biaya Keperluan Rumah Tangga Kantor.(Plastik,dll)', 220000, '1905476200_23-KK.04.023.pdf', 'https://drive.google.com/open?id=1w4mk-s29n7aK9X6HFGP9zjGI0G9-5wPq', 'verifikasi'),
(184, '23-KK.04.024', 2, 2, 2, '2023-04-26', 'April', 'Biaya Promosi/Penjualan; Biaya Promosi/Penjualan; Biaya Keperluan Rumah Tangga Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Transportasi Lokal Kantor; Biaya Makanan & Minuman Rapat; Biaya Gaji/Honor Non Adm&Umum; Biaya Keperluan rumah Tangga Kantor.', 3368300, '130823783_23-KK.04.024.pdf', 'https://drive.google.com/open?id=1G0wpJB1FxM8dQnboLmVCQe4I6o1QGOFr', 'verifikasi'),
(186, '23-KK.05.002', 2, 7, 2, '2023-05-02', 'Mei', 'Biaya Pemakaian Bahan Produksi; Biaya Pemakaian Bahan Produksi; Biaya Pemakaian Bahan Produksi; Biaya Transport Lokal Produksi.(Material Prod)', 1997100, '1348062009_23-KK.05.002.pdf', 'https://drive.google.com/open?id=1uxfOqI42uUb_g3atZuE0ylKVYWnRZalg', 'nonverifikasi'),
(187, '23-KK.05.001', 2, 2, 2, '2023-05-02', 'Mei', 'Biaya Pemeliharaan Inventaris Kantor; Biaya Alat Tulis dan Perlengkapan Kantor; Biaya Transportasi Lokal Kantor; Biaya Pemeliharaan Inventaris Kantor; Biaya Keperluan Rumah Tangga Kantor; Biaya Iuran Kebersihan Kota.(ATK.retribusi sampah,dll)', 1585800, '388660716_23-KK.05.001.pdf', 'https://drive.google.com/open?id=14uN3Q_dDEjatnJuCm7tsHqdmWA6OypYa', 'nonverifikasi'),
(188, 'AH00861934', 2, 2, 2, '2023-05-03', 'Mei', 'Biaya Pemakaian Bahan Produksi; Biaya BPJS Kesehatan; Biaya Pemakaian Bahan Produksi; Biaya Bahan Diklat Mekanik; Biaya Jasa Konsultan; Kas Besar.(Pengeluaran, PETROTEKNO)', 153891691, '1496175407_AH00861934.pdf', 'https://drive.google.com/open?id=1TkBBCRb_8sj2xTjRknAg2AMbKxAuPFZB', 'nonverifikasi'),
(189, '23-KK.05.004', 2, 7, 2, '2023-05-04', 'Mei', 'Biaya Pemeliharaan Mesin Produksi. (CNC coolant)', 3000000, '1447315229_23-KK.05.004.pdf', 'https://drive.google.com/open?id=1IoKNKKFms5-gnvzQRpYZ3QYINnwTez7F', 'nonverifikasi'),
(190, '23-KK.05.003', 2, 8, 2, '2023-05-04', 'Mei', 'Biaya Promosi/Penjualan. (Persiapan pameran IBT)', 556500, '1268036821_23-KK.05.003.pdf', 'https://drive.google.com/open?id=1tTEHfv5KFG8iZHol3z9a6lYxFaBH0Gvz', 'nonverifikasi'),
(191, '23-KK.05.005', 2, 2, 2, '2023-05-04', 'Mei', 'Biaya makan & minuman rapat; Biaya Pemeliharaan Inventaris Produksi; Biaya Pemeliharaan Inventaris kantor; Biaya transportasi lokal kantor; Biaya keperluan Rumah Tangga Kantor; Biaya pemeliharaan gedung. (Konsumsi Pengarahan ,dll)', 5900500, '1705821461_23-KK.05.005.pdf', 'https://drive.google.com/open?id=1aOJTDu-RUFbaKWAVwmVUVteTiQ6jytUp', 'nonverifikasi'),
(192, '23-KK.02.029', 2, 2, 2, '2023-02-20', 'Februari', 'Biaya Makanan & Minuman Rapat (Konsumsi Rapat - Div. Umum)', 323000, '604386762_23-KK.02.029.pdf', 'https://drive.google.com/open?id=1nE5s4Z7aC5hdvusJQf_-3NxzePjNAVc7', 'verifikasi'),
(193, '', 2, 2, 2, '2023-01-13', 'Januari', 'Biaya pendidikan karyawan; Biaya alat tulis dan perlengkapan kantor. (psikotest, ATK Kantor)', 1667000, '383794920_23-KK.01.005A.pdf', 'https://drive.google.com/open?id=1LGJhs-LZ_P0SkDalfzxPtZowJwX9EMru', 'verifikasi'),
(194, '23-KK.05.006', 2, 2, 2, '2023-05-05', 'Mei', 'Biaya Transportasi Lokal Kantor; Biaya FC & Barang Cetakan/Penggandaan Diklat; Biaya Pemeliharaan Inventaris Kantor; Biaya Keperluan Rumah Tangga Kantor. (Sewa mesin FC. transport)', 810000, '1483106919_23-KK.05.006.pdf', 'https://drive.google.com/open?id=1W9URcylE35rMaD9OTart5B6GcQHS7TkC', 'nonverifikasi'),
(195, '23-KK.05.007', 2, 7, 2, '2023-05-08', 'Mei', 'Biaya Obat-obatan Produksi; Biaya Transport Lokal Produksi; Biaya ATK Produksi; Biaya supplies produksi; Biaya supplies produksi; Biaya Transport Lokal Produksi; Biaya Pemakaian Bahan Produksi; Biaya Supllies produksi.(P3K Prod,dll)', 2683700, '15702072_23-KK.05.007.pdf', 'https://drive.google.com/open?id=1kL3XoyLmqXeY9HwgISzs0Mo9z-JceWj7', 'nonverifikasi'),
(196, 'Cek no. AH00861935', 2, 8, 2, '2023-05-10', 'Mei', 'Biaya Promosi/Penjualan; Biaya Iklan & Promosi Inkubator; Kas Besar.(Hosting,pemeran)', 30098775, '2052985793_Cek no. AH00861935.pdf', 'https://drive.google.com/open?id=1eC8UU_uA-BYQYFqOwUbQmWiZcJ4xQtIe', 'nonverifikasi'),
(197, '23-KK.05.011', 2, 2, 2, '2023-05-12', 'Mei', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Transportasi Lokal Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, ', 4406600, '729764124_23-KK.05.011.pdf', 'https://drive.google.com/open?id=1jPDNmQSthuxIB6EIsA0oSvRveFORlSH_', 'nonverifikasi'),
(198, '23-KK.05.012', 2, 2, 2, '2023-05-12', 'Mei', 'Biaya Pemeliharaan Inventaris Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Pemeliharaan Inventaris Kantor, Biaya Transportasi Lokal Kantor, Biaya Pemeliharaan Inventaris Kantor, Biaya Transportasi Lokal Kator (BBM msn pot rumput,dll)', 1085000, '790792529_23-KK.05.012.pdf', 'https://drive.google.com/open?id=1vfzd6Otzzq2bh4FKhZW0loNhKxhe4NuW', 'nonverifikasi'),
(199, '23-KK-05.010', 2, 8, 2, '2023-05-12', 'Mei', 'Biaya ATK Inkubator, Biaya Transport Lokal Inkubator, Biaya ATK Inkubator, Biaya ATK Inkubator, Biaya ATK Inkubator, Biaya Keperluan Rumah Tangga Kantor, Biaya ATK Inkubator (kebutuhan pameran FEKDi) ', 801200, '673514879_23-KK-05.010.pdf', 'https://drive.google.com/open?id=1ZvAEWNbS4CYnkK9KjVZcSrjmzk2Q8UAe', 'nonverifikasi'),
(200, '23-KK-05.008', 2, 6, 2, '2023-05-11', 'Mei', 'Biaya Benda Pos, Materai&Paket Diklat, Biaya Transport Lokal Diklat (kirim dokumen tagihan, uang transport) ', 224000, '1448181393_23-KK-05.008.pdf', 'https://drive.google.com/open?id=1jmslM6ObY3e00-hn03NT_3GQMeyTsKfo', 'nonverifikasi'),
(201, '23-KK/05/20', 2, 7, 2, '2023-05-16', 'Mei', 'Biaya Supplies Produksi, Biaya ATK Produksi, Biaya Supplies Produksi, Biaya Bahan Bakar, Pelumas, Bahan Kimia (Tools, dll - Div. produksi) ', 1463900, '1981687774_23-KK.05.020 - Fina Oktafiani.pdf', 'https://drive.google.com/open?id=1x9lvOKZCBvjUM-UAvSX6MW0DxAh-eTGH', 'nonverifikasi'),
(202, '23-KK.05.013', 2, 6, 2, '2023-05-12', 'Mei', 'Biaya ATK Diklat, Biaya ATK Diklat (plastik bgr, print)', 120000, '56185282_23-KK.05.013.pdf', 'https://drive.google.com/open?id=1e01fpH3kYZiV3-p-YULDpROASMEx4tIp', 'nonverifikasi'),
(203, '23-KK.05.14', 2, 8, 2, '2023-05-12', 'Mei', 'Biaya FC dan Barang Cetakan/Penggandaan Inkubator', 146000, '427469462_23-KK.05.14.pdf', 'https://drive.google.com/open?id=1EmOdFvS7_XyNAbBa-Z-Dxexk73hwiIpz', 'nonverifikasi'),
(204, '23-KK-05.009', 2, 7, 2, '2023-05-11', 'Mei', 'Biaya transport lokal produksi (solat genset- Div. Produksi', 600000, '1849449434_23-KK-05.009.pdf', 'https://drive.google.com/open?id=1mQcud5D5sbkbuzl2DiVgE8nA1VLyLcih', 'nonverifikasi'),
(205, '23-KK/05/19', 2, 2, 2, '2023-05-19', 'Mei', 'Biaya transportasi lokal kantor, biaya pemeliharaan gedung, biaya pemeliharaan gedung, biaya pemeliharaan &reparasi inventaris, biaya keperluan rumah tangga kantor. (BBM kendaraan umum, dll div. Umum) ', 986000, '384095683_23-KK-05.019 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1YgDxZZ9hhfexZ7Da38jKIcYztyhTpwdI', 'nonverifikasi'),
(206, '23-KK/05/21', 2, 6, 2, '2023-05-16', 'Mei', 'Biaya transportasi lokal diklat, biaya obat-obatan diklat, biaya supplies diklat, biaya supplies diklat, biaya supplies diklat, biaya supplies diklat, biaya supplies diklat, biaya ATK diklat. (P3K diklat, dll div. Diklat) ', 986800, '1379284904_23-KK-05.021 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1Uw0zFpaF1dSXdqvKQnYc-OarpRxOevFA', 'nonverifikasi'),
(207, '23-KK.05.015', 2, 7, 2, '2023-05-12', 'Mei', 'Biaya Supplies Produksi, Biaya Supplies Produksi, Biaya ATK Produksi, Biaya Transport Lokal Produksi, Biaya Supplies Produksi, Biaya Obat-obatan Produksi (kain aval, dll).', 1197000, '219055951_23-KK.05.015.pdf', 'https://drive.google.com/open?id=1dVz_AER6cLNULAL52fcWeZtqQM5GMKwT', 'nonverifikasi'),
(208, '23-KK.05.017', 2, 6, 2, '2023-05-16', 'Mei', 'Biaya Bahan Diklat Las dalam Air, Biaya Bahan Diklat Las dalam Air, Biaya Transport Lokal Diklat, Biaya Bahan Diklat Las dalam Air, Biaya ATK Diklat (Honor Instruktur, dll - Div Diklat) ', 1676700, '229700143_23-KK.05.017.pdf', 'https://drive.google.com/open?id=1xN2i-mf9DwxD0zYYhNuw2SNvNc6o37Yd', 'nonverifikasi'),
(209, '23-KK/05/24', 2, 7, 2, '2023-05-19', 'Mei', 'Biaya transport lokal dan produksi, biaya obat-obatan produksi, biaya transport lokal produksi, biaya ATK produksi, biaya transport lokal produksi. (BBM L300 prod. Div. Produksi) ', 407000, '532372461_23-KK-05.024 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1TgdcAM5UtDP8hOOMbphoGLiOuBTPcgij', 'nonverifikasi'),
(210, '23-KK-05.016', 2, 2, 2, '2023-05-16', 'Mei', 'Biaya keperluan rumah tangga kantor, biaya keperluan rumah tangga kantor, biaya BPJS ketenagakerjaan, biaya pemeliharaan inventaris kantor. (Pengeluaran, BPJS ketenagakerjaan, dll Div. Umum) ', 12046700, '2109350561_23-KK-05.016.pdf', 'https://drive.google.com/open?id=1xf8FzFxM3wdWlID7krrJbm4r7z3YHRss', 'nonverifikasi'),
(211, '23-KK/05/28', 2, 6, 2, '2023-05-22', 'Mei', 'Biaya ATK Diklat (sticker - Div Diklat)', 47700, '1159227371_23-KK.05.028 - Fina Oktafiani.pdf', 'https://drive.google.com/open?id=1x27a3MJeGEELZDGzxhgAAco0GIQia6OT', 'nonverifikasi'),
(212, '23-KK.05.023', 2, 2, 2, '2023-05-19', 'Mei', 'Peralatan dan Mesin (Akses Point - Div. Umum) ', 1600000, '1025093683_23-KK.05.023.pdf', 'https://drive.google.com/open?id=1RG4K685zWxWpotYhrbb31wUs-c8WZYo_', 'nonverifikasi'),
(213, '23-KK/05/25', 2, 2, 2, '2023-05-19', 'Mei', 'Biaya Alat Tulis dan Perlengkapan Kantor, Biaya Transportasi Lokal Kantor, Biaya Pemeliharaan & Reparasi Inventaris, Biaya Pemeliharaan & Reparasi Inventaris, Biaya Alat Tulis dan Perlengkapan Kantor, Biaya Alat Tulis dan Perlengkapan Kantor (ID Card, dll', 1822000, '1270090780_23-KK.05.025 - Fina Oktafiani.pdf', 'https://drive.google.com/open?id=1baOPGInnmjL5cavTXWWGQ9SFbZTuVhCK', 'nonverifikasi'),
(214, '23-KK.05.022', 2, 2, 2, '2023-05-16', 'Mei', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Pemeliharaan Inventaris Kantor (Gula, teh, dll - Div. Umum) ', 387000, '1188976631_23-KK.05.022.pdf', 'https://drive.google.com/open?id=1HovizgJv45il6OmWqXAVjYGa1H83Jz1A', 'nonverifikasi'),
(215, '23-KK/05/27', 2, 2, 2, '2023-05-22', 'Mei', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Alat Tulis dan Perlengkapan Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga', 2685500, '1062456430_23-KK.05.027 - Fina Oktafiani.pdf', 'https://drive.google.com/open?id=1Miper5fHMZntYQKR4ITCi_o3mq_ncuoQ', 'nonverifikasi'),
(216, '23-KK-05.018', 2, 6, 2, '2023-05-16', 'Mei', 'Biaya transport lokal diklat, biaya bahan diklat las dalam air, biaya bahan diklat khusus, biaya bahan diklat khusus. (Material diklat LKS div. Diklat) ', 2323000, '1952681054_23-KK-05.018.pdf', 'https://drive.google.com/open?id=1Nn9MzPWnt3UZ9XrueRO2S0DySKhXGubB', 'nonverifikasi'),
(217, '23-KK/05/26', 2, 6, 2, '2023-05-19', 'Mei', 'Biaya ATK Diklat, Biaya Supplies Diklat, Biaya Supplies Diklat, Biaya Supplies Diklat (Ganti kunci loker, dll - div. diklat)', 402600, '200116520_23-KK.05.026 - Fina Oktafiani.pdf', 'https://drive.google.com/open?id=1TaMK6dEtf0RIuvB7vIS6TWvlt7jkCmzZ', 'nonverifikasi'),
(218, '23-KK/05.029', 2, 2, 2, '2023-05-19', 'Mei', 'Biaya keperluan rumah tangga kantor, Biaya transportasi lokal kantor, Biaya keperluan rumah tangga kantor (Barang pecah belah, dll div. umum)', 2792100, '1046235809_23-KK-05.029 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1TzvxNLL4c3Bl9I7FLnEOmGBIE4OM1poP', 'nonverifikasi'),
(219, '23-KK/05.031', 2, 2, 2, '2023-05-19', 'Mei', 'Biaya Makanan dan Minuman Rapat (Konsumsi Rapat - Div.Umum)', 20000, '422575747_23-KK-05.031 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1IRNOIlNzS2p9EcowmBND9eL1CUNUpwlN', 'nonverifikasi'),
(220, '23-KK/05.030', 2, 2, 2, '2023-05-19', 'Mei', 'Biaya keperluan rumah tangga, Biaya transportasi, lokal kantor (bahan demo SSC div. umum)', 96800, '578605707_23-KK-05.030 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1Ani66I9KAOC4xe-lw3GfvLCqhAoVvFaa', 'nonverifikasi'),
(221, '23-KK/05.032', 2, 2, 2, '2023-05-24', 'Mei', 'Biaya Makanan & Minuman Rapat dan Biaya Transportasi Lokal Kantor (Konsumsi Tamu Huewei - Div. Umum)', 691700, '1809032901_23-KK-05.032 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1B8MllGvdODyiPvV6mkserPDCgubOfWaT', 'nonverifikasi'),
(222, '23-KK/05.032', 2, 2, 2, '2023-05-24', 'Mei', 'Biaya Makanan & Minuman Rapat dan Biaya Transportasi Lokal Kantor (Konsumsi Tamu Huewei - Div. Umum)', 691700, '228463842_23-KK-05.032 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1B8MllGvdODyiPvV6mkserPDCgubOfWaT', 'nonverifikasi'),
(223, '23-KK/05.033', 2, 2, 2, '2023-05-26', 'Mei', 'Biaya transportasi lokal kantor, Biaya pemeliharaan gedung, biaya alat tulis kantor dan perlengkapan kantor (BBM L300 div. umum)', 328500, '1500373513_23-KK-05.033 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1wWW_oE0KpvPZoGStQ8t6ZSV5pf8DVH6H', 'nonverifikasi'),
(224, '23-KK/05.034', 2, 2, 2, '2023-05-19', 'Mei', 'Biaya Makanan dan Minuman Rapat (Rapat Koor SSC - Div. Umum)', 195000, '2145847183_23-KK-05.034 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1tvc2_CcZw9YZGRg9Nsi1HS2x2SR-VV0g', 'nonverifikasi');
INSERT INTO `master_pengeluaran` (`Id_pengeluaran`, `Kode_pengeluaran`, `Id_sumberdana`, `Id_divisi`, `Id_jenis`, `Tanggal`, `Bulan`, `Rincian`, `Jumlah`, `Bukti_lpj`, `Drive`, `Keterangan`) VALUES
(225, '23-KK/05.037', 2, 6, 2, '2023-05-19', 'Mei', 'Biaya makanan dan minuman diklat (makan siang diklat div. diklat)', 1140000, '738055519_23-KK-05.037 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1GaZFlLFE_c87yL2_7EdWjDS-ZYHPSSRy', 'nonverifikasi'),
(226, '23-KK/05.039', 2, 6, 2, '2023-05-24', 'Mei', 'Biaya lainnya diklat', 3500000, '1818990283_23-KK-05.039 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1vJP9221u9bKoe4hyeIk296upszXoHViG', 'nonverifikasi'),
(227, '23-KK/05.040', 2, 6, 2, '2023-05-23', 'Mei', 'Biaya bahan diklat mekanik, Biaya bahan diklat las dalam air (Material  diklat div. Diklat)', 2660500, '1252097588_23-KK-05.040 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1tOU3S4MVleJPDujPsfQB8XCAHlsLnOJw', 'nonverifikasi'),
(228, '23-KK/05.035', 2, 2, 2, '2023-05-22', 'Mei', 'Biaya Perjalanan Dinas (SPPD ke JKT - Div.Umum)', 16576100, '648098824_23-KK-05.035 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1LX0hCUdQ4RX13V_desx-s9twIZT6VKlJ', 'nonverifikasi'),
(229, '23-KK/05.041', 2, 2, 2, '2023-05-23', 'Mei', 'Biaya transportasi lokal kantor, Biaya keperluan rumah tangga kantor (Pel spon div. umum) ', 595000, '81811117_23-KK-05.041 - Gamelli Alfius.pdf', 'https://drive.google.com/open?id=1tmD1yQ_QmE4fJvAXmZoDLSeH8eVgFu4p', 'nonverifikasi'),
(230, '23-KK/05.038', 2, 2, 2, '2023-05-24', 'Mei', 'Biaya Promosi/Penjualan (Hosting-Div.Umum)', 4713300, '1684398154_23-KK-05.038 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1xlNY-3JtJwC4zP9vC1Q4X04Od82GpfSJ', 'nonverifikasi'),
(231, '23-KK/05.033', 2, 2, 2, '2023-05-23', 'Mei', 'Biaya Makanan & Minuman Rapat (Pengeluaran-Div.Umum)', 312500, '661383067_23-KK-05033 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1_fZwEgBN9tm6d7cVmzKOUWbrUBV6Jrre', 'nonverifikasi'),
(232, '23-KK/05.036', 2, 2, 2, '2023-05-26', 'Mei', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Keperluan Rumah Tangga Kantor, dan Pendapatan Lain-Lain (Instruktur Senam,dll-Div.Umum)', 610000, '768290283_23-KK-05.036 (1) - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=17wdfqk803QXGAFUSpiGoKuS6Km4h1_HX', 'nonverifikasi'),
(233, '23-KK.05.045', 2, 7, 2, '2023-05-29', 'Mei', 'Biaya ATK Produksi, Biaya Supplies Produksi, Biaya SUpplies Produksi, Biaya ATK Produksi, Biaya Transport Lokal Produksi, Biaya Obat-Obatan Produksi, Biaya Pemakaian Bahan Produksi,  Biaya Pemakaian Bahan Produksi,  Biaya Pemakaian Bahan Produksi, BIaya A', 2403800, '649465012_23-KK-05.045.pdf', 'https://drive.google.com/open?id=1VpEIgWaAhEGU3B_eyOYnDhMxFzGCHhFk', 'nonverifikasi'),
(234, '23-KK/05.042', 2, 6, 2, '2023-05-29', 'Mei', 'Biaya Makanan & Minuman Diklat, Biaya Perlengkapan Diklat (seragam, dll), Biaya Bahan Diklat Mekanik, Biaya Transport Lokal Diklat (Maksi UW, dll - Div. Diklat) ', 1724000, '468412452_23-KK.05.042.pdf', 'https://drive.google.com/open?id=11EfruHzOF46BrPy0YsudK36jGmFaGP1k', 'nonverifikasi'),
(235, '23-KK.05.044', 2, 6, 2, '2023-05-29', 'Mei', 'Biaya Bahan Diklat Mekanik (Materi Diklat-Div.Diklat)', 1320000, '57691814_23-KK-05.044 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1N7LZzkX62FtSv1f3vNR-fK9H9lFeM8Tu', 'nonverifikasi'),
(236, '23-KK.05.043', 2, 6, 2, '2023-05-26', 'Mei', 'Biaya Bahan Diklat Mekanik (Material Diklat-Div.Diklat)', 1320000, '580606622_23-KK-05.043 - Febbi Nur Fadillah.pdf', 'https://drive.google.com/open?id=1SgyU21JQFnP-uNAHIhqbL2npsnpqgLOn', 'nonverifikasi'),
(237, '23-KK.05.046', 2, 2, 2, '2023-05-29', 'Mei', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Transportasi Lokal Kantor, Biaya Alat Tulis dan Perlengkapan Kantor, Biaya Transportasi Lokal Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Pemeliharaan Gedung, Biaya Alat Tulis Kantor dan Perlengkapan Kanto', 584700, '573553740_23-KK-05.046 - Atika Fina Lestari.pdf', 'https://drive.google.com/open?id=1N_FdKgB6rPcATWUSu6YXefrzN81-PR3i', 'nonverifikasi'),
(238, '23-KK.05.046', 2, 2, 2, '2023-05-29', 'Mei', 'Biaya Keperluan Rumah Tangga Kantor, Biaya Transportasi Lokal Kantor, Biaya Alat Tulis dan Perlengkapan Kantor, Biaya Transportasi Lokal Kantor, Biaya Keperluan Rumah Tangga Kantor, Biaya Pemeliharaan Gedung, Biaya Alat Tulis Kantor dan Perlengkapan Kanto', 584700, '221571481_23-KK-05.046 - Atika Fina Lestari.pdf', 'https://drive.google.com/open?id=1N_FdKgB6rPcATWUSu6YXefrzN81-PR3i', 'nonverifikasi'),
(241, '23-KK/05.047', 2, 2, 2, '2023-05-29', 'Mei', 'Biaya Pemeliharaan Gedung (Repair ctv gd STC-Div Umum)', 5550000, '1280305147_23-KK-05.047 - Atika Fina Lestari.pdf', 'https://drive.google.com/open?id=1aaOxK1AzzdhvHba6dZ_xOm4XX1vZv4Yn', 'nonverifikasi');

-- --------------------------------------------------------

--
-- Table structure for table `master_sumberdana`
--

CREATE TABLE `master_sumberdana` (
  `Id_sumberdana` int(11) NOT NULL,
  `Jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_sumberdana`
--

INSERT INTO `master_sumberdana` (`Id_sumberdana`, `Jenis`) VALUES
(1, 'APBD'),
(2, 'BLUD');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `Id_user` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`Id_user`, `Nama`, `Alamat`, `Username`, `Password`, `Level`) VALUES
(1, 'Administrator', 'solo', 'admin', '416ed25d7fbb442d47418920e8c1a4bb', 'Administrator'),
(2, 'Wahyu', 'jateng', 'manager', '9e7deed91630d79ca831f2750da82cae', 'Manager'),
(7, 'Agus', 'Solo', 'KSTagus', 'f91816906019f202a37a23caefa71cce', 'keuangan'),
(8, 'Dyka', 'Solo', 'KSTdika', 'b889c087d7308f03a65df0d0bb11f04a', 'keuangan'),
(9, 'Ana', 'Solo', 'KSTana', '2b7bfc87ca82612a052faaaa9cd7443b', 'keuangan'),
(10, 'Keuangan', 'STP', 'Adkeu', 'f0b2ef61336d77465d1cf2c576087be0', 'Verifikator'),
(11, 'Kesekretariatan', 'Solo', 'kesekretariatan', '2b933cb9666f1e4f1f7a735577e6cc7e', 'Kesekretariatan'),
(12, 'Pengelolaan Kawasan', 'STP keuangan', 'Barang', '28ac6fc8d61a7c4e45051c063c6038af', 'Barang'),
(13, 'HRD', 'Solo technopark', 'STPhrd', '01aa0207377173ef426f88701cc8d58a', 'Hrd');

-- --------------------------------------------------------

--
-- Table structure for table `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `Id_metode` int(11) NOT NULL,
  `Jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metode_bayar`
--

INSERT INTO `metode_bayar` (`Id_metode`, `Jenis`) VALUES
(1, 'Cash'),
(2, 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE `mytable` (
  `Id_Suratmasuk` varchar(30) NOT NULL,
  `No_Suratmasuk` varchar(13) NOT NULL,
  `Nomor_surat` varchar(41) DEFAULT NULL,
  `Tanggal` varchar(10) DEFAULT NULL,
  `Perihal` varchar(147) NOT NULL,
  `Terima_dari` varchar(103) NOT NULL,
  `Isi` varchar(239) NOT NULL,
  `Tanggal_diteruskan` varchar(10) DEFAULT NULL,
  `Catatan` varchar(96) DEFAULT NULL,
  `Kategori` varchar(15) DEFAULT NULL,
  `Tgl_pelaksanaan` varchar(101) DEFAULT NULL,
  `Waktu_pelaksanaan` varchar(71) DEFAULT NULL,
  `Tempat_pelaksanaan` varchar(93) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peraturan`
--

CREATE TABLE `peraturan` (
  `Id_peraturan` int(11) NOT NULL,
  `Jenis_peraturan` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Tahun` int(11) NOT NULL,
  `Drive` varchar(255) NOT NULL,
  `Bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_cuti`
--

CREATE TABLE `riwayat_cuti` (
  `Id_riwayatcuti` int(11) NOT NULL,
  `Id_cuti` int(11) NOT NULL,
  `tgl_SK` date NOT NULL,
  `Keperluan` varchar(255) NOT NULL,
  `mulai_cuti` date NOT NULL,
  `selesai_cuti` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_hukuman`
--

CREATE TABLE `riwayat_hukuman` (
  `Id_hukuman` int(11) NOT NULL,
  `Pelanggaran` varchar(255) NOT NULL,
  `Hukuman` varchar(255) NOT NULL,
  `Tingkat_hukuman` varchar(255) NOT NULL,
  `Tgl_sk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_jabatan`
--

CREATE TABLE `riwayat_jabatan` (
  `Id_riwayat_jabatan` int(11) NOT NULL,
  `TMT` varchar(255) NOT NULL,
  `Jabatan` varchar(255) NOT NULL,
  `Unit_kerja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_keluarga`
--

CREATE TABLE `riwayat_keluarga` (
  `Id_keluarga` int(11) NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `tempatlahir_ayah` varchar(255) NOT NULL,
  `tgllahir_ayah` date NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `tempatlahir_ibu` varchar(255) NOT NULL,
  `tgllahir_ibu` date NOT NULL,
  `nama_pasangan` varchar(255) NOT NULL,
  `tempatlahir_pasangan` varchar(255) NOT NULL,
  `tgllahir_pasangan` date NOT NULL,
  `nama_ayahmertua` varchar(255) NOT NULL,
  `tempatlahir_ayahmertua` varchar(255) NOT NULL,
  `tgllahir_ayahmertua` date NOT NULL,
  `nama_ibumertua` varchar(255) NOT NULL,
  `tempatlahir_ibumertua` varchar(255) NOT NULL,
  `tgllahir_ibumertua` date NOT NULL,
  `nama_anak1` varchar(255) NOT NULL,
  `tempatlahir_anak1` varchar(255) NOT NULL,
  `tgllahir_anak1` date NOT NULL,
  `nama_anak2` varchar(255) NOT NULL,
  `tempatlahir_anak2` varchar(255) NOT NULL,
  `tgllahir_anak2` date NOT NULL,
  `nama_anak3` varchar(255) NOT NULL,
  `tempatlahir_anak3` varchar(255) NOT NULL,
  `tgllahir_anak3` date NOT NULL,
  `nama_anak4` varchar(255) NOT NULL,
  `tempatlahir_anak4` varchar(255) NOT NULL,
  `tgllahir_anak4` date NOT NULL,
  `nama_anak5` varchar(255) NOT NULL,
  `tempatlahir_anak5` varchar(255) NOT NULL,
  `tgllahir_anak5` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pelatihan`
--

CREATE TABLE `riwayat_pelatihan` (
  `Id_pelatihan` int(11) NOT NULL,
  `Nama_diklat` varchar(255) NOT NULL,
  `Tipe_diklat` varchar(255) NOT NULL,
  `Penyelenggara` varchar(255) NOT NULL,
  `Tgl_lulus` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pendidikan`
--

CREATE TABLE `riwayat_pendidikan` (
  `Id_pendidikan` int(11) NOT NULL,
  `Tingkat` varchar(255) DEFAULT NULL,
  `Jurusan` varchar(255) DEFAULT NULL,
  `Nama_instansi` varchar(255) DEFAULT NULL,
  `Gelar` varchar(255) DEFAULT NULL,
  `Tahun_lulus` year(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `Id_Suratkeluar` int(11) NOT NULL,
  `Nomor_Suratkeluar` varchar(255) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Perihal` varchar(255) DEFAULT NULL,
  `Kepada` varchar(255) DEFAULT NULL,
  `Catatan` varchar(255) DEFAULT NULL,
  `Kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`Id_Suratkeluar`, `Nomor_Suratkeluar`, `Tanggal`, `Perihal`, `Kepada`, `Catatan`, `Kategori`) VALUES
(1, '420/7/001/I/2021', '2021-01-04', 'Specimen Tanda Tangan', 'Bank Jateng Surakarta', NULL, 'Pemberitahuan'),
(2, '005/7/001/I/2021', '2021-01-21', 'Undangan', NULL, NULL, 'UNDANGAN'),
(3, '005/7/002/2021', '2021-01-21', 'Undangan', NULL, NULL, 'UNDANGAN'),
(4, '005/MP/I/I/2021', '2021-01-20', 'Undangan', NULL, NULL, 'UNDANGAN'),
(5, '420/7/002/I/2021', '2021-01-07', 'Permohonan Kunjungan', 'SMK YP COLOMADU', NULL, 'Permohonan'),
(6, '420/7/003/I/2021', '2021-01-21', 'Permohonan Pelanggan', 'Kepala Bagian Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(7, '420/7/004/I/2021', '2021-01-21', 'Persiapan Paket Pengadaan PD Untuk Bagian Layanan Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, NULL, 'BERITA ACARA'),
(8, '420/7/005/I/2021', '2021-01-21', 'Penetapan Rencana Pelaksanaan Pengadaan (RPP)', NULL, NULL, 'Permohonan'),
(9, '420/7/006/I/2021', '2021-01-21', 'Rencana Umum Pengadaan RUP Program Penunjang Urusan Pemerintah Daerah', NULL, NULL, 'BERITA ACARA'),
(10, '420/7/008/I/2021', '2021-01-12', 'Konfirmasi Praktek Kerja Lapangan', 'Ketua Program Studi Teknik Mesin Universitas Negeri Semarang', NULL, 'JAWABAN'),
(11, '420/7/009/I/2021', '2021-01-14', 'Pernyataan tidak akan nenuntut', 'Bpk./Ibu Pimpinan PT. Promanufacture Indonesia', NULL, 'PERNYATAAN'),
(12, '420/7/010/I/2021', '2021-01-14', 'Surat Keterangan Lulus Divisi Diklat Manufaktur', NULL, NULL, 'SURAT KETERANGAN'),
(13, '005/7/001/I/2021', '2021-01-01', 'Undangan Rapat Pembahasan Draft SK Walikota Remunerasi UPT Solo Technopark', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(14, '005/7/002/I/2021', '2021-01-01', 'Undangan Rapat Memory Jabatan', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(15, '005/MP/1/I/20', '2021-01-20', 'Undangan Rapat Pembahasan DPA 2021', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(16, '420/7/002/I/2021', '2021-01-07', 'Permohonan Kunjungan', 'SMK YP COLOMADU', NULL, 'Permohonan'),
(17, '420/7/003/I/2021', '2021-01-01', 'Permohonan Pelelangan', 'Kepala Bagian Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(18, '420/7/004/I/2021', '2021-01-07', 'Penyampaian Hasil Cetak Sistem Informasi Rencana Umum Pengadaan SIRUP', NULL, NULL, 'BERITA ACARA'),
(19, '420/7/005/I/2021', '2021-01-07', 'Penetapan Rencana Pelaksanaan Pengadaan (RPP) Pekerjaan Pengadaan Instalasi Tegangan Menengah Pelanggan', NULL, NULL, 'BERITA ACARA'),
(20, '420/7/006/I/2021', '2021-01-01', 'Rencana Umum Pengadaan RUP Program Penunjang Urusan Pemerintah Daerah', NULL, NULL, 'BERITA ACARA'),
(21, '420/7/007/I/2021', '2020-12-31', 'Permohonan Pengesahan Laporan Pendapatan dan Realisasi Biaya BLUD UPT Solo Technopark', 'Kepala BPPKAD Selaku PPKD di Surakarta', NULL, 'Permohonan'),
(22, '420/7/008/I/2021', '2021-01-12', 'Konfirmasi Praktek Kerja Lapangan', 'Ketua Program Studi Teknik Mesin Universitas Negeri Semarang', NULL, 'JAWABAN'),
(23, '420/7/009/I/2021', '2021-01-14', 'Pernyataan tidak akan nenuntut', 'Pimpinan PT Promanufacture Indonesia', NULL, 'PERNYATAAN'),
(24, '420/7/010/I/2021', '2021-01-14', 'Surat Keterangan', 'Teguh Sarwono', NULL, 'KETERANGAN'),
(25, '420/7/011/I/2021', '2021-01-15', 'Konfirmasi Kerja Praktek', 'Ketua Program Studi Mekatronika, Fakultas Vokasi Universitas Sanata Darma', NULL, 'JAWABAN'),
(26, '420/7/012/I/2021', '2021-01-01', 'Surat Pengantar', 'Kepala BPPKAD Kota Surakarta cq. Bidang Aset', NULL, 'Pengantar'),
(27, '420/7/013/I/2021', '2021-01-20', 'Konfirmasi Permohonan Penelitian Tugas Akhir/Skripsi', 'Ketua Program Studi Teknik Metalurgi Universitas Sultan Ageng Tirtayasa', NULL, 'JAWABAN'),
(28, '420/7/014/I/2021', '2021-01-25', 'Permohonan Asman SK Walikota tentang Remunerasi Pejabat Pengelola dan Pegawai Non PNS BLUD Solo Technopark pada Bapppeda Kota Surakarta', 'Kepala Bapppeda Kota Surakarta', NULL, 'Permohonan'),
(29, '420/7/001/II/2021', '2021-02-04', 'Data Keselamatan Kerja Tahun 2020 di UPT Solo Technopark', 'Sekretaris Daerah Pemkot Surakarta Cq. Kepala Bagian Administrasi Pembangunan', NULL, 'Pemberitahuan'),
(30, '420/7/002/II/2021', '2021-02-16', 'Juri Lomba Kreativitas dan Inovasi (Krenova) Kota Surakarta Tahun 2021', 'Kepala Bapppeda Kota Surakarta', NULL, 'KESANGGUPAN'),
(31, '420/7/002/II/2021', '2021-02-11', 'Surat Keterangan', 'Fachrino 08estio', NULL, 'KETERANGAN'),
(32, '420/7/003/II/2021', '2021-02-18', 'Permohonan Tempat Magang', 'HRD PT.Bartech Barokah Teknik', NULL, 'Permohonan'),
(33, '420/7/004/II/2021', '2021-02-01', 'Surat Pengantar', 'Kepala BPPKAD Kota Surakarta Cq. Bidang Anggaran', NULL, 'Pengantar'),
(34, '420/7/005/II/2021', '2021-02-22', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Ketua Bid.Akademik Sekolah Tinggi Teknologi Warga Surakarta', NULL, 'JAWABAN'),
(35, '420/7/006/II/2021', '2021-02-24', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Ketua Bid.Akademik Sekolah Tinggi Teknologi Warga Surakarta', NULL, 'JAWABAN'),
(36, '420/7/007/II/2021', '2021-02-26', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Ketua Bid.Akademik Sekolah Tinggi Teknologi Warga Surakarta', NULL, 'JAWABAN'),
(37, '058/07/001/2021', '2021-02-09', 'Surat Keterangan', NULL, NULL, 'SURAT KETERANGAN'),
(38, '420/7/008/II/2020', '2021-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMK Murni Solo', 'Rani', 'Pemberitahuan'),
(39, '420/7/009/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMK Kristen 1 Klaten', 'Rani', 'Pemberitahuan'),
(40, '420/7/010/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMK Kasatriyan', 'Rani', 'Pemberitahuan'),
(41, '420/7/011/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMK Penerbangan', 'Rani', 'Pemberitahuan'),
(42, '420/7/012/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMK Bina Patria 1 Sukoharjo', 'Rani', 'Pemberitahuan'),
(43, '420/7/013/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMKN 1 Sambirejo', 'Rani', 'Pemberitahuan'),
(44, '420/7/014/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMKN Ngargoyoso', 'Rani', 'Pemberitahuan'),
(45, '420/7/015/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMK PGRI 1 Surakarta', 'Rani', 'Pemberitahuan'),
(46, '420/7/016/II/2020', '2020-02-12', 'Sosialisasi Program Penyaluran Kerja', 'Kepala SMKN 5 Sukoharjo', 'Rani', 'Pemberitahuan'),
(47, '005/MP/3/II/20', '2020-02-12', 'Undangan', 'Pengelola STP', 'Ani', 'UNDANGAN'),
(48, '420/7/017/II/2020', '2020-02-13', 'Rasionalisasi Anggaran Belanja Pegawai Solo Technopark TA 2020', 'Kepala Bapppeda Kota Surakarta', 'Agus', 'Nota Dinas'),
(49, '005/MP/4/II/20', '2020-02-17', 'Undangan', 'Pengelola STP', 'Ani', 'UNDANGAN'),
(50, '420/7/017/II/2020', '2020-02-18', 'Surat Keterangan', 'Yohanes Merdiyanto', 'Rani', 'KETERANGAN'),
(51, '420/7/018/II/2020', '2020-02-18', 'Surat Keterangan', 'Larasati Tasya Ningrum', 'Rani', 'KETERANGAN'),
(52, '420/7/018/II/2020', '2020-02-18', 'Surat Pernyataan', NULL, 'Agus', 'PERNYATAAN'),
(53, '420/7/019/II/2020', '2020-02-18', 'Surat Keterangan', 'Muhammad Nur Akbar', 'Rani', 'KETERANGAN'),
(54, '420/7/020/II/2020', '2020-02-18', 'Surat Keterangan', 'Regita Vilanny Putri Nurwardana', 'Rani', 'KETERANGAN'),
(55, '420/7/021/II/2020', '2020-02-18', 'Surat Pernyataan', NULL, 'Agus', 'PERNYATAAN'),
(56, '420/7/022/II/2020', '2020-02-21', 'Surat Pengantar Dokumen', 'BPJS Ketenagakerjaan', 'Ani', 'Pengantar'),
(57, '420/7/025/II/2020', '2020-02-28', 'Informasi Diklat di Solo Technopark', 'Lurah se-Surakarta', 'Rani', 'Pemberitahuan'),
(58, '420/7/026/II/2020', '2020-02-28', 'Permohonan Pembahasan Pembaruan Nota Kesepahaman dan Perjanjian Kerjasama', 'Kabag. Kerjasama', 'Ani', 'Permohonan'),
(59, '005/7/01/III/2021', '2021-03-01', 'Undangan', 'CFS Manager PT. Paito Operation & Maintanance Indonesia', NULL, 'UNDANGAN'),
(60, '005/7/002/III/2021', '2021-03-09', 'Undangan Sosialisasi', 'Owner', NULL, 'UNDANGAN'),
(61, '420/7/001/III/2021', '2021-03-01', 'Surat Pengantar', 'Kepala BPPKAD Kota Surakarta Cq. Bidang Anggaran', NULL, 'SURAT PENGANTAR'),
(62, '420/7/002/III/2021', '2021-03-02', 'Surat Pengantar', 'Kepala Bapppeda Kota Surakarta', NULL, 'SURAT PENGANTAR'),
(63, '420/7/003/III/2021', '2021-03-02', 'Rekonsiliasi Bank Dana BLUD', 'Tim Pemeriksa BPK Perwakilan Provinsi Jawa Tengah', NULL, 'Pemberitahuan'),
(64, '420/7/004/III/2021', '2021-03-09', 'Permohonan User ID', 'Kepala Bagian Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(65, '420/7/005/III/2021', '2021-03-10', 'Surat Pernyataan', NULL, NULL, 'SURAT PERNYATAAN'),
(66, '420/7/006/III/2021', '2021-03-01', 'Surat Kuasa', 'Driver UPT Solo Technopark', NULL, 'SURAT KUASA'),
(67, '420/7/008/III/2021', '2021-03-26', 'Proposal Peningkatan Kualitas Sumber Daya Manusia Industri Program 3 in 1 di Bidang Teknologi Otomasi, Design Manufaktur dan Mekanink Manufaktur Tahun 2021', 'Kepala Pusdiklat Industri Kementrian Perindustrian Jl. Widya Chandra VIII/No.34 Jakarta Selatan', NULL, 'PROPOSAL'),
(68, '420/7/001/IV/2021', '2021-04-01', 'Konfirmasi Permohonan Magang Indutri', 'Kepala Program Studi PTM Universitas Sebelas Maret Surakarta', NULL, 'JAWABAN'),
(69, '420/7/002/IV/2021', '2021-04-09', 'Konfirmasi Permohonan Prakerin', 'Kepala Sekolah SMK Kristen Pedan Klaten', NULL, 'JAWABAN'),
(70, '420/7/003/IV/2021', '2021-04-09', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Kepala Sekolah SMK Tunas Harapan Pati', NULL, 'JAWABAN'),
(71, '420/7/004/IV/2021', '2021-04-12', 'Permohonan Asman', 'Kepala Dinas Pekerjaan Umum Kota Surakarta', NULL, 'Permohonan'),
(72, '420/7/005/IV/2021', '2021-04-13', 'Tes Kesehatan', 'Direktur Budi Sehat Sentra Diagnostika', NULL, 'Permohonan'),
(73, '420/7/006/IV/2021', '2021-04-14', 'Draft Perpanjangan Kerjasama Tentang Hilirisasi', 'Ketua LPPM Politeknik ATMI Surakarta', NULL, 'Permohonan'),
(74, '420/7/007/IV/2021', '2021-04-14', 'Draft Perpanjangan Kerjasama Tentang Hilirisasi', 'Ketua LPPM Universitas Sebelas Maret', NULL, 'Permohonan'),
(75, '420/7/008/IV/2021', '2021-04-14', 'Draft Perpanjangan Kerjasama Tentang Hilirisasi', 'Ketua LPPM Universitas Muhammadiyah Surakarta', NULL, 'Permohonan'),
(76, '420/7/009/IV/2021', '2021-04-14', 'Draft Perpanjangan Kerjasama Tentang Hilirisasi', 'Ketua LPPM Universitas Slamet Riyadi', NULL, 'Permohonan'),
(77, '420/7/010/IV/2021', '2021-04-15', 'Jawaban Surat Kunjungan', 'Ketua YKBN', NULL, 'JAWABAN'),
(78, '420/7/011/IV/2021', '2021-04-21', 'Penawaran Produk Wastafel Portabel Injak', 'Direktur RS', NULL, 'Penawaran'),
(79, '420/7/012/IV/2021', '2021-04-15', 'Konfirmasi Permohonan Praktek Kerja Industri', 'SMK Muhammadiyah 2 Jatinom', NULL, 'JAWABAN'),
(80, '420/7/013/IV/2021', '2021-04-15', 'Konfirmasi Permohonan Praktek Kerja Industri', 'SMK Negeri 1 Sawit', NULL, 'JAWABAN'),
(81, '420/7/013/IV/2021', '2021-04-29', 'Permohonan Fasilitasi Applied', 'PolTek ATMI', NULL, 'Permohonan'),
(82, '420/7/014/IV/2021', '2021-04-29', 'Permohonan Fasilitasi Applied', 'Direktur ICON', NULL, 'Permohonan'),
(83, '420/7/014/IV/2021', '2021-04-29', 'Permohonan Fasilitasi Applied', 'Direktur ICON', NULL, 'Permohonan'),
(84, '005/MP/2/IV/21', '2021-04-05', 'Undangan', '1. Christian Ardinto\r\n 2. Untung P\r\n 3. Susilowati', NULL, 'UNDANGAN'),
(85, '420/7/001/V/2021', '2021-05-06', 'Penutupan Situs/Sistem Informasi Solo Technopark', 'Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Surakarta', NULL, 'Pemberitahuan'),
(86, '420/7/002/V/2021', '2021-05-06', 'Draft Perpanjangan Kerjasama Tentang Pelatihan Pengelasan Di Dalam Air/Underwater Wet Welding', 'Direktur Inlastek Welding Institute', NULL, 'Permohonan'),
(87, '420/7/003/V/2021', '2021-05-09', 'Permohonan Fasilitasi Pengembangan Kelembagaan', 'Plt. Direktur Sistem Inovasi', NULL, 'Permohonan'),
(88, '420/7/004/V/2021', '2021-05-09', 'Permohonan Fasilitasi Implementasi Inovasi', 'Plt. Direktur Sistem Inovasi', NULL, 'Permohonan'),
(89, '420/7/005/V/2021', '2021-05-21', 'Permohonan Pelelangan', 'Kepala Bagian Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(90, '420/7/006/V/2021', '2021-05-11', 'Surat Pengumuman Penerimaan Siswa Diklat Solo Technopark Program APBD 2021', NULL, NULL, 'JAWABAN'),
(91, '420/7/006/V/2021', '2021-05-21', 'Persiapan Paket Pengadaan PD Untuk Bagian Layanan Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, NULL, 'BERITA ACARA'),
(92, '420/7/007/V/2021', '2021-05-21', 'Rencana Umum Pengadaan RUP Program Penunjang Urusan Pemerintah Daerah', NULL, NULL, 'DOKUMEN'),
(93, '420/7/008/V/2021', '2021-05-21', 'Penetapan Rencana Pelaksanaan Pengadaan (RPP)', NULL, NULL, 'DOKUMEN'),
(94, '420/7/009/V/2021', '2021-05-20', 'Usulan RKBMD dan RKPBMD', 'Sekretaris Daerah Pemkot Surakarta Cq. Kepala Badan Pendapatan Pengelolaan Keuangan dan Aset', NULL, 'USULAN'),
(95, '420/7/010/V/2021', '2021-05-25', 'Surat Balasan Peminjaman Tempat Musrenbang RPJMD', 'Kepala Bapppeda Kota Surakarta', NULL, 'JAWABAN'),
(96, '420/7/011/V/2021', '2021-05-25', 'Tes Kesehatan', 'Direktur Budi Sehat Sentra Diagnostika', NULL, 'Permohonan'),
(97, '420/7/012/V/2021', '2021-05-25', 'Pengumuman Pelaksanaan Tes Keseharan', 'Siswa Diklat Manufaktur Solo Technopark A-64 Program APBD 2021', NULL, 'Pengumuman'),
(98, '420/7/001/VI/2021', '2021-06-08', 'Konfirmasi Permohonan Izin Penelititan', 'Dekan Universitas Duta Bangsa Surakarta', NULL, 'JAWABAN'),
(99, '005/7/001/VI/2021', '2021-06-02', 'Undangan', 'Kabid. Litbang BAPPPEDA Kota Surakarta', NULL, 'UNDANGAN'),
(100, '420/7/002/VI/2021', '2021-06-08', 'Konfirmasi Permohonan Magang Industri', 'Direktur Politeknik Pertanian Negeri Samarinda', NULL, 'JAWABAN'),
(101, '420/7/003/VI/2021', '2021-06-08', 'Konfirmasi Permohonan Praktek Kerja Industri', 'SMK Negeri 5 Surakarta', NULL, 'JAWABAN'),
(102, '420/7/004/VI/2021', '2021-06-11', 'Permohonan Media Partner Program Pengembangan Kapasitas Daya Saing Kepemudaan', 'Kepala Operasional Solocon Valley', NULL, 'Permohonan'),
(103, '420/7/005/VI/2021', '2021-06-14', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Pembimbing Penelitian Tugas Akhir Universitas Sebelas Maret Fakultas Teknik Prodi Teknik Mesin', NULL, 'JAWABAN'),
(104, '420/7/006/VI/2021', '2021-06-11', 'Permohonan Fasilitas Inkubasi Wirausaha Tahun 2021 Kementrian Koperasi dan UKM', 'Menteri Koperasi dan UKM Cq. Deputi Bidang Kewirausahaan', NULL, 'Permohonan'),
(105, '420/7/008/VI/2021', '2021-06-18', 'Surat Edaran Mengenai Ketertiban dan Kebersihan', 'Seluruh Pedagan Kaki Lima Sekitar Solo Technopark', NULL, 'EDARAN'),
(106, '420/7/009/VI/2021', '2021-06-21', 'Permohonan Pelelangan', 'Kepala Bagian Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(107, '420/7/010/VI/2021', '2021-06-21', 'Berita Acara Persiapan Paket Pengadaan PD untuk Bagian Layanan Pengadaan Barang dan Jasa Pemerintah Kota Surakarta', NULL, NULL, 'BERITA ACARA'),
(108, '420/7/011/VI/2021', NULL, 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', NULL, NULL, 'Pemberitahuan'),
(109, '420/7/011/VI/2021', '2021-06-21', 'Penetapan Rencana Pelaksanaan Pengadaan', NULL, NULL, 'Pemberitahuan'),
(110, '005/7/001/VI/2021', '2021-06-02', 'Agenda Pembahasan Kerjasama', 'Kepala Divisi Kebihakan Publik dan Hubungan Pemerintah Daerah PT Tokopedia', NULL, 'JAWABAN'),
(111, '005/7/002/VI/2021', '2021-06-14', 'Undangan', 'Kabid. Litbang BAPPPEDA Kota Surakarta', NULL, 'UNDANGAN'),
(112, '420/7/013/VI/2021', '2021-06-22', 'Surat Pernyataan Bersedia Menerima Bantuan Pemerintah dari Badan Riset dan Inovasi Nasional', NULL, NULL, 'SURAT PERNYATAAN'),
(113, '420/7/014/VI/2021', '2021-06-01', 'Permohonan Pembuatan Flog Greeting Program Pengembangan Kapasitas Daya Saing Kepemudaan', 'Walikota Surakarta Gibran Rakabuming Raka', NULL, 'Permohonan'),
(114, '420/7/014/VI/2021', '2021-06-01', 'Permohonan Pembuatan Flog Greeting Program Pengembangan Kapasitas Daya Saing Kepemudaan', 'Kepala Bapppeda Kota Surakarta', NULL, 'Nota Dinas'),
(115, '420/7/015/VI/2021', '2021-06-28', 'Surat Pernyataan Kesediaan Menerima Barang/Jasa Tahun Anggaran 2021', NULL, NULL, 'SURAT PERNYATAAN'),
(116, '420/7/015/VI/2021', '2021-06-28', 'Sosialisasi Program Pengembangan Kapasitas Daya Saing Kepemudaan', NULL, NULL, 'Pemberitahuan'),
(117, '420/7/016/VI/2021', '2021-06-28', 'Jadwal Shift Security', 'Pimpinan Investama Komando Security', NULL, 'Pemberitahuan'),
(118, '420/7/017/VI/2021', '2021-06-28', 'Telaah dari Surat Permohonan Fasilitasi an. Ivan Bernard Herando Oentoro', 'Kepala Bapppeda Kota Surakarta', NULL, 'JAWABAN'),
(119, '420/7/018/VI/2021', '2021-06-14', 'Konfirmasi Permohonan Praktek Kerja Industri', 'SMK Negeri 5 Surakarta', NULL, 'JAWABAN'),
(120, '420/7/020/VI/2021', '2021-06-30', 'Permohonan Pengesahan Laporan Pendapatan dan Realisasi Biaya BLUD UPT Solo Technopark', 'Kepala BPPKAD Selaku PPKD di Surakarta', NULL, 'Permohonan'),
(121, '420/7/001/VII/2021', '2021-07-01', 'Permohonan Kesediaan Terlibat Dalam Pembuatan Vlog Greeting Program Pra Inkubasi Solocorn dan SMESKA', 'Kepala Bapppeda Kota Surakarta', NULL, 'Nota Dinas'),
(122, '420/7/002/VII/2021', '2021-07-12', 'Surat Balasan Ijin Penggunaan Gedung STP', 'Komandan Kodim 0735/Surakarta', NULL, 'JAWABAN'),
(123, '420/7/003/VII/2021', '2021-07-13', 'Permohonan Narasumber Program Pengembangan Kapasitas Daya Saing Kepemudaan', 'Kepala Bank Jateng Cabang Koordinator Surakarta', NULL, 'Permohonan'),
(124, '420/7/004/VII/2021', '2021-07-14', 'Surat Pengantar', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang Kota Surakarta', NULL, 'SURAT PENGANTAR'),
(125, '420/7/005/VII/2021', '2021-07-14', 'Rescedule Pelaksanaan Applied', 'PolTek ATMI\r\n Up. Bp. Iskandar', NULL, 'Pemberitahuan'),
(126, '881/07/006//2021', '2021-07-26', 'Surat Keterangan', NULL, NULL, 'SURAT KETERANGAN'),
(127, '420/7/009/VII/2021', '2021-07-23', 'Permohonan Pembayaran Tahap Pertama', 'Pejabat Pembuat Komitmen\r\n Deputi Bidang Kewirausahaan\r\n Kementerian Koperasi dan UKM', NULL, 'Permohonan'),
(128, '420/7/010/VII/2021', '2021-03-09', 'Kesediaan Mengikuti Fasilitasi Inkubasi Wirausaha Tahun 2021\r\n Kementrian Koperasi dan UKM', 'Menteri Koperasi dan UKM Cq. Deputi Bidang Kewirausahaan', NULL, 'JAWABAN'),
(129, '420/7/011/VII/2021', '2021-06-11', 'Permohonan Fasilitasi Inkubasi Wirausaha Tahun 2021 Kementrian Koperasi dan UKM', 'Menteri Koperasi dan UKM Cq. Deputi Bidang Kewirausahaan', NULL, 'Permohonan'),
(130, '420/7/013/VII/2021', '2021-07-22', 'Berita Acara Serah Terima\r\n Pekerjaan : Fasilitasi Inkubasi Wirausaha', NULL, NULL, 'BERITA ACARA'),
(131, '420/7/013/VII/2021', '2021-07-26', 'Permohonan Pencairan Pendanaan Fasilitasi Pengembangan Kelembagaan KST', 'Plt. Direktur Sistem Inovasi Gedung II BPPT Lt. 22', NULL, 'Permohonan'),
(132, '420/7/021/VII/2021', '2021-07-28', 'Reshcedule ke 3 Pelaksanaan Applied', 'PolTek ATMI\r\n Up. Bp. Iskandar', NULL, 'Pemberitahuan'),
(133, '420/7/001/VIII/2021', '2021-08-02', 'Konfirmasi Permohonan Magang Industri', 'Direktur Politeknik Negeri Cilacap', NULL, 'JAWABAN'),
(134, '420/7/002/VIII/2021', '2021-08-16', 'Undangan Workshop Fasilitasi Inkubasi Wirausaha 2021', 'Peserta Undangan Workshop Fasilitasi Inkubasi Wirausaha 2021', NULL, 'UNDANGAN'),
(135, '420/7/003/VIII/2021', '2021-08-03', 'Permohonan Psikotes', 'LPT Cindo', NULL, 'Permohonan'),
(136, '420/7/006/VIII/2021', '2021-08-12', 'Undangan Rapat Pre Construction Meeting (PCM) Pembangunan Prasarana Lingkungan Kawasan Solo Technopark', NULL, NULL, 'UNDANGAN'),
(137, '005/7/001/VIII/2021', '2021-08-16', 'Permohonan Narasumber Program Pengembangan Kapasitas Daya Saing Kepemudaan', 'Pemimpin Bank Jateng Cabang Koordinator Surakarta', NULL, 'Permohonan'),
(138, '005/7/002/VIII/2021', '2021-08-16', 'Undangan Workshop Fasilitasi Inkubasi Wirausaha 2021', 'Daftar Undangan', NULL, 'UNDANGAN'),
(139, '005/7/003/VIII/2021', '2021-08-01', 'Undangan Pelatihan Program Pengembangan Kapasitas Daya Saing Kepemudaan 2021-Smeska dan Solocorn', NULL, NULL, 'UNDANGAN'),
(140, '005/7/004/VIII/2021', '2021-08-01', 'Undangan Pelatihan Program Pengembangan Kapasitas Daya Saing Kepemudaan 2021-Smeska dan Solocorn', NULL, NULL, 'UNDANGAN'),
(141, '420/7/007/VIII/2021', '2021-08-24', 'Pemberitahuan Lunas', 'GM Employee Services & Payroll PT. GMF AeroAsia Garusa Indonesia Group', NULL, 'Pemberitahuan'),
(142, '005/7/005/VIII/2021', '2021-08-24', 'Undangan Pendampingan Fasilitasi Inkubasi Wirausaha 2021', 'Tenan (Daftar Undangan Terlampir)', NULL, 'UNDANGAN'),
(143, '005/7/006/VIII/2021', '2021-08-24', 'Undangan Pendampingan Fasilitasi Inkubasi Wirausaha 2021', 'Tenan (Daftar Undangan Terlampir)', NULL, 'UNDANGAN'),
(144, '420/7/008/VIII/2021', '2021-08-30', 'Surat Pemberitahuan', 'Kepala Sekolah SMK Tunas Harapan Pati', NULL, 'Pemberitahuan'),
(145, '420/7/009/VIII/2021', '2021-08-01', 'Permohonan Fasilitasi Applied', 'PolTek ATMI\r\n Up. Bp. Iskandar', NULL, 'Permohonan'),
(146, '420/7/009/VIII/2021', '2021-08-01', 'Permohonan Fasilitasi Applied', 'PolTek ATMI\r\n Up. Bp. Iskandar', NULL, 'Permohonan'),
(147, '420/7/010/VIII/2021', '2021-08-01', 'Permohonan Fasilitasi Applied', 'Direktur ICON', NULL, 'Permohonan'),
(148, '420/7/010/VIII/2021', '2021-08-01', 'Permohonan Fasilitasi Applied', 'Direktur ICON', NULL, 'Permohonan'),
(149, '420/7/002/IX/2021', '2021-09-07', 'Permohonan Souvenir/Cenderamata', 'Kepala Bagian Protokol Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(150, '420/7/003/IX/2021', '2021-09-09', 'Undangan', 'terlampir', NULL, 'UNDANGAN'),
(151, '420/7/004/IX/2021', '2021-09-17', 'Permohonan Souvenir/Cenderamata', 'Kepala Bagian Protokol Pemerintah Kota Surakarta', NULL, 'Permohonan'),
(152, '420/7/005/IX/2021', '2021-09-23', 'Pemberitahuan', 'PT. Aplikasi Karya Anak Bangsa Gedung Pasaraya', NULL, 'Pemberitahuan'),
(153, '420/7/006/IX/2021', '2021-09-24', 'Surat Balasan Perijinan Pembukaan Goto Ukm Center', 'VP Regional Operation Government Relation GOJEK', NULL, 'JAWABAN'),
(154, '420/7/007/IX/2021', '2021-09-24', 'Surat Permohonan Pembuatan QR Code Peduli Lindungi', 'Kepala Pusdatin Kementrian Kesehatan Republik Indonesia', NULL, 'Permohonan'),
(155, '420/7/008/IX/2021', '2021-09-24', 'Surat Keterangan Magang', NULL, NULL, 'SURAT KETERANGAN'),
(156, '420/7/009/IX/2021', '2021-09-28', 'Permohonan uji coba penyalaan AC Sentral (AHU) Hall Lt.2 Gedung STC', 'PT Daikin Airconditioning Indonesia Branch Yogyakarta', NULL, 'Permohonan'),
(157, '420/7/12/IX/2021', '2021-09-30', 'Permohonan Pemindahan Tiang Telepon', 'Pimpinan PT Telkom Indonesia Wilayah Surakarta', NULL, 'Permohonan'),
(158, '005/7/002/IX/2021', '2021-09-01', 'Undangan', NULL, NULL, 'UNDANGAN'),
(159, '005/7/002/IX/2021', '2021-09-30', 'Permohonan Pemindahan Tiang Telepon', 'Pimpinan PT Telkom Indonesia Wilayah Surakarta', NULL, 'Permohonan'),
(160, '005/7/003/IX/2021', '2021-09-09', 'Undangan', '(Daftar Undangan Terlampir)', NULL, 'UNDANGAN'),
(161, '005/7/003/IX/2021', '2021-09-09', 'Undangan', 'Kabid. Litbang BAPPPEDA Kota Surakarta', NULL, 'UNDANGAN'),
(162, '005/7/003/IX/2021', '2021-09-09', 'Undangan', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(163, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Satuan Kerja Khusus Pelaksana Kegiatan Usaha Hulu Minyak dan Gas Bumi (SKK Migas)', NULL, 'UNDANGAN'),
(164, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Direktur Petrotekno', NULL, 'UNDANGAN'),
(165, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Regional CEO Region 7 Jawa 2 Bank Mandiri', NULL, 'UNDANGAN'),
(166, '005/004/IX/2021', '2021-09-14', 'Undangan', 'GH Government Solution Group Bank Mandiri', NULL, 'UNDANGAN'),
(167, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Head Bank Mandiri Area Solo', NULL, 'UNDANGAN'),
(168, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Direktur Akademi Komunitas Tekstil Solo', NULL, 'UNDANGAN'),
(169, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(170, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Bagian Protokol dan Komunikasi Pimpinan dan Pemerintah Kota Surakarta', NULL, 'UNDANGAN'),
(171, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Bagian Kerjasama Pemerintah Kota Surakarta', NULL, 'UNDANGAN'),
(172, '005/005/IX/2021', '2021-09-15', 'Undangan Penjajakan Kolaborasi antara Kedaireka dengan Solo Technopark', 'Ketua Tim Kerja Akselerasi Kampus Merdeka Kedaireka (Kedaulatan Indonesia dalam Reka Cipta)', NULL, 'UNDANGAN'),
(173, '005/005/IX/2021', '2021-09-15', 'Undangan Penjajakan Kolaborasi antara Kedaireka dengan Solo Technopark', 'CEO KESAN-Kedaulatan Santri', NULL, 'UNDANGAN'),
(174, '005/005/IX/2021', '2021-09-22', 'Undangan', NULL, NULL, 'UNDANGAN'),
(175, '005/006/IX/2021', '2021-09-15', 'Undangan Penjajakan Kolaborasi antara Kedaireka dengan Solo Technopark', 'CEO KESAN-Kedaulatan Santri', NULL, 'UNDANGAN'),
(176, '005/006/IX/2021', '2021-09-22', 'Permohonan dan Undangan Narasumber/Mentor', NULL, NULL, 'Permohonan'),
(177, '050/8.231', '2021-09-02', 'Undangan', NULL, NULL, 'UNDANGAN'),
(178, NULL, '2021-09-14', 'Statement of Anti-Bribery & Coruption', 'Procurement Group PT. Aplikasi Karya Anak Bangsa (GOJEK)', NULL, 'SURAT PERNYATAAN'),
(179, NULL, '2021-09-23', 'Surat Dukungan', NULL, NULL, 'SURAT DUKUNGAN'),
(180, '420/7/001/X/2021', '2021-10-01', 'Undangan', 'Bapak Imam Subchan', NULL, 'UNDANGAN'),
(181, '420/7/002/X/2021', '2021-10-18', 'Jawaban Surat Kunjungan', 'Kepala SMK Negeri 1 Kertosono di Nganjuk', NULL, 'JAWABAN'),
(182, '420/7/003/X/2021', '2021-10-18', 'Jawaban Surat Kunjungan', 'Kepala SMK Bhakti Nusantara di Salatiga', NULL, 'JAWABAN'),
(183, '420/7/005/X/2021', '2021-10-28', 'Jawaban Surat Kunjungan', 'Kepala Sekolah SMKN 1 Kertosono di Nganjuk', NULL, 'JAWABAN'),
(184, '420/7/006/X/2021', '2021-10-28', 'Jawaban Surat Kunjungan', 'Kepala Sekolah SMKN 1 Kertosono di Nganjuk', NULL, 'JAWABAN'),
(185, '420/7/007/X/2021', '2021-10-23', 'Jawaban Surat Izin Penelitian', 'Kepala Program Studi S1 Teknik Mesin Universitas Muhammadiyah Kalimantan Timur', NULL, 'JAWABAN'),
(186, '005/7/001/X/2021', '2021-10-01', 'Undangan', 'Bapak Imam Subchan', NULL, 'UNDANGAN'),
(187, '005/7/011/X/2021', '2021-10-12', 'Undangan', NULL, NULL, 'UNDANGAN'),
(188, '005/7/012/X/2021', '2021-10-01', 'Undangan', 'Bapak/Ibu Tenant Fasilitasi Inkubasi Wirausaha', NULL, 'UNDANGAN'),
(189, '005/7/013/X/2021', '2021-10-01', 'Undangan', 'Bapak Imam Subcan', NULL, 'UNDANGAN'),
(190, '005/7/014/X/2021', '2021-10-01', 'Undangan', 'Ibu Evi', NULL, 'UNDANGAN'),
(191, '005/7/015/X/2021', '2021-10-01', 'Undangan', 'Bp. Christian', NULL, 'UNDANGAN'),
(192, '005/7/016/X/2021', '2021-10-01', 'Undangan', 'Ketua Jurusan Teknik Elektronika STTW Surakarta', NULL, 'UNDANGAN'),
(193, '005/7/017/X/2021', '2021-10-01', 'Undangan', 'Bp. Hendry', NULL, 'UNDANGAN'),
(194, '005/7/018/X/2021', '2021-10-01', 'Undangan', 'Kepala Loka POM Surakarta', NULL, 'UNDANGAN'),
(195, '005/7/019/X/2021', '2021-10-01', 'Undangan', 'Kepala Dinas Dinkes Surakarta', NULL, 'UNDANGAN'),
(196, '005/7/020/X/2021', '2021-10-01', 'Undangan', 'Bp.Agus PT. Sungadiman Makmur Sentosa', NULL, 'UNDANGAN'),
(197, '005/7/021/X/2021', '2021-10-01', 'Undangan', 'Kepala Disnakerperin & IKM', NULL, 'UNDANGAN'),
(198, '005/7/022/X/2021', '2021-10-01', 'Undangan', 'Kepala Dinas Koperasi & UKM Surakarta', NULL, 'UNDANGAN'),
(199, '005/7/023/X/2021', '2021-10-01', 'Undangan', 'Kepala Loka Pom Surakarta', NULL, 'UNDANGAN'),
(200, '005/7/024/X/2021', '2021-10-01', 'Undangan', 'Kepala Dinas Disnakerperin & IKM', NULL, 'UNDANGAN'),
(201, '005/7/025/X/2021', '2021-10-01', 'Undangan', 'Kepala Dinas Koperasi & UKM Surakarta', NULL, 'UNDANGAN'),
(202, '420/7/002/XI/2021', '2021-11-09', 'Konfirmasi Permohonan Magang Industri', 'Dekan Fakultas Ilmu Komputer Universitas Duta Bangsa', NULL, 'JAWABAN'),
(203, '420/7/003/XI/2021', '2021-11-09', 'Konfirmasi Permohonan Magang Industri', 'Dekan Fakultas Ilmu Komputer Universitas Duta Bangsa', NULL, 'JAWABAN'),
(204, '420/7/004/XI/2021', '2021-11-09', 'Konfirmasi Permohonan Izin PKL', 'Dekan Fakultas Teknik Universitas Negeri Semarang', NULL, 'JAWABAN'),
(205, '420/7/004/XI/2021', NULL, 'Surat Pernyataan', NULL, NULL, 'SURAT PERNYATAAN'),
(206, '420/7/005/XI/2021', '2021-11-22', 'Konfirmasi Permohonan Izin Kuliah Kerja Magang', 'Dekan Bidang Akademi, Riset dan Kemahasiswaan', NULL, 'JAWABAN'),
(207, '420/7/006/XI/2021', '2021-11-22', 'Konfirmasi Permohonan Izin Kuliah Kerja Magang', 'Dekan Bidang Akademi, Riset dan Kemahasiswaan', NULL, 'JAWABAN'),
(208, '420/7/007/XI/2021', '2021-11-22', 'Konfirmasi Permohonan Izin Kuliah Kerja Magang', 'Dekan Bidang Akademi, Riset dan Kemahasiswaan', NULL, 'JAWABAN'),
(209, '420/7/009/XI/2021', '2021-11-26', 'Surat Keterangan', NULL, NULL, 'SURAT KETERANGAN'),
(210, '420/7/010/XI/2021', '2021-11-26', 'Surat Keterangan', NULL, NULL, 'SURAT KETERANGAN'),
(211, '420/7/011/XI/2021', '2021-11-30', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Kepala Sekolah SMK Walisongo Kaliori', NULL, 'JAWABAN'),
(212, '420/7/012/XI/2021', '2021-11-01', 'Dukungan Program Gerakan Nasional 1000 Startup Digital', 'Bp. Bonifasius Wahyu Pudjianto Direktur Pemberdayaan Informatika Kementerian Komunikasi dan Informatika Republik Indonesia', NULL, 'SURAT DUKUNGAN'),
(213, '005/7/003/XI/2021', '2021-11-01', 'Undangan', 'Kepala Loka POM Surakarta', NULL, 'UNDANGAN'),
(214, '005/7/004/XI/2021', '2021-11-15', 'Undangan', 'Kepala Organisasi Perangkat Daerah', NULL, 'UNDANGAN'),
(215, '005/7/005/XI/2021', '2021-11-16', 'Undangan', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang', NULL, 'UNDANGAN'),
(216, '005/7/016/XI/2021', '2021-11-29', 'Undangan', NULL, NULL, 'UNDANGAN'),
(217, '005/7/017/XI/2021', '2021-12-01', 'Undangan', NULL, NULL, 'UNDANGAN'),
(218, '420/7/001/XII/2021', '2021-12-02', 'Dukungan UPT Solo Technopark atas Pendirian Fakultas Teknologi Informatika dan Sains Data di Universitas Sebelas Maret', 'Bapak Rektor Universitas Sebelas Maret Prof. Dr. Jamal Wiwoho, S.H., M.Hum.', NULL, 'SURAT DUKUNGAN'),
(219, '420/7/003/XII/2021', '2021-12-03', 'Surat Balasan Perijinan Kegiatan Pekan Kreasi Shopee Solo Creative & Innovation Hub Technopark', 'Direktur PT. Shopee International Indonesia', NULL, 'JAWABAN'),
(220, '420/7/004/XII/2021', '2021-12-06', 'Permohonan Bantuan Pemerintah Infrastruktur Ekraf', 'Menteri Pariwisata dan Ekonomi Kreatif/Kepala Badan Pariwisata dan Ekonomi Kreatif\r\n UP. Deputi Bidang Pengembangan Destinasi dan Infrastruktur', NULL, 'Permohonan'),
(221, '420/7/005/XII/2021', '2021-12-09', 'Permohonan Penayangan Konten Promosi Program Solo Technopark di Smart TV', 'Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Surakarta', NULL, 'Permohonan'),
(222, '420/7/006/XII/2021', '2021-12-10', 'Berita Acara Hasil Uji Coba Barang Pekerjaan Belanja Modal Alat Laboratorium Proses Industri (Alat Teknologi Industri) UPT Solo Technopark Surakarta Tahun 2021', NULL, NULL, 'BERITA ACARA'),
(223, '420/7/011/XII/2021', '2021-12-23', 'Permohonan Perapian dan Pemangkasan Pohon', 'Kepala Dinas Lingkungan Hidup Wilayah Surakarta', NULL, 'Permohonan'),
(224, '420/7/011/XII/2021', '2021-12-30', 'Konfirmasi Permohonan Ijin Penelitian', 'Bapak Rudy Hantoko', NULL, 'JAWABAN'),
(225, '420/7/012/XII/2021', '2021-12-30', 'Peminjaman Alat dan Operator Guna Pemerataan Lahan', 'Kepala Dinas Pekerjaan Umum Kota Surakarta', NULL, 'Permohonan'),
(226, '420/7/013/XII/2021', '2021-12-31', 'Permohonan Pengesahan Laporan Pendapatan dan Realisasi Biaya BLUD UPT Solo Technopark', 'Kepala BPPKAD selaku PPKD', NULL, 'Permohonan'),
(227, '420/7/014/XII/2021', '2021-12-31', 'Surat Pernyataan', NULL, NULL, 'SURAT'),
(228, '420/7/001/I/2022', '2022-01-04', 'Informasi', 'Bp. Bregas Tokopedia di Jakarta', NULL, 'Pemberitahuan'),
(229, '005/7/001/I/2022', '2022-01-01', 'Permohonan Ijin Pemindahan Pohon Area Solo Technopark', 'Walikota Surakarta', NULL, 'Permohonan'),
(230, '005/7/002/I/2022', '2022-01-01', 'Kop Surat dan Stempel baru', 'Pejabat Teknis Solo Technopark, Kepala Divisi Solo Technopark', NULL, NULL),
(231, '005/MP/1/I/2022', '2022-01-20', 'Kop Surat dan Stempel baru', 'Pejabat Keuangan, Pejabat Teknis Umum, Pejabat Teknis Pelayanan dan Pengembangan, Kepala Divisi Solo Technopark', NULL, NULL),
(232, '420/7/003/I/2022', '2022-01-10', 'Permohonan Penundaan Pembayaran Listrik Bulan Januari 2022', 'Pimpinan PT PLN Persero Cabang Manahan di Surakarta', NULL, 'Permohonan'),
(233, '420/7/004/I/2022', '2022-01-10', 'Permohonan Penundaan Pembayaran Telepon Bulan Januari 2022', 'Pimpinan PT Telkom Indonesia Wilayah Surakarta', NULL, 'Permohonan'),
(234, '420/7/005/I/2022', '2022-01-10', 'Surat Pengantar Penawaran', 'Bapak Rudi Satwiko Deputi Dukungan Bisnis SKK Migas', NULL, 'BERITA ACARA'),
(235, '420/7/006/I/2022', '2022-01-10', 'Undangan', 'Catur Sugiarto,S.E, M.S.M., Ph.D Kepala Divisi StartUp dan Inkubasi Universitas Sebelas Maret Surakarta', NULL, 'BERITA ACARA'),
(236, '420/7/006/I/2022', '2022-01-10', 'Undangan', 'Dr. Sutanto, S.Si., DEA, Direktur Reputasi Akademik dan Kemahasiswaan Universitas Sebelas Maret Surakarta', NULL, 'BERITA ACARA'),
(237, '420/7/007/I/2022', '2022-01-13', 'Permohonan Penundaan Pembayaran Listrik Bulan Januari 2022', 'Pimpinan PT PLN Persero Cabang Manahan di Surakarta', NULL, 'Permohonan'),
(238, '420/7/008/I/2022', '2022-01-12', 'Permohonan Observasi, Pendampingan dan Supervisi Proses Pemindahan Pohon di Kawasan Solo Technopark', 'Kepala Dinas Lingkungan Hidup Kota Surakarta', NULL, 'Permohonan'),
(239, '420/7/009/I/2022', '2022-01-12', 'Permohonan Peminjaman Alat Berat dan Operator Untuk Pemerataan Lahan di Kawasan Solo Technopark', 'Kepala Dinas Pekerjaan Umum Kota Surakarta', NULL, 'Permohonan'),
(240, '420/7/010/I/2022', '2022-01-17', 'Lembar Persetujuan Penggunaan Hasil Penelitian', 'Saifudin, ST.,M.Eng.', NULL, 'PERNYATAAN'),
(241, '420/7/011/I/2022', '2022-01-24', 'Konfirmasi Permohonan Kunjungan Industri', 'Kepala Sekolah SMK NEGERI 1 NANGGULAN', NULL, 'JAWABAN'),
(242, '420/7/012/I/2022', '2022-01-24', 'Konfirmasi Permohonan Kunjungan Industri', 'Kepala Sekolah SMK MUHAMMADIYAH SURUH', NULL, 'JAWABAN'),
(243, '420/7/013/I/2022', '2022-01-24', 'Konfirmasi Permohonan Kunjungan Industri', 'Kepala Sekolah SMK SANJAYA MUNTILAN', NULL, 'JAWABAN'),
(244, '420/7/015/I/2022', '2022-01-25', 'Permohonan ASN untuk UPT Solo Technopark', 'Kepala BKPSDM Kota Surakarta', NULL, 'Permohonan'),
(245, '420/7/016/I/2022', '2022-01-25', 'Konfirmasi Permohonan Kunjungan Industri', 'Kepala Sekolah SMK BRAWIJAYA PONOROGO', NULL, 'JAWABAN'),
(246, '420/7/017/I/2022', '2022-01-27', 'Konfirmasi Permohonan Kunjungan Industri', 'Kepala Sekolah SMK MASKUMAMBANG 1 GRESIK', NULL, 'JAWABAN'),
(247, '420/7/018/I/2022', '2022-01-26', 'Surat Pengantar Kertas Kerja Seleksi Mahasiswa Peserta Program MSIB Angkatan 2 Tahun 2022', 'Kepala Program MSIB Angkatan 2 Tahun 2022', NULL, 'SURAT PENGANTAR'),
(248, '420/7/019/2022', '2022-01-31', 'Konfirmasi Permohonan Kunjungan', 'Kepala Sekolah SMK YKUI Maskumambang 2', NULL, 'JAWABAN'),
(249, '005/7/001/II/2022', '2022-02-04', 'Undangan', 'Christian Ardinto,ST, Susilowati,SE, Untung Priyohananto,SE, Susilo Budi Arianto, Lucia Citra Hirawati, Agus Tri Hananto, Ani Anggraeni, Ariyani Oktaviana Rahmawati, Budiharto, Arif Wibowo, Abednego Danu Setiawan, Oktafianto Nugroho, Gesang Adhi Saputro, ', NULL, 'UNDANGAN'),
(250, '005/7/002/II/2022', '2022-02-10', 'Undangan Narasumber', 'Katua MSIB Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(251, '005/7/002/II/2022', '2022-02-10', 'Undangan', 'Peserta Program Magang MSIB', NULL, 'UNDANGAN'),
(252, '005/7/002/II/2022', '2022-02-10', 'Undangan', 'Mentor dan Asisten Mentor Program Magang MSIB', NULL, 'UNDANGAN'),
(253, '005/7/003/II/2022', '2022-02-10', 'Undangan', 'Mentor dan Asisten Mentor Program Magang MSIB', NULL, 'UNDANGAN'),
(254, '005/7/003/II/2022', '2022-02-10', 'Undangan', 'Peserta Program Magang MSIB', NULL, 'UNDANGAN'),
(255, '005/7/003/II/2022', '2022-02-10', 'Undangan Narasumber', 'Ketua MSIB Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(256, '005/7/003/II/2022', '2022-02-10', 'Undangan', 'Ketua Program Studi (Kaprodi) Universitas', NULL, 'UNDANGAN'),
(257, '005/07/003/II/2022', '2022-02-10', 'Undangan Narasumber', 'Ketua MSIB Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(258, '005/7/003/II/2022', '2022-02-10', 'Undangan Narasumber', 'Ketua MSIB Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(259, '005/7/003/II/2022', '2022-02-10', 'Undangan Narasumber', 'Ketua MSIB Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(260, '420/7/003/II/2022', '2022-02-08', 'Juri Lomba Kreativitas dan Inovasi Kota Surakarta', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'Pemberitahuan'),
(261, '420/7/004/II/2022', '2022-02-09', 'Konfirmasi Permohonan Prakerin', 'Kepala Sekolah SMK BINA PATRIA 1 SUKOHARJO', NULL, 'JAWABAN'),
(262, '005/7/004/II/2022', '2022-02-10', 'Undangan', 'Mahasiswa', NULL, 'UNDANGAN'),
(263, '420/7/005/II/2022', '2022-02-09', 'Konfirmasi Permohonan Kunjungan Industri', 'Kepala Sekolah SMKN 1 Talaga', NULL, 'JAWABAN'),
(264, '005/7/005/II/2022', '2022-02-08', 'Undangan', 'Bapak Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta', NULL, 'UNDANGAN'),
(265, '420/7/006/II/2022', '2022-02-10', 'Konfirmasi Permohonan Ijin Tempat Praktik Kerja Industri/Lapangan', 'Kepala Sekolah SMK WALISONGO KALIORI', NULL, 'JAWABAN'),
(266, '420/7/007/II/2022', '2022-02-10', 'Konfirmasi Permohonan Praktek Kerja Industri', 'Kepala Sekolah SMK PGRI 1 NGAWI', NULL, 'JAWABAN'),
(267, '420/7/008/II/2022', '2022-02-15', 'Prakerin', 'Kepala Sekolah SMK PGRI 1 GOMBONG', NULL, 'PRAKERIN'),
(268, '420/7/009/II/2022', '2022-02-15', 'Prakerin', 'Kepala Sekolah SMK NEGERI 2 KARANGANYAR', NULL, 'PRAKERIN'),
(269, '420/7/010/II/2022', '2022-02-16', 'Prakerin', 'Kepala Sekolah SMK NEGERI 1 GOMBONG', NULL, 'PRAKERIN'),
(270, '420/7/011/II/2022', '2022-02-17', 'Surat Keterangan', 'Susilowati, SE, Akt', NULL, 'KETERANGAN'),
(271, 'PN.02.02/12/II/2022', '2022-02-21', 'Permohonan Ijin Penebangan Pohon', 'Walikota Surakarta', NULL, 'Permohonan'),
(272, '420/7/013/II/2022', '2022-02-22', 'Prakerin', 'Kepala Sekolah SMK TANJUNGANOM NGANJUK', NULL, 'PRAKERIN'),
(273, '420/7/014/II/2022', '2022-02-22', 'Prakerin', 'Kepala Sekolah SMK TUNAS HARAPAN PATI', NULL, 'PRAKERIN'),
(274, '420/7/015/II/2022', '2022-02-25', 'Juri Lomba Kreativitas dan Inovasi Kota Surakarta Tahun 2022', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(275, '420/7/016/II/2022', '2022-02-25', 'Tim Teknis Penyusunan Kajian Indeks Daya Saing Kota Surakarta', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(276, '420/7/017/II/2022', '2022-02-25', 'Personil Kajian Penyusunan Kelembagaan Unit Pengelola Hak Kekayaan Intelektual (HKI)', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(277, '420/7/018/II/2022', '2022-02-25', 'Personil Monev Rencana Induk (RINDUK) Kelitbangan Kota Surakarta Tahun 2022', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(278, '420/7/019/II/2022', '2022-02-25', 'Personil Monev Smart City Kota Surakarta Tahun 2022', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(279, '420/7/20/II/2022', '2022-02-22', 'Prakerin', 'Kepala Sekolah SMK TANJUNGANOM NGANJUK', NULL, 'PRAKERIN'),
(280, 'PN.01.01/1/III/2022', '0000-00-00', 'Surat Keterangan Aktif', 'Meita Maria Pramesti', NULL, 'SURAT KETERANGAN'),
(281, 'PN.01.01/1/III/2022', '2022-03-04', 'Surat Keterangan Aktif', 'Meita Maria Pramesti', NULL, 'SURAT KETERANGAN'),
(282, 'PN.01.01/2/III/2022', '2022-03-01', 'Undangan', 'Agung Riyadi, S.Sos.,SH,MM, Nur Basuki, ST, Yudit Cahyantoro,N.S.,ST.,MT, Untung Priyohananto, SE, Christian Ardinto, ST, Susilowati, SE, Akt, Moeh Yani, S.Sos,MM, Budi Purwanto, ST', NULL, 'UNDANGAN'),
(283, 'PN.01.00.02/005/2/III/2022', '2022-03-18', 'Undangan Acara Kolaborasi Solo Technopark dengan Pihak Industri', 'Bapak Walikota Surakarta', NULL, 'UNDANGAN'),
(284, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama Nestle Indonesia', NULL, 'UNDANGAN'),
(285, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama Mocrosoft Indonesia', NULL, 'UNDANGAN'),
(286, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Amazon Web Service (AWS)', NULL, 'UNDANGAN'),
(287, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama dan Komisaris Utama Indofarma', NULL, 'UNDANGAN'),
(288, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama Wijaya Karya Manufaktur (WIMA)', NULL, 'UNDANGAN'),
(289, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Eksekutif Yayasan Pijar Masa Depan (Pijar Foundation)', NULL, 'UNDANGAN'),
(290, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Amazon Web Service (AWS)', NULL, 'UNDANGAN'),
(291, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Politeknik ATMI Surakarta', NULL, 'UNDANGAN'),
(292, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Muhammadiyah Surakarta (UMS)', NULL, 'UNDANGAN'),
(293, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Nahdlatul Ulama (UNU)', NULL, 'UNDANGAN'),
(294, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Sebelas Maret Surakarta (UNS)', NULL, 'UNDANGAN'),
(295, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Sahid Surakarta (USAHID)', NULL, 'UNDANGAN'),
(296, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Slamet Riyadi (UNISRI)', NULL, 'UNDANGAN'),
(297, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Sekretaris Deputi Bidang Riset dan Inovasi Daerah, BRIN', NULL, 'UNDANGAN'),
(298, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Ketua PMO Tim Kerja Akselerasi Kampus Merdeka Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(299, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Menteri Badan Usaha Milik Negara Republik Indonesia', NULL, 'UNDANGAN'),
(300, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama ACER Indonesia', NULL, 'UNDANGAN'),
(301, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama Zyrex', NULL, 'UNDANGAN'),
(302, 'PN.01.00.02/005/3/III/2022', '2022-03-18', 'Undangan Penjajakan Kolaborasi dengan Solo Technopark', 'Direktur Utama ACER Indonesia', NULL, 'UNDANGAN'),
(303, 'PN.01.00.02/005/5/III/2022', '2022-03-21', 'Undangan', 'TATA', NULL, 'UNDANGAN'),
(304, 'PN.01.00.02/005/3/III/2022', '2022-03-21', 'Undangan', 'Petrotekno', NULL, 'UNDANGAN'),
(305, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Islam Batik (UNIBA) Surakarta', NULL, 'UNDANGAN'),
(306, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Perguruan Tinggi', NULL, 'UNDANGAN'),
(307, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitass Islam Negeri Raden Mas Said Surakarta', NULL, 'UNDANGAN'),
(308, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Universitas Tunas Pembangunan (UTP)', NULL, 'UNDANGAN'),
(309, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Kegiatan Kedaireka x Solo Technopark', 'Pimpinan Lembaga Terkait Penelitian, Kolaborasi dan Pengembangan Inovasi di Institut seni Indonesia Surakarta (ISI)', NULL, 'UNDANGAN'),
(310, 'PN.01.00.02/005/4/III/2022', '2022-03-22', 'Undangan Pembicara Kegiatan Kolaborasi Kedaireka x Solo Technopark', 'Ketua MPMO Tim Kerja Akselerassi Kampus Merdeka Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi', NULL, 'UNDANGAN'),
(311, 'PN.01.00.02/005/6/III/2022', '2022-03-24', 'Undangan', 'Bapak Achmad Riad Kepala Divisi Pengelolaan Aset SKK Migas, Gedung Wisma Mulia Lt 29, Jl Jend Gatot Subroto Kav 42, Jakarta 12950', NULL, 'UNDANGAN'),
(312, 'PN.01.01/7/III/2022', '2022-03-23', 'Kunjungan Industri', 'Kepala Sekolah SMK NEGERI 1 GENENG NGAWI', NULL, 'Kunjungan'),
(313, 'PN.01.00.02/005/7/III/2022', '2022-03-29', 'Undangan', NULL, NULL, 'UNDANGAN'),
(314, 'PN.01.00.02/8/III/2022', '2022-03-24', 'Permohonan Souvenir/Cenderamata', 'Kepala Bagian Protokol Komunikasi dan Administrasi Pimpinan Sekretariat Daerah Kota Surakarta', NULL, 'Permohonan'),
(315, 'PN.01.01/9/III/2022', '2022-03-24', 'Data Personil Pengelola Kearsipan', NULL, NULL, 'DATA PERSONIL'),
(316, 'PN.01.01/II/III/2022', '0000-00-00', 'Permohonan Pergantian PA/KPA', 'Kepala Bagian Pengadaan Barang dan Jasa Kota Surakarta', NULL, 'Permohonan'),
(317, 'PN.01.01/12/III/2022', '2022-03-30', 'Prakerin', 'Kepala Sekolah SMK NEGERI 2 SURAKARTA', NULL, 'PRAKERIN'),
(318, 'PN.01.01/13/III/2022', '2022-03-30', 'Magang Industri', 'Direktur POLITEKNIK NEGERI CILACAP', NULL, 'Magang'),
(319, 'PN.01.01/14/III/2022', '2022-03-28', 'Magang Industri', 'Kepala Prodi PTM Universitas Sebelas Maret', NULL, 'Magang'),
(320, '1/PN.01.01/IV/2022', '2022-04-01', 'Undangan Pembicara Kegiatan Seminar Beasiswa Solo Technopark', 'Indy Hardono-Scholarship Team Coordinator', NULL, 'UNDANGAN'),
(321, '1/PN.01.01/IV/2022', '2022-04-01', 'Undangan Pembicara Kegiatan Seminar Beasiswa Solo Technopark', 'Direktur Utama Lembaga Pengelola Dana Pendidikan (LPDP)', NULL, 'UNDANGAN'),
(322, '1/PN.01.01/IV/2022', '2022-04-01', 'Undangan Pembicara Kegiatan Seminar Beasiswa Solo Technopark', 'Catur Sugiarto, S.E.,M.S.M.Ph.D.', NULL, 'UNDANGAN'),
(323, '1/PN.01.01/IV/2022', '2022-04-01', 'Undangan Pembicara Kegiatan Seminar Beasiswa Solo Technopark', 'Dr. Moh Abdul Hakim', NULL, 'UNDANGAN'),
(324, '2/PN.01.01/IV/2022', '2022-04-01', 'Surat Kuasa', 'Williyanto, Site Manager, PT Tatamulia Nusantara Indah Proyek Shopee Solo', NULL, 'SURAT'),
(325, '3/PN.01.01/IV/2022', '2022-04-04', 'Permohonan Penayangan Konten Promosi Program dan Event/Kegiatan Solo Technopark', 'Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Surakarta', NULL, 'Permohonan'),
(326, '3/PN.01.01/IV/2023', '2022-04-05', 'Permohonan Penayangan Konten Promosi Program dan Event/Kegiatan Solo Technopark', 'Kepala Dinas Komunikasi, Informatika, Statistik dan Persandian Kota Surakarta', NULL, 'Permohonan'),
(327, '6/PN.01.00.02/IV/2022', '2022-04-06', 'Undangan Kegiatan Pembahasan Proposal Kedaireka Pengembangan Ekosistem dan Talenta Game Developer', 'Wakil Rektor Riset dan Inovasi UNS', NULL, 'UNDANGAN'),
(328, '058/07/001/2022', '2022-04-06', 'Surat Keterangan', NULL, NULL, 'SURAT'),
(329, '6/PN.01.00.02/IV/2022', '2022-04-06', 'Undangan Kegiatan Pembahasan Proposal Kedaireka Pengembangan Ekosistem dan Talenta Game Developer', 'Direktur ACER Indonesia', NULL, 'UNDANGAN'),
(330, '6/PN.01.00.02/IV/2022', '2022-04-06', 'Undangan Kegiatan Pembahasan Proposal Kedaireka Pengembangan Ekosistem dan Talenta Game Developer', 'Tim Konsorsium Game ICE Institute', NULL, 'UNDANGAN'),
(331, '7/PN.01.01/IV/2022', '2023-04-22', 'Permohonan Asman Berita Acara Serah Terima Hibah Renovasi Ruang, Barang Inventaris dan Software', 'Sekretaris Daerah Surakarta', NULL, 'Permohonan'),
(332, 'PN.01.00/1/2022', '2022-04-08', 'Pembentukan Tim Berita Acara Serah Terima di Solo Technopark', NULL, NULL, 'SURAT KEPUTUSAN'),
(333, 'PN.01.00/2/2022', '2022-04-08', 'Pembentukan Tim Penyusun Rancangan Peraturan Walikota dan Standart Operational Prosedure (SOP) di Solo Technopark', NULL, NULL, 'SURAT KEPUTUSAN'),
(334, '8/PN.01.01/IV/2022', '2022-04-11', 'Permohonan Izin Kuliah Online', 'Kepala Departement Statistika Institut Teknologi Sepuluh November', NULL, 'Permohonan'),
(335, '9/PN.01.01/IV/2022', '2022-04-20', 'Undangan', NULL, NULL, 'UNDANGAN'),
(336, '10/PN.01.01/IV/2022', '2022-04-20', 'Permohonan Peminjaman BPKB', 'Kepala BPKAD Kota Surakarta Cq. Bagian Aset', NULL, 'Permohonan'),
(337, '11/PN.01.01/IV/2022', '2022-04-21', 'Balasan Surat Permohonan Pengembalian Biaya Diklat', 'Sdr. Firman Hidayat', NULL, 'JAWABAN'),
(338, '11/PN.01.01/IV/2022', '2022-04-25', 'Permohonan Pemasangan Rambu dan Pemindahan Halte', 'Kepala Dinas Perhubungan Kota Surakarta', NULL, 'Permohonan'),
(339, '12/PN.01.01/IV/2022', '2022-04-26', 'Permohonan Penyesuaian Level Pedestrian dan Check Pit di Kawasan UPT Solo Technopark', 'Kepala Dinas Pekerjaan Umum Kota Surakarta', NULL, 'Permohonan'),
(340, '12/PN.01.01/IV/2022', '2022-04-26', 'Permohonan Check Pit dan Penyesuaian Level Pedestrian di Kawasan UPT Solo Technopark', 'Kepala Dinas Perhubungan Kota Surakarta', NULL, 'Permohonan');
INSERT INTO `surat_keluar` (`Id_Suratkeluar`, `Nomor_Suratkeluar`, `Tanggal`, `Perihal`, `Kepada`, `Catatan`, `Kategori`) VALUES
(341, '12/PN.01.01/IV/2022', '2022-04-26', 'Permohonan Penyesuaian Level Pedestrian dan Check Pit di Kawasan UPT Solo Technopark', 'Kepala Dinas Perhubungan Kota Surakarta', NULL, 'Permohonan'),
(342, '1/PN.01.01/V/2022', '2022-05-09', 'Undangan', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta beserta Jajarannya', NULL, 'UNDANGAN'),
(343, '1/PN.01.01/V/2022', '2022-05-09', 'Undangan', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta beserta Jajarannya, Karyawan UPT Solo Technopark, Security UPT Solo Technopark, Cleaning Service UPT Solo Technopark, Mahasiswa Program Magang dan Studi Independen Bersertifikat (MSIB), Praker', NULL, 'UNDANGAN'),
(344, '2/PN.01.01/V/2022', '2022-05-09', 'Undangan', 'Bapak Anggono Mahendrawan, ST.MM. Kepala SKK Migas Perwakilan Sumbagsel', NULL, 'UNDANGAN'),
(345, '2/PN.01.01/V/2022', '2022-05-09', 'Undangan', 'Bapak Beni Hernedi, S.I.P. , Bupati Kabupaten Musi Banyuasin', NULL, 'UNDANGAN'),
(346, '7/PN.01.01/V/2022', '2022-05-17', 'Undangan', 'Bapak Fatar Yani Abdurrahman, Wakil Kepala SKK Migas', NULL, 'UNDANGAN'),
(347, '8/PN.01.01/V/2022', '2022-05-17', 'Undangan Pembicara Kegiatan Kolaborasi Badan Siber dan Sandi Negara (BSSN) x Solo Technopark', 'Direktur Operasi Keamanan dan Pengendalian Informasi', NULL, 'UNDANGAN'),
(348, '8/PN.01.01/V/2022', '2022-05-17', 'Undangan Pembicara Kegiatan Kolaborasi Badan Siber dan Sandi Negara (BSSN) x Solo Technopark', 'Direktur Operasi Keamanan dan Pengendalian Informasi', NULL, 'UNDANGAN'),
(349, NULL, '2022-05-17', 'Undangan', 'Bapak Ardinto Christian, Bapak Untung Priyohananto, Ibu Susilowati, Bapak Susilo Budi A. , Ibu Lucia Citra H. , Bapak Abednego Danu S. , Sdr. Risky Budi K, Ibu Ani Anggraeni, Bapak Danang C. , Bapak Oktafianto N. , Bapak Tegar P. , Koordinator Keamanan, K', NULL, 'UNDANGAN'),
(350, '9/PN.01.01/V/2022', '2022-05-18', 'Undangan Rapat Koordinasi', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang, Pengelola Solo Technopark, PT. Shopee Indonesia International, PT. Colliers Indonesia, PT. Tata Mulia Nusantara Indonesia', NULL, 'UNDANGAN'),
(351, '9/PN.01.01/V/2022', '2022-05-18', 'Undangan Rapat Koordinasi', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang, Pengelola Solo Technopark, PT. Shopee Indonesia International, PT. Colliers Indonesia, PT. Tata Mulia Nusantara Indonesia', NULL, 'UNDANGAN'),
(352, '10/PN.01.01/V/2022', '2022-05-19', 'Jawaban Surat Permohonan Outdoor Study', 'SMKN 2 Yogyakarta', NULL, 'JAWABAN'),
(353, '11/PN.01.01/V/2022', '2022-05-17', 'Ucapan Terima Kasih', 'Direktur Petrotekno', NULL, 'UCAPAN'),
(354, '12/PN.01.01/V/2022', '2022-05-19', 'Permohonan Dana Akselerasi', 'Pimpinan Lembaga IRTI', NULL, 'Permohonan'),
(355, '13/PN.01.01/V/2022', '2022-05-20', 'Undangan Kegiatan Kolaborasi Badan Siber dan Sandi Negara (BSSN) x Solo Technopark', 'Pimpinan Lembaga Terkait Kolaborasi atau Kemahasiswaan di Perguruan Tinggi', NULL, 'UNDANGAN'),
(356, '15/PN.01.01/V/2022', '2022-05-23', 'Magang', 'Ketua Internship & Career Development Fakultas Ekonomi dan Bisnis UNS', NULL, 'Magang'),
(357, '16/PN.01.01/V/2022', '2022-05-23', 'Prakerin', 'Kepala Sekolah SMK Warga Surakarta', NULL, 'PRAKERIN'),
(358, '18/PN.01.01/V/2022', '2022-05-23', 'Prakerin', 'Kepala Sekolah SMK NEGERI 2 SURAKARTA', NULL, 'PRAKERIN'),
(359, '19/PN.01.01/V/2022', '2022-05-24', 'Undangan Pembicara Kegiatan Kolaborasi Badan Siber dan Sandi Negara (BSSN) x Solo Technopark', 'Letjen TNI (Purn) Hinsa Siburian Kepala Badan Siber dan Sandi Negara', NULL, 'UNDANGAN'),
(360, '20/PN.01.01/V/2022', '2022-05-01', 'Permohonan Tim Penilai Harga Taksiran Bongkaran', 'Kepala BPKAD Kota Surakarta Cq. Bagian Aset', NULL, 'Permohonan'),
(361, '21/PN.01.01/V/2022', '2022-05-25', 'Undangan Rapat Koordinasi', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta, Pengelola Solo Technopark, Kepala Dinas Koperasi Surakarta, Direktur AK Tekstil Surakata, Konsultan Perencana Masterplan Solo Technopark, PT. Shopee, PT. Coliers', NULL, 'UNDANGAN'),
(362, '22/PN.01.01/V/2022', '2022-05-30', 'Kunjungan Bupati Kabupaten Musi Banyuasin', 'Direktur Petrotekno', NULL, 'Kunjungan'),
(363, '23/PN.01.01/V/2022', '2022-06-07', 'Nota Dinas', 'Yth. Walikota Surakarta', NULL, 'Nota Dinas'),
(364, '424/PN.01.01/V/2022', '2022-05-31', 'Permohonan training desain manufaktur', 'Direktur I-CON Thomas Adjie Prasetyo', NULL, 'Permohonan'),
(365, '1/PN.01.01/VI/2022', '2022-06-02', 'Kunjungan', 'Kepala Sekolah SMK MUTIARA SALAWU', NULL, 'Kunjungan'),
(366, '2/PN.01.01/VI/2022', '2022-06-02', 'Kunjungan', 'Kepala Sekolah SMK ADI LUHUR 2 JAKARTA', NULL, 'Kunjungan'),
(367, '3/PN.01.01/VI/2022', '2022-06-03', 'Rekomendasi Training', 'Kepala Puskesmas Ngoresan', NULL, 'REKOMENDASI'),
(368, '4/PN.01.01/VI/2022', '2022-06-03', 'Rekomendasi Training', 'Kepala UPT Puskesmas Ngoresan', NULL, 'REKOMENDASI'),
(369, '5/PN.01.01/VI/2022', '2022-06-03', 'Permohonan Tambah Daya', 'PT. PLN (Persero) UID Jawa Tengah UP3 Surakarta, ULP Manahan', NULL, 'Permohonan'),
(370, '6/PN.01.01/VI/2022', NULL, 'Permohonan Narasumber', 'Bapak Thomas Ambar Prihastomo', NULL, 'Permohonan'),
(371, '7/PN.01.01/VI/2022', '2022-06-06', 'Permohonan Narasumber', 'Ibu. E. Evi Dewi Kusumawati', NULL, 'Permohonan'),
(372, '8/PN.01.01/VI/2022', '2022-06-06', 'Permohonan Narasumber', 'Bapak Joko Purwono', NULL, 'Permohonan'),
(373, '9/PN.01.01/VI/2022', '2022-06-06', 'Permohonan Narasumber', 'Bapak Hendri Setiawan', NULL, 'Permohonan'),
(374, '10/PN.01.01/VI/2022', '2022-06-06', 'Permohonan Narasumber', 'Bapak Imam Subchan', NULL, 'Permohonan'),
(375, '11/PN.01.01/VI/2022', NULL, 'Undangan', 'Komandan KOREM 074/Warastratama Surakarta Attn. Bagian Sekretariat KOREM 074/Warastratama Surakarta', NULL, 'UNDANGAN'),
(376, '12/PN.01.01/VI/2022', '2022-06-06', 'Permohonan Narasumber', 'Bapak Daniel Revelino Arsono', NULL, 'Permohonan'),
(377, '13/PN.01.01/VI/2022', NULL, 'Tindak Lanjut Proses Hibah Pesawat Bravo dari Mabes TNI AU', 'Komandan Pangkalan TNI Angkatan Udara Adisutjipto Yogyakarta', NULL, 'Permohonan'),
(378, '14/PN.01.01/VI/2022', '2022-06-08', 'Prakerin', 'Kepala Sekolah SMK NEGERI 2 SRAGEN', NULL, 'PRAKERIN'),
(379, '15/PN.01.01/VI/2022', '2022-06-08', 'Prakerin', 'Kepala Sekolah SMK NEGERI 2 SRAGEN', NULL, 'PRAKERIN'),
(380, '16/PN.01.01/VI/2022', '2022-06-08', 'Kunjungan', 'Kepala Sekolah SMK NEGERI 4 TASIKMALAYA', NULL, 'Kunjungan'),
(381, '17/PN.01.01/VI/2022', '2022-06-08', 'Kunjungan', 'Kepala Sekolah SMK Muhammadiyah Potren Imam Syuhodo Polokarto', NULL, 'Kunjungan'),
(382, '18/PN.01.01/VI/2022', '2022-06-08', 'Kunjungan', 'Kepala Sekolah MADRASAH ALIYAH NEGERI 2', NULL, 'Kunjungan'),
(383, '19/PN.01.01/VI/2022', '2022-06-08', 'Prakerin', 'Kepala Sekolah', NULL, 'PRAKERIN'),
(384, '20/PN.01.01/VI/2022', '2022-06-08', 'Prakerin', 'Kepala Sekolah SMK Muhammadiyah 2 Jatinom', NULL, 'PRAKERIN'),
(385, '21/PN.01.01/VI/2022', '2022-06-08', 'Prakerin', 'Kepala Sekolah SMK ADI SUMARMO COLOMADU', NULL, 'PRAKERIN'),
(386, '22/PN.01.01/VI/2022', '2022-05-12', 'Prakerin', 'Kepala Sekolah SMK NEGERI 2 SURAKARTA', NULL, 'PRAKERIN'),
(387, '23/PN.01.01/VI/2022', '2022-06-10', 'Undangan', 'Bapak/Ibu Kepala Organisasi Daerah', NULL, 'UNDANGAN'),
(388, '24/PN.01.01/VI/2022', '2022-06-13', 'Berita Acara Serah Terima', NULL, NULL, 'BERITA ACARA'),
(389, '25/PN.01.01/VI/2022', '2022-06-13', 'Berita Acara Serah Terima', NULL, NULL, 'BERITA ACARA'),
(390, '26/PN.01.01/VI/2022', '2022-06-13', 'Surat Tanggapan', 'BPKAD Kota Surakarta', NULL, 'SURAT TANGGAPAN'),
(391, '27/PN.01.01/VI/2022', '2022-06-13', 'Permohonan Narasumber', 'Bapak Thomas Ambar Prihastomo', NULL, 'Permohonan'),
(392, '28/PN.01.01/VI/2022', '2022-06-13', 'Permohonan Narasumber', 'Bapak Hendri Setiawan', NULL, 'Permohonan'),
(393, '29/PN.01.01/VI/2022', '2022-06-13', 'Permohonan Narasumber', 'Bapak Daniel Revelino Arsono', NULL, 'Permohonan'),
(394, '30/PN.01.01/VI/2022', '2022-06-13', 'Permohonan Narasumber', 'Bapak Imam Subchan', NULL, 'Permohonan'),
(395, '31/PN.01.01/VI/2022', '2022-06-13', 'Permohonan Narasumber', 'Bapak Joko Purwono', NULL, 'Permohonan'),
(396, '32/PN.01.01/VI/2022', '2022-06-13', 'Permohonan Narasumber', 'Ibu. E. Evi Dewi Kusumawati', NULL, 'Permohonan'),
(397, '33/PN.01.01/VI/2022', '2022-06-14', 'Permohonan Asman Surat Pernyataan Menerrima Hibah Badan Riset dan Inovasi Nasional dan Data Hibah (lampiran)', 'Kepala Balitbangda Kota Surakarta', NULL, 'Permohonan'),
(398, '34/PN.01.01/VI/2022', '2022-06-14', 'Prakerin', 'Dekan Universitas Diponegoro Sekolah Vokasi', NULL, 'PRAKERIN'),
(399, '35/PN.01.01/VI/2022', '2022-06-15', 'Surat Pemberitahuan', 'PT Shopee Internasional Indonesia', NULL, NULL),
(400, '36/PN.01.01/VI/2022', '2022-06-15', 'Psikotes bagi Karyawan STP', 'Lembaga Psikologi Terapan Citra Indonesia', NULL, 'PSIKOTES'),
(401, '37/PN.01.01/VI/2022', '2022-06-16', 'Pemberitahuan Tambah Daya di Solo Technopark', 'Sekretariat Daerah Kota Surakarta', NULL, NULL),
(402, '38/PN.01.01/VI/2022', '2022-06-15', 'Psikotes bagi Karyawan STP', 'Lembaga Psikologi Terapan Citra Indonesia', NULL, 'PSIKOTES'),
(403, '39/PN.01.01/VI/2022', '2022-06-17', 'Psikotes bagi Karyawan STP', 'Lembaga Psikologi Terapan Citra Indonesia', NULL, 'PSIKOTES'),
(404, '40/PN.01.01/VI/2022', '2022-06-17', 'Surat Keterangan', NULL, NULL, 'SURAT KETERANGAN'),
(405, '41/PN.01.01/VI/2022', '2022-06-17', 'Surat Keterangan', NULL, NULL, 'SURAT KETERANGAN'),
(406, '42/PN.01.01/VI/2022', '2022-06-20', 'Undangan', 'MARS, IMPULS, KONCONE NGEMIL, DIACARE, LAMPU TERAHY 6 CHANEL, BURNER BIOMASS, PUPUK 54, DIFEEDING, EMRYS, SANITIZER GOOD WATER', NULL, 'UNDANGAN'),
(407, '420/7/20/I/2022', '2023-06-22', 'Serah Terima Barang Milik Daerah Berupa Tanah (KIB A), Peralatan dan Mesin (KIB B), Gedung dan Bangunan (KIB C), Jalan Irigasi dan Jaringan (KIB D), Aset Tetap Lainnya (KIB E), Kontruksi dalam Pengerjaan (KIB F), dan Aset Tak Berwujud', NULL, NULL, 'BERITA ACARA'),
(408, '45/PN.01.01/VI/2022', '2022-06-22', 'Kunjungan', 'Kepala Sekolah SMK AL-KHOIRIYAH BARON', NULL, 'Kunjungan'),
(409, '46/PN.01.01/VI/2022', '2022-06-22', 'Kunjungan', 'Kepala Sekolah SMK AL FARIZI BANTAUJEG', NULL, 'Kunjungan'),
(410, '47/PN.01.01/VI/2022', '2022-06-22', 'Kunjungan', 'Kepala Sekolah STMIK YADIKA BANGIL', NULL, 'Kunjungan'),
(411, '48/PN.01.01/VI/2022', '2022-06-22', 'Jawaban Surat Permohonan Pinjam Tempat', 'Direktur Reputasi Akademik dan Kemahasiswaan Universitas Sebelas Maret', NULL, 'JAWABAN'),
(412, '49/PN.01.01/VI/2022', '2022-06-23', 'Permohonan Peminjaman Market Mini Gas Plant', 'Bapak Nurwahidi Kepala SKK Jabanusa', NULL, 'Permohonan'),
(413, '50/PN.01.01/VI/2022', '2022-06-24', 'Permohonan Pengisian Market Blok Cepu di Migas Corner Solo Technopark', 'Direktur PT Sarana Patra Hulu Cepu (SPHC)', NULL, 'Permohonan'),
(414, '51/PN.01.01/VI/2022', '2022-06-24', 'Undangan Seminar Beasiswa Solo Technopark \"The Secret of Preparing Your Outstanding Motivation Letter and CV\"', 'Mahasiswa Magang MSIB Solo Technopark', NULL, 'UNDANGAN'),
(415, '52/PN.01.01/VI/2022', '2022-06-24', 'Kunjungan', 'POLITEKNIK NEGERI CILACAP', NULL, 'Kunjungan'),
(416, '53/PN.01.01/VI/2022', '2022-06-27', 'Kunjungan', 'SMK NEGERI 1 MAJALENGKA', NULL, 'Kunjungan'),
(417, '54/PN.01.01/VI/2022', '2022-06-27', 'Surat Keterangan', 'Fahmi Muallif', NULL, 'SURAT KETERANGAN'),
(418, '55/PN.01.01/VI/2022', '2022-06-29', 'Undangan Sosialisasi Ekspor ke Hongkong', NULL, NULL, 'UNDANGAN'),
(419, '56/PN.01.01/VI/2022', '2022-06-29', 'Pengajuan Kerjasama', 'Direktur Utama PT Indofarma Tbk', NULL, 'Pengajuan'),
(420, '57/PN.01.01/VI/2022', '2022-06-30', 'Permohonan Pengesahan Laporan Pendapatan dan Realisasi Biaya BLUD BLUD UPT Solo Technopark', 'Kepala BPPKAD selaku PPKD', NULL, 'Permohonan'),
(421, '1/PN.01.01/VII/2022', '2022-07-01', 'Surat Pengantar', 'Plt. Sekretariat Utama Badan Riset dan Inovasi Nasional', NULL, 'SURAT PENGANTAR'),
(422, '2/PN.01.01/VII/2022', '2022-07-04', 'Kunjungan', 'Direktur Akademi Komunitas ATMA', NULL, 'Permohonan'),
(423, '3/PN.01.01/VII/2022', '2022-07-04', 'Kunjungan', 'Dekan Fakultas Teknik UNIMMA', NULL, 'Permohonan'),
(424, '4/PN.01.01/VII/2022', '2022-06-30', 'Kunjungan', 'Kepala Sekolah SMK Merdeka Soreang', NULL, 'Permohonan'),
(425, '5/PN.01.01/VII/2022', '2022-07-06', 'Kunjungan', 'Kepala Sekolah SMK NEGERI 1 GENENG NGAWI', NULL, 'Permohonan'),
(426, '6/PN.01.01/VII/2022', '2022-07-06', 'Training for Apprentice Program - Natural Gas Processing & Process Control', 'Husky-CNOOC Madura Limited Tim Pengadaan/Procurement Team Indonesia Stock Exchange Building, Tower 1, 24th Floors. Jl Jend. Sudirman Kav. 52 Jakarta', NULL, 'Penawaran'),
(427, '7/PN.01.01/VII/2022', '2022-07-11', 'Permohonan Souvenir/Cenderamata', 'Kepala Bagian Protokol Komunikasi dan Administrasi Pimpinan Sekretariat Daerah Kota Surakarta', NULL, 'Permohonan'),
(428, '8/PN.01.01/VII/2022', '2022-07-11', 'Permohonan Pembayaran', 'Bapak Nandan', NULL, 'Permohonan'),
(429, '9/PN.01.01/VII/2022', '2022-07-11', 'Surat Pernyataan Tanggungjawab Mutlak', NULL, NULL, 'SURAT PERNYATAAN'),
(430, '10/PN.01.01/VII/2022', '2022-07-13', 'Proposal', 'Bapak Oto Gurnita Direktur SDM dan Penunjang Bisnis. PT Pertamina Hulu Energi', NULL, 'Permohonan'),
(431, '11/PN.01.01/VII/2022', '2022-07-11', 'Permohonan Fasilitasi Applied', 'PolTek ATMI Up. Bp Iskandar', NULL, 'Permohonan'),
(432, '12/PN.01.01/VII/2022', '2022-07-15', 'Magang', 'Kaprodi S1 Managemen Univ. Kristen Satya Wacana', NULL, 'Permohonan'),
(433, '13/PN.01.01/VII/2022', '2022-07-21', 'Undangan farewell MSIB STP Batch 1', 'Mentor, Asisten Mentor, dan Mahasiswa Program Magang Bersertifikat STP Tahun 2022', NULL, 'UNDANGAN'),
(434, '14/PN.01.01/VII/2022', '2022-07-22', 'Permohonan Peminjaman Tempat', 'PT Shopee Internasional Indonesia', NULL, 'Permohonan'),
(435, '15/PN.01.01/VII/2022', '2022-07-26', 'Permohonan Data Desain 3D untuk Indonesia Digital Technopark', 'PT Shopee Internasional Indonesia', NULL, 'Permohonan'),
(436, '16/PN.01.01/VII/2022', '2022-07-26', 'Tim Pendamping Hilirisasi Hasil Riset', 'Kepala Balitbangda Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(437, '17/PN.01.01/VII/2022', '2022-07-26', 'Tim Pendampingan Produk Pemenang Lomba KRENOVA Kota Surakarta', 'Kepala Balitbangda Kota Surakarta c/q Bidang Inovasi dan Teknologi', NULL, 'JAWABAN'),
(438, '18/PN.01.01/VII/2022', '2022-07-26', 'Permohonan Tim Penilai Harga Taksiran Bongkaran', 'Kepala BPKAD Kota Surakarta Cq. Bagian Aset', NULL, 'Permohonan'),
(439, '19/PN.01.01/VII/2022', '2022-07-28', 'Permohonan Fasilitasi Perataan Area', 'PT Shopee Internasional Indonesia', NULL, 'Permohonan'),
(440, '20/PN.01.01/VII/2022', '2022-07-28', 'Pengajuan Desain Pendestrian', 'Kepala Dinas Pekerjaan Umum dan Penataan Ruang Kota Surakarta', NULL, 'Pengajuan'),
(441, '21/PN.01.01/VIII/2022', NULL, 'Permohonan Persetujuan Pengeboran', 'Kepala Dinas Energi dan Sumber Daya Mineral (ESDM) Provinsi JATENG', NULL, 'Permohonan'),
(442, '22/PN.01.01/VII/2022', '2022-07-29', 'Surat pengenalan program pengembangan SDM', 'Bapak Agus Amperianto General Manager Zona 4 PT Pertamina Hulu Rokan', NULL, NULL),
(443, '23/PN.01.01/VII/2022', '2022-07-29', 'Permohonan Peminjaman Tempat', 'PT Shopee Internasional Indonesia', NULL, 'Permohonan'),
(444, '1/PN.01.01/VIII/2022', '2022-08-01', 'Surat Pengantar Kertas Kerja Seleksi Mahasiswa Peserta Program MSIB Angkatan 3 Tahun 2022', 'Kepala Program MSIB Angkatan 3 Tahun 2022', NULL, 'SURAT PENGANTAR'),
(445, '2/PN.01.01/VIII/2022', '2022-08-01', 'Permohonan Bantuan Fasilitasi Pengurusan KKPR', 'Kepala Balitbang Kota Surakarta', NULL, 'Permohonan'),
(446, '3/PN.01.01/VIII/2022', '2022-08-02', 'Permohonan Cuti Keperluan Keluarga', 'Kepala Balitbang Kota Surakarta', NULL, 'Permohonan'),
(447, NULL, '2022-08-02', 'Kunjungan', 'Dekan Fakultas Teknik Univ. Merdeka Madiun', NULL, NULL),
(448, '5/PN.01.01/VIII/2022', '2022-08-01', 'Letter Of Acceptance', 'Kepala Program MSIB Angkatan 3 Tahun 2022', NULL, 'SURAT PERNYATAAN'),
(449, '6/PN.01.01/VIII/20222', '2022-08-01', 'Letter Of Assignment for Mentors', 'Kepala Program MSIB Angkatan 3 Tahun 2022', NULL, 'SURAT PERNYATAAN'),
(450, '7/PN.01.01/VIII/2022', '2022-08-08', 'Laporan Sepeda Motor Tertinggal', 'Kepala Kepolisian Sektor Jebres Surakarta', NULL, 'Laporan'),
(451, '8/PN.01.01/VIII/2022', '2022-08-15', 'Surat Balasan Peminjaman Tempat', 'Bapak Syariful Imam Hadi Cahyono, CEO Scholars Official', NULL, 'SURAT BALASAN'),
(452, '9/PN.01.01/VIII/2022', '2022-08-16', 'Undangan', 'Mentor dan Asisten Mentor', NULL, 'UNDANGAN'),
(453, '10/PN.01.01/VIII/2022', '2022-08-18', 'Undangan', 'Kepala Balitbangda Kota Surakarta & Arsip', NULL, 'UNDANGAN'),
(454, '11/PN.01.01/VIII/2022', '2022-08-23', 'Kunjungan', 'Kepsek SMK MA\'ARIF 1 KALIBAWANG', NULL, 'SURAT BALASAN'),
(455, '12/PN.01.01/VIII/2022', '2022-08-23', 'Kunjungan', 'Kepsek SMK MA\'ARIF TEGALREJO', NULL, 'SURAT BALASAN'),
(456, '13/PN.01.01/VIII/2022', '2022-08-23', 'Kunjungan', 'Kepsek SMK MERDEKA SOREANG', NULL, 'SURAT BALASAN'),
(457, '14/PN.01.01/VIII/2022', '2022-08-23', 'Kunjungan', 'Kepsek SMK N 1 SELO BOYOLALI', NULL, 'SURAT BALASAN'),
(458, '15/PN.01.01/VIII/2022', '2022-08-23', 'Kunjungan', 'Kepsek SMK N WIDYA TARUNA', NULL, 'SURAT BALASAN'),
(459, '16/PN.01.01/VIII/2022', '2022-08-23', 'Permohonan Peminjaman Tempat', 'PT Shopee Internasional Indonesia', NULL, 'Permohonan'),
(460, '17/PN.01.01/VIII/2022', '2022-08-24', 'Kunjungan', 'SMK Roudlotul Huda Magetan', NULL, 'Permohonan'),
(461, '18/PN.01.01/VIII/2022', '2022-08-24', 'Undangan', 'Prodi dan Tenant IBT', NULL, 'UNDANGAN'),
(462, '19/PN.01.01/VIII/2022', '2022-08-25', 'Informasi Ketersediaan tempat', 'Bapak Asmoro Nurhadi P., S.Sn.,M.Sn. Ketua Program Studi DKV ISI Surakarta', NULL, 'INFORMASI'),
(463, '20/PN.01.01/VIII/2022', '2022-08-29', 'Undangan. Rapat koordinasi terkait saluran drainase di Jl. Ki Hajar Dewantara, Jebres, Surakarta.', '1. Asisten Perekonomian dan Pembangunan Sekda Kota Surakarta 2. Bagian Perekonomian dan SDA Setda Kota Surakarta 3. Balitbangda Kota Surakarta 4. Dinas Pekerjaan Umum dan Penataan Ruang Kota Surakarta 5. BPKAD Kota Surakarta 6. Dinas Koperasi UKM Perin 7.', NULL, 'UNDANGAN'),
(464, '21/PN.01.01/VIII/2022', '2022-08-30', 'Permohonan Peminjaman Tempat', 'PT. Bank Mandiri Tbk', NULL, 'Permohonan'),
(465, '22/PN.01.01/VIII/2022', '2022-08-31', 'Kunjungan', 'Pimpinan Exxon Mobil', NULL, 'Permohonan'),
(466, '23/PN.01.01/VIII/2022', '2022-08-30', 'Berita Acara Hasil Rekonsiliasi Barang Milik Daerah Semester 1', 'Badan Penelitian DanPengembangan Daerah', NULL, 'Berita'),
(467, '24/PN.01.01/VIII/2022', NULL, 'Permohonan narasumber I-CON', 'Direktur', NULL, 'Permohonan'),
(468, '2/PN.01.01/IX/2022', '2022-09-02', 'Permohonan Informasi On Job Training', 'Direktur PT. Batam Teknik (Batam Aero Technic)', NULL, 'Permohonan'),
(469, '3/PN.01.01/IX/2022', '2022-09-02', 'Informasi Biaya Pengembangan Program Pada Program Magang dan Studi Independen Bersertifikat Angkatan II', 'Pejabat Pembuat Komitmen Program Kampus Merdeka Direktorat Pembelajaran dan Kemahasiswaan Dirijen Pendidikan Tinggi. Riset dan Teknologi Kementerian Pendidikan, Kebudayaan, Riset dan Teknologi', NULL, 'INFORMASI'),
(470, '4/PN.01.01/IX/2022', '2022-09-12', 'Permohonan Asman Keputusan Walikota Surakarta tentang Besaran Remunerasi Pejabat Pengelola dan Pegawai Non Pegawai Negeri Sipil Badan Layanan Umum Daerah Unit Pelaksana Teknis Solo Technopark pada Badan Penelitian dan Pengembangan Daerah Kota Surakarta Ta', 'Walikota Surakarta', NULL, 'Nota Dinas'),
(471, '5/PN.01.01/IX/2022', '2022-09-12', 'Permohonan Fasilitasi', 'Kepala Balitbangda kota Surakarta', NULL, 'Permohonan'),
(472, '6/PN.01.01/IX/2022', '2022-09-12', 'Undangan Peresmian Pelatihan Oil and Gas Skill Centre of Indonesia UPT Solo Technopark - Pertamina Hulu Energi', 'Bp. Agung Riyadi Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta', NULL, 'UNDANGAN'),
(473, '6/PN.01.01/IX/2022', '2022-09-12', 'Undangan Peresmian Pelatihan Oil and Gas Skill Centre of Indonesia UPT Solo Technopark - Pertamina Hulu Energi', 'Walikota Surakarta', NULL, 'UNDANGAN'),
(474, '6/PN.01.01/IX/2022', '2022-09-12', 'Undangan Peresmian Pelatihan Oil and Gas Skill Centre of Indonesia UPT Solo Technopark - Pertamina Hulu Energi', 'Bp. Oto Gurtina Direktur SDM Technopark Pertamina Hulu Energi', NULL, NULL),
(475, '8/PN.01.01/IX/2022', '2022-09-13', 'Tim Teknis Penyusunan \" kajian dampak sosial dan lingkungan penggunaan islamic center\"', 'Kepala Badan Penelitian dan Pengembangan Daerah Kota Surakarta c/q Bidang Penelitian dan Pengembangan', NULL, NULL),
(476, '10/PN.01.01/IX/2022', NULL, 'Permohonan Fasilitas Pembahasan Draft Perjanjian Sewa Menyewa Gd. Ex Teaching Factory Kaw. Solo TechnoPark antara Shopee dengan Solo TechnoPark', 'Kepala Balitbangda kota Surakarta', NULL, 'Permohonan'),
(477, '11/PN.01.01/IX/2022', '2022-09-20', 'Surat Balasan Sponsorship', 'Tim Bengawan UNS cc. Pembimbing Tim Bengawan UNS', NULL, 'Permohonan'),
(478, '12/PN.01.01/IX/2022', '2022-09-20', 'Surat Balasan Permohonan Izin Penggunaan Fasilitas STP', 'Bp. Handika Wiguna Jahja Direktur PT Shopee International Indonesia', NULL, 'Permohonan'),
(479, '13/PN.01.01/IX/2022', '2022-09-21', 'Permohonan Rekomendasi Mengikuti Kompetisi Roket Air Tingkat Regional Kota Surakarta Tahun 2022', 'Kepala BPPMK Wilayah III Provinsi Jawa Tengah', NULL, 'Permohonan'),
(480, '14/PN.01.01/IX/2022', '2022-09-21', 'Permohonan Rekomendasi Mengikuti Kompetisi Roket Air Tingkat Regional Kota Surakarta Tahun 2022', 'Kepala Dinas Pendidikan Kota Surakarta', NULL, 'Permohonan'),
(481, '15/PN.01.01/IX/2022', '2022-09-21', 'Permohonan Rekomendasi Mengikuti Kompetisi Roket Air Tingkat Regional Kota Surakarta Tahun 2022', 'Kepala Pusat Data dan Informasi Badan Riset dan Inovasi Nasional c.q Bp. Riki Ramdani Saputra', NULL, 'Permohonan'),
(482, '15/PN.01.01/IX/2022', '2022-09-21', 'Permohonan Menjadi Juri Dalam Kompetisi Roket Air Tingkat Regional Kota Surakarta Tahun 2022', 'Kepala Pusat Data dan Informasi Badan Riset dan Inovasi Nasional c.q Bp. Riki Ramdani Saputra', NULL, 'Permohonan'),
(483, '16/PN.01.01/IX/2022', '2022-09-21', 'Permohonan Rekomendasi Mengikuti Kompetisi Roket Air Tingkat Regional Kota Surakarta Tahun 2022', 'Kapolsek Jebres', NULL, 'Permohonan'),
(484, '17/PN.01.01/IX/2022', '2022-09-21', 'Undangan Sosialisasi KRAR 2022', 'Kepala Sekolah', NULL, 'UNDANGAN'),
(485, '18/PN.01.01/IX/2022', '2022-09-22', 'Permohonan Souvenir / Cenderamata', 'Kepala Bagian Protokol Komunikasi dan Administrasi Pimpinan Sekretariat Daerah Kota Surakarta', NULL, 'Permohonan'),
(486, '19/PN.01.01/IX/2022', '2022-09-22', 'Peminjaman Tempat Pelatihan Kewirausahaan NYE Unisri Batch 9', 'Pengelola Mandiri Digiprenur Hub Solo TechnoPark', NULL, 'Permohonan'),
(487, '25/PN.01.01/IX/2022', '2022-09-28', 'Undangan Workshop dan Kompetisi Roket Air Tingkat Regional Kota Surakarta Tahun 2022', 'Kepala Sekolah u.p Guru Pnedamping Rokket Air', NULL, 'UNDANGAN'),
(488, '26/PN.01.01/IX/2022', '2022-09-28', 'Permohonan liputan kompetisi roket air tingkat regional kota surakarta tahun 2022', NULL, NULL, 'Permohonan'),
(489, '27/PN.01.01/IX/2022', '2023-09-26', 'BAST Pelatihan Introduction to Oil&Gas-Pre Employmeny-BPA', 'Cut Milani Silvina Pjs. Manager Human Capital Business Partner', NULL, 'Berita Acara'),
(490, '28/PN.01.01/IX/2022', '2023-09-26', 'BAST Pelatihan Introduction to Oil&Gas-Pre Employmeny-BPA', 'M. Indra Kusumah Manager Human Capital Business Partner', NULL, 'Berita Acara'),
(491, '005/7/002/IX/2021', '2021-09-01', 'Undangan', NULL, NULL, 'UNDANGAN'),
(492, '005/7/002/IX/2021', '2021-09-30', 'Permohonan Pemindahan Tiang Telepon', 'Pimpinan PT Telkom Indonesia Wilayah Surakarta', NULL, 'Permohonan'),
(493, '005/7/003/IX/2021', '2021-09-09', 'Undangan', '(Daftar Undangan Terlampir)', NULL, 'UNDANGAN'),
(494, '005/7/003/IX/2021', '2021-09-09', 'Undangan', 'Kabid. Litbang BAPPPEDA Kota Surakarta', NULL, 'UNDANGAN'),
(495, '005/7/003/IX/2021', '2021-09-09', 'Undangan', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(496, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Satuan Kerja Khusus Pelaksana Kegiatan Usaha Hulu Minyak dan Gas Bumi (SKK Migas)', NULL, 'UNDANGAN'),
(497, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Direktur Petrotekno', NULL, 'UNDANGAN'),
(498, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Regional CEO Region 7 Jawa 2 Bank Mandiri', NULL, 'UNDANGAN'),
(499, '005/004/IX/2021', '2021-09-14', 'Undangan', 'GH Government Solution Group Bank Mandiri', NULL, 'UNDANGAN'),
(500, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Head Bank Mandiri Area Solo', NULL, 'UNDANGAN'),
(501, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Direktur Akademi Komunitas Tekstil Solo', NULL, 'UNDANGAN'),
(502, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Bapppeda Kota Surakarta', NULL, 'UNDANGAN'),
(503, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Bagian Protokol dan Komunikasi Pimpinan dan Pemerintah Kota Surakarta', NULL, 'UNDANGAN'),
(504, '005/004/IX/2021', '2021-09-14', 'Undangan', 'Kepala Bagian Kerjasama Pemerintah Kota Surakarta', NULL, 'UNDANGAN'),
(505, '005/005/IX/2021', '2021-09-15', 'Undangan Penjajakan Kolaborasi antara Kedaireka dengan Solo Technopark', 'Ketua Tim Kerja Akselerasi Kampus Merdeka Kedaireka (Kedaulatan Indonesia dalam Reka Cipta)', NULL, 'UNDANGAN'),
(506, '005/005/IX/2021', '2021-09-15', 'Undangan Penjajakan Kolaborasi antara Kedaireka dengan Solo Technopark', 'CEO KESAN-Kedaulatan Santri', NULL, 'UNDANGAN'),
(507, '005/005/IX/2021', '2021-09-22', 'Undangan', NULL, NULL, 'UNDANGAN'),
(508, '005/006/IX/2021', '2021-09-15', 'Undangan Penjajakan Kolaborasi antara Kedaireka dengan Solo Technopark', 'CEO KESAN-Kedaulatan Santri', NULL, 'UNDANGAN'),
(509, '005/006/IX/2021', '2021-09-22', 'Permohonan dan Undangan Narasumber/Mentor', NULL, NULL, 'Permohonan'),
(510, '050/8.231', '2021-09-02', 'Undangan', NULL, NULL, 'UNDANGAN'),
(511, NULL, '2021-09-14', 'Statement of Anti-Bribery & Coruption', 'Procurement Group PT. Aplikasi Karya Anak Bangsa (GOJEK)', NULL, 'SURAT PERNYATAAN'),
(512, NULL, '2021-09-23', 'Surat Dukungan', NULL, NULL, 'SURAT DUKUNGAN'),
(513, '1/PN.01.01/X/2022', '2022-10-03', 'Permohonan penjelasan harga sewa gedung Ex teaching factory kawasan UPT STP', 'KJPP Sih Wiryadi & Rekan', NULL, 'Permohonan'),
(514, '3/PN.01.01/X/2022', '2022-10-04', 'Kunjungan 50 peserta', 'Kepala Sekolah SMK DARUSSALAM', NULL, 'Kunjungan'),
(515, '4/PN.01.01/X/2022', '2022-10-04', 'Kunjungan 62 peserta', 'Kepala Sekolah SMK DARUSSALAM', NULL, 'Kunjungan'),
(516, '5/PN.01.01/X/2022', '2022-10-04', 'Nota dinas, informasi ketersediaan space/area Gd. Solo Trade Center di kawasan STP', 'Yth. Walikota surakarta', NULL, 'UNDANGAN'),
(517, '7/PN.01.01/X/2022', '2022-10-10', 'Surat Penawaran Sewa', 'PT. GLOBAL JET EXPRESS J&T Express Up. Bapak Robin Lo', NULL, NULL),
(518, '9/PN.01.01/X/2022', '2022-10-13', 'Kunjungan 83 Orang', 'SMKN 13 SURABAYA', NULL, 'Kunjungan'),
(519, '10/PN.01.01/X/2022', '2022-10-13', 'Kunjungan 87 Orang', 'SMKN 1 BELITANG MADANG RAYA', NULL, 'Kunjungan'),
(520, '11/PN.01.01/X/2022', '2022-10-13', 'Undangan Talkshow Mall-ee \"Dari Lokal Menuju Pasar Digital; Pengenalan E-commerce Mall-ee\"', 'Bapak Debian Panjadinata', NULL, 'UNDANGAN'),
(521, '12/PN.01.01/X/2022', NULL, 'Berita acara serah terima', 'amilia elvandari, yudit cahyantoro', NULL, NULL),
(522, '13/PN.01.01/X/2022', '2022-10-21', 'Surat pernyataan', 'Yudit Cahyantoro', NULL, NULL),
(523, '14/PN.01.01/X/2022', NULL, 'Berita acara serah terima', 'Rizky yuna, Yudit Cahyantoro', NULL, NULL),
(524, '15/PN.01.01/X/2022', '2022-10-24', 'Nota dinas, Persetujuan pengambilan tanah urukan oleh perumda taman satwa taru jurug', 'Yth. Kepala Balitbangda Kota Surakarta', NULL, NULL),
(525, '16/PN.01.01/X/2022', '2022-10-24', 'Permohonan personil sebagai direksi lapangan pemeliharaan gedung', 'kepala DPUPR Kota Surakrta', NULL, 'Permohonan'),
(526, '17/PN.01.01/X/2022', '2022-10-31', 'Permohonan mobil dinas', 'Sekretaris daerah', NULL, 'Permohonan'),
(527, '1/PN.01.01/XI/2022', '2022-11-01', 'Undangan peserta kegiatan sosialisasi website indonesia digital technopark modul E-commerce untuk UMKM', 'UMKM Binaan STP', NULL, 'UNDANGAN'),
(528, '3/PN.01.01/XI/2022', '2022-11-03', 'Permohonan personil dan peminjaman peralatan', 'Kepala dinas pemadam kebakaran SKA', NULL, 'Permohonan'),
(529, '4/PN.01.01/XI/2022', '2022-11-11', 'Undangan, rapat koordinasi pekerjaan belanja modal alat bengkel dan mesin lainnya (alat teknologi)', NULL, NULL, 'UNDANGAN'),
(530, '11/PN.01.01/XI/2022', '2022-11-28', 'Surat pengantar', 'Kepala Balitbangda', NULL, NULL),
(531, '12/PN.01.01/XI/2022', '2022-11-28', 'Magang industri', 'Yth. Dekan Fakultas Teknik UNNES', NULL, NULL),
(532, '15/PN.01.01/XI/2022', '2022-11-29', 'Kunjungan (135 orang)', 'SMK NU Suruh Semarang', NULL, 'Kunjungan'),
(533, '16/PN.01.01/XI/2022', '2022-11-29', 'Kunjungan (51 Peserta)', 'Kepala Sekolah SMK Kosgoro Nganjuk', NULL, 'Kunjungan'),
(534, '17/PN.01.01/XI/2022', '2022-11-29', 'Kunjungan (100 Peserta)', 'Kepala Sekolah SMK Suna Drajat Lamongan', NULL, 'Kunjungan'),
(535, '18/PN.01.01/XI/2022', '2022-11-29', 'konvirmasi magang/praktik Kerja Lapangan (PKL)', 'Bapak Direktur Pudir 3 Bid. Kerjasama Hubungan Industri Politeknik Pratama Mulia Surakarta', NULL, NULL),
(536, '6/PN.01.01/XII/2022', '2022-12-13', 'Undangan pemmeriksaan teknis alat teknologi', 'Balitbangda', NULL, 'Undangan'),
(537, '7/PN.01.01/XII/2022', '2022-12-14', 'ususlan pengurus barang pembantu UPTB solo technopark', 'balitbangda', NULL, 'Usulan'),
(538, '8/PN.01.01/XII/2022', '2022-12-15', 'Menindaklanjuti surat NO 005/1473/86/VIII/2022 dari SMK Negeri 1 Sawit Boyolali', 'SMK Negeri 1 Sawit Boyolali', NULL, 'Prakerin'),
(539, '9/PN.01.01/XII/2022', '2022-12-15', 'Prakerin No. 420/897 dari SMK Negeri 5 Surakarta', 'Kepala Sekolah SMK Negeri 5 Surakarta', NULL, 'Prakerin'),
(540, '10/PN.01.01/XII/2022', '2022-12-14', 'penerimaan permohonan kunjungan industri', 'SMK NEGERI 1 REJOTANGEN TULUNGAGUNG', NULL, 'Kunjungan'),
(541, '11/PN.01.01/XII/2022', NULL, 'Berita Acara Serah Terima Pelatihan Introduction to Oil & Gas - Pre Employment - BPA', 'Isye Wudiasari', NULL, 'Berita Acara'),
(542, '12/PN.01.01/XII/2022', '2022-12-19', 'Undangan mengikuti proses pemasukan dan pembukaan penawaran penjualan bongkaran gedung TF UPT Solo Technopark kota surakarta', 'Peserta Lelang', NULL, 'Undangan'),
(543, '13/PN.01.01/XII/2022', '2022-12-19', 'menindaklanjuti surat dari SMK YP IPPI JAKARTA perihal permohonan kunjungan industri', 'SMK YP IPPI JAKARTA', NULL, 'Kunjungan'),
(544, '14/PN.01.01/XII/2022', '2022-12-19', 'menindaklanjuti surat dari SMK YOS SUDARSO JERUKLEGI perihal permohonan kunjungan industri', 'SMK YOS SUDARSO JERUKLEGI', NULL, 'Kunjungan'),
(545, '15/PN.01.01/XII/2022', '2022-12-19', 'Menindak lanjuti surat NO: 423.4/356 dari SMK TUNAS HARAPAN PATI tentang permohonan praktek kerja industri', 'SMK TUNAS HARAPAN PATI', NULL, 'Prakerin'),
(546, '16/PN.01.01/XII/2022', '2022-12-19', 'menindaklanjuti surat dari SMKN 1 KALASAN SELEMAN perihal permohonan kunjungan industri', 'SMKN 1 KALASAN SELEMAN', NULL, 'Kunjungan'),
(547, '17/PN.01.01/XII/2022', '2022-12-19', 'menindaklanjuti surat dari SMK KARTIKA XIX-1 BANDUNG perihal permohonan kunjungan industri', 'SMK KARTIKA XIX-1 BANDUNG', NULL, 'Kunjungan'),
(548, '18/PN.01.01/XII/2022', '2022-12-23', 'Menindaklanjuti surat dari DPC PDI Perjuangan perihal dispensasi ijin kerja', 'Ketua DPC PDI Perjuangan Kota Surakarta', NULL, 'Permohonan'),
(549, '19/PN.01.01/XII/2022', '2022-12-23', 'Menindaklanjuti surat dari DPC PDI Perjuangan perihal dispensasi ijin kerja', 'Ketua DPC PDI Perjuangan Kota Surakarta', NULL, 'Permohonan'),
(550, '20/PN.01.01/XII/2022', '2022-12-23', 'Menindaklanjuti surat dari DPC PDI Perjuangan perihal dispensasi ijin kerja', 'Ketua DPC PDI Perjuangan Kota Surakarta', NULL, 'Permohonan'),
(551, '21/PN.01.01/XII/2022', '2022-12-23', 'Menindaklanjuti surat dari DPC PDI Perjuangan perihal dispensasi ijin kerja', 'Ketua DPC PDI Perjuangan Kota Surakarta', NULL, 'Permohonan'),
(552, '22/PN.01.01/XII/2022', '2022-12-23', 'Menindaklanjuti surat dari DPC PDI Perjuangan perihal dispensasi ijin kerja', 'Ketua DPC PDI Perjuangan Kota Surakarta', NULL, 'Permohonan'),
(553, '23/PN.01.01/XII/2022', '2022-12-23', 'Undangan pekerjaan pemeliharaan/rehabilitasi Gedung Kantor UPT Solo Technopark pada Badan Penelitian dan Pengembangan Daerah Kota Surakarta', 'Dananjaya Putra Martha, ST', NULL, 'Undangan'),
(554, '24/PN.01.01/XII/2022', '2022-12-26', 'Undangan Pemeriksaan Teknis Alat Teknologi', 'Agung Riyadi, S.Sos, SH, MM; Christian Ardinto ST; Tri Rusnita, SE, MM; Budi Purwanto, ST; Viriani Noviasari Dewi, S.Sos, MM; Susilowati, SE, Akt; Rony Widjanarko, SH; Sugeng Mulyadi; Agus Tri H, SE; Ani Anggraeni, SE', NULL, 'Undangan'),
(555, '25/PN.01.01/XII/2022', '2022-12-26', 'Berita Acara Serah Terima Hasil Penjualan Barang Milik Daerah (BMD)', NULL, NULL, 'Berita Acara'),
(556, '26/PN.01.01/XII/2022', '2022-12-26', 'Surat Perintah Pengangkutan', 'Andhika Adhi Perkasa', NULL, 'Pemberitahuan'),
(557, '27/PN.01.01/XII/2022', '2022-12-29', 'Undangan Meresmikan Kawasan Solo Techno Park', 'Presiden Republik Indonesia (Bapak Ir.H.Joko Widodo)', NULL, 'Undangan'),
(558, '28/PN.01.01/XII/2022', NULL, 'Berita Acara Stock Opname Persediaan', NULL, NULL, 'Berita Acara'),
(559, '29/PN.01.01/XII/2022', '2022-12-28', 'Berita Acara Verifikasi Hasil Sensus BMD', NULL, NULL, 'Berita Acara'),
(560, '30/PN.01.01/XII/2022', '2022-12-30', 'Surat Kuasa Pembayaran PDAM Gd Gumarang dan Gd Sembrani', 'Handhika Wiguna Jahja Direktur PT Shopee International Indonesia', NULL, NULL),
(561, '1/PN.01.01/I/2023', '2023-01-04', 'Undangan Rapat Koordinasi Evaluasi Review Masterplan Kawasan Solo Technopark Kota Surakarta Tahun 2023', NULL, NULL, 'Undangan'),
(562, '2/PN.01.01/I/2023', '2023-01-04', 'Permohonan Perubahan Nama Rekening Nomor: 1380022007707 Atas nama UPT SOLO TECHNOPARK', 'Kepala Bank Mandiri KK Solo UNS', NULL, 'Permohonan'),
(563, '4/PN.01.01/I/2023', '2023-01-03', 'Informasi sewa menyewa ruang kantor PT Tokopedia di Gd. Solo Trade Center UPTD Kawasan Sains dan Teknologi', 'PT. Tokopedia', NULL, 'Informasi'),
(564, '5/PN.01.01/I/2023', '2023-01-06', 'Permohonan Pengambilan Dokumentasi Kegiatan', 'Mitra KST Solo Techopark', NULL, 'Permohonan'),
(565, '6/PN.01.01/I/2023', '2023-01-06', 'Surat Pengantar Usulan Nama Kuasa Pengguna Anggaran (KPA)', 'Kepala Badan Pengelola Keuangan dan Aset Daerah Kota Surakarta', NULL, 'Surat Pengantar'),
(566, '7/PN.01.01/I/2023', '2023-01-06', 'Pemberitahuan Kegiatan Solo Technopark (Pekan Kolaborasi & Solo Techno Park Sports Week)', NULL, NULL, 'Pemberitahuan'),
(567, '8/PN.01.01/I/2023', '2023-01-09', 'Undangan Koordinasi Persiapan Peresmian Kawasan Sains dan Teknologi', 'Mitra Solo Technopark', NULL, 'Undangan'),
(568, '9/PN.01.01/I/2023', '2023-01-09', 'Surat Pengantar Usulan Admin Organisasi Penyelenggara ULAS dan SP4N LAPOR', 'Kepala Dinas Komunikasi Informatika Statistika Dan Persandian Kota Surakarta', NULL, 'Surat Pengantar'),
(569, '10/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat permohonan magang dari UNS pada tanggal 12 Desember 2022 No: 476/UN27.21.3.8/PK.01.06/2022', 'Kaprodi D3 Manajemen Bisnis', NULL, 'Magang'),
(570, '11/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat dari SMK N 1 Sedayu Gresik Nomor: 423.4/880/101.6.24.16/2022 perihal Permohonan Kunjungan Industri', 'Kepala Sekolah SMKN 1 Sedayu Gresik', NULL, 'Kunjungan'),
(571, '12/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat dari SMK Widya Praja Ungaran perihal Permohonan Kunjungan Industri', 'Kepala Sekolah SMK Widya Praja Ungaran', NULL, 'Kunjungan'),
(572, '13/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat dari SMK Krian 1 Sidoarjo perihal Permohonan Kunjungan Industri', 'Kepala Sekolah SMK Krian 1 Sidoarjo', NULL, 'Kunjungan'),
(573, '14/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat dari SMKS Katolik Santo Pius Blora', 'Kepala Sekolah SMKS Katolik Santo Pius Blora', NULL, 'Kunjungan'),
(574, '15/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat dari STKIP Muhammadiyah Blora perihal Permohonan Kunjungan Industri', 'Kepala Sekolah STKIP Muhammadiyah Blora', NULL, 'Kunjungan'),
(575, '18/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat permohonan tim pendamping produk hasil lomba Krenova Tingkat Kota Surakarta', 'Kepala Balitbangda', NULL, 'Permohonan'),
(576, '19/PN.01.01/I/2023', '2023-01-10', 'Menindaklanjuti surat permohonan personil Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi', 'Kepala Balitbangda', NULL, 'Permohonan'),
(577, '20/PN.01.01/I/2023', '2023-01-11', 'Undangan', 'Ibu SR Karyani Dewi', NULL, 'Undangan'),
(578, '21/PN.01.01/I/2023', '2023-01-10', 'Undangan Rapat Koordinasi Jasa Tenaga Kebersihan di UPTD Kawasan Sains dan Teknologi', NULL, NULL, 'Undangan'),
(579, '22/PN.01.01/I/2023', '2023-01-12', 'Permohonan Perubahan Nama Rekening Nomor : 1002000116 Atas Nama BEND PENGBEL PB STP', 'Kepala Bank Jateng Cabang Surakarta', NULL, 'Permohonan'),
(580, '24/PN.01.01/I/2023', '2023-01-13', 'Juri Lomba Kreativitas dan Inovasi Kota Surakarta tahun 2023', 'Kepala Balitbangda', NULL, 'Surat Biasa'),
(581, '25/PN.01.01/I/2023', '2023-01-16', 'Menindaklanjuti surat Sekretaris Daerah perihal Penunjukkan Personil dan Undangan', 'Kepala Dinas Tenaga Kerja Kota Surakarta', NULL, NULL),
(582, '26/PN.01.01/I/2023', '2023-01-16', 'Tanda Tangan Elektronik', 'Kepala Diskominfo SP', NULL, 'Permohonan'),
(583, '27/PN.01.01/I/2023', '2023-01-17', 'Permohonan ASN sebagai Bendahara BLUD', 'Kepala BKPSDM Kota Surakarta', NULL, 'Permohonan'),
(584, '31/PN.01.01/I/2023', '2023-01-20', 'Permohonan Perpanjangan Waktu Pembayaran Tagihan Layanan Telkom Bulan Januari 2023 dan Klarifikasi Tagihan', 'Manager PT. Telkom Indonesia (Persero) Tbk', NULL, 'Permohonan'),
(585, '32/PN.01.01/I/2023', '2023-01-24', 'Surat Pengantar Proposal Solo Creative & Techno', 'Mitra KST Solo Techopark', NULL, 'Undangan'),
(586, '33/PN.01.01/I/2023', '2023-01-24', 'Surat Dukungan CV Mekar Jaya', 'Panitia Perbaikan Pipa Transmisi ULP Perumda Air Minum Kota Surakarta', NULL, 'Surat Dukungan'),
(587, '34/PN.01.01/I/2023', '2023-01-24', 'Surat Dukungan CV Teken Mas', 'Panitia Perbaikan Pipa Transmisi ULP Perumda Air Minum Kota Surakarta', NULL, 'Surat Dukungan'),
(588, '35/PN.01.01/I/2023', '2023-01-25', 'Surat Penunjukan Panitia', 'Direktur PT Garena Indonesia', NULL, 'Permohonan'),
(589, '36/PN.01.01/I/2023', '2023-01-25', 'Menindaklanjuti Surat dari UNS tentang Permohonan Izin Magang', 'Kaprodi D3 Komunikasi terapan', NULL, 'Surat Balasan'),
(590, '37/PN.01.01/I/2023', '2023-01-25', 'Pemberitahuan perubahan nama menjadi UPTD Kawasan Sains dan Teknologi', 'Mitra KST Solo Techopark', NULL, 'Pemberitahuan'),
(591, '37/PN.01.01/I/2023', '2023-01-24', 'Pemberitahuan Kegiatan UPTD Kawasan Sains dan Teknologi', 'Kelurahan Jebres', NULL, 'Pemberitahuan'),
(592, '38/PN.01.01/I/2023', '2023-01-26', 'Menindaklanjuti surat Musrenbangcam tahun 2023 untuk izin peminjaman tempat', NULL, NULL, 'Surat Balasan'),
(593, '39/PN.01.01/I/2023', '2023-01-25', 'Surat Undangan Dewan Juri Createch: Kompetisi Adu Ide Bisnis', 'Kepala Balitbangda', NULL, 'Undangan'),
(594, '42/PN.01.01/I/2023', '2023-01-27', 'Menindaklanjuti surat izin PKL (2 orang)', 'Dekan Fakultas Teknis UNNES', NULL, 'Surat Balasan'),
(595, '43/PN.01.01/I/2023', '2023-01-30', 'Menindaklanjuti surat izin PKL (4 orang)', 'Kepala Sekolah SMK Pangudi Luhur Muntilan', NULL, 'Surat Balasan'),
(596, '44/PN.01.01/I/2023', '2023-01-30', 'Pemberitahuan terkait Pesangon', 'Ibu Susilowati, S.E.', NULL, 'Pemberitahuan'),
(597, '45/PN.01.01/I/2023', '2023-01-30', 'Memperhatikan surat permohonan kunjungan dari SMK N 1 BUAHDUA SUMEDANG', 'Kepala Sekolah SMKN 1 Buahdua Sumedang', NULL, 'Surat Balasan'),
(598, '46/PN.01.01/I/2023', '2023-01-30', 'Surat Pengantar pengisian kuesioner Dyah Zahra Wati', 'Mitra/Tenant Solo Technopark', NULL, 'Surat Pengantar'),
(599, '47/PN.01.01/I/2023', '2023-01-31', 'Memperhatikan surat permohonan PKL (4 orang)', 'Kepala Sekolah SMK Negeri 2 Karanganyar', NULL, 'Biasa'),
(600, '48/PN.01.01/I/2023', '2023-01-31', 'Memperhatikan surat dari UNY perihal Permohonan Magang/Praktik Kerja Lapangan (PKL)', 'Wakil Dekan Bidang Akademik UNY FE', NULL, 'Magang'),
(601, '49/PN.01.01/I/2023', '2023-01-31', 'Konsep Naskah dan Berita Acara Serah Terima (BAST) Hibah Barang Milik Negara (BMN) dari Badan Riset dan Inovasi Nasional (BRIN) kepada Pemerintah Kota Surakarta', 'Kepala Balitbangda', NULL, 'Nota Dinas'),
(602, '50/PN.01.01/I/2023', '2023-01-31', 'Surat Kuasa Pembayaran Tagihan PDAM Gd Gumarang dan Gd Sembrani KST', 'Handhika Wiguna Jahja Direktur PT Shopee International Indonesia', NULL, 'Surat Kuasa'),
(603, '1/PN.01.01/II/2023', '2023-02-02', 'Undangan Pameran Guyub Inovasi Digital', 'Terlampir', NULL, 'Undangan'),
(604, '2/PN.01.01/II/2023', '2023-02-02', 'Undangan Peresmian KST STP', 'Gubernur Jawa Tengah', NULL, 'Undangan'),
(605, '3/PN.01.01/II/2023', '2023-02-02', 'Undangan Peresmian KST STP', 'Walikota Surakarta', NULL, 'Undangan'),
(606, '4/PN.01.01/II/2023', '2023-02-01', 'Undangan Peresmian KST STP', 'Kepala Kejaksaan Negeri Surakarta', NULL, 'Surakarta'),
(607, '5/PN.01.01/II/2023', '2023-02-03', 'Admin JDIH', 'Kepala Bagian Hukum Sekretariat Daerah Kota Surakarta', NULL, 'Permohonan'),
(608, '6/PN.01.01/II/2023', '2023-02-03', 'Memperhatikan surat permohonan kunjungan dari SMK Veteran 1 Sukoharjo', 'Kepala Sekolah SMK Veteran 1 Sukoharjo', NULL, 'Kunjungan'),
(609, '7/PN.01.01/II/2023', '2023-02-03', 'Memperhatikan surat permohonan kunjungan dari SMK Muhammadiyah 3 Karanganyar', NULL, NULL, 'Kunjungan'),
(610, '8/PN.01.01/II/2023', '2023-02-03', 'Memperhatikan surat perihal permohonan magang/praktik kerja lapangan (PKL)', 'Direktur Pudir 3 Bid. Kemahasiswaan & Hubind. Politeknik Pratama Mulia', NULL, 'Magang'),
(611, '9/PN.01.01/II/2023', '2023-02-03', 'Memperhatikan surat perihal permohonan magang/praktik kerja lapangan (PKL)', 'Wakil Ketua Sekolah Tinggi Ilmu Ekonomi Surakarta', NULL, 'Magang'),
(612, '10/PN.01.01/II/2023', '2023-02-03', 'Memperhatikan surat permohonan kunjungan dari SMK PGRI BRATI', 'Kepala Sekolah SMK PGRI BRATI', NULL, 'Magang'),
(613, '12/PN.01.01/II/2023', '2023-02-07', 'Surat Pengantar Rencana Bisnis dan Anggaran UPTD KST Tahun 2023', 'Kepala Badan Pengelolaan Keuangan dan Aset Daerah Kota Surakarta', NULL, 'Surat Pengantar'),
(614, '13/PN.01.01/II/2023', '2023-02-07', 'Menindaklanjuti surat Kepala Dinkop Nomor IN/343/I/2023 perihal Permohonan Personil', 'Kepala Dinas Koperasi, UKM dan Perindustrian Kota Surakarta', NULL, 'Surat Balasan'),
(615, '14/PN.01.01/II/2023', '2023-02-08', 'Surat Kuasa menyelesaikan pembayaran tagihan listrik Gd. Gumarang dan Gd. Sembrani', 'Handhika Wiguna Jahja Direktur PT Shopee International Indonesia', NULL, 'Surat Kuasa'),
(616, '15.1/PN.01.01/II/2023', '2023-02-08', 'Surat Teguran', 'Yustien Nurratna Mustika, SE', NULL, 'Surat Teguran'),
(617, '15.2/PN.01.01/II/2023', '2023-02-08', 'Surat Teguran', 'Yustien Nurratna Mustika, SE', NULL, 'Surat Teguran'),
(618, '15.3/PN.01.01/II/2023', '2023-02-08', 'Surat Perintah Laporan Hasil Pemeriksaan Komprehensif tentang Kegiatan Operasional pada UPT STP TA 2022 Nomor PW.01.01/015/TIM III/I/2023 tgl 31 Januari 2023', 'Yustien Nurratna Mustika, SE', NULL, 'Surat Perintah'),
(619, '15.4/PN.01.01/II/2023', '2023-02-08', 'Surat Perintah Laporan Hasil Pemeriksaan Komprehensif tentang Kegiatan Operasional pada UPT STP TA 2022 Nomor PW.01.01/015/TIM III/I/2023 tgl 31 Januari 2023', 'Budi Purwanto, ST', NULL, 'Surat Perintah'),
(620, '15.5/PN.01.01/II/2023', '2023-02-08', 'Surat Perintah Laporan Hasil Pemeriksaan Komprehensif tentang Kegiatan Operasional pada UPT STP TA 2022 Nomor PW.01.01/015/TIM III/I/2023 tgl 31 Januari 2023', 'Agus Tri Hananto, SE', NULL, 'Surat Perintah'),
(621, '16/PN.01.01/II/2023', '2023-02-09', 'Memperhatikan surat dari SMK Negeri 2 Karanganyar perihal permohonan Kunjungan', 'Kepala Sekolah SMK Negeri 2 Karanganyar', NULL, 'Kunjungan'),
(622, '17/PN.01.01/II/2023', '2023-02-09', 'Memperhatikan surat dari SMK Gamaliel 1 Madiun perihal permohonan Kunjungan', 'Kepala Sekolah SMK Gamaliel 1 Madiun', NULL, 'Kunjungan'),
(623, '18/PN.01.01/II/2023', '2023-02-09', 'Memperhatikan surat dari SMK Negeri 1 Kalitengah Lamongan perihal permohonan Kunjungan', 'Kepala Sekolah SMK Negeri 1 Kalitengah Lamongan', NULL, 'Kunjungan'),
(624, '19/PN.01.01/II/2023', '2023-02-09', 'Memperhatikan surat dari UGM Perihal Permohonan Magang/PKL', 'Wakil Dekan Bidang Akademik dan Kemahasiswaan Ketua Departemen Teknik Mesin UGM', NULL, 'Magang/PKL'),
(625, '23/PN.01.01/II/2023', '2023-02-14', 'Permohonan Fasilitas Pita Penggaduh', 'Kepala Dinas Perhubungan Kota Surakarta', NULL, 'Permohonan'),
(626, '24/PN.01.01/II/2023', '2023-02-15', 'Memperhatikan surat dari SMK Negeri 3 Wonosari Nomor 423/205', 'Kepala Sekolah SMK Negeri 3 Wonosari', NULL, 'Kunjungan'),
(627, '26/PN.01.01/II/2023', '2023-02-15', 'Memperhatikan surat dari SMK Negeri 5 Surakarta Nomor 420/991', 'Kepala Sekolah SMK Negeri 5 Surakarta', NULL, 'PKL'),
(628, '27/PN.01.01/II/2023', '2023-02-15', 'Konfirmasi Magang/PKL dari UNNES Nomor B/2149/UN37.1.5/KM/2023', 'Wakil Dekan Bidang Akademik Universitas Negeri Semarang', NULL, 'Magang'),
(629, '28/PN.01.01/II/2023', '2023-02-15', 'Memperhatikan surat dari UGM Nomor 174/UNI/SV2-TEDI/AKM/PJ/2023', 'Wakil Dekan Bidang Akademik dan Kemahasiswaan Ketua Departemen Teknik Elektro dan Informatika UGM', NULL, 'Magang'),
(630, '29/PN.01.01/II/2023', '2023-02-15', 'Memperhatikan surat dari SMK Bhinneka Karya Surakarta Nomor 002/SMK BK/E.11/I/TM/2023', 'Kepala Sekolah SMK Bhinneka Karya Surakarta', NULL, 'PKL'),
(631, '31/PN.01.01/II/2023', '2023-02-16', 'Undangan Opening Ceremony MSIB Solo Technopark 2023', 'Bapak Jihad Wafdal Qahhar A.', NULL, 'Undangan'),
(632, '36/PN.01.01/II/2023', '2023-02-22', 'Perubahan Tujuan Penagihan', 'PT PLN (PERSERO) ULP MANAHAN', NULL, 'Pemberitahuan'),
(633, '37/PN.01.01/II/2023', '2023-02-23', 'Permohonan Surat Keterangan Rekening Giro', 'Kepala Bank Jateng Cabang Surakarta', NULL, 'Permohonan'),
(634, '37/PN.01.01/II/2023', '2023-02-27', 'Konfirmasi PKL dari SMK Negeri 2 Surakarta Nomor 420/025/2023 (8 orang)', 'Kepala Sekolah SMK Negeri 2 Surakarta', NULL, 'PKL'),
(635, '38/PN.01.01/II/2023', '2023-02-27', 'Konfirmasi PKL dari SMK Negeri 2 Surakarta Nomor 420/025/2023 (6 orang)', 'Kepala Sekolah SMK Negeri 2 Surakarta', NULL, 'PKL'),
(636, '39/PN.01.01/II/2023', '2023-02-27', 'Teknisi dan Perbaikan Alat Peraga SSC', 'Direktur Kemitraan Riset dan Inovasi BRIN', NULL, 'Permohonan'),
(637, '40/PN.01.01/II/2023', '2023-02-27', 'Peningkatan Kapasitas SDM SSC', 'Direktur Kemitraan Riset dan Inovasi BRIN', NULL, 'Permohonan'),
(638, '41/PN.01.01/II/2023', '2023-02-28', 'Permohonan Pendampingan Character Building', 'Komandan Rayon Militer Jebres Surakarta', NULL, 'Permohonan'),
(639, '41/PN.01.01/II/2023', '2023-02-27', 'Surat Kuasa pembayaran tagihan PDAM Gedung Gumarang dan Gedung Sembrani KST', 'Handhika Wiguna Jahja Direktur PT Shopee International Indonesia', NULL, 'Surat Kuasa'),
(640, 'PN.01.01/1/SK/II/2023', '2023-02-13', 'Penetapan Peserta Magang Bersertifikat di UPTD Kawasan Sains dan Teknologi', NULL, NULL, 'Keputusan Pemimpin BLUD KST'),
(641, '2/PN.01.01/III/2023', '2023-03-01', 'Memperhatikan surat dari POLITEKNIK AKBARA SURAKARTA Perihal Kunjungan Nomor 0424/Sekr/AKBARA/II/2023', 'Ketua Program Studi D4 Bisnis Digital', NULL, 'Kunjungan'),
(642, '3/PN.01.01/III/2023', '2023-03-01', 'Memperhatikan surat dari JSIT Indonesia Jawa Tengah Perihal Kunjungan Nomor 002/PPLS-JSIT JATENG/II/2023', 'Ketua Bidang Pembinaan Siswa dan Prestasi Siswa JSIT JAWA TENGAH', NULL, 'Kunjungan'),
(643, '8/PN.01.01/III/2023', '2023-03-06', 'Memperhatikan surat dari SMK Negeri 1 Kalianda Nomor 421.5/091/V.01.VI.10/026/2023', 'Kepala Sekolah SMK Negeri 1 Kalianda Lampung', NULL, 'Kunjungan'),
(644, '9/PN.01.01/III/2023', '2023-03-07', 'INFORMASI Pemeliharaan AC GoTo', 'PT GOTO Gojek Tokopedia Tbk Up. Bapak Syaiful', NULL, 'Informasi'),
(645, '14/PN.01.01/III/2023', '2023-03-13', 'Memperhatikan surat dari SV UNS Nomor 1579/UN27.21/PK.01.06/2023', 'Dekan Akademik, Riset dan Kemahasiswaan Sekolah Vokasi UNS', NULL, 'Magang'),
(646, '16/PN.01.01/III/2023', '2023-03-13', 'Memperhatikan surat dari SMK N 1 Surakarta nomor 421/078/SMK.01/2023 perihal PKL', 'Kepala Sekolah SMK Negeri 1 Surakarta', NULL, 'PKL'),
(647, '17/PN.01.01/III/2023', '2023-03-13', 'Memperhatikan surat dari SMK N 2 Surakarta nomor 420/025/2023', 'Kepala Sekolah SMK Negeri 2 Surakarta', NULL, 'PKL'),
(648, '29/PN.01.01/III/2023', '2023-03-23', 'Pengantar Proposal', 'Kepala Cabang Dinas Pendidikan Jawa Tengah Wilayah VII', NULL, 'Permohonan'),
(649, '29/PN.01.01/III/2023', '2023-03-23', 'Pengantar Proposal', 'Kepala Dinas Pendidikan dan Kebudayaan Provinsi Jawa Tenagh', NULL, 'Permohonan'),
(650, '30/PN.01.01/III/2023', '2023-03-28', 'Izin Penggunaan Lapangan', 'Ketua Liga Bola Basket Solo', NULL, 'Permohonan'),
(651, '32/PN.01.01/III/2023', '2023-03-29', 'Pemateri Workshop', 'Kepala Program Studi Fakultas Kedokteran UNS', NULL, 'Permohonan'),
(652, '35/PN.01.01/III/2023', '2023-03-29', 'Berita Acara Serah Terima Pelatihan Pump Operation, Maintenance, and Troubleshooting', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(653, '36/PN.01.01/III/2023', '2023-03-29', 'Berita Acara Serah Terima Pelatihan Pump Operation, Maintenance, and Troubleshooting', 'PT. Pertamina EP (Reg 2 - SH Upstream)', NULL, 'Berita Acara'),
(654, '37/PN.01.01/III/2023', '2023-03-29', 'Berita Acara Serah Terima Pelatihan Pump Operation, Maintenance, and Troubleshooting', 'PT. Pertamina EP Asset 2', NULL, 'Berita Acara'),
(655, '38/PN.01.01/III/2023', '2023-03-30', 'Berita Acara Serah Terima Pelatihan Pump Operation, Maintenance, and Troubleshooting', 'PT. Pertamina EP Asset 1', NULL, 'Berita Acara'),
(656, '39/PN.01.01/III/2023', '2023-03-29', 'Berita Acara Serah Terima Pelatihan Pump Operation, Maintenance, and Troubleshooting', 'Patra Jasa Officer Tower', NULL, 'Berita Acara'),
(657, '40/PN.01.01/III/2023', '2023-03-30', 'Konfirmasi Magang/Praktik Kerja Lapangan (PKL)', 'SMK Negeri 2 Surakarta', NULL, 'Permohonan');
INSERT INTO `surat_keluar` (`Id_Suratkeluar`, `Nomor_Suratkeluar`, `Tanggal`, `Perihal`, `Kepada`, `Catatan`, `Kategori`) VALUES
(658, '41/PN.01.01/III/2023', '2023-03-30', 'Kunjungan', 'SMK Negeri 1 Kalianda Lampung', NULL, 'Permohonan'),
(659, '42/PN.01.01/III/2023', '2023-03-30', 'Kunjungan', 'Politeknik Negeri Bali Jurusan Teknik Elektro', NULL, 'Permohonan'),
(660, '43/PN.01.01/III/2023', '2023-03-30', 'Usulan Rencana Kebutuhan Barang Milik Daerah dan Rencana Kebutuhan Pemeliharaan Barang Milik Daerah UPTD Kawasan Sains dan Teknologi Tahun Anggaran 2023', 'Sekretaris Daerah Kota Surakarta', NULL, 'Nota Dinas'),
(661, '45/PN.01.01/III/2023', '2023-03-30', 'Undangan', 'Bpk. Christian Ardianto - Pejabat Pelayanan dan Pengembangan UPTD KST Solo Technopark ; Bpk. Susilo Budi Arianto - Manajer Kerjasama UPTD KST Solo Technopark ; Risky Budi K - Marketing Eksekutif UPTD KST Solo Technopark', NULL, 'Undangan'),
(662, '46/PN.01.01/III/2023', '2023-03-30', 'Praktek Kerja Lapangan (PKL)', 'Kepala Sekolah SMK Leonardo Klaten', NULL, 'Permohonan'),
(663, '47/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Mechanical Joint Integrity', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(664, '48/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Mechanical Joint Integrity', 'PT. Pertamina EP Asset 1', NULL, 'Berita Acara'),
(665, '49/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Mechanical Joint Integrity', 'PT. Pertamina EP (Reg 2 - SH Upstream)', NULL, 'Berita Acara'),
(666, '50/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Risk Analysis and Assesment', 'PT. Pertamina EP Asset 1', NULL, 'Berita Acara'),
(667, '52/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Risk Analysis and Assesment', 'PT. Pertamina EP (Reg 2 - SH Upstream)', NULL, 'Berita Acara'),
(668, '53/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Risk Analysis and Assesment', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(669, '54/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Oil & Gas Separation System Operation', 'PT. Pertamina EP (Reg 2 - SH Upstream)', NULL, 'Berita Acara'),
(670, '55/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Oil & Gas Separation System Operation', 'PT. Pertamina EP Asset 1', NULL, 'Berita Acara'),
(671, '56/PN.01.01/III/2023', '2023-03-31', 'Berita Acara Serah Terima Pelatihan Flow Measurement', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(672, '57/PN.01.01/III/2023', '2023-03-31', 'Surat balasan Permohonan Peminjaman', 'Ketua Panitia PORTAKA FMIKA UNS', NULL, 'Permohonan'),
(673, '2/PN.01.01/IV/2023', '2023-04-03', 'Praktek Kerja Lapangan (PKL)', 'SMK Bhinneka Karya Surakarta', NULL, 'Permohonan'),
(674, '3/PN.01.01/IV/2023', '2023-04-04', 'Undangan', '1. Bpk Rony Widjanarko;2. Bpk Wahyu Hermawan;3. Bpk Christian Ardinto;$. Bpk Untung Priyohananto;5.Bpk Susilo Budi A', NULL, 'Undangan'),
(675, '4/PN.01.01/IV/2023', '2023-04-05', 'Permohonan Peminjaman Set Virtual Reality', 'Direktur Universitas Terbuka Surakarta', NULL, 'Permohonan'),
(676, '5/PN.01.01/IV/2023', '2023-04-05', 'Permohonan Izin Tempat Kunjungan', 'SMK N 1 Geneng Ngawi Jawa Timur', NULL, 'Permohonan'),
(677, '6/PN.01.01/IV/2023', '2023-04-05', 'Permohonan Izin Tempat Kunjungan', 'SMK Negeri 1 Way Panji Lampung', NULL, 'Permohonan'),
(678, '7/PN.01.01/IV/2023', '2023-04-05', 'Berita Acara Pelatihan Mechanical Joint Integrity', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(679, '8/PN.01.01/IV/2023', '2023-04-05', 'Berita Acara Pelatihan Mechanical Joint Integrity', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(680, '9/PN.01.01/IV/2023', '2023-04-05', 'Undangan Webinar dari Apple Developer Academy', 'Kaprodi DKV ISI Surakarta', NULL, 'Undangan'),
(681, '10/PN.01.01/IV/2023', '2023-04-05', 'Berita Acara Pelatihan Mechanical Joint Integrity', 'PT. Pertamina Hulu Kalimantan Timur', NULL, 'Berita Acara'),
(682, '11/PN.01.01/IV/2023', '2023-04-10', 'Pelatihan Program Kelanjutan Kegiatan Next Young Entreprenuer Batch X tahun 2023', NULL, NULL, 'Undangan');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `Id_Suratmasuk` int(11) NOT NULL,
  `No_Suratmasuk` varchar(255) DEFAULT NULL,
  `Nomor_surat` varchar(255) DEFAULT NULL,
  `Tanggal` date DEFAULT NULL,
  `Perihal` varchar(255) DEFAULT NULL,
  `Terima_dari` varchar(255) DEFAULT NULL,
  `Isi` varchar(255) DEFAULT NULL,
  `Tanggal_diteruskan` varchar(255) DEFAULT NULL,
  `Catatan` varchar(255) DEFAULT NULL,
  `Kategori` varchar(255) DEFAULT NULL,
  `Tgl_pelaksanaan` varchar(255) DEFAULT NULL,
  `Waktu_pelaksanaan` varchar(255) DEFAULT NULL,
  `Tempat_pelaksanaan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(776, '001.Jan/2022', '02/PRAK/I/2022', '2022-01-03', 'Penyerahan peserta prakerin', 'SMK MUH KARTASURA', 'Penyerahan peserta prakerin', '2022/01/05', 'Bagian Pelayanan / Diklat Fasilitasi', 'PERMOHONAN', NULL, NULL, 'Solo Technopark'),
(777, '002.Jan/2022', '005/05/I/2022', '2022-01-04', 'Permohonan ijin pinjam tempat musrenbangkel tahun 2022 Kelurahan Jebres\r\n Minggu 16 Januari 2022, 0700', 'Kelurahan Jebres', 'Permohonan ijin pinjam tempat musrenbangkel tahun 2022 Kelurahan Jebres\r\n Minggu 16 Januari 2022, 0700', '2022/01/05', 'Bagian Umum Fasilitasi', 'PERMOHONAN', '2022/01/16', '07.00-selesai', 'Solo Technopark'),
(778, '003.Jan/2022', '066/99.1 TAHUN 2022', '0000-00-00', 'SK Walikota Tentang Pembakuan Akronim/Singkatan, Kode dan Bentuk Stempel Serta Penetapan Alamat Ke Perangkat Daerah Di Lingkungan Pemkot Surakarta', 'Walikota Surakarta', 'SK Walikota Tentang Pembakuan Akronim/Singkatan, Kode dan Bentuk Stempel Serta Penetapan Alamat Ke Perangkat Daerah Di Lingkungan Pemkot Surakarta', '2022/01/05', 'Share ke Kepala Divisi dan Pengelola', 'PEMBERITAHUAN', NULL, NULL, NULL),
(779, '004.Jan/2022', 'HK/33', '2022-01-05', 'Permohonan Pelaksana JDIH', 'Sekretariat Daerah', 'Permohonan Pelaksana JDIH', '2022/01/05', 'Bagian HRD diisi kembali', 'PERMOHONAN', NULL, NULL, NULL),
(780, '005.Jan/2022', '423/752', '0000-00-00', 'Permohonan kunjungan industri 25 Januari 2022', 'SMKN 1 Nanggulan', 'Permohonan kunjungan industri 25 Januari 2022', '2022/01/05', 'Bagian pelayanan Fasilitasi', 'PERMOHONAN', '2022/01/25', NULL, 'Solo Technopark'),
(781, '006.Jan/2022', 'KS.00/010/2022', '2022-01-04', 'Surat Edaran Walikota SKA tentang Pemberlakuan Pembatasan Kegiatan Masyarakat Level 2 Di Kota SKA', 'Walikota Surakarta', 'Surat Edaran Walikota SKA tentang Pemberlakuan Pembatasan Kegiatan Masyarakat Level 2 Di Kota SKA', '2022/01/05', 'Bagian HRD Sosialisasikan', 'PEMBERITAHUAN', NULL, NULL, NULL),
(782, '007.Jan/2022', 'KP/024/I/2022', '2022-01-05', 'Pengajuan Admin', 'Diskominfo, Statistik dan Persandian Kota Surakarta', 'Pengajuan Admin', '2022/01/06', 'Bu Ani -> Diisi Personil', 'PENGAJUAN', NULL, NULL, NULL),
(783, '008.Jan/2022', '013/SK/SIH/I/2022', '2022-01-06', 'Biaya Penilaian', 'Kantor Jasa Penilai Publik SIH Wiryadi & Rekan', 'Biaya Penilaian', '2022/01/07', 'Tolong di arsipkan', 'PEMBERITAHUAN', NULL, NULL, NULL),
(784, '009.Jan/2022', 'KP/0096/I/2022', '2022-01-07', 'Review atas laporan keuangan Pemkot Surakarta Tahun 2021', 'Inspektorat Surakarta', 'Review atas laporan keuangan Pemkot Surakarta Tahun 2021', '2022/01/07', 'Bagian Keuangan / Bu Susi hadiri', 'UNDANGAN', '2022/01/12', '08.30-selesai', 'Hotel Sunan Solo'),
(785, '010.Jan/2022', '015/SK/SIH/I/2022', '2022-01-06', 'Kajian study kelayakan kontribusi tetap', 'Kantor Jasa Penilai Publik SIH Wiryadi & Rekan', 'Kajian study kelayakan kontribusi tetap', '2022/01/07', 'Tolong di arsipkan', 'PEMBERITAHUAN', NULL, NULL, NULL),
(786, '011.Jan/2022', 'PG.01/073/2022', '2022-01-10', 'Undangan koordinasi percepatan pelaksanaan pengadaan barang dan jasa TA 2022', 'Sekretariat Daerah', 'Undangan koordinasi percepatan pelaksanaan pengadaan barang dan jasa TA 2022', '2022/01/10', 'Sudah di hadiri', 'UNDANGAN', '2022/01/13', '09.00-selesai', 'Zoom meeting'),
(787, '012.Jan/2022', 'PG.03.16/072/2022', '2022-01-10', 'Surat Edaran tentang penginputan rancangan umum pengadaan (RUP) DPA TA 2022 ke dalam aplikasi sistem informasi rancangan umum pengadaan (SIRUP)', 'Sekretariat Daerah', 'Surat Edaran tentang penginputan rancangan umum pengadaan (RUP) DPA TA 2022 ke dalam aplikasi sistem informasi rancangan umum pengadaan (SIRUP)', '2022/01/10', 'Bagian Keuangan', 'EDARAN', NULL, NULL, NULL),
(788, '013.Jan/2022', 'PG.03/074/2022', '2022-01-10', 'Surat edaran tentang laporan hasil pengadaan barang jasa serta upload pada berita acara serah terima (BAST) pengadaan barang, jasakonstruksi, jasa konsultasi dan jasa lainnya yang dilakukan melalui SPSE', 'Sekretariat Daerah', 'Surat edaran tentang laporan hasil pengadaan barang jasa serta upload pada berita acara serah terima (BAST) pengadaan barang, jasakonstruksi, jasa konsultasi dan jasa lainnya yang dilakukan melalui SPSE', '2022/01/11', 'Bagian keuangan / KPA Bu Susi', 'EDARAN', NULL, NULL, NULL),
(789, '014.Jan/2022', '045/884/I/2022', '2022-01-10', 'Undangan', 'BAPEDA SKA', 'Undangan, Jumat 14 Jan 2022, 09.00, Swiss Berlin', '2022/01/12', NULL, 'UNDANGAN', '2022/01/14', '09.00', 'Swiss Berlin'),
(790, '015.Jan/2022', '0058/I/HM.01.00/2022', '2022-01-01', 'Disposisi Walikota SKA', 'KEMENDIKBUD. RISTEK/Walikota SKA', 'Pengubahan waktu anugerah 2021', '2022/01/12', NULL, 'DISPOSISI', NULL, NULL, 'STP'),
(791, '016.Jan/2022', '061.10/IV.4.AU.401/J/2021', '0000-00-00', 'Permohonan kunjungan industri', 'SMK MUH. SURUH SEMARANG', 'Permohonan kunjungan industri', '2022/01/12', 'Bagian pelayanan fasilitasi', 'PERMOHONAN', '2022/01/25', '09.00-selesai', 'Solo Technopark'),
(792, '017.Jan/2022', '006/AGA.04.02/03030100/2022', '2022-01-12', 'Jawaban Permohonan Penundaan Tagihan Listrik Januari 2022', 'PLN', 'Jawaban Permohonan Penundaan Tagihan Listrik Januari 2022', '2022/01/12', 'Bagian Keuangan -> Bu Susi', 'PEMBERITAHUAN', NULL, NULL, NULL),
(793, '018.Jan/2022', 'B/232/BSKJI/B4T/DL/I/2022', '2022-01-12', 'Kunjungan Studi Banding Underwater Welding\r\n Tanggal 27 Januari-29 Januari 2022', 'Kementrian perindustrian', 'Kunjungan Studi Banding Underwater Welding\r\n Tanggal 27 Januari-29 Januari 2022', '2022/01/12', 'Bagian Pelayanan -> Mas Christian & Mas Arif Fasilitasi', 'PERMOHONAN', '27 Januari - 29 Januari 2022', NULL, 'Solo Technopark'),
(794, '019.Jan/2022', '084/I03.13/SMK-BK/PSG/I/2022', '2022-01-10', 'Permohonan praktek kerja industri', 'SMK Bihina Karya Karanganyar', 'Permohonan praktek kerja industri', '2022/01/13', 'Bagian Pelayanan -> Mas Budi Fasilitasi', 'PERMOHONAN', '7 Februari - 31 Maret 2022', NULL, 'Solo Technopark'),
(795, '020.Jan/2022', 'ST.02/126/2022', '2022-01-12', 'Surat edaran tentang pelaksanaan survei kepuasan masyarakat (SKM) Pemkot Surakarta Tahun 2022 Triwulan', 'Sekretariat Daerah', 'Surat edaran tentang pelaksanaan survei kepuasan masyarakat (SKM) Pemkot Surakarta Tahun 2022 Triwulan', '2022/01/13', 'Bagian HRD -> Bu Lusi', 'EDARAN', NULL, NULL, NULL),
(796, '021.Jan/2022', '001/COMIC/I/2022', '2022-01-12', 'Permohonan ijin pemakaian tempat', 'Komunitas mobil civic solo raya', 'Permohonan ijin pemakaian tempat', '2022/01/14', 'Pak Untung Fasilitasi', 'PERMOHONAN', '2022/01/30', '10.00-13.00 WIB', 'Solo Technopark'),
(797, '022.Jan/2022', NULL, NULL, 'Undangan musren bangkel 2022', 'Kelurahan Jebres', 'Undangan Musren Bangkel', '2022/01/14', NULL, 'UNDANGAN', '2022/01/16', '08.00 WIB', 'STP'),
(798, '023.Jan/2022', 'KA.01.03/040', '2022-01-13', 'Undangan rapat koordinasi pembahasan terkait stempel dan kop surat', 'Sekretariat Daerah', 'Undangan rapat koordinasi pembahasan terkait stempel dan kop surat', '2019/01/14', 'Mbak Ani / Mbak Yustine', 'UNDANGAN', '2022/01/18', '13.00-selesai', 'Meeting daring'),
(799, '023.Jan/2022', 'KS/00.23/198/2022', '2022-01-18', 'Surat Edaran Walikota SKA tentang Pemberlakuan Pembatasan Kegiatan Masyarakat Level 2 Di Kota SKA', 'Walikota Surakarta', 'Surat Edaran Walikota SKA tentang Pemberlakuan Pembatasan Kegiatan Masyarakat Level 2 Di Kota SKA', '2022/01/19', 'Bagian HRD -> Bu Lusi', 'EDARAN', NULL, NULL, NULL),
(800, '024.Jan/2022', '03.001/TWK/I/2021', '2022-01-13', 'Permohonan peminjaman ruang meeting', 'PT TRI WIGUNA KENCANA', 'Permohonan peminjaman ruang meeting', '2022/01/14', 'Bagian umum -> Pak Untung koordinasi dengan Mas Susilo', 'PERMOHONAN', 'Senin - Rabu, 24 - 26 Januari 2022', '09.00-selesai', 'Solo Technopark'),
(801, '025.Jan/2022', '011-001/SMK PGRI 1 SKA/HM/Permohonan Prakerin/2022', '2022-01-14', 'Permohonan kesempatan praktek industri', 'SMK PGRI 1 Surakarta', 'Permohonan kesempatan praktek industri', '2022/01/17', 'Bagian pelayanan -> Fasilitasi', 'PERMOHONAN', '20 Juni - 20 Agustus 2022', NULL, 'Solo Technopark'),
(802, '026.Jan/2022', 'TM.00.07/2/1/2022', '2022-01-14', 'Undangan rapat koordinasi OPD penghasil retribusi daerah kota surakarta tahun 2022', 'Badan Pendapatan Daerah', 'Undangan rapat koordinasi OPD penghasil retribusi daerah kota surakarta tahun 2022', '2022/01/17', 'Bagian keuangan -> Bu Susi', 'UNDANGAN', '2022/01/18', '10.00-selesai', 'Bappenda'),
(803, '027.Jan/2022', '0046/SMK.S/I/2022', '2022-01-12', 'Permohonan Ijin Kunjungan Industri', 'SMK SANJAYA MUNTILAN', 'Permohonan Ijin Kunjungan Industri', '2022/01/17', 'Bagian pelayanan -> Fasilitasi', 'PERMOHONAN', '2022/01/25', '10.30-selesai', 'Solo Technopark'),
(804, '028.Jan/2022', '421.6/327/SMK-BP 3 WIL V', '2022-01-17', 'Permohonan Ijin Kunjungan Industri', 'SMKN 1 Panyingkiran', 'Permohonan Ijin Kunjungan Industri', '2022/01/18', 'Bagian pelayanan -> Fasilitasi', 'PERMOHONAN', '2022/05/18', '08.00-selesai', 'Solo Technopark'),
(805, '029.Jan/2022', '045-2/020/1016.6 26/2022', '2022-01-18', 'Permohonan Ijin Kunjungan Industri', 'SMKN 1 Jiwan', 'Permohonan Ijin Kunjungan Industri', '2022/01/18', 'Bagian pelayanan -> Pertimbangkan', 'PERMOHONAN', '2022/02/23', '09.00-selesai', 'Solo Technopark'),
(806, '030.Jan/2022', '058/113.10/SMK.MASK.01/I/2022', '2022-01-18', 'Permohonan Ijin Kunjungan Industri', 'SMK Maskumambang 1', 'Permohonan Ijin Kunjungan Industri', '2022/01/18', 'Bagian pelayanan -> Pertimbangkan jumlah', 'PERMOHONAN', '2022/02/08', '09.00-selesai', 'Solo Technopark'),
(807, '031.Jan/2022', '005/106', '2022-01-14', 'DKT DPMPTSP Kota Surakarta', 'DPMPTSP Kota Surakarta', 'DKT DPMPTSP Kota Surakarta', '2022/01/18', 'Bagian Kerjasama -> Pak Susilo', 'UNDANGAN', '2022/01/19', '09.00-selesai', 'Solo Bistro'),
(808, '032.Jan/2022', 'KI.00.04/014/I/2022', '2022-01-14', 'SK Kepala Diskominfo tentang admin organisasi penyelenggara unit layanan aduan surakarta TA 2022', 'Diskominfo SP Kota Surakarta', 'SK Kepala Diskominfo tentang admin organisasi penyelenggara unit layanan aduan surakarta TA 2022', '2022/01/19', 'Mbak Ani', 'PEMBERITAHUAN', NULL, NULL, NULL),
(809, '033.Jan/2022', 'KS.00.63/198/2022', '2022-01-18', 'Surat Edaran Walikota SKA tentang Pemberlakuan Pembatasan Kegiatan Masyarakat Level 2 Di Kota SKA', 'Walikota Surakarta', 'Surat edaran walikota surakarta tentang pemberlakuan pembatasan kegiatan masyarakat level 2 di kota surakarta', '2022/01/19', NULL, 'SURAT EDARAN', NULL, NULL, 'STP'),
(810, '034.Jan/2022', '420/12', '2022-01-10', 'Permohonan pelaksanaan praktek kerja lapangan (PKL)', 'SMK Negeri 2 Sragen', 'Permohonan pelaksanaan praktek kerja lapangan (PKL)', '2022/01/19', 'Bagian Pelayanan / Diklat -> Fasilitasi', 'PERMOHONAN', '15 Februari - 16 Juni 2022', NULL, 'Solo Technopark'),
(811, '035.Jan/2022', '420/12', '2022-01-10', 'Permohonan pelaksanaan praktek kerja lapangan (PKL)', 'SMK Negeri 2 Sragen', 'Permohonan pelaksanaan praktek kerja lapangan (PKL)', '2022/01/20', 'Bagian Pelayanan -> Fasilitasi', 'PERMOHONAN', '15 Februari - 16 Juni 2022', NULL, 'Solo Technopark'),
(812, '036.Jan/2022', '240/012/220/2021', '2021-09-06', 'Permohonan praktek kerja industri', 'SMK Sukmawati Sragen', 'Permohonan praktek kerja industri', '2022/01/20', 'Bagian Pelayanan -> Fasilitasi', 'PERMOHONAN', '1 Februari - 2 Mei 2022', NULL, 'Solo Technopark'),
(813, '037.Jan/2022', 'KA.02.00/155/I/2022', '2022-01-21', 'Undangan BIMTEK Aplikasi Srikandi', 'Dinas Perpustakaan dan Kearsipan Surakarta', 'Undangan BIMTEK Aplikasi Srikandi', '2022/01/24', 'Bagian Keuangan -> Hadiri', 'UNDANGAN', '2022/01/25', '09.00-selesai', 'Dinas Perpustakaan dan Kearsipan Surakarta'),
(814, '038.Jan/2022', 'KI/146/I/2022', '2022-01-20', 'Undangan BIMTEK Penguatan Kapasitas Admin ULAS Tahun 2022', 'Diskominfo SP SKA', 'Undangan BIMTEK Penguatan Kapasitas Admin ULAS Tahun 2022', '2022/01/24', 'Mbak Ani', 'UNDANGAN', '2022/01/26', '08.30-selesai', 'Harris Hotel'),
(815, '039.Jan/2022', '422/062/403.08.01/SMK Brw/2022', '2022-01-22', 'Permohonan kunjungan industri', 'SMK Brawijaya Ponorogo', 'Permohonan kunjungan industri', '2022/01/24', 'Bagian Pelayanan -> Pertimbangkan', 'PERMOHONAN', '2022/02/22', NULL, 'Solo Technopark'),
(816, '040.Jan/2022', '021/KONDANGMOTOR/SKY/2021', '0000-00-00', 'Program service kunjung', 'PT Kondang Motor', 'Program service kunjung', '2022/01/24', 'Bagian Umum -> Fasilitasi', 'PERMOHONAN', NULL, '08.30-selesai', 'Solo Technopark'),
(817, '041.Jan/2022', 'KP.10.04/299/2022', '2022-01-20', 'Undangan pendampingan pelaporan LHKPN', 'BKPSDM', 'Undangan pendampingan pelaporan LHKPN', '2022/01/24', 'Bag. Keuangan', 'UNDANGAN', '2022/01/27', '13.00-selesai', 'Hotel Amarelo Solo'),
(818, '042.Jan/2022', '04.001/TWK/I/2022', '2022-01-22', 'Permohonan peminjaman ruang meeting', 'PT TRI WIGUNA KENCANA', 'Permohonan peminjaman ruang meeting', '2022/01/25', 'Bagian Kerjasama', 'PERMOHONAN', 'Senin-Jumat, 31 Januari 2022-4 Februari 2022', NULL, 'Solo Technopark'),
(819, '043.Jan/2022', '197.1/IV.4.AU.401/F/2022', '2022-01-25', 'Pengantar Kunjungan Industri', 'SMK Muhammadiyah Suruh', 'Pengantar Kunjungan Industri', '2022/01/25', 'Sudah Kunjungan', 'PENGANTAR', '2022/01/25', NULL, 'Solo Technopark'),
(820, '044.Jan/2022', '005/08/I/2022', '2022-01-25', 'Undangan Rapat Koordinasi pembahasan tata kerja dan keuangan Badan Penelitian dan Pengembangan Daerah dan UPT Solo Technopark Kota Surakarta Tahun 2022', 'Balitbangda SKA', 'Undangan Rapat Koordinasi pembahasan tata kerja dan keuangan Badan Penelitian dan Pengembangan Daerah dan UPT Solo Technopark Kota Surakarta Tahun 2022', '2022/01/25', 'Bagian Keuangan -> Bu Susi Hadiri', 'UNDANGAN', '2022/01/26', '13.00 WIB', 'Ruang rapat Balitbangda SKA'),
(821, '045.Jan/2022', '318/Prakerin/GT.I/2022', '2022-01-20', 'PermohonN Kesempatan Prakerin', 'SMK Ganesha Tama Boyolali', 'PermohonN Kesempatan Prakerin', '2022/01/25', 'Bagian Pelayanan/Diklat -> Pertimbangkan jurusan', 'PERMOHONAN', '1 Februari-30 April 2022', NULL, 'Solo Technopark'),
(822, '046.Jan/2022', '800/044/2022', '2022-01-25', 'Permohonan tempat Praktik Kerja Lapangan (PKL)', 'SMKN 2 Karanganyar', 'BKPSDM', '2020/01/25', 'Bag. Pelayanan/ Diklat -> Fasilitasi', 'PERMOHONAN', '14 Maret 2022-31 Maret 2022', NULL, 'Solo Technopark'),
(823, '047.Jan/2022', 'RP.05/343/2022', '2022-01-26', 'Undangan Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK) dengan tema \"Evaluasi Capaian Kinerja APBD 2021 dan Pelaksanaan APBD 2022', 'Sekretariat Daerah', 'Undangan Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK) dengan tema \"Evaluasi Capaian Kinerja APBD 2021 dan Pelaksanaan APBD 2022', '2022/01/27', 'Sudah di hadiri', 'UNDANGAN', '2022/01/27', '13.00 WIB', 'Pendapi Gedhe Balaikota SKA'),
(824, '048.Jan/2022', '10.030/MA.YKMI/IX/2021', '2022-01-26', 'Permohonan ijin kunjungan', 'SMK Maskumambang 2 Gresik', 'Permohonan ijin kunjungan', '2022/01/27', 'Bag. Pelayanan -> Fasilitasi', 'PERMOHONAN', '2022/02/03', '13.00-selesai', 'Solo Technopark'),
(825, '049.Jan/2022', 'RP.01.03/01/I/2022', '2022-01-26', 'Pinjam tempat (Auditorium dan Ruang Kelas)', 'Panitia Musrenbangcam kecamatan jebres 2022', 'Pinjam tempat (Auditorium dan Ruang Kelas)', '2022/01/27', 'Bagian Umum -> Fasilitasi', 'PERMOHONAN', 'Kamis, 03 Februari 2022\r\n &\r\n Minggu, 13 Februari 2022', '19.00-selesai\r\n &\r\n 08.00-selesai', 'Solo Technopark'),
(826, '050.Jan/2020', '01/Greet-RS/I/2022', '2022-01-25', 'Ucapan Greeting Hari Jadi Kota Solo ke-277', 'RADAR SOLO', 'Ucapan Greeting Hari Jadi Kota Solo ke-277', '2022/01/27', 'Arsip', 'PENAWARAN', NULL, NULL, NULL),
(827, '051.Jan/2022', 'RP.02.07/096', '2022-01-27', 'Undangan Penjelasan Teknis Penyususnan Perjanjian Kinerja (PK) Tahun 2022 dan Rencana Kinerja Tahunan (RKT) Tahun 2023', 'Sekretariat Daerah', 'Undangan Penjelasan Teknis Penyususnan Perjanjian Kinerja (PK) Tahun 2022 dan Rencana Kinerja Tahunan (RKT) Tahun 2023', '2022/01/27', 'Bagian Keuangan/Bu Susi -> Hadiri', 'UNDANGAN', '2022/01/31', '13.00-selesai', 'Zoom Meeting'),
(828, '052.Jan/2022', 'PG.03.02/295/2022', '2022-01-25', 'Laporan Hasil Pengadaan Barang/Jasa Serta Upload Data Berita Acara Serah Terima (BAST) Pengadaan Barang, Jasa Konstruksi, Jasa Konsultasi dan Jasa Lainnya Yang Dilakukan Melalui SPSE', 'Sekretariat Daerah', 'Laporan Hasil Pengadaan Barang/Jasa Serta Upload Data Berita Acara Serah Terima (BAST) Pengadaan Barang, Jasa Konstruksi, Jasa Konsultasi dan Jasa Lainnya Yang Dilakukan Melalui SPSE', '2022/01/27', 'Bagian Keuangan/Bu Susi', 'EDARAN', NULL, NULL, NULL),
(829, '053.Jan/2022', '043/R/AD/2022', '2022-01-26', 'Peresmian Gedung Fakultas Ekonomi', 'Universitas Slamet Riyadi', 'Peresmian Gedung Fakultas Ekonomi', '2022/01/27', 'Tidak Hadir', 'UNDANGAN', '2022/01/29', '10.00-selesai', 'Gedung Baru Fakultas Ekonomi UNISRI'),
(830, '054.Jan/2022', '04/Greet-RS/I/2022', '2022-01-03', 'Ucapan Greeting Hari Jadi Kota Solo ke-277', 'RADAR SOLO', 'Ucapan Greeting Hari Jadi Kota Solo ke-277', '2022/01/27', 'Bagian Umum -> Ambil Kolektif Tipe B', 'PENAWARAN', NULL, NULL, NULL),
(831, '055.Jan/2022', '2192/SMK/BP.1/423.4/2022', '2022-01-18', 'Permohonan Kesempatan Untuk Praktik Kerja Industri (PRAKERIN)', 'SMK Binapatria 1 Sukoharjo', 'Permohonan Kesempatan Untuk Praktik Kerja Industri (PRAKERIN)', '2022/01/28', 'Bagian Pelayanan/Diklat -> Fasilitasi', 'PERMOHONAN', '14 Februari-14 Mei 2022', NULL, 'Solo Technopark'),
(832, '056.Jan/2022', '00031/EXT-PMS/PROP/I/2022', '2022-01-27', 'Penawaran progam asuransi', 'BUMIDA', 'Penawaran progam asuransi kecelakaan diri bagi peserta didik', '2022/01/28', 'Bagian HRD -> Sosialisasi', 'PENAWARAN', NULL, NULL, NULL),
(833, '056.Jan/2020', 'SP-002/Legal-MC/I/2020', '2020-01-28', 'Permohonan', 'Rosin Group', 'Permohonan', '2020/01/30', 'Bagian Umum -> Follow Up', 'PERMOHONAN', NULL, NULL, NULL),
(834, '057.Jan/2022', 'KM.02/123/I/2022', '2022-01-27', 'Telaah Staf terkait keberadaan Kelembagaan Pusat Layanan Usaha Terpadu Koperasi Usaha Mikro Kecil dan Menengah (PLUT-KUMKM) Kota Surakarta', 'Dinas Koperasi, UMKM', 'Telaah Staf terkait keberadaan Kelembagaan Pusat Layanan Usaha Terpadu Koperasi Usaha Mikro Kecil dan Menengah (PLUT-KUMKM) Kota Surakarta', '2022/01/28', 'Arsip', 'PEMBERITAHUAN', NULL, NULL, NULL),
(835, '058.Jan/2022', '16/005/1/2022', '2022-01-27', 'Undangna', 'Badan Penelitian dan Pengmbangan Daerah Surakarta', 'Undangan diskusi kelompok terbatas badan penelitian dan pengambangan daerah kota surakarta tahun 2022', '2022/01/28', 'Sudah di hadiri', 'UNDANGAN', '2022/02/02', '09.00 EIB', 'Ruang BRIGHT 2 HARRIS HOTEL SOLO'),
(836, '058.Jan/2020', '003/Pan.MBC.JB/II/2020', '2020-01-01', 'Undangan', 'Panitia Musrenbangcam kecamatan jebres', 'Undangan', '2020/01/30', 'Bag.Umum -> Kalau longgar di hadiri', 'UNDANGAN', '2020/02/02', '08.00-selesai', 'UNS INN'),
(837, '059.Jan/2022', 'KT.01.01/359', '2022-01-27', 'Undangan Diskusi Kelompok Terbatas (DKT) Dinas Tenaga Kerj Kota Surakarta Tahun 2022', 'Dinas Tenaga Kerja Surakarta', 'Undangan Diskusi Kelompok Terbatas (DKT) Dinas Tenaga Kerj Kota Surakarta Tahun 2022', '2022/01/28', 'Bagian Pelayanan/Pak Christian -> Hadiri + Isi Usulan', 'UNDANGAN', '2022/02/02', '08.30 WIB', 'Solo Paragon Hotel'),
(838, '060.Jan/2022', 'DC.650/I/2022', '2022-01-19', 'Undangan DKT Dinas Administrasi Kependidikan dan Pencatatan Sipil Kota Surakarta', 'Dinas Administrasi Kependidikan dan Pencatatan Sipil', 'Undangan DKT Dinas Administrasi Kependidikan dan Pencatatan Sipil Kota Surakarta', '2022/01/31', 'Bagian Kerjasama/Pak Susilo', 'UNDANGAN', '2022/02/03', '09.00 WIB', 'Hotel Kusuma Sahid Prince Hotel Surakarta'),
(839, '061.Jan/2022', 'RP.05/393/2022', '2022-01-28', 'Undangan oelatihan dan pengisian aplikasi simdal bangda V.4 TA 2022', 'Setda ska', 'Undangan oelatihan dan pengisian aplikasi simdal bangda V.4 TA 2022', '2022/01/31', 'Bagian Keuangan', 'UNDANGAN', '2022/02/03', '09.15-10.30', 'IPSE'),
(840, '062.Jan/2022', '005/7/I/2022', '2022-01-19', 'Undangan', 'Balitbangda', 'Undangan', NULL, NULL, 'UNDANGAN', '2022/01/20', '09.00 WIB', 'Ruang Meeting STP'),
(841, '063.Jan/2022', '005/8/I/2022', '2022-01-19', 'Undangan', 'Balitbangda', 'Undangan', NULL, NULL, 'UNDANGAN', '2022/01/21', '09.00 WIB', 'Ruang Rapat Balitbangda'),
(842, '064.Jan/2022', '33/TI-KP/II/2022', '2022-01-03', 'Permohonan Izin Melaksanakan Kerja Praktek', 'Univ. Veteran Bangun Nusantara Sukoharjo', 'Izin Melaksanakan Kerja Praktek', NULL, NULL, 'PERMOHONAN', NULL, NULL, NULL),
(843, '001.Feb/2022', '560/420/027/2021', '2020-02-10', 'Permohonan', 'Mitra anugerah indonesia', 'Peminjaman ruangan untuk training', '2020/02/10', 'Bag.umum -> tolong dipinjami kelas teori', 'PERMOHONAN', '2020/02/11', '08.00-17.00', NULL),
(844, '001.Feb/2022', '560/430/027/2022', '2022-01-27', 'Permohonan ijin kunjungan', 'Disnaker Sragen', 'Permohonan ijin kunjungan', '2022/02/02', 'Sudah diterima', 'PERMOHONAN', '2022/02/02', '13.30', NULL),
(845, '002.Feb/2022', '800/23/I/2022', '2022-01-31', 'Permohonan personil lomba juri lomba', 'Balitbangda ska', 'Permohonan personil juri lomba krenova kota ska tahun 2022', '2022/02/03', 'Di halaman surat saya sebagai juri', 'PERMOHONAN', NULL, NULL, NULL),
(846, '003.Feb/2022', 'KA.02.00/227/II/2022', '2022-02-03', 'Pengisian data aplikasi srikandi', 'Dinas Perpustakaan dan Kearsipan', 'Pengisian data aplikasi srikanda', '2022/02/03', NULL, 'PENGISIAN DATA', NULL, NULL, NULL),
(847, '004.Feb/2022', 'email', '2022-02-03', 'Layanan SMS broadcast making syp', 'PT. Raja Suryadarma Multimedia', 'Layanan SMS broadcast making syp', '2022/02/03', 'Arsip', 'LAYANAN', NULL, NULL, NULL),
(848, '005.Feb/2022', '102/UN27.26/RU.01/2022', '2022-02-07', 'Surat undangan diskusi', 'UNS', 'Surat undangan diskusi dan penjajakan kerjasama oleh UNS Innovation Hub', '2022/02/07', 'Distribusikan surat undangan', 'UNDANGAN', '2022/02/08', '14.00', 'Aula seminar besar STP'),
(849, '006.Feb/2022', '102/UN27.26/RU.01/2023', '2022-02-07', 'Permohonan kunjungan industri', 'SMAN 1 TALACA', 'Permohonan kunjungan industri', '2022/02/07', 'Bagian pelayanan *Pertimbangkan PPKM Solo', 'PERMOHONAN', '2022/02/21', '08.00', 'STP'),
(850, '007.Feb/2022', '102/UN27.26/RU.01/2023', '2022-02-07', 'Undangan koordinasi penyerahan aset', 'UNS', 'Undangan koordinasi penyerahan aset yang dibelanjakan oleh UNS tahun 2021 dan digunakan oleh UPT STP', '2022/02/07', 'Distribusikan surat undangan 1. Pejabat keuangan 2. pengurus barang 3. Kerjasama', 'UNDANGAN', '2022/02/09', '10.00', 'UNS'),
(851, '008.Feb/2022', '102/UN27.26/RU.01/2025', '2022-02-03', 'permohonan peminjaman tempat', 'UNS', 'permohonan peminjaman tempat', '2022/02/08', 'Bagian Umum', 'PERMOHONAN', '2022/02/08', '14.00', 'Aula seminar besar STP'),
(852, '009.Feb/2022', '102/UN27.26/RU.01/2026', '2022-02-08', 'Surat edaran', 'Walikota surakarta', 'surat edaran tentang pemberlakuan pembatasan kegiatan masyarakat level 2di kota surakarta', '2022/02/08', NULL, 'SURAT EDARAN', NULL, NULL, NULL),
(853, '2010.Feb/2022', '102/UN27.26/RU.01/2027', '2022-02-09', 'Test Drive', 'Shopee', 'Test drive kandidat driver shopee express', '2022/02/09', 'Bagian umum', 'TEST DRIVE', '2022/02/09', '10.00 - 16.00', 'Jl. Ki Hajar Dewantara No.19, Jebres, Kec. Jebres, Kota Surakarta, Jawa tengah 57126'),
(854, '011.Feb/2022', '102/UN27.26/RU.01/2028', '2022-02-08', 'Undangan FGD', 'Setda Prov Jawa Tengah', 'Undangan FGD dengan tema \"Professionalisme pengelolaan BLUD Prov. Jawa Tengah Menuju Kemandirian\"', '2022/02/09', 'Sudah dihadiri', 'UNDANGAN', '2022/02/10', '08.30', 'Zoom'),
(855, '012.Feb/2022', '102/UN27.26/RU.01/2029', '2022-02-09', 'Kunjungan Studi Banding', 'SMKN 1 Pundong', 'Kunjungan studi banding', '2022/02/09', 'Sudah selesai', 'KUNJUNGAN', '2022/02/11', '09.00 - 11.10', NULL),
(856, '013.Feb/2022', '102/UN27.26/RU.01/2030', '2022-02-09', 'Surat permohonan peminjaman', 'Tokopedia', 'Surat permohonan peminjaman ruangan seminar Solo Technopark', '2022/02/10', 'Sudah selesai', 'PERMOHONAN', '2022/02/12', '10.00 - 12.00', 'STP'),
(857, '014.Feb/2022', '102/UN27.26/RU.01/2031', '2022-02-10', 'Undangan Musrenbangcam Jebres 2022', 'Kec. Jebres', 'Undangan musrenbegcam Jebres 2022', '2022/02/10', 'Pak Untung Hadir, Bagian umum diminta hadir untuk persiapan ruangan', 'UNDANGAN', '2022/02/13', '08.00', 'STP'),
(858, '015.Feb/2022', '102/UN27.26/RU.01/2032', '2022-02-10', 'Test Drive Kandidat driver shopee xpress', 'Shopee xpress', 'Test drive kandidat driver shopee express', '2022/02/10', 'Test drive kandidat driver shopee xpress', 'TEST DRIVE', '2022/02/11', '13.00 - 15.00', 'Jl. Ki Hajar Dewantara No.19 , Jebres'),
(859, '016.Feb/2022', '102/UN27.26/RU.01/2033', '2022-02-10', 'Permohonan tempat praktik kerja lapangan', 'SMKN 1 Gembong', 'Permohonan tempat praktik kerja lapangan', '2022/02/11', 'Pak Anis/Mas Bud', 'PERMOHONAN', NULL, NULL, NULL),
(860, '017.Feb/2022', '102/UN27.26/RU.01/2034', '2022-02-10', 'Permohonan data dan informasi', 'Balitbangda ska', 'Permohonan data dan informasi', '2022/02/11', 'Dipsi', 'PERMOHONAN', NULL, NULL, NULL),
(861, '018.Feb/2022', '102/UN27.26/RU.01/2035', '2022-02-14', 'Surat edaran', 'Setda ska', 'Surat edaran tentang pelaksanaan kerja bakti dalam rangka HUT ke-277 Kota Ska tahun 2022', '2022/02/14', 'Arsipkan', 'SURAT EDARAN', NULL, NULL, NULL),
(862, '019.Feb/2022', '102/UN27.26/RU.01/2036', '2022-02-11', 'Konfirmasi tanah dan bangunan serta peralatan dan mesin', 'BPK RI', 'Konfirmasi tanah dan bangunan serta peralatandan mesin', '2022/02/14', NULL, 'KONFIRMASI', NULL, NULL, NULL),
(863, '020.Feb/2022', '102/UN27.26/RU.01/2037', '2022-02-15', 'Permohonan tempat pkl', 'SMKN 1 Gombong', 'permohonan tempat pkl', '2022/02/16', 'Mas Elmirsan/ mas Danu Fasilitas', 'PERMOHONAN', NULL, NULL, NULL),
(864, '021.Feb/2022', '102/UN27.26/RU.01/2038', '2022-02-15', 'Surat edaran tentang perberlakuan pembatasan kegiatas masyarakat level 3 di kota ska', 'Walikota surakarta', 'Surat edaran tentang perberlakuan pembatasan kegiatas masyarakat level 3 di kota ska', '2022/02/16', 'Bu Lusi -> Infokan ke karyawan', 'SURAT EDARAN', NULL, NULL, NULL),
(865, '022.Feb/2022', '102/UN27.26/RU.01/2039', '2022-02-16', 'Undangan kunjungan migas corner', 'SKK Migas', 'Undangan kunjungan migas corner', '2022/02/17', NULL, 'UNDANGAN', NULL, NULL, NULL),
(866, '023.Feb/2022', '102/UN27.26/RU.01/2040', '2022-02-17', 'Peminjaman tempat STP-Test drive', 'Shopee xpress', 'Peminjaman tempat STP - Test drive', '2022/02/17', 'Fasilitas, Arsipkan', 'PEMINJAMAN', '2022/02/18', '14.00 - 16.00', 'STP'),
(867, '024.Feb/2022', '102/UN27.26/RU.01/2041', '2022-02-18', 'Permohonan persewaan alat dan workshop', 'PT. Intan Cahaya Mandiri', 'Permohonan persewaan alat dan workshop', '2022/02/18', NULL, 'PERMOHONAN', '23-26 Feb 22', NULL, NULL),
(868, '025.Feb/2022', '102/UN27.26/RU.01/2042', '2022-02-18', 'Test Drive', 'Shopee Xpress', 'Test drive', '2022/02/21', 'Bagian Umum, fasilitas', 'TEST DRIVE', '2022/02/19', '14.00 16.00', NULL),
(869, '026.Feb/2022', '102/UN27.26/RU.01/2043', '2022-02-18', 'Informasi pemeliharaan jaringan listrik', 'PLN', 'Informasi pemeliharaan jaringan listrik', '2022/02/21', 'Bagian umum, Sosialisasi, HRD', 'INFORMASI', '2022/02/22', '09.00 - 12.00', NULL),
(870, '027.Feb/2022', '102/UN27.26/RU.01/2044', '2022-02-21', 'Izin peminjaman tempat artefac UNS 2022', 'FEB UNS', 'izin peminjaman tempat artefac UNS 2022', '2022/02/21', 'Komunikasi dengan panitia, Bagian kerjasama + Umum', 'PERMOHONAN', '2022/03/20', '08.00 - 22.00', 'STP'),
(871, '028.Feb/2022', '102/UN27.26/RU.01/2045', '2022-02-21', 'Permohonan personil', 'Balitbangda ska', 'Permohonan personil tim teknis penyusunan kajian indeks daya saing daerah kota ska tahun 2022', '2022/02/22', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(872, '029.Feb/2022', '102/UN27.26/RU.01/2046', '2022-02-21', 'Permohonan personil', 'Balitbangda ska', 'permohonan personil kajian penyusunan kelembagaan unit pengelola hak kekayaan intelektual (HKI)', '2022/02/22', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(873, '030.Feb/2022', '102/UN27.26/RU.01/2047', '2022-02-21', 'Permohonan personil', 'Balitbangda ska', 'Permohonan personil moner rencana induk (RINDUK) kelitbangan kota ska tahun 2022', '2022/02/22', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(874, '031.Feb/2022', '102/UN27.26/RU.01/2048', '2022-02-21', 'Permohonan personil', 'Balitbangda ska', 'Permohonan personil moner smark city kota ska tahun 2022', '2022/02/22', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(875, '032.Feb/2022', '102/UN27.26/RU.01/2049', '2022-02-17', 'Permohonan praktik kerja industri', 'SMK Tuna Harapan Pati', 'permohonan praktik kerja industri', '2022/02/23', 'Bagian pelayanan/ fasilitas', 'PERMOHONAN', NULL, NULL, NULL),
(876, '033.Feb/2022', '102/UN27.26/RU.01/2050', '2022-02-21', 'Undangan rakor & sinkronasisai data', 'Dinas Kepemudaan dan Olahraga', 'Undangan rakor & sinkroisasi data kewirausahaan bagi pemuda di kota ska tahun 2021', '2022/02/23', 'Bagian pelayanan/Hubungan bisnis', 'UNDANGAN', '2022/02/25', '09.00', 'Dinas Kepemudaan & Olahraga ska'),
(877, '034.Feb-/2022', '102/UN27.26/RU.01/2051', '2022-02-22', 'Permohonan narasumber', 'UNIBA Fak. Teknik', 'permohonan narasumber \"Pengembangan soft skill kewirausahaan bagi generasi milenial\"', '2022/02/22', 'Diterima saya sendiri', 'PERMOHONAN', '2022/03/10', '09.30 - 11.30', 'Zoom'),
(878, '035.Feb/2022', '102/UN27.26/RU.01/2052', '2022-02-21', 'Undangan Workshop', 'BAPPEDA Prov. Jawa Tengah', 'Undangan workshop penguatan lembaga inkubator bisnas', '2022/02/23', 'Bagian inkubator/Pelayanan', 'UNDANGAN', '8-9 Mar 22', '14,00 - Selesai', 'Lor in Solo'),
(879, '036.Feb/2022', '102/UN27.26/RU.01/2053', '2022-02-01', 'Greeting dies natalis UNS ke-46', 'jawa pos radar solo', 'Greeting dies natalis UNS ke-46', '2022/02/24', 'Bagian umum', 'GREETING', NULL, NULL, NULL),
(880, '037.Feb/2022', '5/LK-BRIN21/02/2022', '2022-02-11', 'Konfirmasi Tanah dan Bangunan serta Peralatan dan Mesin', 'Tim Pemeriksaan BPK RI LK Brin & Loan IBRD', 'Konfirmasi Tanah dan Bangunan Serta Peralatan dan mesin', NULL, NULL, 'KONFIRMASI', NULL, NULL, NULL),
(881, '038.Feb/2022', '102/UN27.26/TU.01/2022', '2022-02-03', 'Surat Undangan Diskusi dan Penjajakan Kerjasama oleh UNS Innovation Hub', 'UNS', 'Surat undangan diskusi dan penjajakan kerjasama oleh UNS Innovation Hub', NULL, NULL, 'UNDANGAN', '2022/02/08', '14.00 WIB', 'Aula STP'),
(882, '001.Mar/2022', 'email', '2022-02-24', 'Konfirmasi Tanah dan Bangunan Serta Peralatan dan mesin STP Solo', 'BPK', 'Konfirmasi Tanah dan Bangunan Serta Peralatan dan mesin STP Solo', '2022/03/01', 'Kerjasama Mas Susilo siapkan proposal keuangan Bu Susi', 'PERMOHONAN', NULL, NULL, NULL),
(883, '002.Mar/2022', 'email', '2022-02-28', 'Machine Tool Colaboration', 'Ex Machine Tools Research Cooperatus', 'Machine Tool Colaboration', '2022/03/01', 'Baja Pelajaran', 'PERMOHONAN', NULL, NULL, NULL),
(884, '003.Mar/2022', '60/005/III/2022', '2022-03-01', 'Undangan Rakor Penenentuan besaran konstribusi sewa pemanfaatan bangunan gedung EX TF dan kontribusi bangun guna serah pembangunan gedung di kawasan UPT STP', 'Balitbang Surakarta', 'Undangan Rakor Penenentuan besaran konstribusi sewa pemanfaatan bangunan gedung EX TF dan kontribusi bangun guna serah pembangunan gedung di kawasan UPT STP', '2022/03/01', 'Sudah di Hadiri', 'UNDANGAN', '2022/03/02', '10:00', 'STP'),
(885, '004.Mar/2022', '-', '2022-03-01', 'Test drive kandidat driver Shopee Express', 'Shopee Express', 'Test drive kandidat driver shopee express', '2022/03/02', 'Fasillitasi Bagian Umum', 'UNDANGAN', '2022/03/02', '14:00-16:00', 'STP'),
(886, '005.Mar/2022', '025/MPM/III/2022', '2022-03-01', 'Permohonan izin Kerja', 'PT MEDIDACIPTA PERKASA MANDIRI', 'Permohonan izin kerja', '2022/03/02', 'Bagian Umum', 'PERMOHONAN', NULL, NULL, NULL),
(887, '006.Mar/2022', '-', '2022-03-01', 'Authorization Letter', 'Euro Asia', 'Authorization Letter', '2022/03/02', 'Bagian Pelayanan & Kerjasama meeting zone', 'PERMOHONAN', NULL, NULL, NULL),
(888, '007.Mar/2022', '671/DM.01.04/III/2022', '2022-03-01', 'Undangan rapat persiapan visitasi penilaian penghargaan Desa Mandiri Energi(DME) dan penghargaan gerakan Hemat Energi dan Air(HEA) Tingkat Provisinsi Jawa Tengah.', 'BAPPEDA Surakarta', 'Undangan rapat persiapan visitasi penilaian penghargaan Desa Mandiri Energi(DME) dan penghargaan gerakan Hemat Energi dan Air(HEA) Tingkat Provisinsi Jawa Tengah.', '2022/03/02', 'Bagian Umum', 'UNDANGAN', '2022/03/07', '9:00', 'BAPPEDA Surakarta'),
(889, '008.Mar/2022', 'PU-07/1489/II/2022', '2022-02-25', 'Teguran', 'DPUPR Surakarta', 'Teguran', '2022/03/02', 'Bagian Umum/Pak Untung, Dibuat surat balasan', 'PEMBERITAHUAN', NULL, NULL, NULL),
(890, '009.Mar/2022', '-', '2022-02-27', 'Permohonan juri LKS SMK Kota Surakarta', 'MGMP', 'Permohonan juri LKS SMK Kota Surakarta', '2022/03/02', 'Bagian Pelayanan Mas Budi(dikirim yang sudah pernah menjadi juri)', 'PERMOHONAN', NULL, NULL, NULL),
(891, '010.Mar/2022', '05/Mrf2/III/2022', '2022-03-02', 'Permohonan Kunjungan Industri', 'SMK Ma\'arrf 2 Temon', 'Permohonan Kunjungan Industri', '2022/03/02', 'Bagian Pelayanan', 'PERMOHONAN', '2022/03/08', '09:00-Selesai', 'STP'),
(892, '011.Mar/2022', '065/UN27.02.7.23/DP/2021', '2022-03-02', 'Permohonan izin mengadakan survey', 'FKIP UNS', 'Permohonan izin mengadakan survey', '2022/03/02', 'Bagian Pelayanan', 'PERMOHONAN', NULL, NULL, NULL),
(893, '012.Mar/2022', '989/IT6/4/KP/01.06/2022', '2022-03-04', 'Permohonan Penelitian', 'ISI Surakarta', 'Permohonan Penelitian', '2022/03/04', NULL, NULL, NULL, NULL, NULL),
(894, '013.Mar/2022', 'KP.01.03/741/2022', '2022-02-22', 'Surat Edaran, tentang usulan rencana kebutuhan barang milik daerah dan rencana kebutuhan pemeliharaan barang milik daerah tahun anggaran 2023', 'Sekretariat Daerah', 'Surat Edaran, tentang usulan rencana kebutuhan barang milik daerah dan rencana kebutuhan pemeliharaan barang milik daerah tahun anggaran 2023', '2022/03/07', 'Bagian Keuangan Bu Susi, Bagian Umum Mas Danang', 'EDARAN', NULL, NULL, NULL),
(895, '014.Mar/2022', '36/D.2-III/TA/III/2018', '2022-03-07', 'Permohonan izin penelitian/survey mencari data', 'UMS', 'Permohonan izin penelitian/survey mencari data', '2022/03/07', 'Bagian Pelayanan Fasilitasi', 'PERMOHONAN', NULL, NULL, NULL),
(896, '015.Mar/2022', 'PG-00/7811/2022', '0000-00-00', 'Surat Edaran tentang percepatan pengimputan Rancangan Umum Pengadaan(RUP) DPA Tahun 2022 ke dalam aplikasi Sistem Informasi Rancangan Umum Pengadaan(IRUP)', 'Sekretariat Daerah', 'Surat Edaran tentang percepatan pengimputan Rancangan Umum Pengadaan(RUP) DPA Tahun 2022 ke dalam aplikasi Sistem Informasi Rancangan Umum Pengadaan(IRUP)', '2022/03/07', 'Bagian Keuangan Follow Up', 'EDARAN', NULL, NULL, NULL),
(897, '016.Mar/2022', '423.4/010.a', '2022-03-07', 'Permohonan tempat PKL', 'SMKN 1 Gombong', 'Permohonan tempat PKL', '2022/03/08', NULL, NULL, NULL, NULL, NULL),
(898, '017.Mar/2022', '005/69/III/2022', '2022-03-08', 'Undangan rapat finalisasi berita acara penentuan besarann kontribusi sewa pemfaatan bangunan gedung ex Teaching Factory dan kontribusi bangunan guna serah pembangunan gedung di kawasan UPT Solo Techno park', 'Balitbang Daerah', 'Undangan rapat finalisasi berita acara penentuan besarann kontribusi sewa pemfaatan bangunan gedung ex Teaching Factory dan kontribusi bangunan guna serah pembangunan gedung di kawasan UPT Solo Techno park', '2022/03/08', NULL, 'UNDANGAN', NULL, NULL, NULL),
(899, '018.Mar/2022', 'email', '2022-03-08', 'Undangan pimpinan dan team dari UPT Solo Techno Park Jebres Solo untuk menghadiri dan bersedia memberikan kata sambutan untuk acara-acara ground breaking dimulainya proyek Shopee Technopark', 'Rahmat Daresa Alam', 'Undangan pimpinan dan team dari UPT Solo Techno Park Jebres Solo untuk menghadiri dan bersedia memberikan kata sambutan untuk acara-acara ground breaking dimulainya proyek Shopee Technopark', '2022/03/09', NULL, 'UNDANGAN', NULL, NULL, NULL),
(900, '019.Mar/2022', '003/CII-03/2022', '2022-03-08', 'Percepatan penyelasaian pekerjaan penutupan pagar area proyek', 'Shopee Technopark Project Surkarta', 'Percepatan penyelasaian pekerjaan penutupan pagar area proyek', '2022/03/09', NULL, 'EDARAN', NULL, NULL, NULL),
(901, '020.Mar/2022', '01/BNT-I/CII/March 2000', '2022-03-07', 'Berita acara serah terima ruangan gedung TF', 'Berita acara serah terima', 'Berita acara serah terima ruangan gedung TF', '2022/03/09', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(902, '021.Mar/2022', 'KI/482/III/2022', '2022-03-08', 'Mengajukan peminjaman fasilitas ruang cyber security UPT Solo Tehnopark', 'DISKOMINFO STAPER', 'Mengajukan peminjaman fasilitas ruang cyber security UPT Solo Tehnopark', '2022/03/09', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(903, '022.Mar/2022', 'KA.02/4CG/III/2022', '2022-03-07', 'Permohonan data personil pengelola kearsipan', 'Dinas Perspustakaan dan kearsipan', 'Permohonan data personil pengelola kearsipan', '2022/03/09', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(904, '023.Mar/2022', 'KP.05/829/2022', '2022-03-02', 'Surat Edaran tentang penysunan pelaporan pengendalian kegiatan APBD di lingkungan pemerintah Kota Surakarta tahun anggaran 2022', 'Sekretariat Daerah', 'Surat Edaran tentang penysunan pelaporan pengendalian kegiatan APBD di lingkungan pemerintah Kota Surakarta tahun anggaran 2022', '2022/03/09', NULL, 'EDARAN', NULL, NULL, NULL),
(905, '024.Mar/2022', 'KA.00/896/2022', '2022-03-08', 'Undangan, Penyerahan tata daerah dinas kepala perangkat daerah se kota Surakarta sekaligus Sekretaris Daerah Kota Surakarta', 'Sekretariat Daerah', 'Undangan, Penyerahan tata daerah dinas kepala perangkat daerah se kota Surakarta sekaligus Sekretaris Daerah Kota Surakarta', '2022/03/09', NULL, 'UNDANGAN', NULL, NULL, NULL),
(906, '025.Mar/2022', 'SRT-0051/SKKMI6000/2022/50', '2022-03-08', 'Persiapan Migas Corner-STP oleh kepala SKK Migas', 'SKKMIGAS', 'Persiapan Migas Corner-STP oleh kepala SKK Migas', '2022/03/10', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(907, '026.Mar/2022', '035/061015.114/D/2022', '2022-03-09', 'Pengajuan permohonan narasumber', 'UNIBA Surakarta', 'Penjuan permohonan narasumber', '2022/03/10', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(908, '027.Mar/2022', '32/D.2-III/TA/III/2018', '2022-03-07', 'Permohonan izin penelitian/survey mencari data', 'UMS Surakarta', 'Permohonan izin penelitian/survey mencari data', '2022/03/10', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(909, '028.Mar/2022', 'KS.07.01/788/III/2022', '2022-03-10', 'Undangan, Jadwal pelaksanaan vaksinasi covid-19 dosis lanjutan(booster) bagi pegawai/staff dilingkungan kerja', 'Puskesmas Ngoresan', 'Undangan, Jadwal pelaksanaan vaksinasi covid-19 dosis lanjutan(booster) bagi pegawai/staff dilingkungan kerja', '2022/03/10', NULL, 'UNDANGAN', NULL, NULL, NULL),
(910, '029.Mar/2022', 'K1/490/III/2022', '2022-03-10', 'Undangan Registrasi dan verifikasi tanda tangan elektrik', 'DISKOMINFO SPI', 'Undangan Registrasi dan verifikasi tanda tangan elektrik', '2022/03/14', NULL, 'UNDANGAN', NULL, NULL, NULL),
(911, '030.Mar/2022', '422/200.5/101.6.18.14/2022', '2022-02-03', 'Permohonan Kunjungan Industri', 'SMKN 1 Seneng Ngawi', 'Permohonan Kunjungan Industri', '2022/03/14', NULL, 'PERMOHONAN', '2022/03/31', '8:30', 'STP'),
(912, '031.Mar/2022', '-', '2022-03-14', 'Perizinan kegiatan acara \"Nongkrong bareng di Shopee\"', 'Shopee', 'Perizinan kegiatan acara \"Nongkrong bareng di Shopee\"', '2022/03/14', NULL, 'PERMOHONAN', '12 Mar 22 -10Apr 22', '8:00', 'Garena STP'),
(913, '032.Mar/2022', '56/D.2-II/TA/III', '2022-03-12', 'Permohonan izin penelitian/survey mencari data', 'UMS', 'Permohonan izin penelitian/survey mencari data', '2022/03/15', 'Bagian Pelayanan/Fasilitasi', 'PERMOHONAN', NULL, NULL, NULL),
(914, '033.Mar/2022', '015/037', '2022-03-14', 'Visitasi Penilaian Penghargaan Desa Mandiri Energi(DME) dan penghargaan gerakan Hemat Energi dan Air(HEA) Tahun 2022', 'Dinas Energi dan Sumber Daya Mineral', 'Visitasi Penilaian Penghargaan Desa Mandiri Energi(DME) dan penghargaan gerakan Hemat Energi dan Air(HEA) Tahun 2022', '2022/03/15', 'Bagian Umum/Mas Oktaf, Bagian Keuangan / Bu Susi', 'PERMOHONAN', NULL, NULL, NULL),
(915, '034.Mar/2022', '-', '2022-03-13', 'Kolaborasi dan perizinan penggunaan branding\"Behind the gamework & Class\" setiap minggu ke-3&4 setiap bulan,13:00 Hybrid online offline area GOTO-Shopee-Garena STP', 'Excecutive by Pinvois', 'Kolaborasi dan perizinan penggunaan branding\"Behind the gamework & Class\" setiap minggu ke-3&4 setiap bulan,13:00 Hybrid online offline area GOTO-Shopee-Garena STP', '2022/03/15', NULL, 'PERMOHONAN', 'Setiap Minggu ke-3&4 setiap Bulan', '13:00', 'GOTO, Shopee, Garena STP'),
(916, '035.Mar/2022', '88/005/III/2022', '2022-03-15', 'Undangan Rakor Penyampaian besaran kontribusi sewa pemanfaatan bangunan gedung ex teaching factory dan kontribusi bangun guna seraj pembangunan gedung di sebagian tanah HP.105 kel Jebres, kec Jebres Ska', 'Balitbangda Surakarta', 'Undangan Rakor Penyampaian besaran kontribusi sewa pemanfaatan bangunan gedung ex teaching factory dan kontribusi bangun guna seraj pembangunan gedung di sebagian tanah HP.105 kel Jebres, kec Jebres Ska', '2022/03/15', 'Sudah di hadiri', 'UNDANGAN', '2022/03/16', '10:00', 'STP'),
(917, '036.Mar/2022', '-', '2022-03-13', 'Permohonan bantuan zoom meeting \'Statistics Study Group\"', 'Excecutive by Pinvois', 'Permohonan bantuan zoom meeting \'Statistics Study Group\"', '2022/03/15', 'difasilitasi', 'PERMOHONAN', '2022/03/25', '13:00', 'Zoom Meeting'),
(918, '037.Mar/2022', 'email', '2022-03-15', 'Exclusive Interview Proposal', 'Solo Capital', 'Exclusive Interview Proposal', '2022/03/15', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(919, '038.Mar/2022', '62/D.2-III/TO/III/2022', '2022-03-15', 'Permohonan izin penelitian/survey mencari data', 'UMS', 'Permohonan izin penelitian/survey mencari data', '2022/03/16', 'Fasilitasi bp christian, bp budi', 'PERMOHONAN', NULL, NULL, NULL),
(920, '039.Mar/2022', '789/TN.39/III/2022', '2022-03-15', 'Undangan rakor rencana kerjasama ketahanan pangan Kota Surakarta melalui kegiatan food sharing', 'Bappeda Surakarta', 'Undangan rakor rencana kerjasama ketahanan pangan Kota Surakarta melalui kegiatan food sharing', '2022/03/16', 'Sudah di hadiri', 'UNDANGAN', '2022/03/17', '8:30', 'Bappeda'),
(921, '040.Mar/2022', 'PG.00/1001/2022', '2022-03-15', 'Undangan desk inputting sirup DPA TA 2022', 'Sekretariat Daerah', 'Undangan desk inputting sirup DPA TA 2022', '2022/03/16', 'Bagian Keuangan, Bu Susi', 'UNDANGAN', '2022/03/17', '09:00-09:30', 'Ruang rapat LPSE'),
(922, '041.Mar/2022', '800/330', '2022-03-10', 'Permohonan penguji eksternal Ujian Kompetensi Kejujuran (UKK) Nasional Teknik Pengelasan', 'SMKN 1 KISMANTORO', 'Permohonan penguji eksternal Ujian Kompetensi Kejujuran (UKK) Nasional Teknik Pengelasan', '2022/03/16', 'Bagian Pelayanan', 'PERMOHONAN', '2022/03/21', NULL, NULL),
(923, '042.Mar/2022', 'DG.0.04/97/III/2022', '2022-03-15', 'Pinjam tempat parkir operasi pasar minyak goreng', 'Kelurahan Jebres', 'Pinjam tempat parkir operasi pasar minyak goreng', '2022/03/16', 'Arsipkan', 'PERMOHONAN', '2022/03/17', '8:00', NULL),
(924, '043.Mar/2022', NULL, '2022-03-14', 'Kolaborasi dan perizinan penggunaan branding \"pekan mahasiswa\"', 'Tunas Bertumbuh', 'Kolaborasi dan perizinan penggunaan branding \"pekan mahasiswa\"', '2022/03/17', 'Arsipkan', 'PERMOHONAN', '13-Mar - 20-Mar-22', '13:00', 'Online Youtube Tunas Bertumbuh'),
(925, '044.Mar/2022', 'Petro.01/012/III/2022', '2022-03-01', 'Pemberitahuan Program Pelatihan welder upgrade bintuni', 'Petrotekno', 'Pemberitahuan Program Pelatihan welder upgrade bintuni', '2022/03/18', 'Bagian Pelayanan', 'EDARAN', 'Mulai 7-Mar-22', NULL, NULL),
(926, '045.Mar/2022', '045.1/354/2022', '2022-03-17', 'Permohonan Konsultasi dan studi Tiru', 'BAPPEDA KUDUS', 'Permohonan Konsultasi dan studi Tiru', '2022/03/18', 'Fasilitasi Bagian pelayanan pak christian', 'PERMOHONAN', '2022/03/24', '8:30', 'STP'),
(927, '046.Mar/2022', 'TM.00.02/1047/2022', '2022-03-17', 'Undangan rapat Teknis TKKSD tentang Rencana Kerjasama antara pemkot Surakarta dan Pijar Foundation', 'Sekretariat Daerah', 'Undangan rapat Teknis TKKSD tentang Rencana Kerjasama antara pemkot Surakarta dan Pijar Foundation', '2022/03/18', 'Bagian Kerjasama Pak Susilo, Arsip', 'UNDANGAN', '2022/03/21', '10:00', 'Zoom Meeting'),
(928, '047.Mar/2022', '005/100/III/2022', '2022-03-18', 'Undangan rapat tindak lanjut pembahasan besaran kontribusi tahunan Bangun Guna Serah(BGS) pembangunan gedung baru pada sebagian tanah HP 105 Kel Jebres Surakarta', 'Balitbangsda Surakarta', 'Undangan rapat tindak lanjut pembahasan besaran kontribusi tahunan Bangun Guna Serah(BGS) pembangunan gedung baru pada sebagian tanah HP 105 Kel Jebres Surakarta', '2022/03/18', 'Sudah di hadiri', 'UNDANGAN', '2022/03/22', '9:00', 'Balitbangsda Surakarta'),
(929, '048.Mar/2022', 'RP.05/103/III/2022', '0000-00-00', 'Undangan', 'Setda ska', 'Undangan Desk pelapgran ropak dan pol simdalbangda bulan Januari dan Februari 2022, Rabu 23 Mar 22, 13.00-15.30, Setda ska', '2022/03/22', NULL, 'UNDANGAN', '2022/03/23', '13.00-15.30', 'Setda ska'),
(930, '049.Mar/2022', 'B-/99/IV/MR/3/2022', '2022-03-18', 'Undangan temu pengelola science center', 'BRIN', 'Undangan temu pengelola science center', '2022/03/22', 'Sudah di hadiri', 'UNDANGAN', '2022/03/28', '8:30', 'Zoom Meeting'),
(931, '050.Mar/2022', '24/Af-fikrIIE/EKS/III/2022', '2022-02-14', 'Permohonan personil/pemandu edukasi sains(SSC) disekolah', 'AL-Fikr', 'Permohonan personil/pemandu edukasi sains(SSC) disekolah', '2022/03/22', 'Balasan sudah turun', 'PERMOHONAN', '2022/03/25', '09:00-10:00', 'Al-Fikr'),
(932, '051.Mar/2022', NULL, '2022-03-22', 'Perizinan kegiatan acara \"Indihome Borobudur Cup\"', 'Shopee', 'Perizinan kegiatan acara \"Indihome Borobudur Cup\"', '2022/03/22', 'Bagian Umum :Danang, Oktaf, Untung', 'PERMOHONAN', '2022/03/27', '10:00', 'Garena STP'),
(933, '052.Mar/2022', '81/D.2-III/TA/2022', '2022-03-22', 'Permohonan izin penelitian/survey mencari data', 'UMS', 'Permohonan izin penelitian/survey mencari data', '2022/03/22', 'Bagian Pelayanan dan difasilitasi', NULL, NULL, NULL, NULL),
(934, '053.Mar/2022', '11/Und/RAT/KKKMS/III/2022', '2022-03-17', 'Undangan Rapat anggota tahunan kopkarmik tahun buku 2021', 'KOPKARMIK', 'Permohonan izin penelitian/survey mencari data', '2022/03/22', 'Bagian Pelayanan', 'UNDANGAN', '2022/03/25', '16:30-20:00', 'Orient'),
(935, '054.Mar/2022', '421/091/SMK.01/2021', '2022-03-08', 'Permhonan tempat PKL', 'SMKN 1 Surakarta', 'Permohonan izin penelitian/survey mencari data', '2022/03/23', 'Bagian Pelayanan fasilitasi', 'PERMOHONAN', '20 Juni-17 Sept-22', NULL, NULL),
(936, '055.Mar/2022', '213/SMKBK/E.2/III/2022', '2022-03-15', 'Permohonan penguji eksternal Uji Kompetensi Keahlian(UKK) tahun pelajaran 2021/2022', 'SMK Bhineka Karya Surakarta', 'Permohonan penguji eksternal Uji Kompetensi Keahlian(UKK) tahun pelajaran 2021/2022', '2022/03/23', 'Bagian pelayanan&diklat fasilitasi', 'PERMOHONAN', '18 Apr - 12 Mei 2022', NULL, NULL),
(937, '056.Mar/2022', 'RP.05/993/2022', '2022-03-15', 'Surat edaran walikota Surakarta tentang dokumen arahan dan kebijakan penilaian resiko tahun 2022', 'Walikota Surakarta', 'Surat edaran walikota Surakarta tentang dokumen arahan dan kebijakan penilaian resiko tahun 2022', '2022/03/25', 'Bagian Keuangan, Bu Susi dan mas Agus', 'EDARAN', NULL, NULL, NULL),
(938, '057.Mar/2022', 'PP.05/993/2022', '2022-03-15', 'Surat Edaran walikota Ska', 'Walikota Surakarta', 'Surat Edaran Walikota Ska Tentang Dokumen Arahan dan Kebijakan Risiko Tahun 2022', '2022/03/25', NULL, 'EDARAN', NULL, NULL, NULL),
(939, '058.Mar/2022', 'B.285/SM/WU/III/2022', '2022-03-23', 'Rakornas Transformasi Digital dan pendataan lengkap KUMKM tekstur 2022', 'KEMENKOP UKM', 'Rakornas Transformasi Digital dan pendataan lengkap KUMKM tekstur 2022', '2022/03/28', 'Bagian Inkubator Mas Danu', 'UNDANGAN', '2022/03/28', NULL, NULL),
(940, '059.Mar/2022', NULL, '0000-00-00', 'Undangan acara pergelaran wayang kulit dalam rangka dies natalis ke-46 UNS', 'UNS', 'Undangan acara pergelaran wayang kulit dalam rangka dies natalis ke-46 UNS', '2022/03/28', 'Bila ada yang longgar', 'UNDANGAN', '2022/03/28', '19:30', 'Ballroom gedung Ki Hajar Dewantara'),
(941, '060.Mar/2022', '837/PF.00.III.2022', '2022-03-21', 'Undangan Rakor forum pengembangan ekonomi lokal (PEL-FEDED)', 'Bappeda Surakarta', 'Undangan Rakor forum pengembangan ekonomi lokal (PEL-FEDED)', '2022/03/23', 'Bagian Inkubator Mas Danu, Mas Christian', 'UNDANGAN', '2022/03/30', '12:30', 'Balaikota'),
(942, '061.Mar/2022', NULL, '2022-03-25', 'Test drive kandidat driver Shopee Express', 'Shopee Express', 'Test drive kandidat driver Shopee Express', '2022/03/29', 'Bagian Umum :Danang, Untung', 'PERMOHONAN', '28 Mar - 30 Mar 2022', NULL, NULL),
(943, '062.Mar/2022', '001/STM-170-III-2022', '2022-03-28', 'Penjajakan PT Sinar Tanputra Mandiri', 'PT Sinar Tanputra Mandiri', 'Penjajakan PT Sinar Tanputra Mandiri', '2022/03/29', 'Sudah di hadiri', NULL, NULL, NULL, NULL),
(944, '063.Mar/2022', 'email', '2022-03-28', 'VAR-rate change notification letter', 'GOJEK', 'VAR-rate change notification letter', '2022/03/29', 'Bagian Kerjasama Pak Susilo, Arsip', NULL, NULL, NULL, NULL),
(945, '064.Mar/2022', '0457/PL43/PK.01.06/2022', '2022-03-28', 'Permohonan Izin magang industri', 'Politeknik Negeri Cilacap', 'Permohonan Izin magang industri', '2022/03/29', 'Bagian Pelayanan', 'PERMOHONAN', '18 Juli - 18 Des 2022', NULL, NULL),
(946, '065.Mar/2022', '073/UN27.02.7.23/DP/2022', '2022-03-26', 'Permohonan magang industri', 'UNS', 'Permohonan magang industri', '2022/03/29', 'Bagian Pelayanan Fasilitasi', NULL, NULL, NULL, NULL),
(947, '066.Mar/2022', '112/PN.01.01/III/2022', '2022-03-28', 'Undangan rakor capaian kinerja dan keuangan UPT BLUD Solo Technopark tahun 2021 dan RBA Solo Technopark tahun 2022', NULL, 'Undangan rakor capaian kinerja dan keuangan UPT BLUD Solo Technopark tahun 2021 dan RBA Solo Technopark tahun 2022', '2022/03/29', 'Sudah Di hadiri', 'UNDANGAN', '2022/04/01', '8:30', 'Balitbangda');
INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(948, '067.Mar/2022', '113/PN.01.01/III/2022', '2022-03-28', 'Undangan Rapat pembahasan buku panduan dan jadwal pelaksanaan lomba krenova', 'Balitbang Surakarta', 'Undangan Rapat pembahasan buku panduan dan jadwal pelaksanaan lomba krenova', '2022/03/29', 'Bagian Kerjasama Mas Susilo', 'UNDANGAN', '2022/04/30', '13:00', 'Balitbangda'),
(949, '068.Mar/2022', '420/002/2022', '2022-03-29', 'Permohonan praktek kerja industri', 'SMKN 2 Surakarta', 'Permohonan praktek kerja industri', '2022/03/29', 'Bagian Pelayanan Fasilitasi', 'PERMOHONAN', NULL, NULL, NULL),
(950, '069.Mar/2022', 'PG.00/1271/2022', '2022-03-30', 'Surat edaran evaluasi pengumuman Rancangan Umum Pengadaan (RUP) DPA TA 2022', 'Setda Surakarta', 'Surat edaran evaluasi pengumuman Rancangan Umum Pengadaan (RUP) DPA TA 2022', '2022/03/31', 'Bagian Keuangan Bu Susi', 'EDARAN', NULL, NULL, NULL),
(951, '001.Apr/2022', '111/KM/PO/III/2022', '2022-03-31', 'Pemesanan Barang', 'PT King Manufacture', 'Pemesanan Barang', '2022/04/01', 'Bagian Pelayanan Pak Christian', 'PERMOHONAN', NULL, NULL, NULL),
(952, '002.Apr/2022', '128/PN.02.00/IV/2022', '2022-04-05', 'Permohonan narasumber sosialisasi lomba kreativitas dan inovasi Kota Surakarta th 2022', 'Balitbangsda Surakarta', 'Permohonan narasumber sosialisasi lomba kreativitas dan inovasi Kota Surakarta th 2022', '2022/04/06', 'Sudah dihadiri', 'UNDANGAN', '2022/04/12', '8:30', 'Megaland Hotel Solo'),
(953, '003.Apr/2022', '136/PPC5/210/2022-585', '2022-04-05', 'Pendaftaran calon peserta pelatihan Confined Space Entry Attendance(CSEA) batch 2 secara ofline', 'SKK MIGAS', 'Pendaftaran calon peserta pelatihan Confined Space Entry Attendance(CSEA) batch 2 secara ofline', '2022/04/06', 'Bagian pelayanan Pak Christian, Pak Budi', 'UNDANGAN', '13 Apr - 14 Apr 2022', '8:00', NULL),
(954, '004.Apr/2022', 'email', '2022-04-06', 'Evaluasi dan Feedback training CSE-STP batch 1', 'Pertamina', 'Evaluasi dan Feedback training CSE-STP batch 1', '2022/04/06', 'Bagian pelayanan Pak Christian, Pak Budi', 'UNDANGAN', NULL, NULL, NULL),
(955, '005.Apr/2022', '045/5/Waskita/IV/2022', '2022-04-05', 'Permohonan peminjaman tempat', 'Waskita Biro konsultan psikolog', 'Permohonan peminjaman tempat', '2022/04/06', 'Bagian Kerjasama, Mas Danang mas Susilo', 'PERMOHONAN', '2022/04/25', '8:30', 'Ruang Seminar'),
(956, '006.Apr/2022', '31/005/IV/2022', '2022-04-06', 'Undangan pakar awal tim investasi PT Shopee interkomunal Indonesia di UPT STP', 'BALITBANGDA SKA', 'Undangan pokok awal tim investasi PT Shopee interkomunal Indonesia di UPT STP', '2022/04/06', NULL, 'UNDANGAN', '2022/04/07', '09.00', 'BALITBANGDA SKA'),
(957, '007.Apr/2022', 'EXT-001/TAS/INA/MEDC/IV/2022', '2022-04-06', 'Permohonan Courtesy Visit', 'Modeo Energy Oil&Gas', 'Permohonan Courtesy Visit', '2022/04/07', 'Bagian pelayanan Pak Christian, Pak Budi', 'PERMOHONAN', '2022/04/19', '8:30', NULL),
(958, '008.Apr/2022', '7970/UN6.G/PT.01.04/2022', '2022-04-07', 'PErmohonan izin riset/wawancara a.n Dicky Febriansyah, NPM 7152020000', 'FISIP Pascasarjana UNPAD', 'PErmohonan izin riset/wawancara a.n Dicky Febriansyah, NPM 7152020000', '2022/04/07', 'Bagian Kerjasama, mas Susilo', 'PERMOHONAN', NULL, NULL, NULL),
(959, '009.Apr/2022', '04214/HM.01.04/D7.1.5/B/04/2022', '2022-04-07', 'Permohonan fasilitasi kunjungan kerja program prioritas bidang industri', 'BAPPENAS', 'Permohonan fasilitasi kunjungan kerja program prioritas bidang industri', '2022/04/07', 'Sudah dihadiri', 'PERMOHONAN', '8 Apr - 9 Apr 2022', '9:00', NULL),
(960, '010.Apr/2022', 'RP.05/1382/2022', '2022-04-07', 'Undangan rapat koordinasi pengendalian operasional kegiata (RAKORPOK) Triwulan TA 2022', 'SEKDA Surakarta', 'Undangan rapat koordinasi pengendalian operasional kegiata (RAKORPOK) Triwulan TA 2022', '2022/04/07', 'Bu Susi', 'UNDANGAN', '2022/04/11', '9:00', 'Pendhapi Gede'),
(961, '011.Apr/2022', '071/DKL/Bid.III/SMK.W/XI/2022', '2022-03-11', 'Permohonan tempat PRAKERIN tahun pelajaran 2022/2023', 'SMK Warga Surakarta', 'Permohonan tempat PRAKERIN tahun pelajaran 2022/2023', '2022/04/08', 'Bagian Pelayanan Pak Christian, Pak Budi Fasilitasi', 'PERMOHONAN', NULL, NULL, NULL),
(962, '012.Apr/2022', 'B/4858/04/2022', '2022-04-08', 'Pelaksanaan jamsostek besi peserta macang dan atau siswa kerja praktik', 'BPJS KETENAGAKERJAAN', 'Pelaksanaan jamsostek besi peserta macang dan atau siswa kerja praktik', '2022/04/11', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(963, '013.Apr/2022', '245/SMKBK/E.11/IV/2022', '2022-04-05', 'Permohonan Praktek kerja industri', 'SMK Bhineka Karya Surakarta', 'Permohonan Praktek kerja industri', '2022/04/12', 'Bagian Pelayanan Pak Christian, Pak Budi Fasilitasi', 'PERMOHONAN', NULL, NULL, NULL),
(964, '014.Apr/2022', '147/005/IV/2022', '2022-04-11', 'Undangan rakor tentang penataan sekitar kawasan STP', 'Balitbangsda Surakarta', 'Undangan rakor tentang penataan sekitar kawasan STP', '2022/04/12', 'Sudah dihadiri', 'UNDANGAN', '2022/04/13', '9:00', 'Balitbang Surakarta'),
(965, '015.Apr/2022', 'PM.02.01/2022', '2022-04-12', 'Permintaan data potensi dan peluang industri Kota Surakarta tahun 2022', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Permintaan data potensi dan peluang industri Kota Surakarta tahun 2022', '2022/04/12', 'Bagian Keuangan, Bu Susi konsultasi ke pemimpin', 'PERMOHONAN', NULL, NULL, NULL),
(966, '016.Apr/2022', '005/IKL/RS/IV/2022', '2022-04-07', 'Ucapan Idul Fitri 1443H/2022 Ucapan HUT ke 22 Radar Solo', 'JawaPos RadarSolo', 'Ucapan Idul Fitri 1443H/2022 Ucapan HUT ke 22 Radar Solo', '2022/04/13', 'Bagian Umum, Pak Untung, Mas Oktaf', 'EDARAN', NULL, NULL, NULL),
(967, '017.Apr/2022', 'PG.00/1435/2022', '2022-04-12', 'Undangan Asistensi pengadaan barang/jasa dan optimalisasi penggunaan produk dalam egeri', 'SEKDA Surakarta', 'Undangan Asistensi pengadaan barang/jasa dan optimalisasi penggunaan produk dalam egeri', '2022/04/14', 'Bagian Keuangan, Bu Susi hadiri dan sosialisasi', 'UNDANGAN', '19 Apr - 20 Apr 2022', NULL, NULL),
(968, '018.Apr/2022', '151/PN.08/IV/2022', '2022-04-14', 'Permintaan data potensi dan peluang investasi', 'Balitbangsda Surakarta', 'Permintaan data potensi dan peluang investasi', '2022/04/14', 'Sudah dihadiri', 'PERMOHONAN', NULL, NULL, NULL),
(969, '019.Apr/2022', NULL, '2022-04-14', 'Test drive kandidat driver Shopee Xpress', 'Shopee Xpress', 'Test drive kandidat driver Shopee Xpress', '2022/04/14', 'Bagian Umum Mas Danang fasilitasi', 'PERMOHONAN', '2022/04/15', '15:00-16:00', NULL),
(970, '020.Apr/2022', 'B/93/IKMA/IND/IV/2022', '2022-04-16', 'Seminar Nasional dan Pembukaan rangkaian program startup 4 industry 2022', 'Dirjen INdustri kecil Menengan dan aneka kemenperin', 'Seminar Nasional dan Pembukaan rangkaian program startup 4 industry 2022', '2022/04/18', 'Bagian Inkubasi Mas Danu Hadiri', 'UNDANGAN', '2022/04/19', '09:30-14:00', 'Zoom Webinar'),
(971, '021.Apr/2022', '355.C,7-VI/BR/IV/2022', '2022-04-12', 'Undangan Sosialisasi Skema dan fasilitas ridest dan inovasi BRIN', 'UMS', 'Undangan Sosialisasi Skema dan fasilitas ridest dan inovasi BRIN', '2022/04/18', NULL, 'UNDANGAN', '2022/04/19', '15:30', 'UMS'),
(972, '022.Apr/2022', 'TM.07.00/2097', '2022-04-12', 'Undangan rapat koordinasi tentang potensi dan peluang investasi Kota Surakarta tahun 2022 beserta data pendukungnya', 'DPMPTSP Surakarta', 'Undangan rapat koordinasi tentang potensi dan peluang investasi Kota Surakarta tahun 2022 beserta data pendukungnya', '2022/04/19', 'Bu Susi', 'UNDANGAN', '2022/04/21', '9:00', 'DPMPTSP SKA'),
(973, '023.Apr/2022', 'email', '2022-04-18', 'Finance Operation Announcement', 'GOTO', 'Finance Operation Announcement', '2022/04/19', 'Bagian Keuangan', 'EDARAN', NULL, NULL, NULL),
(974, '024.Apr/2022', NULL, '2022-04-19', 'Permohohanan dukungan kursi pelatihan bagi pelaku UMKM yang tergabung dalam KOMPAS (Gofood)', 'Gojek', 'Permohohanan dukungan kursi pelatihan bagi pelaku UMKM yang tergabung dalam KOMPAS (Gofood)', '2022/04/20', 'Arsipkan', 'PERMOHONAN', '2022/04/20', '09:00-12:00', NULL),
(975, '025.Apr/2022', '163/005/IV/2022', '2022-04-19', 'Undangan konsultasi/Studi tiru program kegiatan kelitbangan', 'Balitbangsda Surakarta', 'Undangan konsultasi/Studi tiru program kegiatan kelitbangan', '2022/04/21', 'Mas Danu', 'UNDANGAN', '2022/04/21', '10:30-12:00', 'Balitbangsda SKA'),
(976, '026.Apr/2022', '053/-55KA/SKC/04/2022', '2022-04-20', 'Permohonan izin tempat', 'Omah Sambung', 'Permohonan izin tempat', '2022/04/21', 'Pak Untung Fasilitasi', 'PERMOHONAN', '2022/04/22', '14:30--17:00', 'Aula RnD'),
(977, '027.Apr/2022', NULL, '2022-04-20', 'Permohonan permintaan ruang seminar Solo Technopark pelatihan call center dan KWU bagi penyandang disabilitas', 'Bank Mandiri', 'Permohonan permintaan ruang seminar Solo Technopark pelatihan call center dan KWU bagi penyandang disabilitas', '2022/04/21', 'Mas Susilo, Mas Danang, Pak Untung Dasilitasi', 'PERMOHONAN', '17 Apr - 19 Apr 2022', '09:00-17:00', 'Ruang Seminar'),
(978, '028.Apr/2022', NULL, '2022-04-18', 'Permohonan ijin kegiatan dan peminjaman perlengkapan', 'Bank Mandiri', 'Permohonan ijin kegiatan dan peminjaman perlengkapan', '2022/04/22', 'Mas danang, Pak Untung Fasilitasi', 'PERMOHONAN', '2022/04/22', '16:30-18:00', 'Selasar STP'),
(979, '029.Apr/2022', 'KM.10/872', '2022-04-21', 'Undangan Rakor rencana penerbitan pedagang kaki lima (PKL) di depan STP jalan KH.Dewantara Jebres', 'Satpol PP', 'Undangan Rakor rencana penerbitan pedagang kaki lima (PKL) di depan STP jalan KH.Dewantara Jebres', '2022/04/22', 'Pak Christian, Pak Untung, Bu Susi telah hadiri', 'UNDANGAN', NULL, NULL, NULL),
(980, '030.Apr/2022', 'R07.Br.UNS/III/2022', '2022-04-18', 'Permohonan penjurian keg.workshop content creatur', 'Bank Mandiri', 'Permohonan penjurian keg.workshop content creatur', '2022/04/22', NULL, 'PERMOHONAN', '2022/04/26', '17.00-18.30', 'Ruang Seminar STP'),
(981, '031.Apr/2022', NULL, '2022-04-18', 'Permohonan penyelenggaraan kegiatan workshop content creator', 'Bank Mandiri', 'Permohonan penyelenggaraan kegiatan workshop content creator', '2022/04/22', 'Fasilitasi Mas Danang, Pak Untung', 'PERMOHONAN', '2022/04/26', '13:00-19:00', 'Ruang Seminar STP'),
(982, '032.Apr/2022', 'PM.04.02/72/IV/2022', '2022-04-21', 'Nota Dinas laporan hasil rapat koordinasi persiapan penyelenggaraan kegiatan investment forum dan pertemuan kedua Trade, Investment and Industry Working Group (TIIWG) Presidensi G20 Indonesia tahun 2022', 'SEKDA Surakarta', 'Nota Dinas laporan hasil rapat koordinasi persiapan penyelenggaraan kegiatan investment forum dan pertemuan kedua Trade, Investment and Industry Working Group (TIIWG) Presidensi G20 Indonesia tahun 2022', '2022/04/22', 'Mas Christian dan Mas Danu pilih startup yang dilarang', 'EDARAN', NULL, NULL, NULL),
(983, '033.Apr/2022', '013/RT/YAI-SP/IV/2022', '2022-04-22', 'Kunjungan ke STP', 'Yayasan Internet Indonesia', 'Kunjungan ke STP', '2022/04/25', 'Sudah menemui Mas Christian, Mas Susilo, Mas Dicky. Siapkan snack Bu Susi', 'PERMOHONAN', NULL, NULL, NULL),
(984, '034.Apr/2022', '6682/SMPKKK/IV/2022', '2022-04-22', 'Permohonan Kunjungan', 'SMP Kristen Kalam Kudus', 'Permohonan Kunjungan', '2022/04/25', 'Mas Christian, Mas Budi fasilitasi', 'PERMOHONAN', '19-May-22', NULL, NULL),
(985, '035.Apr/2022', '059/D/POLHAS/IV/2022', '2022-04-25', 'Permohonan kerjasama bidang Tri Dharma Perguruan Tinggi', 'Politeknik Harapan Bangsa Surakarta', 'Permohonan kerjasama bidang Tri Dharma Perguruan Tinggi', '2022/04/25', 'Mas Susilo follow up rumusan kegiatan', 'PERMOHONAN', NULL, NULL, NULL),
(986, '036.Apr/2022', 'TM.07.00/2096', '2022-04-12', 'Undangan rakor tentang persiapan pembuatan booklet dan leaflet potensi dan peluang investasi Kota Surakarta tahun 20022 beserta data pendukungnya', 'DPMPTSP Surakarta', 'Undangan rakor tentang persiapan pembuatan booklet dan leaflet potensi dan peluang investasi Kota Surakarta tahun 20022 beserta data pendukungnya', '2022/04/25', 'Bu Susi, Mas Agus', 'UNDANGAN', '2022/04/28', '9:00', 'DPMPTSP SKA'),
(987, '037.Apr/2022', '421.5/ /101.6.15.20/2022', '2022-04-25', 'Permohonan penambahan jumlah peserta', 'SMKN 1 Tanjunganom Nganjuk', 'Permohonan penambahan jumlah peserta', '2022/04/25', 'Pak Christian, Mas Budi', 'PERMOHONAN', '19-May-22', '9:00', 'Aula STP'),
(988, '038.Apr/2022', 'KA.00.00/414/2022', '2022-04-26', 'Surat Pengantar dokumen pedoman penyusunan monitoring dan evaluasi peta proses bisnis dan SOP di Lingkungan pemkot surakrta tahun 2021-2026', 'SEKDA Surakarta', 'Surat Pengantar dokumen pedoman penyusunan monitoring dan evaluasi peta proses bisnis dan SOP di Lingkungan pemkot surakrta tahun 2021-2026', '2022/04/27', 'Mas Lusi', 'EDARAN', NULL, NULL, NULL),
(989, '039.Apr/2022', 'Ka.06/1630/2022', '2022-04-26', 'Surat edaran tentang penyematan arsip perangkat daerah pasca penggabungan atau pembubraran organisasi di lingkungan pemkot Surakarta', 'SEKDA Surakarta', 'Surat edaran tentang penyematan arsip perangkat daerah pasca penggabungan atau pembubraran organisasi di lingkungan pemkot Surakarta', '2022/04/27', 'Bu Susi, Pak Budi, Mas Agus', NULL, NULL, NULL, NULL),
(990, '040.Apr/2022', '420/001/2022', '2022-04-26', 'Permohonan Praktek kerja industri', 'SMKN 2 Surakarta', 'Permohonan Praktek kerja industri', '2022/04/27', 'Pak Christian, Pak Budi Fasilitasi', 'PERMOHONAN', NULL, NULL, NULL),
(991, '041.Apr/2022', '171/005/IV/2022', '2022-04-27', 'Undangan pembuaan dokumen prakulaifikasi pekerjaan pembangunan gedung pelatihan dan inkubasi startup teknologi di sebagian tanah hak pakai no.105 Kel.Jebres Kec.Jebres Kota Surakrta', 'Balitbangsda Surakarta', 'Undangan pembuaan dokumen prakulaifikasi pekerjaan pembangunan gedung pelatihan dan inkubasi startup teknologi di sebagian tanah hak pakai no.105 Kel.Jebres Kec.Jebres Kota Surakrta', '2022/04/27', 'Hadiri', 'UNDANGAN', NULL, NULL, NULL),
(992, '042.Apr/2022', '047/5/Waskita/IV/2022', '2022-04-27', 'Permohonan peminjaman tempat', 'Waskita Biro konsultan psikolog', 'Permohonan peminjaman tempat', '2022/04/28', 'Bagian Umum Pak Untung, Mas Danang', 'PERMOHONAN', '28-May-22', '14:00-17:00', 'Ruang Seminar'),
(993, '043.Apr/2022', NULL, '2022-04-21', 'Surat Pemberitahuan', 'Shopee Xpress', 'Surat Pemberitahuan', '2022/04/28', 'Bagian Umum Pak Untung, Mas Danang', 'EDARAN', NULL, NULL, NULL),
(994, '044.Apr/2022', 'B/4M.00.01/849/DPD/.3/2022', '2022-04-25', 'Undangan Menghadapi Kegiatan Kelana Ramadhan di Kota Surakarta', 'KEMENPAREKRAF', 'Undangan Menghadapi Kegiatan Kelana Ramadhan di Kota Surakarta', '2022/04/28', 'Mas Danu Hadiri', 'UNDANGAN', '2022/04/29', '12:30', 'Canting Londo Kitchen'),
(995, '045.Apr/2022', 'PD.00.01/1650/2022', '2022-04-27', 'Undangan pendampingan finalisasi penyusunan kajian akademik pembentukan UPT di Lingkungan Pemkot SKA', 'SetdaSKA', 'Undangan pendampingan finalisasi penyusunan kajian akademik pembentukan UPT di Lingkungan Pemkot SKA', '2022/04/28', 'Bagian HRD Bu Lusi', 'UNDANGAN', '10-May-22', '07.30 - 16.00', 'The Sunnan Hotel'),
(996, '046.Apr/2022', '172/005/IV/2022', '2022-04-28', 'Undangan perencanaan kegiatan dan evaluasi pelaksanaan kegiatan triwulan I pada Balitbangda SKa', 'Balitbangda Ska', 'Undangan perencanaan kegiatan dan evaluasi pelaksanaan kegiatan triwulan I pada Balitbangda SKa', '2022/04/29', 'Sudah dihadiri', 'UNDANGAN', '09-May-22', '09.00', 'Balitbangda ska'),
(997, '001.May/2022', 'KM.10/950', '2022-04-28', 'Undangan sosiallisasi penataan PKL di jalan Ki Hajar Dewantara', 'Satpol PP', 'Undangan sosiallisasi penataan PKL di jalan Ki Hajar Dewantara', '2022/04/09', 'Tolong disiapkan tempat mas danang, Tolong disiapkan konsumsi bu susi', 'UNDANGAN', '11-May-22', '09.00', 'STP'),
(998, '002.May/2022', 'PU.08/2049/IV/2022', '2022-04-28', 'Jawaban permohonan penyesuaian level pedestilan dan check PIR di kawasan UPT STP', 'Dinas PUPR SKA', 'Jawaban permohonan penyesuaian level pedestilan dan check PIR di kawasan UPT STP', '09-May-22', 'Bagian umum', 'JAWABAN', NULL, NULL, 'STP'),
(999, '003.May/2022', 'B/843/KI/IV/2022', '2022-04-28', 'Undangan rakor tendak lanjut kerjasama BSSN dan pemkot ska', 'Diskominfo SP', 'Undangan rakor tendak lanjut kerjasama BSSN dan pemkot ska', '09-May-22', 'Bagian kerjasama', 'UNDANGAN', '10-May-22', NULL, 'Zoom'),
(1000, '004.May/2022', 'TM.00.07/119/V/2022', '0000-00-00', 'Undangan FGD strategi pendayagunaan aset daerah pemkot ska', 'BPKAD ska', 'Undangan FGD strategi pendayagunaan aset daerah pemkot ska', '13-May-22', 'Arsipkan', 'UNDANGAN', '11-May-22', '09.00', 'Hotel Sunan SOLO'),
(1001, '005.May/2022', 'R07.BR.UNS/142/2022', '0000-00-00', 'Permohonan ijin kegiatan dan peminjaman perlengkapan', 'Bank Mandiri', 'Permohonan ijin kegiatan dan peminjaman perlengkapan', '13-May-22', 'Fasilitas', 'PERMOHONAN', NULL, NULL, NULL),
(1002, '006.May/2022', '528/UN2704.9.3/ICD/B/IV/2022', '0000-00-00', 'Permohonan ijin magang', 'FEB UNS', 'Permohonan ijin magang', '13-May-22', 'Fasilitas, Mas chandra, Mas Budi', 'PERMOHONAN', NULL, NULL, NULL),
(1003, '007.May/2022', 'KM.08.072/1310', '0000-00-00', 'Permohonan fasilitas tempat untuk pelaksanaan rekrutmen tenaga kerja', 'Dinas Tenaga Kerja', 'Permohonan fasilitas tempat untuk pelaksanaan rekrutmen tenaga kerja', '13-May-22', 'Fasilitas', 'PERMOHONAN', '12-13 Mei 22', '08.30', NULL),
(1004, '008.May/2022', 'PG.00/1755/2022', '0000-00-00', 'Undangan rakor MONEV pengadaan barang/jasa', 'Setda Ska', 'Undangan rakor MONEV pengadaan barang/jasa', '13-May-22', 'Bagian keuangan -Bu Susi, Pak Agus', 'UNDANGAN', '18-May-22', '09.00 - 11.00', 'Balaikota'),
(1005, '009.May/2022', 'KM.08.072/1310', '0000-00-00', 'Permohonan fasilitas tempat untuk pelaksanaan rekrutmen tenaga kerja', 'Dinas Tenaga Kerja', 'Permohonan fasilitas tempat untuk pelaksanaan rekrutmen tenaga kerja', '13-Mai-22', 'Fasilitass', 'PErMOHONAN', '12-13 Mei 22', '08.30', NULL),
(1006, '010.May/2022', 'PG.00/1755/2022', '0000-00-00', 'Undangan rakor MONEV pengadaan barang/jasa', 'Setdad Ska', 'Undangan rakor MONEV pengadaan barang/jasa', '13-May-22', 'Bagian keuangan -Bu Susi, Pak Agus', 'UNDANGAN', '18-May-22', '09.00 - 11.00', 'Balaikota'),
(1007, '011.Mayy/2022', 'RR.05/1714/2022', '0000-00-00', 'Surat edaran tentang inventarisasi penyusunan sk kepala perangkat daerah tentang struktur pengelola resiko OPD di lingkungan pemkot ska tahun 2022', 'Setda ska', 'Surat edaran tentang inventarisasi penyusunan sk kepala perangkat daerah tentang struktur pengelola resiko OPD di lingkungan pemkot ska tahun 2022', '13-May-22', 'Bu Susi', 'EDARAN', NULL, NULL, NULL),
(1008, '012.May/2022', '420/002/2022', '0000-00-00', 'Permohonan praktek kerja lapangan (PKL)', 'SMKN 2 Ska', 'Permohonan praktek kerja lapangan (PKL)', '13-May-22', 'Bagian PP Fasilitas -Mas Chandra -Mas Budi', 'PERMOHONAN', NULL, NULL, NULL),
(1009, '013.May/2022', '06/KKL/Teknik Mesin/II/2022', '2022-04-18', 'Permohonan Izin KKL 2022', 'UNNES', 'Permohonan Izin KKL 2022, 238 orang', '13-May-22', 'Arsipkan', 'PERMOHONAN', '31-May-22', '13.00', NULL),
(1010, '014.May/2022', 'SRT.0227/SKKM17000/2022/50', '0000-00-00', 'Undangan penandatanganan nota kesepakatan antara skk migas dengna pemkab kutai kartanegara dan kunjungan ke fasilitas pelatihan STP', 'SKK Migas', 'Undangan penandatanganan nota kesepakatan antara skk migas dengna pemkab kutai kartanegara dan kunjungan ke fasilitas pelatihan STP', '17-May-22', '-Pak Agustian, Bu Susi, Mas Susilo, Mas Dani, Mas Rizky', 'UNDANGAN', '20-May-22', '07.00', 'STP'),
(1011, '0.15.May/2022', '833/A.1/2022', '2022-04-27', 'Undangan investment forum', 'KEMENINVEST', 'Undangan investment forum', '17-May-22', 'Pak Agustian, Bu Susi', 'UNDANGAN', '18-May-22', '09.00', 'Hotel Atila Solo'),
(1012, '016.May/2022', '168/', '0000-00-00', 'Permohonan Outdoor Study', 'SMKN 7 Yogyakarta', 'Permohonan Outdoor Study (149 orang)', '17-May-22', NULL, 'PERMOHONAN', '31-May-22', '09.00', NULL),
(1013, '0.17.May/2022', 'R07.BR.UNS/1B9/2022', '0000-00-00', 'Undangan peresmian mandiri digital boy solo technopark', 'Bank Mandiri', 'Undangan peresmian mandiri digital boy solo technopark', '17-May-22', 'Arsipkan', 'UNDANGAN', '12-May-22', '09.00 - 10.00', NULL),
(1014, '018.May/2022', 'KM.08.92/1356', '0000-00-00', 'Permohonan fasilitasi tempat pelaksanaan rekutmen', 'Dinas Tenaga Kerja', 'Permohonan fasilitasi tempat pelaksanaan rekutmen', '17-May-22', 'Bagian Umum -Pak Untuk - Mas Danang', 'PERMOHONAN', '19-20 Mei 22', '08.30', NULL),
(1015, '019.May/2022', '422.1/56/SMKN7BD/CADISDIKWILL.VII', '0000-00-00', 'Permohonan Kunjungan Industri', 'SMKN 7 BALEENDAH', 'Permohonan Kunjungan Industri (120 orang)', '18-May-22', NULL, 'PERMOHONAN', '30-May-22', '09.00', NULL),
(1016, '020.May/2022', '014/C11-03/2022', '0000-00-00', 'SITE memo layout posisi gate', 'Colliers Shopee', 'SITE memo layout posisi gate', '18-May-22', 'Bagian umum -Pan Dany - Pak Untung', 'MEMO', NULL, NULL, NULL),
(1017, '021.May/2022', '013/C11-03/2022', '0000-00-00', 'SITE memo permintaan pengecekan elevasi dan design lt. pedestrian & fountain', 'Colliers Shopee', 'SITE memo permintaan pengecekan elevasi dan design lt. pedestrian & fountain', '18-May-22', 'Bagian umum -Pan Dany - Pak Untung', 'MEMO', NULL, NULL, NULL),
(1018, '022.May/2022', '1295/PE.05.01/IV/2022', '0000-00-00', 'Undangan rakor tim pengembangan ekonomi lokal / KEDEP bidang riset dan pengembangan teknologi informasi dan komunikasi', 'Bappeda Ska', 'Undangan rakor tim pengembangan ekonomi lokal / KEDEP bidang riset dan pengembangan teknologi informasi dan komunikasi', '19-May-22', 'Disposisi via kia -> pak susilo hadiri -Bapak Yudit', 'UNDANGAN', '23-May-22', '13.00', 'Bappeda Ska'),
(1019, '023.May/2022', 'B/ /052022', '0000-00-00', 'Tand terima bukti kesepakatan bukan penerimaan upah', 'BPJS ketenagakerjaan', 'Tanda terima bukti kesepakatan bukan penerimaan upah', '20-May-22', 'Regu MSIB - Mas Dany - Mas Rizky', 'TANDA TERMIA', NULL, NULL, NULL),
(1020, '024.May/2022', '039/SP/Pra-TK-TK/Lazkom/V/2022', '0000-00-00', 'Surat permohonan wisuda dan akhirusanah XX', 'Lazuardi kamila', 'Surat permohonan wisuda dan akhirusanah XX', '20-May-22', 'Bagian kerjasama - Mas Susilo -Mas Danny', 'PERMOHONAN', '2022/06/18', '07.30 - 13.00', NULL),
(1021, '025.May/2022', '19/SMK.MS/XII/2022', '0000-00-00', 'Permohonan Izin/Dispensasi Kunjungan Industri Siswa/I SMK', 'SMK MUTIARA SALAKILI', 'Permohonan Izin/Dispensasi Kunjungan Industri Siswa/I SMK', '23-May-22', NULL, 'PERMOHONAN', '2022/06/27', '10.00', NULL),
(1022, '026.May/2022', 'B/932/KI/V/2022', '0000-00-00', 'Undangan desk smark city (review perkembangan smart city kota ska)', 'Diskominfo SP kota Ska', 'Undangan desk smark city (review perkembangan smart city kota ska)', '23-May-22', 'Disposisi via wa -> Mas Danu Hadiri', 'UNDANGAN', NULL, NULL, NULL),
(1023, '027.May/2022', 'B/516/BPSDMI/AKOM-Surakarta/RT/V/2022', '0000-00-00', 'Permohonan bantuan petugas keamanan', 'AK tekstik & Produk tekstil solo', 'Permohonan bantuan petugas keamanan', '23-May-22', 'Bagian umum - Pak Untung - Pak Danung', 'PERMOHONAN', '23-25 Mei 22', NULL, NULL),
(1024, '028.May/2022', 'TM.00.07/134/V/2022', '0000-00-00', 'Undangan Desk teknis SPJ melalui FMIS', 'BPKAD Ska', 'Undangan Desk teknis SPJ melalui FMIS', '23-May-22', 'Bagian Keuangan - Bu Susi - Mas Agus', 'UNDANGAN', '23-24 Mei 22', '09.00', 'BPKAD'),
(1025, '029.May/2022', '300/1.03/SMK.M2/V/2022', '0000-00-00', 'Permohonan Siswa Siswi PKL', 'SMK MUH. 2 JATINOM', 'Permohonan Siswa Siswi PKL', '23-May-22', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(1026, '030.May/2022', '518/SMK.AL-2/B/V/2022', '0000-00-00', 'Permohonan Kunjungan', 'SMK Adi Luhur 2 Jakarta', 'Permohonan Kunjungan (140 orang)', '23-May-22', NULL, 'PERMOHONAN', '2022/06/24', '08.30-10.30', NULL),
(1027, '031.May/2022', 'BP.00/1812/2022', '0000-00-00', 'Undangan sosialisasi informasi pemerintah daerah dalam tahapan perencanaan kota surakarta', 'Setda Ska', 'Undangan sosialisasi informasi pemerintah daerah dalam tahapan perencanaan kota surakarta', '25-May-22', 'Bagian keuangan -Bu Susi -Mas Agus', 'UNDANGAN', '2022/06/02', '09.00', 'Alila Solo'),
(1028, '032.May/2022', 'PG.00/1964/2022', '0000-00-00', 'Undangan pelaporan pelaksanaan P3DN melalui aplikasi SIERA', 'Setda Ska', 'Undangan pelaporan pelaksanaan P3DN melalui aplikasi SIERA', '23-May-22', 'Bagian keuangan -Bu Susi -Mas Agus', 'UNDANGAN', '24-May-22', '13.00', 'Zoom'),
(1029, '033.May/2022', '-', '0000-00-00', 'Kunjungan studi', 'SMKN 4 Tasumalaya', 'Kunujungan suty senin, 13 Juni 22', '24-May-22', 'Fasilitas, Atur jadwal', 'KUNJUNGAN', '2022/06/13', '08.00', 'STP'),
(1030, '034.May/2022', '001/FIM/V/2022', '0000-00-00', 'Surat pemberitahuan', 'PT. Filemon Inti Machinery', 'Surap pemberitahuan', '24-May-22', 'Bagian umum', 'PEMBERITAHUAN', NULL, NULL, NULL),
(1031, '035.May/2022', 'B/2645/BCKJI/BBSPJIBBT/MS/V/2022', '0000-00-00', 'Permohonan iin pengambilan video dokumetasi kegiatan layanan BBSPJI BBt', 'Kemenperin', 'Permohonan iin pengambilan video dokumetasi kegiatan layanan BBSPJI BBt', '25-May-22', 'Diijinkan', 'PERMOHONAN', '27-May-22', '07.00', 'STP'),
(1032, '036.May/2022', '2464/E2.1/TI.00.01/2022', '0000-00-00', 'Undangan peserta workship dan finalisasi PKS', 'Kemendikbud ristek', 'Undangan peserta workship dan finalisasi PKS', '27-May-22', 'Bagian HRD, dibuatkan surat', 'UNDANGAN', '30-31 Mei 22', '13.30', 'Best Western Premiere'),
(1033, '037.May/2022', 'B.01/D.2/PBK/HL.01.01/05/2022', '0000-00-00', 'Kunjungan', 'Komensatneg', 'kunjungan Knokleder Sharing dan FGD ke Prov. Jateng', '31-May-22', NULL, 'KUNJUNGAN', '2022/06/02', '09.00', NULL),
(1034, '038.May/2022', 'K1/2035/2022', '0000-00-00', 'Pelatihan digital CSE (Cyber security Essential)', 'Sekda Surakarta', 'Pelatihan Digital Cyber Security Essentals', '31-May-22', 'Bagian Pelayanan + IT Pak Christian Pak Eko', 'UNDANGAN', '6-10 Juni 22', NULL, NULL),
(1035, '039.May/2022', 'KI/2035/2022', '0000-00-00', 'Pelatihan Digital SMA (Social Media Analisis)', 'Setda Ska', 'Pelatihan Digital SMA (Social Media Analisis)', '31-May-22', NULL, 'PELATIHAN', '6-10 Juni 22', '08.00-16.00', 'SMPN 13 SKA'),
(1036, '040.May/2022', '183/005/V/2022', '0000-00-00', 'Undangan Rapat Pembahasan Kajian Pembangunan Solo Islamic Center', 'Balitbangsda Surakarta', 'Undangan Rapat Pembahasan Kajian Pembangunan Solo Islamic Center', '31-May-22', NULL, 'UNDANGAN', '2022/06/03', '8:30', 'Balitbangsda Surakarta'),
(1037, '001.Jun/2022', '132/SMK.A/COl/H.e/I/2022', '0000-00-00', 'Permohonan PKL', 'SMK Adi Sumarmo', 'Permohonan PKL', '2022/06/02', 'Bagian Pelayanan, Mas Christian Mas Budi', 'PERMOHONAN', NULL, NULL, 'STP'),
(1038, '002.Jun/2022', '420/328', '0000-00-00', 'Permohonan PKL siswa SMKN 2 Sragen', 'SMKN 2 Sragen', 'Permohonan PKL siswa SMKN 2 Sragen', '2022/06/02', 'Bagian Pelayanan, Mas Christian Mas Budi', 'PERMOHONAN', NULL, NULL, 'STP'),
(1039, '003.Jun/2022', '71/IV.4.AU/A/2022', '2022-06-02', 'Permohonan ijin kunjungan industri', 'SMK Muhammadiyah Potren Imam Syuhodo', 'Permohonan ijin kunjungan industri', '2022/06/02', 'Bagian Pelayanan, Mas Christian Mas Budi', 'PERMOHONAN', '2022/06/14', NULL, 'STP'),
(1040, '004.Jun/2022', 'HB.00/1989/V/2022', '0000-00-00', 'Persetujuan pemindahan halte', 'DISHUB', 'Persetujuan pemindahan halte', '2022/06/02', 'Bagian Umum Arsipkan sudah dilakukan', NULL, NULL, NULL, 'STP'),
(1041, '005.Jun/2022', 'NO.215/ppc51210/2022-58', '2022-06-02', 'Pendaftaran calon peserta pelatihan dan sertifikasi operator pesawat tenaga produksi (K3 operator tanur kelas 1 ) secara offline', 'PT PERTAMINA EP CEPU', 'Pendaftaran calon peserta pelatihan dan sertifikasi operator pesawat tenaga produksi (K3 operator tanur kelas 1 ) secara offline', '2022/06/02', 'Bagian Pelayanan, Mas Christian Mas Budi', 'PERMOHONAN', NULL, NULL, 'STP'),
(1042, '006.Jun/2022', 'B/63/VI/KEP./202', '2022-06-02', 'Pemberitahuan kunjungan kerja', 'DIRDAMOBUIT POLDA JATENG', 'Pemberitahuan kunjungan kerja', '2022/06/02', 'Bagian Umum Arsipkan sudah dilakukan, Mbak Ani', 'PEMBERITAHUAN', NULL, NULL, 'STP'),
(1043, '007.Jun/2022', '344.02/A.2/DSM/U/2022', '2022-06-02', 'Permohonan izin peminjaman ruangan Solo Techno Park', 'DESA MIND', 'Permohonan izin peminjaman ruangan Solo Techno Park', '2022/06/03', 'Arsipka', 'PERMOHONAN', NULL, NULL, 'STP'),
(1044, '008.Jun/2022', '132/SMK.A/Col/He/I/2022', '0000-00-00', 'Permohonan PKL', 'SMK Adi Sumarmo', 'Permohonan PKL', '2022/06/03', 'Bagian Pelayanan, Mas Christian Mas Budi', 'PERMOHONAN', '20-Juni 2022 s/d 20-Agustus 2022', NULL, 'STP'),
(1045, '009.Jun/2022', 'DG.00/2091/VI/2022', '2022-06-03', 'Peminjaman tempat untuk sosialisasi pedagang', 'Dinas Perdagangan', 'Peminjaman tempat untuk sosialisasi pedagang', '2022/06/03', 'Arsipkan', 'PERMOHONAN', '2022/06/06', '09:00-11:00', 'STP'),
(1046, '010.Jun/2022', 'KM.10/2082/DT/2022', '2022-06-03', 'Undangan sosialisasi penataan PKL di Dewantara Kota SurakartaJ', 'DInas Perdagangan', 'Undangan sosialisasi penataan PKL di Dewantara Kota SurakartaJ', '2022/06/06', 'Arsipkan', 'UNDANGAN', '2022/06/06', '9:00', 'Ruang rapat STP'),
(1047, '011.Jun/2022', 'KU.00.00/2088/2022', '2022-06-02', 'Pedoman penyusunan RKPD Kota Surakarta tahun anggaran 2022, KUPA - PPAS tahun anggaran 2022 dan KUA-PPAS tahun anggaran 2023', 'Walikota Surakarta', 'Pedoman penyusunan RKPD Kota Surakarta tahun anggaran 2022, KUPA - PPAS tahun anggaran 2022 dan KUA-PPAS tahun anggaran 2023', '2022/06/06', 'Bagian Keuangan, Bu Susi, Mas Agus', 'PEMBERITAHUAN', NULL, NULL, NULL),
(1048, '012.Jun/2022', '2098/BSSN/P3/DL/07.01/06/2022', '2022-06-03', 'Rencana penyelenggaraan pelatihan BORN TO DEFENSE T.A 2022', 'BSSN', 'Rencana penyelenggaraan pelatihan BORN TO DEFENSE T.A 2022', '2022/06/06', 'Bagain Keuangan, Mas Susilo, Mas Richard. Bagian Umum , Mas Danang', 'EDARAN', NULL, NULL, NULL),
(1049, '013.Jun/2022', NULL, NULL, 'Persyaratan penagihan untuk grup Gojek, Goto financialdam entitas Goto lainnya di Indonesia', 'GOTO', 'Persyaratan penagihan untuk grup Gojek, Goto financialdam entitas Goto lainnya di Indonesia', '2022/06/07', 'Arsipkan', 'EDARAN', NULL, NULL, NULL),
(1050, '014.Jun/2022', '21/Greet-RS/VI/2022', '2022-06-02', 'Penawaran Iklan Greeting HUT pemkot Solo ke-76', 'JAWAPOS RADAR SOLO', 'Penawaran Iklan Greeting HUT pemkot Solo ke-76', '2022/06/07', 'Bagian Umum Pak Untung, Pak oktaf', 'EDARAN', NULL, NULL, NULL),
(1051, '015.Jun/2022', '232/OD.03.01', '2022-06-07', 'Undangan raker pansus Raperda tentang Fasilitas Penyelenggaraan pesantren', 'DPRD Kota Surakarta', 'Undangan raker pansus Raperda tentang Fasilitas Penyelenggaraan pesantren', '2022/06/07', 'Pak Yudit', 'UNDANGAN', '2022/06/09', '13:00', 'Ruang Banggar DPRD'),
(1052, '016.Jun/2022', NULL, NULL, 'Undangan', 'DINAS TENAGA KERJA', 'Undangan FGD Raperda Ketenagakerjaan', NULL, NULL, NULL, NULL, NULL, NULL),
(1053, '017.jun/2022', NULL, NULL, 'Kunjungan Studi dari MAN 2 Majalengka', 'MAN 2 Majalengka', 'Kunjungan Studi dari MAN 2 Majalengka', '2022/06/08', 'Bagian Pelayanan, Pak Christian Pak Budi', 'PERMOHONAN', '2022/06/21', '8:00', 'Solo Techno Park'),
(1054, '018.Jun/2022', '191/005/VI/2022', '2022-06-07', 'Rapat pembahasan progres pendaftaran lomba KREANOVA tahun 2022 & Langkah percepatan peningkatan partisipasi pelajar& masyarakat', 'BAPPEDA SKA', 'Rapat pembahasan progres pendaftaran lomba KREANOVA tahun 2022 & Langkah percepatan peningkatan partisipasi pelajar& masyarakat', '2022/06/08', 'Sudah Dihadiri', 'UNDANGAN', '2022/06/08', '13:00', 'Ruang rapat Bappeda'),
(1055, '019.Jun/2022', '1520/Ku.00.01/VI/2022', '2022-06-07', 'Undangan Rapat Sosialisasi Pengisian RENJA perubahan tahun 2022 melalui aplikasi SIPPD', 'Badan Perencanaan Pembangunan Daerah K07 Surakarta', 'Undangan Rapat Sosialisasi Pengisian RENJA perubahan tahun 2022 melalui aplikasi SIPPD', '2022/06/08', 'Bagian Keuangan Bu Susi, Mas Agus, Surat terlambat karena srikandi Error', 'UNDANGAN', NULL, NULL, NULL),
(1056, '020.Jun/2022', 'KT.00/1567', '2022-06-08', 'Ralat Undangan', 'Dinas Tenaga Kerja PEMKOT SURAKARTA', 'Ralat Undangan', '2022/06/08', 'Bagian PP - Pak Christian Hadiri', 'UNDANGAN', '2022/06/09', '13:30', 'Ruang royal jasmine Almarelo Hotel'),
(1057, '021.Jun/2022', '005/290', '2022-06-07', 'Pelatihan Animasi 3D bagi startup digital', 'DINAS PERINDUSTRIAN DAN PERDAGANGAN', 'Pelatihan Animasi 3D bagi startup digital', '2022/06/09', 'DIhadiri 1 orang di STP Pak Susilo, Pak Danang', 'UNDANGAN', '20-Jun-24-Jun 2022', '8:00', 'Hotel GETS'),
(1058, '022.Jun/2022', '040/SMK.WS/PRAKERIND/VI/2022', '2022-06-07', 'Penarikan SIswa Prakerind', 'SMK WALISONGO KALIORI REMBANG', 'Penarikan SIswa Prakerind', '2022/06/10', 'Pak Christian, Pak Budi', 'PERMOHONAN', NULL, NULL, NULL),
(1059, '023.Jun/2022', NULL, '2022-06-10', 'Permohonan Ijin kegiatan pada Mandiri Digital Box STP dan Mandiri Digipreneur Hub', 'MANDIRI', 'Permohonan Ijin kegiatan pada Mandiri Digital Box STP dan Mandiri Digipreneur Hub', '2022/06/13', 'Fasilitasi Pak Untung, Mas Danang, Mas Oktaf', 'PERMOHONAN', NULL, NULL, NULL),
(1060, '024.Jun/2022', '009/STMIK.Y/SKU/VI/2022', '2022-06-13', 'Permohoonan studi ekserkusi mahasiswa', 'STMIK YADIKA BANGIL', 'Permohoonan studi ekserkusi mahasiswa', '2022/06/15', 'Bagian Pelayanan fasillitasi Mas Christian, Mas Budi', 'PERMOHONAN', '2022/07/22', '14:00', NULL),
(1061, '024.Jun/2022', '421.5/21/SMK-AF/VI/2022', '2022-06-13', 'permohonan kunjungan industri', 'SMK AL FAKIRI BANTAUJEG', 'permohonan kunjungan industri', NULL, NULL, NULL, NULL, NULL, NULL),
(1062, '025.Jun/2022', 'B-23Y/DEP.1.1/PK.00.00/VI/2022', '2022-06-14', 'Undangan bimbingan teknis penumbuhan startup bebasis koperasi di Kota Surakarta', 'KEMENKOP UKM', 'Undangan bimbingan teknis penumbuhan startup bebasis koperasi di Kota Surakarta', '2022/06/15', 'Bagian Inkubasi Mas Danu diminta ikut acara', 'UNDANGAN', '2022/06/17', '9:00', 'The Royal Surakarta Heritage'),
(1063, '025.Jun/2022', '1595/KL.03.01/VI/2022', '2022-06-13', 'Peminjaman Tempat Forum Satu data Kota Surakarta', 'BAPPEDA SKA', 'Peminjaman Tempat Forum Satu data Kota Surakarta', '2022/06/14', 'Fasilitasi Pak Untung, Mas Danang, Mas Oktaf', 'PERMOHONAN', '2022/06/23', '8:00', 'STP'),
(1064, '026.Jun/2022', '198/KRC/VI/2022', '2022-06-14', 'Undangan Rapat koordinasi peliputan pers untuk persiapan lomba KREANOVA Kota Surakarta', 'BALITBANGSDA SKA', 'Undangan Rapat koordinasi peliputan pers untuk persiapan lomba KREANOVA Kota Surakarta', '2022/06/14', 'Arsipkan', 'UNDANGAN', '2022/06/15', '13:00', 'STC'),
(1065, '027.Jun/2022', 'TM.00/2272/2022', '2022-06-14', 'Undangan rapat teknis TKKSD tentang perpanjangan kerjasama antara PT Shopee International Indoensia dengan Pemkot SKA', 'Sekda SKA', 'Undangan rapat teknis TKKSD tentang perpanjangan kerjasama antara PT Shopee International Indoensia dengan Pemkot SKA', '2022/06/16', 'Disposisi via WA Pak Susilo', 'UNDANGAN', '2022/06/16', '13:00', 'Zoom Meeting'),
(1066, '028.Jun/2022', 'R07.BI.UNS/216/2022', '2022-06-15', 'Permohonan peminjaman ruanga semianr STP', 'BANK MANDIRI', 'Permohonan peminjaman ruanga semianr STP', '2022/06/16', 'Bagian Umum & keuangan, Mas Susilo, Mas Untung, Mas Danang', 'PERMOHONAN', '2022/06/19', '06:00-11:00', 'STP'),
(1067, '029.Jun/2022', '591/IKMA.4/IND/VI', '2022-06-14', 'Kompetisi Startup industry 2022', 'KEMENPERIN', 'Kompetisi Startup industry 2022', '2022/06/16', 'Pak Christian, Pak Danang, Pak Susilo', 'UNDANGAN', NULL, NULL, NULL),
(1068, '030.Jun/2022', '421/0197/SMK.AKH/VI/2022', '2022-06-16', 'Permohonan kunjungan industri', 'SMK AL-Khoiriyah Boron', 'Permohonan kunjungan industri', '2022/06/16', 'Fasilitasi Pak Christian, Pak Budi', 'KUNJUNGAN', '2-Agt-22', '9:00', 'SOLO TECHNOPARK'),
(1069, '031.Jun/2022', '526/D.I/SMK.BP/VI/2022', '2022-06-16', 'Kunjungan guru teknologi meton listrik', 'SMK Bhumi Phala Parukan', 'Kunjungan guru teknologi meton listrik, 6 orang', '2022/06/16', NULL, 'KUNJUNGAN', '2022/06/20', NULL, NULL),
(1070, '032.Jun/2022', '421.5/110/SMK-AK/VI/2022', '2022-06-15', 'Permohonan Kunjungan Industri', 'SMK AL Farizi Bantaujeg', 'Permohonan Kunjungan Industri', '2022/06/16', 'Fasilitas Pak Christian Pak Budi', 'KUNJUNGAN', '2022/07/26', '9:00', 'SOLO TECHNOPARK'),
(1071, '033.Jun/2022', '246/UN27.8/TM.01.00/2022', '2022-06-15', 'Permohonan dukungan dalam akreditasi lam teknik', 'KT UNS', 'Permohonan dukungan dalam akreditasi lam teknik', '2022/06/16', NULL, 'PERMOHONAN', '2022/06/20', '15.00-16.00', 'IT UNS'),
(1072, '034.Jun/2022', '421/091/SMK.01/2022', '2022-03-08', 'Permohonan tempat PKL', 'SMKN 1 SURAKARTA', 'Permohonan tempat PKL', '2022/06/17', 'Bagian pelayanan fasilitasi, Pak Christian, Pak Budi', 'PRAKERIN', '20-Jun-17-Sept-2022', NULL, 'STP'),
(1073, '035.Jun/2022', '069/ID.SD/VI/2022', '2022-06-16', 'Undangan', 'Balitbangda', 'Undangan Desk Pengisian Indikator Daya Saing Daerah Kota Surakarta Tahun 2022', '2022/06/17', 'Bagian Pelayanan Arsipkan Mas Danu', 'UNDANGAN', '2022/06/20', '10.00', 'Balitbangda SKA'),
(1074, '036.Jun/2022', '255/00.03.01', '2022-06-17', 'Undangan rapat dansus', 'DPRD KOTA SURAKARTA', 'Undangan rapat dansus', '2022/06/17', NULL, 'UNDANGAN', '2022/06/20', '09.00', 'Gedung Graha Padipurna DPRD Kota Surakarta'),
(1075, '037.Jun/2022', '1659/KI.03.01/VI/2022', '2022-06-17', 'Permohonan permintaan data kota ska', 'BAPPEDA SKA', 'Permohonan permintaan data kota ska', '2022/06/20', 'Konfirmasi data apa saja yang dibutuhkan, up Mas agus -> tindak lanjuti', 'PERMOHONAN', NULL, NULL, NULL),
(1076, '038.Jun/2022', '4879/UN7.K7.PP/VI', '2022-06-03', 'Permohonan Izin Penelitian', 'UNDIP', 'Permohonan Izin Penelitian', '2022/06/20', 'Sudah dilaksanakan', NULL, NULL, NULL, NULL),
(1077, '039.Jun/2022', '337/FEB.MAN/06/2022', '2022-06-10', 'Permohonan magang', 'FEB UNIV. KRISTEN SATYA WACANA', 'Permohonan magang', '2022/06/20', 'Bagian pelayanan fasilitasi, Pak Christian', 'PRAKERIN', 'Sep-Des-22', NULL, 'STP'),
(1078, '040.Jun/2022', NULL, '2022-06-17', 'Peminjaman tempat', 'BAPPEDA SKA', 'Peminjaman Tempat Forum Satu data Kota Surakarta', '2022/06/20', 'Bagian umum disiapkan, Pak Untung, Pak Danang', 'PERMOHONAN', '2022/06/30', '08.00', 'STP'),
(1079, '041.Jun/2022', NULL, '2022-06-20', 'Test Drive', 'Shopee Xpress', 'Test Drive Kandidat Driver Shopee Xpress', '2022/06/20', 'Bagian umum disiapkan, Pak Untung, Pak Danang', 'PERMOHONAN', '2022/06/26', '10.00-16.00', 'STP'),
(1080, '042.Jun/2022', 'B.281/Dep.4.2/WU.01.01/VI/2022', '2022-06-16', 'Monitoring dan Evaluasi', 'KEMENKOPUKM', 'Monitoring dan Evaluasi Program Fasilitasi Inkubasi Wirausaha', '2022/06/20', 'Dipersiapkan, Pak Christian, Pak Danu', 'PERMOHONAN', '2022/06/23', NULL, 'STP'),
(1081, '043.Jun/2022', 'MD/481/2022', '2022-06-20', 'Permohonan Dukungan Acara Klarifikasi Lapangan Lomba Kelurahan Tingkat Provinsi di Kelurahan Jebres', 'Sekretariat Daerah', 'Permohonan Dukungan Acara Klarifikasi Lapangan Lomba Kelurahan Tingkat Provinsi di Kelurahan Jebres, Senin, 27 Juni 22', '2022/06/21', 'Bag. Umum Pak Untung, Fasilitasi Mas Danang, Komunikasi dengan Kecamatan', 'PERMOHONAN', '2022/06/27', NULL, 'STP'),
(1082, '044.Jun/2022', '148/SMK-Mdk/E.7/VI/2022', '2023-06-22', 'Permohonan Izin Kunjungan Industri', 'SMK MERDEKA SOREANG', 'Permohonan Ijin Kenjungan Industri, Selasa, 27 Sep 2022, 09.00 (135 orang)', '2022/06/21', 'Fasilitasi Mas Christian dan Mas Budi', 'PERMOHONAN', '2022/09/27', '09.00', 'STP'),
(1083, '045.Jun/2022', '02/00126/REI-KomSR/V/2022', '2022-06-20', 'Undangan Temu Investasi dan Pemaparan', 'REI KOMISARIAT SOLO RAYA DPD REI JAWA TENGAH', 'Undangan Temu Investasi dan Pemaparan, Kamis, 23 Juni 2022, Hotel Alila Solo', '2022/06/21', 'Sudah Dihadiri', 'UNDANGAN', '2022/06/23', NULL, 'Hotel Alila Solo'),
(1084, '046.Jun/2022', 'TM.00/2272/2022', '2022-06-14', 'Undangan', 'Sekretariat Daerah', 'Undangan Rapat Teknis TKKSD, Rabu, 22 Juni 2022, 13.00 WIB', '2022/06/21', 'Arsipkan Mas Susilo', 'UNDANGAN', '2022/06/22', '13.00', 'STP'),
(1085, '047.Jun/2022', 'TN.26.01/2386/2022', '2022-06-20', 'Usulan Standar Harga Satuan Tahun Anggaran 2023', 'Sekretariat Daerah', 'Usulan Standar Harga Satuan Tahun anggaran 2023', '2022/06/21', 'Bagian Keuangan, Bu Susi, Mas Agus', 'USULAN', NULL, NULL, 'STP'),
(1086, '048.Jun/2022', 'KP.00/2363/2022', '2022-06-17', 'Intruksi Walikota', 'Walikota Surakarta', 'Pejabat pengampu penyusunan perubahan rencana strategis unit pelaksana teknis tahun 2021-2026, rencana kerja unit pelaksana teknis tahun anggaran unit pelaksana teknis tahun anggaran 2023 di lingkungan Pemerintah Kota Surakarta', '2022/06/22', 'Disusun oleh Bu Susi, Mas Agus, Bu Lusi, Mbak Ani', 'INTRUKSI', NULL, NULL, 'STP'),
(1087, '049.Jun/2022', '84/UN27.24/TU/2022', '2022-06-21', 'Permohonan peminjaman ruang seminar besar STP untuk worlshop Pengembangan KWU Mahasiswa UNS 2022', 'Kemendikbud ristek UNIV. SEBELAS MARET', 'Permohonan peminjaman ruang seminar besar STP untuk Worlshop Pengembangan KWU Mahasiswa UNS 2022, Sabtu 2 Juli 2022, 08.00 WIB-15.00 WIB', '2022/06/22', 'Dibuatkan Surat Balasan Pak Untung', 'PERMOHONAN', '2022/07/02', '08.00-15.00 WIB', 'STP'),
(1088, '050.Jun/2022', '049/PN.KREN/VI/2022', '2022-06-22', 'Undangan', 'Badan Penelitian dan Pengmbangan Daerah', 'Undangan Rapat Koordinasi Penyusunan Jadwal untuk Perpanjangan Waktu Pendaftaran Lomba Krenova Tahun 2022, Kamis 23 Juni 2022', '2022/06/22', 'Diwakili untuk Hadir Mas Susilo', 'UNDANGAN', '2022/06/23', '09.00-selesai', 'Ruang Rapat Balitbangda, Gedung Tawangpraja Lt.1 Kompleks Balaikota Surakarta'),
(1089, '051.Jun/2022', '068/ID.SD/VI/2022', '2022-06-13', 'Surat Pengantar untuk Survey dan Pengumpulan Data IDSD Tahun 2022', 'Badan Penelitian dan Pengembangan Daerah', 'Survey dan Pengumpulan Data untuk Pengisian Kuesioner Indeks Daya Saing Daerah (IDSD) Tahun 2022', '2022/06/23', 'Diarsipkan Mbak Ani', 'SURAT PENGANTAR', NULL, NULL, 'STP'),
(1090, '052.Jun/2022', 'Petro.01/038/VI/2022', '2022-06-20', 'Undangan IHRS 2022', 'Petrotekno', 'Undangan IHRS 2022, 28-29 Juni 2022, 08.00-17.00 WITA, di BICC Nusa Dua, Bali', '2022/06/23', 'Distribusi Pengelola yg diundang', 'UNDANGAN', '28 s/d 29-Jun-22', '08.00-17.00 WITA', 'BICC Nusa Dua, Bali'),
(1091, '053.Jun/2022', '0746/E/GOV/SM/SPID/VI/2022', '2022-06-21', 'Permohonan Izin Pengeboran Sumur Dalam di Kawasan Solo Technopark', 'Shopee', 'Permohonan Izin Pengeboran Sumur Dalam di Kawasan Solo Technopark', '2022/06/23', 'Bag. Umum Pak Untung, Butuh Info Lanjut Pak Danang', 'PERMOHONAN', NULL, NULL, 'STP'),
(1092, '054.Jun/2022', '076/HMTM/LL/VI/2022', '2022-06-22', 'Permohonan Kunjungan Industri', 'HMTM POLITEKNIK NEGERI CILACAP', 'Permohonan Kunjungan Industri, selasa 28 Juni 2022, 08.00-10.00 WIB, di PT. STP', '2022/06/23', 'Bag. Pelayanan Fasilitasi Pak Christian dan Pak Budi', 'PERMOHONAN', '2022/06/28', '08.00-10.00 WIB', 'STP'),
(1093, '055.Jun/2022', '76/IV.4.AU/F/2022', '2022-06-14', 'Kerjasama MOU dengan Pasangan Institusi/DUDI', 'SMK MUHAMMADIYAH PONTREN IMAM SYUHODO', 'Kerjasama MOU dengan Pasangan Institusi/DUDI', '2022/06/23', 'Bag. Pelayanan dan Kerjasama. Dibuatkan draf PKS standart STP Pak Christian dan Pak Susilo', 'KERJASAMA', NULL, NULL, 'STP'),
(1094, '056.Jun/2022', 'HK.00.03/1439/2022', '2022-06-22', 'Undangan', 'Sekretariat Daerah', 'Undangan Pembinaan Anggota JDIH, Selasa 28 Juni 2022, 08.00-12.00 WIB di Horison Aziza Solo', '2022/06/24', 'Hadiri Mbak Lusi', 'UNDANGAN', '2022/06/28', '08.00-12.00 WIB', 'Horison Aziza Solo'),
(1095, '057.Jun/2022', 'B.261/D.4.4/WU.03/VI/2022', '2022-06-23', 'Undangan pelaksanaan sosialisasi program matchmaking entrepreneur financial fiesta 2022', 'KEMENKOP UKM', 'Undangan Pelaksanaan Sosialisasi Program Matchmaking Entrepreneur Financial Fiesta 2022', '2022/06/24', 'Mas Danu', 'UNDANGAN', '2022/06/28', '09.00 WIB s.d selesai', NULL),
(1096, '058.Jun/2022', 'DK.02.03/308/VI/2022', '2022-06-24', 'Permohonan Peminjaman Tempat untuk Parkir', 'KELURAHAN JEBRES', 'Permohonan Peminjaman Tempat untuk Parkir', '2022/06/24', 'Bagian Umum (Pak Untung) Fasilitas (Pak Danang)', 'PERMOHONAN', '2022/06/27', '08.00 WIB', 'STP'),
(1097, '059.Jun/2022', NULL, '2022-06-25', 'Surat Permohonan Renovasi Interior \"GOTO UMKM Center\"', 'Gojek', 'Permohonan Renovasi Interior \"GOTO UMKM Center\", 8 orang', '2022/06/27', 'Bagian Kerjasama dan Keamanan -> Mas susilo, Mas Danang', 'PERMOHONAN', '27-30 Jun-22', NULL, 'Lt 1, ruang GOTO UMKM Center'),
(1098, '060.Jun/2022', '848/3158/SMK-CADISDIK WIL.IX/2022', '2023-06-22', 'Keg. Kunjungan Industri', 'SMK NEGERI 1 MAJALENGKA', 'Keg. Kunjungan Industri (170 siswa + 10 guru)', '2022/06/27', 'Bagian Pelayanan -> Christian, Mas Budi', 'PERMOHONAN', '2022/07/06', '08.00 WIB', 'STP'),
(1099, '061.Jun/2022', '345/FT/II.3.AU/F/2022', '2022-06-21', 'Permohonan Ijin Kunjungan Industri', 'UNIMMA', 'Permohonan Ijin Kunjungan Industri (100 mahasiswa + 4 dosen pembimbing)', '2022/06/27', 'Bagian Pelayanan Fasilitasi -> Mas Christian, Mas Budi', 'PERMOHONAN', '2022/07/18', '13.00-15.00 WIB', NULL),
(1100, '062.Jun/2022', '1585/UN27.04/KM.05.02/2022', '2022-06-26', 'Undangan FGD', 'Kemendikbud Ristek Univ. Sebelas Maret Fak. Ekonomi dan Bisnis', 'Undangan FGD', '2022/06/27', 'Disposisi Via WA Pak Yudit -> Mas Danu', 'UNDANGAN', 'Rabu,29 Juni 22', '08.00-12.00 WIB', 'Ruang Giri Purna Lt. 2 UNS'),
(1101, '063.Jun/2022', 'KI/03.01/2501/2022', '2022-06-27', 'Undangan', 'Sekretariat Daerah', 'Undangan Forum Satu Data Tahun 2022 Kota Surakarta', '2022/06/28', 'Disposisi Via WA Pak Yudit -> Ani', 'UNDANGAN', '2022/06/30', '09.00 WIB', 'STP'),
(1102, '064.Jun/2022', '013/BGS/VI/2022', '2022-06-27', 'Undangan', 'Badan Penelitian dan Pengembangan Daerah', 'Pembahasan Dokumen Pemilihan Penunjukan Langsung Pemilihan Mitra Bangun Guna Serah (BGS) Pembangunan Gedung Pelatihan dan Inkubasi Startup Teknologi di Sebagian Tanah Hak Pakai Nomor 105 Kel. Jebres', '2022/06/28', 'Disposisi Via Pak Yudit. Mb Yustin dan Mas Agus Siapkan Snack', 'UNDANGAN', '2022/06/28', '12.00 WIB', 'Ruang Rapat Balitbangda, Gedung tawangpraja Lt.1'),
(1103, '065.Jun/2022', 'PG.00/2431/2022', '2022-06-23', 'Surat Edaran', 'Sekretariat Daerah', 'Percepatan Pelaksanaan Validasi dan Monitoring Pelaksanaan P3DN Melalui Aplikasi Siera', '2022/06/28', 'Disposisi Via WA Pak Yudit, Bu Lusi/Mas Agus', 'SURAT EDARAN', NULL, NULL, NULL),
(1104, '066.Jun/2022', '269/OD.03.03', '2022-06-28', 'Undangan Rapat Pansus', 'DPRD Kota Surakarta', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '2022/06/28', 'Disposisi Via WA Pak Yudit, Mas Reza', 'UNDANGAN', '2022/06/29', '13.00 WIB', 'Ruang Rapat Banggar DPRD Kota Surakarta'),
(1105, '067.Jun/2022', '3167/UN27/TU/2022', '2022-06-27', 'Undangan Expo', 'Kemendikbud Ristek Univ. Sebelas Maret', 'Soft Opening Expo \"Saking Jawi Dhateng Paris (de Java a Paris)\"', '2022/06/28', 'Disposisi Via WA Pak Yudit, Mas Danu', 'UNDANGAN', '2022/06/30', '10.00 WIB', 'STP'),
(1106, '068.Jun/2022', 'ATMA/VI/2022/02', '2022-06-29', 'Permohonan Kunjungan', 'Akademi Komunitas ATMA', 'Permohonan Kunjungan (19 siswa + pendamping)', '2022/06/29', 'Bagian Pelayanan Fasilitasi -> Mas Christian, Mas Budi', 'PERMOHONAN', '2022/07/12', NULL, NULL),
(1107, '069.Jun/2022', '1105/L.04/K.1/VI/2022', '2022-06-17', 'Permohonan Kunjungan', 'FAKULTAS EKONOMI UNIV. MERCU BUANA YOGYAKARTA', 'Company Visit (101 Mahasiswa + 11 Dosen Pendamping)', '2022/06/30', 'Bagian Pelayanan Fasilitasi -> Mas Christian, Mas Budi', 'PERMOHONAN', 'Kamis 11 Agt 22', '10.00-selesai', NULL),
(1108, '070.Jun/2022', '270/OD.03.01', '2022-06-28', 'Undangan Rapat Pansus', 'DPRD Kota Surakarta', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '2022/06/30', 'Sudah Dihadiri', 'UNDANGAN', '2022/06/30', '09.30 WIB', 'Ruang Rapat Banggar DPRD Kota Surakarta'),
(1109, '071.Jun/2022', '229/005/VI/2022', '2022-06-29', 'Undangan', 'Pemkot BPPD', 'Penjeasan Dokumen (Aanwijzing) Proses Pemilihan Penunjukan Langsung Pemilihan Mitra Bangun Guna Serah (BGS) Pembangunan Gedung Pelatihan dan Inkubasi Startup Teknologi di Sebagian Tanah Hak Pakai Nomor 105 Kel. Jebres', '2022/06/30', 'Sudah Dihadiri', 'UNDANGAN', '2022/06/30', '09.00 WIB-selesai', 'Balitbangda'),
(1110, '072.Jun/2022', 'MoU/SMK 197/SMK.A/Col/H.E/II/2022', NULL, 'Perjanjian Kerjasama', 'YAYASAN PEND. ADI SUMARMO SMK ADI SUMARMO COLOMADU-KAB. KARANGANYAR', 'Perjanjian Kerjasama PKL', '2022/06/30', 'Bagian Kerjasama -> Mas Susilo, Cek ini PKS', 'PERMOHONAN', NULL, NULL, NULL),
(1111, '001.Juli/2022', '420/373', '2022-06-15', 'Penyerahan Siswa PKL', 'SMKN 5 Surakarta', 'Penyerahan Siswa PKL', '2022/07/01', 'Fasilitasi -> Mas Christian, Mas Budi', 'PERMOHONAN', '2019/07/02', '09.00-selesai', 'Solo Technopark'),
(1112, '002.Juli/2022', '014/BGS/VII/2022', '2022-07-04', 'Undangan', 'Pemkot BPPD', 'Pembukaan Dokumen Pemilihan Penunjukan Langsung Pemilihan Mitra Bangun Guna Serah (BGS) Pembangunan Gedung Pelatihan dan Inkubasi Startup Teknologi di sebagian Tanah Hak Pakai Nomor 105 Kelurahan Jebres', '2022/07/04', 'Bag. Pelayanan -> Mas Christian', 'UNDANGAN', '2022/07/04', '12.00 s/d selesai', 'Balitbangda'),
(1113, '003.Juli/2022', '015/BGS/VII/2022', '2022-07-04', 'Undangan', 'Pemkot BPPD', 'Evaluasi Dokumen Pemilihan Penunjukan Langsung Pemilihan Mitra Bangun Guna Serah (BGS) Pembangunan Gedung Pelatihan dan Inkubasi Startup Teknologi di sebagian Tanah Hak Pakai Nomor 105 Kelurahan Jebres', '2022/07/04', 'Bag. Kerjasama -> Mas Reza, Mas Susilo', 'UNDANGAN', '2022/07/05', '08.00 WIB s/d selesai', 'Balitbangda'),
(1114, '004.Juli/2022', '016/BGS/VII/2022', '2022-07-04', 'Undangan', 'Pemkot BPPD', 'Klasifikasi Teknis dan Negoisasi Harga Pemilihan Penunjukan Langsung Pemilihan Mitra Bangun Guna Serah (BGS) Pembangunan Gedung Pelatihan dan Inkubasi Startup Teknologi di sebagian Tanah Hak Pakai Nomor 105 Kelurahan Jebres', '2022/07/04', 'Bag. Kerjasama -> Mas Reza, Mas Susilo', 'UNDANGAN', '2022/07/05', '11.00 WIB s/d selesai', 'Balitbangda');
INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(1115, '005.Juli/2022', 'TM.00.07/559/VI/2022', '2022-06-23', 'Bimbingan Teknis BLUD', 'BPKAD', 'Bimbingan Teknis Penatausahaan BLUD Tahun Anggaran 2022', '2022/07/04', 'Bag. Keuangan -> Bu Susi, Mas Agus', 'UNDANGAN', '2022/07/06', '09.00 WIB', 'The Sunan Hotel Solo'),
(1116, '006.Juli/2022', '229/PT/VI/2022', '2022-06-29', 'Pinjam Tempat', 'BPPD', 'Forum Groups Discussions Tema \"Pembangunan Modal Manusia (Human Capital) di Indonesia : Strategi Pemerataan Sektor Kesehatan dan Pendidikan Dalam Tantangan Global selama Setengah Abad\"', '2022/07/04', 'Bag. Umum -> Mas Susilo. Siapkan Ruang Seminar Besar -> Mas Danang', 'PERMOHONAN', '2022/07/06', '08.30 WIB s.d selesai', 'STC'),
(1117, '007.Juli/2022', '238/005/VII/2022', '2022-07-01', 'Undangan', 'BPPD', 'Forum Groups Discussions Tema \"Pembangunan Modal Manusia (Human Capital) di Indonesia : Strategi Pemerataan Sektor Kesehatan dan Pendidikan Dalam Tantangan Global selama Setengah Abad\"', '2022/07/04', 'Sudah dihadiri', 'UNDANGAN', '2022/07/06', '08.30 s.d 12.30 WIB', 'STC'),
(1118, '008.Juli/2022', 'B/709/BPSDMIA/AKOM-Surakarta/KP/VVII/2022', '2022-07-04', 'Rapat Koordinasi PMB jarvis Mandiri Gelombang II Tahun 2022', 'Badan Pengembangan Sumber Daya Manusia Industri Akademi Komunitas Industri dan Produk Tekstil Surakarta', 'Rapat Koordinasi PMB jarvis Mandiri Gelombang II Tahun 2022', '2022/07/05', 'Sudah Dihadiri', 'UNDANGAN', '2022/07/06', '14.00 WIB', 'Ruang Rapat AK-Tekstil Solo'),
(1119, '009.Juli/2022', '422/359.2/101.6.18.14/2022', '2022-06-08', 'Permohonan Kunjungan Industri', 'SMKN 1 Geneng Ngawi', 'Permohonan Kunjungan Industri dari SMKN 1 Geneng Ngawi Jurusan (Teknik Pemesinan)', '2022/07/05', 'Bagian Pelayanan (P. Susilo dan P. Budi)', 'PERMOHONAN', '2022/07/12', '09.00 WIB', 'Solo Technopark'),
(1120, '010.Juli/2022', 'B-938/DJAI.5/AI.03.04/6/2022', '2022-06-21', 'Permohonan Audiensi Kolaborasi Gerakan Nasional 1000 Startup Digital', 'KEMEN KOMINFO', 'Permohonan Audiensi Kolaborasi Gerakan Nasional 1000 Startup Digital', '2022/07/05', 'Bagian Inkubator (Mas Danu)', 'PERMOHONAN', NULL, NULL, NULL),
(1121, '011.Juli/2022', '314/0D.03.01', '2022-07-05', 'Undangan Rapat Pansus', 'DPRD KOTA SURAKARTA', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '2022/07/05', 'Bagian Legal -> Mas Susilo, Mas Reza', 'UDANGAN', '2022/07/06', '17.00 WIB', 'Ruang Rapat Banggar DPRD Kota Surakarta'),
(1122, '012.Juli/2022', 'ISC-32/MST-VII/2022', '2022-07-05', 'Undangan Rapat Sosialisasi Kegiatan \"Science Speech Contest\"', 'INDONESIA SCIENCE CENTER', 'Undangan Rapat Sosialisasi Kegiatan \"Science Speech Contest\"', '2022/07/05', 'Bagian Sekretariat -> Mbak Ani, Bu Lusi', 'UNDANGAN', '2022/07/07', '09.00-12.00 WIB', NULL),
(1123, '013.Juli/2022', '005/HIMATANSI-FE/UNUYO/VI/2022', '2022-06-30', 'Permohonan Izin Kunjungan Industri', 'HIMATANSI UNIV. NAHDLATUL ULAMA YOGYAKARTA', 'Izin kunjungan industri', '2022/07/06', 'Fasilitasi -> Pak Christian, Pak Budi', 'PERMOHONAN', '2022/07/20', '10.00 WIB', 'STP'),
(1124, '014.Juli/2022', '402/UN27.34/DL.17/2022', '2023-07-22', 'Permohonan Partisipasi Seminar Nasional', 'Kemendikbud Ristek Univ. Sebelas Maret', 'Kemendikbud Ristek Univ. Sebelas Maret', '2022/07/06', 'Bagian Kerjasama -> Mas Susilo, Mas Reza', 'PERMOHONAN', '2022/07/07', '08.00 WIB', 'Ruang Werkudara Lt. 2'),
(1125, '015.Juli/2022', 'KP.11.00/602/VII/2022', '2023-07-22', 'Rekonsiliasi Penatausahaan Pengelolaan Keuangan Daerah Tahun Anggaran 2022', 'BPKAD', 'Rekonsiliasi Penatausahaan Pengelolaan Keuangan Daerah Tahun Anggaran 2022', '2022/07/06', 'Bagian Keuangan -> Bu susi, Mas Agus', 'PERMOHONAN', 'Selasa-Kamis, 5-7 Jul 2022', '09.00 WIB', 'The Sunan Hotel'),
(1126, '016.Juli/2022', 'B/2210/BPSDMI/SMTI-Yogyakarta/PP/VII/2022', '2022-07-05', 'Permohonan Kunjungan Pembelajaran Luar Sekolah (PLS)', 'SMK-SMTI YOGYAKARTA', 'Permohonan Kunjungan', '2022/07/06', 'Fasilitasi -> Pak Christian, Pak Budi', 'PERMOHONAN', '2022/07/07', '10.00 WIB', NULL),
(1127, '017.Juli/2022', '624/UN27.21/V19/2022', '2022-06-17', 'Pengajuan Kerjasama Sponsorship', 'Kemendikbud Univ. Sebelas Maret', 'Pengajuan Kerjasama Sponsorship', '2022/07/06', 'Arsipkan', 'PERMOHONAN', NULL, NULL, NULL),
(1128, '018.Juli/2022', NULL, '2022-06-29', 'Surat Minat Pembelian', 'UD RAJAWALI', 'Minat pembelian logam dan barang bekas bongkaran bangunan (scrap)', '2022/07/06', 'Surat Balasan (Ani)', 'PERMOHONAN', NULL, NULL, NULL),
(1129, '019.Juli/2022', '242/PN.02.00/VII/2022', '2022-07-05', 'Pinjam Tempat dan Sarana Lomba Krenova', 'Pemkot BPPD', 'Technical Meeting, Loading Pameran, Pameran dan Display Lomba Kronova, Papaparan Lomba Kronova', '2022/07/06', 'Bagain Kerjasama (Mas Susilo), Umum Kawasan (Mas Danang)', 'PERMOHONAN', 'Rabu (13 Juli 222), Minggu (17 Juli 22), Senin-Selasa (18-19 Juli 22), Senin - Selasa (18-19 Juli 22)', 'Semua Jam 08.00 WIB', 'STC'),
(1130, '020.Juli/2022', 'B-1126/DJAI.5/AI.03.04/7/2022', '2022-07-04', 'Undangan', 'KOMINFO', '(Focus Group Discussion) Ecosystem Connect Jawa Tengah dengan tema \"Pemetaaan Isu dan Potensi Daerah Dalam Pengembangan Usaha Rintisan Berbasis Teknologi Digital\"', '2022/07/07', 'Bagian Pelayanan (Pak Christian, Mas Danu)', 'UNDANGAN', '2022/07/12', '09.00 - 12.00 WIB', 'Hetero Space Semarang'),
(1131, '021.Juli/2022', '240/005/VII/2022', '2022-07-05', 'Undangan', 'Pemkot Balitbangda', 'Penilaian Administrasi Proposal Lomba Krenova Kota Surakarta Tahun 2022 Kategori Pelajar dan Masyarakat Umum', '2022/07/07', 'Sudah dihadiri', 'UNDANGAN', NULL, NULL, NULL),
(1132, '022.Juli/2022', '241/005/VII/2022', '2022-07-05', 'Undangan', 'Pemkot Balitbangda', 'Persiapan Perencanaan Technical Meeting dan Pelaksanaan Lomba Krenova Kota Surakarta Tahun 2022', '2022/07/07', 'Sudah dihadiri', 'UNDANGAN', NULL, NULL, NULL),
(1133, '023.Juli/2022', 'R07.Ar.SLO/541/2022', '2022-07-06', 'Penugasan kepada Tim PT Infracom Technology untuk proses pembuatan Aplikasi Indonesia Digital Technopark di Solo Technopark', 'MANDIRI', 'Tugas pengambilan video 360\' Solo Technopark', '2022/07/08', 'Bagian Kerjasama dan umum (Mas Susilo, Mas Danang)', 'PERMOHONAN', 'Rabu, 13 Juli 22-Sabtu, 16 Juli 22', 'selama 1 hari', 'STP'),
(1134, '024.Juli/2022', NULL, '2022-07-07', 'Pinjam pakai area STP', 'PT. Nusantara Ekspres Kilat Shopee Xpress', 'Pinjam pakai area di STP guna kelancaran kegiatan Test Drive. ( 35 kandidat)', '2022/07/08', 'Bagian umum (P.Untung) Fasilitasi (M.Danang)', 'PERMOHONAN', 'Sabtu & Minggu, 16-17 Juli 2022', '08.00-17.00 WIB', 'Jl. Ki Hajar Dewantara No. 19'),
(1135, '025.Juli/2022', '976/UNI/KM.UGM/Set.KM/PK.01.05/2022', '2022-07-07', 'Undangan', 'UGM', 'Menghadiri Kegiatan PKS and Payment Mitra (PPM) Days', '2022/07/11', 'Bagian PIC MSIB Hadiri (Mas Danu, Mas Risky, dan ,Mas Reza)', 'UNDANGAN', NULL, NULL, NULL),
(1136, '026.Juli/2022', 'CTEL.138/TK 000/R4W-4G1C0000/2022', '2022-07-07', 'Permohonan izin', 'Telkom Indonesia', 'Permohonan Izin Penarikan Jaringan Fiber Optik dan Penanaman Tiang Besi 7 Meter Telkom PT. Telkom Indonesia Untuk Support Event ASEAN PARAGAMES SOLO 2022', '2022/07/11', 'Bagian Kerjasama dan Umum (Susilo) Fasilitasi (Danang)', 'PERMOHONAN', NULL, NULL, NULL),
(1137, '027.Juli/2022', '1829/BP.03.00/VII/2022', '2022-07-01', 'Undangan', 'Bappeda', 'FGD Penyususnan Rekomendasi PEL/FEDEP Kota Surakarata Bidang Koperasi, UMKM, dan Perindustrian', '2022/07/11', 'Sudah Dihadiri', 'UNDANGAN', '2022/07/14', '09.00 WIB', 'Hotel Granha H.A.P Ruang Wijaya Kusuma (Lantai 9)'),
(1138, '028.Juli/2022', '246/005/VII/2022', '2022-07-07', 'Undangan', 'Bappeda', 'Technical Meeting Lomba Krenova Tahun 2022', '2022/07/11', 'Arsipkan Mba Ani', 'UNDANGAN', '2022/07/13', '08.00 WIB', 'STC'),
(1139, '029.Juli/2022', '835/UN27.26/TU.01/2022', '2022-07-11', 'Undangan', 'UNS', 'Undangan Kick-Off Proyek Inkubasi Polimikro', '2022/07/11', 'Mas Danu arsipkan', 'UNDANGAN', '2022/07/13', '09.00-12.00 WIB', 'Direktorat Inovasi dan Hilirisasi'),
(1140, '030.Juli/2022', 'B/437/BSKJI.4/IND/VII/2022', '2022-07-07', 'Undangan', 'Badan Standarisasi dan Kebijakan Jasa Industri', 'Forum Koordinasi Pembinaan Jasa Industri', '2022/07/12', 'Mas Christian arsipkan', 'UNDANGAN', '2022/07/13', '09.00', 'Harris Hotel & Convention Solo'),
(1141, '031.Juli/2022', '24/405/Slo/Srt/B', '2022-07-12', 'Permohonan Narasumber KENDUREN UMKM Solo Raya 2022', 'BANK INDONESIA', 'Talkshow \"Pengembangan Ekosistem UMKM Solo Raya', '2022/07/12', 'Bagian Pelayanan (Mas Christian) hadiri', 'PERMOHONAN', '2022/07/17', '13.30-15.30 WIB', 'Atrium Mall Solo Square'),
(1142, '032.Juli/2022', 'PU.07/2642/2022', '2022-07-07', 'Undangan', 'Pemkot Sekretariat Daerah', 'Rapat Koordinasi terkait Hasil Pengecekan Saluran Drainase di Jalan Ki Hajar Dewantara', '2022/07/12', 'Bagian Umum Pelayanan (Danang)', 'UNDANGAN', '2022/07/13', '09.00 WIB', 'Ruang Rapat Asisten Perekonomian dan Pembangunan Sekda Kota Surakarta'),
(1143, '033.Juli/2022', '04/A/IP-BKPM/V/2022', '2022-05-16', 'Sponsorship Ucapan Selamat dan Sukses Setahun Berdirinya Kementerian Investasi/BKPM', 'Ikatan Purnabhakti Badan Koordinasi Penanaman Modal (IP-BKPM)', 'Sponsorship Ucapan Selamat dan Sukses Setahun Berdirinya Kementerian Investasi/BKPM', '2022/07/12', 'Ambil yang 1 Space Rp. 7.500.000- Mbak Ani Dilakukan dan Diurus', 'UCAPAN SELAMAT', '2022/07/29', NULL, NULL),
(1144, '034.Juli/2022', 'KL.03.00/2670.1/2022', NULL, 'Surat Edaran', 'Sekretariat Daerah', 'Pelaksanaan Survei Kepuasan Masyarakat (SKM) Pemkot Tahun 2022 Triwulan III', '2022/07/12', 'Bagian HRD (Bu Lusi) buat report/resume', 'SURAT EDARAN', NULL, NULL, NULL),
(1145, '035.Juli/2022', '…,/PMHN.06/APG-INASPOC/2022', '0000-00-00', 'Permohonan Pinjaman Venue', 'INASPOC', 'Izin Peminjaman tempat/lokasi Pertandingan (Ruang VVIP dan Venue Para Tenis Meja APG 2022', '2022/07/12', 'Bagian Kerjasama Fasilitasi (Mas Susilo)', 'PERMOHONAN', '23 Juli 2022 (malam) - 7 Agustus 2022', NULL, NULL),
(1146, '036.Juli/2022', '094/Prodi.Akt/Magang-Mandiri/VII/2022', '2022-07-11', 'Permohonan Magang Mahasiswa', 'Univ. Islam Indonesia (UII)', 'Program Magang yang diselenggarakan Program Studi Akuntansi Program Sarjana, Fakultas Bisnis dan Ekonomika (FBE), Universitas Islam Indonesia (UII). Selama 3 bulan', '2022/07/13', 'Bagian Pelayanan fasilitasi (Mas Chris). Buat surat balasan untuk UII diterima Magang (Mas Budi)', 'PERMOHONAN', NULL, NULL, 'STP'),
(1147, '036.Juli/2022', 'PG.00/2705/2022', '2022-07-11', 'Pembinaan dan Pendampingan Bagi Penyedia atau Pelaku Usaha Binaan Organisasi Perangkat Daerah (OPD) Melalui Penggunaan Katalog Lokal Kota Surakarta', 'Sekretariat Daerah', 'Pembinaan dan Pendampingan Bagi Penyedia atau Pelaku Usaha Binaan Organisasi Perangkat Daerah (OPD) Melalui Penggunaan Katalog Lokal Kota Surakarta', '2022/07/12', 'Bagian Keuangan (Bu Susi)', 'SURAT EDARAN', NULL, NULL, NULL),
(1148, '037.Juli/2022', '252/005/VII/2022', '2022-07-12', 'Undangan', 'Balitbangda', 'Gladi Bersih dan Persiapan Pelaksanaan Lomba Krenova Kota Surakarta Tahun 2022', '2022/07/13', 'Bagian Kerjasama dan Kawasan (Susilo). Faislitasi (Danang)', 'UNDANGAN', '2022/07/15', '09.00 WIB', 'Gedung IBT STP'),
(1149, '038.Juli/2022', '23/PIMR/20/1307', '2022-07-13', 'Permohonan Ijin Mendirikan Reklame', 'Pelangi Advertising. Media Iklan Luar Ruang', 'Ijin Mendirikan Reklame kemunginan 3 hari kedepan setelah permohonan ini dibuat dan akan dibongkar paling lambat tgl 10 Agustus 2022', '2022/07/13', 'Bagian umum dan kerjasama (Mb Ani). Buat surat balasan (fasilitasi Mas Susilo)', 'PERMOHONAN', NULL, NULL, NULL),
(1150, '039.Juli/2022', '104 / SMK / M / E.23 / VI / 2022', '2022-06-14', 'Permohonan Kunjungan Industri', 'SMK MUHAMMADIIYAH SALATIGA', 'Permohonan kunjungan Industri', '2022/07/13', 'CANCEL', 'PERMOHONAN', '2022/07/27', '09.00', 'STP'),
(1151, '040.Juli/2022', '401/FT/II.3.AU/F/2022', '2022-07-13', 'Pengunduran Pelaksanaan Kunjungan Industri', 'Unimma', 'Pengunduran Pelaksanaan Kunjungan Industri. (100 mahasiswa + 4 dosen )', '2022/07/13', 'Bagian Pelyanan (Pak Christian dan Pak Budi)', 'PERMOHONAN', '2022/08/22', '13.00-15.00 WIB', NULL),
(1152, '041.Juli/2022', '254/005/VII/2022', '2022-07-13', 'Unndangan', 'Balitbangda', 'Forum Konsultasi Publik Pross Bisnis dan Standar Operasional Prosedur Balitbangda Kota Surakarta Tahun 2022', '2022/07/14', 'Sudah dihadiri', 'UNDANGAN', 'Kamis, 214 Juli 2022', '13.00 WIB', 'Ruang Rapat Kantor Balitbangda'),
(1153, '042.Juli/2022', 'PN.04.01/2741/2022', '2022-07-13', 'Undangan', 'Sekretariat Daerah', 'Pembukaan Lomba Krenova Kota Surakarta Tahun 2022 dan Launching E-Tanov Integrasi Data Inovasi untuk Meningkatkan Indesk Daya Saing Daerah Kota Surakarta', '2022/07/14', 'Sudah Dihidari', 'UNDANGAN', 'Senin, 18-19 Juli 22', '09.00 WIB', 'STC'),
(1154, '043.Juli/2022', '326/OD.03.01', '2022-07-14', 'Undangan Public Hearing', 'DPRD KOTA SURAKARTA', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '2022/07/14', 'Sudah Dihadiri', 'UNDANGAN', '2022/07/15', '09.30 WIB', 'DPRD'),
(1155, '044.Juli/2022', '257/005/VII/2022', '2022-07-14', 'Undangan', 'Balitbangda', 'Rapat Pembahasan Laporan Pendahuluan Penyusunan Monitoring dan Evaluasi Rencana Induk Kelitbangan Kota Surakarta', '2022/07/15', 'Disposisi via WA Pak Yudit (Pak Chris)', 'UNDANGAN', '2022/07/18', '09.30 WIB', 'Balitbangda'),
(1156, '045.Juli/2022', 'RP.05/2769/2022', '2022-07-14', 'Undangan', 'Sekda', 'Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK) Triwulan II Tahun Anggaran 2022', '2022/07/15', 'Disposisi via WA (Bu susi)', 'UNDANGAN', '2022/07/19', '09.00 WIB', 'Pendhapi Gede Kompleks Balaikota Surakarta'),
(1157, '046.Juli/2022', '337/FEB.MAN/06/2022', '2022-06-10', 'Permohonan Magang', 'FEB UNIV. KRISTEN SATYA WACANA', 'Permohonan Magang bulan September - Desember 2022', '2022/07/15', 'Bagian Pelayanan Fasilitasi (Mas Christian)', 'PERMOHONAN', 'September-Desember', NULL, 'STP'),
(1158, '047.Juli/2022', 'KT.00/2783/2022', '2022-07-15', 'Undangan', 'Sekda', 'Rapat Koordinasi dengan Agenda Finalisasi Draf SK Walikota Surakarta tentang Forum Skil Development Center (SDC) Kota Surakarta serta Evaluasi Program Kerja SDC Kota Surakarta Tahun 2021-2023', '2022/07/18', 'Bagian PP Hadiri (Mas Budi)', 'UNDANGAN', '2022/07/20', '08.30 WIB', 'Hotel Solia Zigna Laweyan'),
(1159, '048.Juli/2022', '2092/SMK-WT/VII/2022', '2022-07-18', 'Permohonan Izin Kunjungan Industri', 'SMK Widya Taruna', '31 siswa + 5 Guru', '2022/07/18', 'Bagian Pelayanan Fasilitasi ( P. Christian dan Pak Budi)', 'PERMOHONAN', 'Selasa, 13 Sept 22', NULL, 'UPT STP'),
(1160, '049.Juli/2022', '262/005/VII/22', '2022-07-18', 'Undangan', 'Balitbangda', 'Launching E-Tanov Sistem Data Inovasi daerah dan Penyerahan Hadiah Lomba Krenova Tahun 2022 oleh Bapak Walikota Surakarta', '2022/07/18', 'Sudah Dihadiri', 'UNDANGAN', '2022/07/19', '14.30 WIB', 'STC'),
(1161, '050.Juli/2022', '188/SP-eo/VII/2022', '2022-07-18', 'Narasumber Talkshow', 'SOLOPOS', 'Permohonan Kepada Pak Yudit untuk menjadi pemateri dengan tema \"Pengembangan Pendidikan Vokasi Berkualitas\"', '2022/07/19', 'Sudah Dihadiri (Mas Christian dan Mas Danu)', 'PERMOHONAN', '2022/07/19', '09.00-12.00', 'Dalem Tjokrosoemartan'),
(1162, '051.Juli/2022', '2739/BSSN/P3/DL.07.01/07/2022', '2022-07-18', 'Undangan Rapat Koordinasi Rencana Pelatihan Born to Defense Kelas Ke-8 T.A. 2022', 'Badan Siber dan sandi Negara Pusat Pengmbangan Sumber Daya Manusia', 'Undangan Rapat Koordinasi Rencana Pelatihan Born to Defense Kelas Ke-8 T.A. 2022.', '2022/07/19', 'Hadiri (Mas Susilo dan Mas Agus)', 'UNDANGAN', '2022/07/20', '09.30 WIB', 'Ruang Rapat lantai 1 Pusbang SDM BSSN Sawangan'),
(1163, '052.Juli/2022', '3358/PA.03/VII/2022', '2022-07-19', 'Mohon berkenan Menjadi Narasumber', 'Dinas Pemberdayaan Perempuan dan Perlindungan Anak Serta Pengendalian Penduduk dan Keleuarga Berencana', 'Lindungi Anak dari Kekerasan, Eksploitasi dan Pernikahan Anak', '2022/07/19', 'Dipersiapkan Ruangan (Mas Susilo dan Mas Danang)', 'PERMOHONAN', '2022/07/28', '13.00 - 14.00 WIB', 'Balaikota Surakarta'),
(1164, '053.Juli/2022', '001/Ker-SO/VII/2022', '2022-07-15', 'Permohonan Peminjaman Tempat', 'Scholars Official', 'Permohonan Peminjaman Tempat di gedung trade center yang akan digunakan untuk acara Schplars Talk x Solo Tecno Park', '2022/07/20', 'Bagian Kawasan (Mas Susilo) Fasilitasi (Mas Danang)', 'PERMOHONAN', '2022/07/23', '14.00 - 16.30 WIB', 'Ruang Main Bareng (Mabar) Garena Gaming & Community Hub, Gedung Trade Center, Solo Technopark'),
(1165, '054.Juli/2022', 'B/1422/KI/VII/2022', '2022-07-19', 'Undangan', 'Dinas Komunikasi, Informatika, Statistik dan Persandian', 'Rapat Kordinasi lanjutan dan Pengeumpulan Formulir Keamanan Informasi Born To Defense-8', '2022/07/20', 'Sudah Dihadiri', 'UNDANGAN', '2022/07/20', '09.00 WIB', 'Ruang Rapat Upakari II Diskominfo SP Gedung Upakari Lt.3 Komplek Balaikota Surakarta'),
(1166, '055.Juli/2022', 'B-066/ICIES-FEBI22/07/2022', '2022-07-12', 'Permohonan Izin Kunjungan', 'Universitas Islam Negeri', 'Mengadakan Kunjungan Ke Solo Technopark Sebagian dari rangkaian Kegiatan 3 RD ICIES 2022', '2022/07/20', 'Mas Susilo, Mas Christian', 'PERMOHONAN', '2022/07/27', '15.30 - 17.30 WIB', 'STP'),
(1167, '056.Juli/2022', '268/PN.IGA/VII/2022', '2022-07-19', 'Sosialisasi IGA 2022', 'Balitbangda', 'Mengikuti Sosialisasi Penilaian Inovasi Daerah dan Pemberian Penghargaan Innovative Government Award Tahun 2022', '2022/07/21', 'Disposisi Via WA Pak Yudit (Bp. Christin)', 'PERMOHONAN', '2022/07/21', '09.00 WIB s/d selesai', 'Link Youtube BSKDN Kemendagri'),
(1168, '057.Juli/2022', '145/VII//PPS/2022', '2022-07-18', 'Permohonan Peminjaman Tempat', 'Paguyuban Putra-Putri Solo', 'Permohonan Peminjaman Tempat ata Ruangan di Solo Technopark untuk Pembekalan Finalis Putra-Putri Solo', '2022/07/21', 'Buat Surat Balasan (Mas Susilo) Fasilitasi (Mas Danang)', 'PERMOHONAN', '2022/08/02', '09.00 - 16.00 WIB', 'STP'),
(1169, '058.Juli/2022', '031/SU-SO/VII/2022', '2022-07-19', 'Undangan dan Permohonan', 'Secholars Official', 'Permohonan Untuk Memberikan Sambutan dalam acara \"Sekolars Talk x Solo Technopark', '2022/07/21', 'Sudah dilakukan', 'UNDANGAN', '2022/07/23', '15.00 - 17.00 WIB', NULL),
(1170, '059.Juli/2022', '008/HIMATANSI-FE/UNUYO/VI/2022', '2022-07-19', 'Permohonan Perubahan Jadwal Kunjungan Industri', 'UNU (Universitas Nahdlatul Ulama Yogyakarta)', 'Permohonan Perubahan Jadwal Kunjungan Industri', '2022/07/22', 'Buat Surat Jawab (Mas Christian) Fasilitasi (Mas Budi)', 'PERMOHONAN', '2022/08/02', '10.00 WIB', 'STP'),
(1171, '060.Juli/2022', '271/0.50/VII/2022', '2022-07-21', 'Permohonan Personil', 'Balitbangda', 'Permohonan Personil Untuk Pendampingan Hiliriasi Hasil Riset (Pak Yudit dan Pak Danu)', '2022/07/25', 'Dibuatkan balasan (Mba Ani)', 'PERMOHONAN', '2022/07/28', NULL, NULL),
(1172, '061.Juli/2022', '049/PN.KKREN/VII/2022', '2022-07-21', 'Permohonan Personil', 'Balitbangda', 'Permohonan Personil Untuk Pendampingan Produk Pemenang Lomba Kreativitas dan Inovasi Kota Surakarta (Pak Yudit, Susilo,Zubaida, dan Pak Soekma)', '2022/07/25', 'Dibuatkan surat balasan (Mba Ani)', 'PERMOHONAN', '2022/07/28', NULL, NULL),
(1173, '062.Juli/2022', '147/SMK.Mrf/E.12/VII/2022', '2022-07-26', 'Permohonan Kunjungan Industri', 'SMK Ma\'arif Tegalrejo', 'Permohonan Kunjungan Industri', '2022/07/26', 'Bagian PP Fasilitasi (Ms Christian, Ms Budi)', 'PERMOHONAN', '2022/09/12', '09.30 WIB', 'STP'),
(1174, '063.Juli/2022', 'BL.01.03/2882/2022', '2022-07-21', 'Surat Edaran', 'Sekda', 'Surat Edaran Tentang Peringatan Hut Ke-77 Kemerdekaan RI Tahu 2022', '2022/07/26', 'Follow Up (Ms Susilo, Ms Danang, Pak Untung)', 'SURAT EDARAN', '1- 31 Agustus 2022', NULL, NULL),
(1175, '064.Juli/2022', NULL, '2022-07-26', 'Kunjungan Industri', 'HMM Mahasiswa Mesin Univ. Merdeka Madiun', 'Kunjungan Industri. (45 Mahasiswa + 5 Dosen)', '2022/07/26', 'Diterima (Pak Yudit, Mas Christian)', 'PERMOHONAN', '2022/08/11', NULL, 'STP'),
(1176, '065.Juli/2022', 'DP.03.02/I/3105/2022', '2022-07-26', 'Permohonan Kunjungan Studi Tiru', 'Politeknik Kesehatan Surakarta', 'Permohonan Kunjungan Studi Tiru. (6 orang)', '2022/07/27', 'Diterima (Pak Yudit, Christian) (Teh saja)', 'PERMOHONAN', 'Jum\'at, 29 Juli 2022', '09.00 WIB s.d selesai', 'STP'),
(1177, '066.Juli/2022', '050/29/I-BRIDA/VII/2022', '2022-07-26', 'Studi Banding ke Solo Techno Park, Jawa Tengah', 'BRIDA', 'Permohonan Kunjungan di UPTD Solo Technopark', '2022/07/28', 'Disposisi (Pak Christ)', 'PERMOHONAN', 'Selas, 02 Agustus 2022', '10.00 WIB', 'STP'),
(1178, '067.Jul/2022', '280/005/VII/2022', '2022-07-28', 'Undangan', 'Balitbangda', 'Menindaklanjuti disposisi Sekretaris Daerah Kota Surakarta atas Surat telegram Kepala Badan Strategi Kebijakan Dalam Negeri Kementerian Dalam Negeri RI tentang Penilaian Indeks Inovasi Daerah dan Penghargaan Innovative Govemment Award 2022', '2022/07/28', 'Bagian PP (P.Chris) Hadiri (P.Danu)', 'UNDANGAN', 'Jum\'at, 29 Juli 2022', '08.30 WIB', 'Zoom Meeting Id : 897 4686 8164 ; Password : IGA2022'),
(1179, '068/Jul/2022', '420.138/079/SMK MARF/VII/2022', '2022-07-29', 'Permohonan Kunjungan Industri', 'SMK MA\' ARIF 1 KALIBAWANG', 'Permohonan Kunjungan Industri di Solo Technopark', '2022/07/29', 'Fasilitasi Mas Budi', 'PERMOHONAN', '2022/08/25', '10.00 WIB', 'STP'),
(1180, '069/Jul/2022', 'B-1332/DJAI.5/AI.03.04/7/2022', '2022-07-21', 'Undangan', 'KEMENINFO', 'Undangn Roadshow Gerakan Nasional 1000 Startup Digital dengan tema \"Inovasi Digital dalam Membangun Potensi Daerah\"', '2022/07/29', 'Hadiri Pak Yudit & Pak Danu (peserta)', 'UNDANGAN', 'Jum\'at 12 Agustus 2022', '14.00-16.00 WIB', 'Zoom Meeting (bit.ly/RoadshowJateng1000)'),
(1181, '001.Agt/2022', '281/005/VII/2022', '2022-07-28', 'Undangan', 'Balitbangda', 'Rapat Koordinasi terkait Perkenalan Perusahaan dan Penyampaian Position Paper tentang Menuju Ekspor Listrik Energi Bersih dari Indonesia', '01-Aug-22', 'Mohon hadiri (Mas Susilo)', 'UNDANGAN', 'Selasa, 2 Agt 2022', '09.30 WIB', 'Balitbangda'),
(1182, '002.Agt/2022', '010/MGR.BEC/VII/2022', '2022-07-25', 'Permohonan Kunjungan', 'Binus University', 'Kunjungan', '01-Aug-22', 'Diterima (mas chris + mas danu)', 'PERMOHONAN', 'Senin, 1 Agt 2022', '13.00-15.00 WIB', 'STP'),
(1183, '003.Agt/2022', NULL, '0000-00-00', 'Permohonan Pinjam Pakai Area Solo Technnoprk', 'PT. Nusantara Ekspres Kilat Shopee Xpress', 'Menajukan Permohonan Pibjam Pakai area Solo Technopark guna kelancaran kegiatan Test Drive', '01-Agst-22', 'Fasilitasi Mas Danang', 'PERMOHONAN', 'Sabtu & Minggu (13-14 Agustus 2022)', '09.00 - 16.00 WIB', 'STP'),
(1184, '004.Agt/2022', 'TM.00.07/251/VIII/2022', '0000-00-00', 'Undangan', 'Badan Pengelolaan Keuangan dan Aset Daerah', 'Bimbingan Teknis pPenyusunan APBD Perubahan Aset Daerah', '01-Agst-22', 'Hadiri Kawasan Mas Agus', 'UNDANGAN', 'Selasa & Rabu (2-3 Agustus 2022)', '09.00 WIB', 'Hotel Adhiwangsa'),
(1185, '005.Agt/2022', '800/1514/Sekre', '0000-00-00', 'Permohonan Kunjungan', 'Dinas Perdangan Koperasi UKM dan Perindustian', 'Permohonan Kunjungan dalam rangka Meningkatkan pengetahuan dan pemahaaman dalam pengelolaan kawasan sains dan teknologi terutama yang berbentuk (BLUD) (7 orng)', '02-Agst-22', 'Diterima Bagian PP (Mas Christian) Bagian Kerjasama (Mas Susilo)', 'PERMOHONAN', '2022/08/04', '09.00 WIB', 'STP'),
(1186, '006.Agt/2022', '001/SOME/VIII/2022', '0000-00-00', 'Permohonan izin peminjaman tempat', 'PT. Media Sarana Digitalindo', 'Untuk Kegiatan \" Seminar Digital Customer Rellations Manager \"', '02-Agst-22', 'Fasilitasi Mas Danang', 'PERMOHONAN', 'Selasa tanggal, (2,9,16,23,30 Agustus 2022)', '08.30 WIB', 'Mandiri Digipreneur Hub'),
(1187, '007.Agt/2022', '421.3/404/VIII/2022', '0000-00-00', 'Permohonan Kunjungan', 'SMK N 1 SELO', 'Kegiatan Kunjungan', '02-Agst-22', 'Bagian Pelayanan (Pak Christian, Pak Budi)', 'PERMOHONAN', '2022/09/07', '08.30 WIB', 'STP'),
(1188, '008.Agt/2022', '030/UN27.04.4/KKM-BEMFEB/VII/2022', '0000-00-00', 'Permohonan Sponsorship', 'PKKMB FEB UNS', 'Kegiatan Pengenalan Kehidupan Kampus Mahasiswa Baru', '02-Agst-22', 'Arsipkan', 'PERMOHONAN', 'Minggu, Senin, dan Jumat (14,15, dan 19 Agustus 2022', 'Minggu (07.00 -15.35), Senin (07.00 - 15.00), dan Jumat (06.00 - 16.00)', 'Fakultas Ekonomi dan Bisnis'),
(1189, '009.Agt/2022', 'KD.01.03/678/VII/2022', '2022-07-29', 'Jadwal Laporan Semester Barang Milik Daerah', 'BPKAD', 'Memerintahkan Pengurus Barang / Pengurus Barng Bantu, Dll', '02-Agst-22', 'Bagian Keuangan (Bu Susi Hadiri)', 'LAPORAN', '2022/08/16', '12.30 - 13.30 WIB', NULL),
(1190, '010.Agt/2022', 'TM.00.07/249/VII/2022', '2022-07-29', 'Undangan', 'BPKAD', 'Rapat Koordinasi Penyusunan Laporan Semester Barang Milik Daerah Tahun Anggaran 2022 dan Klarifikasi Hasil Sensus Barang Milik Daerah', '02-Agst-22', 'Bagian Keuangan (Bu Susi Hadiri)', 'UNDANGAN', '2022/08/03', '08.30 WIB', 'Bale Tawang Praja Komplek Balaikota Surakarta'),
(1191, '011.Agt/2022', '15/Greet-RS/VII/2022', '2022-07-25', 'Ucapan Hari Kemerdekaan RI ke-77', 'RADAR SOLO', 'Menerbitkan Paket Iklan greeting/ ucapan dalam bentuk kolektif dan mandiri', '02-Agst-22', 'Arsipkan', 'UCAPAN', '2022/08/17', NULL, NULL),
(1192, '012.Agt/2022', 'Petro.01/053/VIII/2022', '0000-00-00', 'Undangan Rapat', 'Petrotekno', 'Pembahasan Kerjasama jangka panjang program Apprentice dan Upskilling antara Solo Technopark, Petrotekno dan Pertamina Hulu Energi', '03-Agt-22', NULL, 'UNDANGAN', '4-5 Agustus 2022', '08.00 WIB-selesai', 'The Alana Hotel & Conference Center-Sentul Bogor, Jawa Barat'),
(1193, '013.Agt/2022', '1291/DIR/2/M/VIII/2022', '0000-00-00', 'Undangan Kegiatan Sharing Knowledge UMKM Herbal', 'Indofarma', 'Kegiatan Sharing Knowledge UMKM Herbal', '03-Agt-22', 'Mas Danu', 'UNDANGAN', '2022/08/06', '09.30 - 12.00 WIB', 'Ruang Garena, Gedung Solo Trade Centre, Kawasan STP'),
(1194, '014.Agt/2022', '292/KREN/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Rapat Koordinasi Pengusulan Calon Peserta Lomba Krenova se Subosukawonosraten dan Provinsi Jawa Tengah serta Penjaringan Masyarakat Provinsi Jawa Tengah', '03-Agt-22', 'Disposisi Via WA Pak Yudit - Mas Danu', 'UNDANGAN', '2022/08/05', '08.30 WIB', 'Ruang Rapat Balitbangda'),
(1195, '015.Agt/2022', '001/Ker-SO/VIII/2022', '0000-00-00', 'Surat permohonan peminjaman tempat', 'Scholars Official', 'Workshop Toefl & Scholarship Collaboration with Solo Technopark', '04-Agt-22', 'Bagian Kerjasama & Umum Fasilitasi (Mbak Ani Surat Balasan)- (Mas Susilo & Mas Danang Persiapan Tempat) - ( Mas Danu Persiapan Acara)', 'PERMOHONAN', '2022/08/21', '07.00 - 16.00 WIB', 'STP'),
(1196, '016.Agt/2022', '397/OD.03.01', '0000-00-00', 'Undangan Rapat Komisi III DPRD Kota Surakarta', 'DPRD KOTA SURAKARTA', 'Rapat Komisi III DPRD Kota Surakarta Pembahasan KUPA PPAS Tahun Anggaran 2022', '04-Agt-22', 'Bu Susi', 'UNDANGAN', '2022/08/04', '11.00 WIB', 'Ruang Komisi III DPRD Kota Surakarta'),
(1197, '017.Agt/2022', '293/BGS/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Rapat Penyususnan Perjanjian Kerjasama BGS antara Pemerintah Kota Surakarta dengan Mitra PT. Shopee Indonesia', '04-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/08/08', '09.00 WIB', 'Ruang Rapat Balitbangda'),
(1198, '018.Agt/2022', 'HBK.CST/333/2022', '2022-07-28', 'Penyampaian Tindak Lanjut Metode Pembayaran dan Pengiriman Produk pada Aplikasi Indonesia Digital Technopark di Solo Technopark', 'Mandiri', 'Penyampaian Tindak Lanjut Metode Pembayaran dan Pengiriman Produk pada Aplikasi Indonesia Digital Technopark di Solo Technopark', '04-Agt-22', 'Pelajari dan bikin surat balasan (Mas Susilo)', 'PENYAMPAIAN', NULL, NULL, NULL),
(1199, '019.Agt/2022', '292/KREN/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Rapat Koordinasi Pengusulan Calon Peserta Lomba Krenova se Subosukawonosraten dan Provinsi Jawa Tengah serta Penjaringan Masyarakat Provinsi Jawa Tengah', '05-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/08/08', '12.30 WIB', 'Ruang Rapat Balitbangda'),
(1200, '020.Agt/2022', '305/005/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Undangan Desk Pengisian Indokator Innovative Government Award (IGA) Tahun 2022', '05-Agt-22', 'Bagian Inkubator (Pak Chris, Mas Danu)', 'UNDANGAN', 'Selasa - Kamis, 9-11 Agustus 2022', '09.00 WIB', 'Ruang Rapat Balitbangda'),
(1201, '021.Agt/2022', 'TM/4892', '0000-00-00', 'Undangan', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Undangan Rapat Koordinasi membahas Ruang Lingkup Nonperizinan dalam rancangan Peraturan Walikota tentang Pendelegasian Wewenang Perizinan Berusaha dan Nonperizinan yang Menjadi Urusan Pemerintah Daerah kepada Dinas Penanaman Modal dan Pelayanan Terpadu Sa', '08-Agt-22', 'Bagian Kerjasama (Mas Susilo) Hadiri (Mas Reza)', 'UNDANGAN', '2022/08/09', '09..00 WIB', 'Ruang Rapat MPP Kota Surakarta'),
(1202, '022.Agt/2022', '2193/BO.03.04//VIII/2022', '0000-00-00', 'Undangan', 'Badan Perencanaan Pembangunan Daerah', 'FGD Penyususnan Rekomendasi PEL/FEDEP Kota Surakarata Bidang Pengembangan SDM dan Ketenagakerjaan', '08-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/08/09', '09.00 WIB', 'Solia Hotel Yosodipiro'),
(1203, '023.Agt/2022', 'B./06.00/287/VIII/2022', '0000-00-00', 'Undangan', 'Sekda', 'Rapat Koordinasi menindaklanjuti Surat LKPP Nomor 17748/D.1/07/2022 tanggal 26 Juli 2022, perihal Pendataan Peraturan Pengadaan Barang/ Jasa di Lingkungan BUMD dan BLUD', '08-Agt-22', 'Bagian Keuangan (Bu Susi Hadiri)', 'UNDANGAN', '2022/08/10', '09.00 WIB', 'Ruang Rapat Bagian Pengadaan Barang/Jasa Sekertariat Daerah Kota Surakarta'),
(1204, '024.Agt/2022', '0242/EMCL-CPO/2022', '0000-00-00', 'Permohonan Kunjungan', 'ExxonMobil', 'Permohonan Kunjungan dariExxonMobil (EMCL) bertujuan untuk meningkatkan pemahaman tentang industri hulu migas, khususnya di wilayah operasi Lapangan Banyu Urip', '09-Agt-22', 'Bagian Kerjasama & Kawasan (Mas Susilo) Fasilitas (Mas Danang)', 'PERMOHONAN', '2022/08/11', '10.00 - 17.00 WIB', '1. (Migas Corner) dan 2. (Ruang Rapat STP)'),
(1205, '025.Agt/2022', '298/PLTS/VIII/2022', '0000-00-00', 'Telaah Position Paper dari Quantum Power Asia dan ib vogt tentang pengembangan Pembangkit Listrik Tenaga Surya (PLTS) menuju ekspor listrik energi bersih dari indonesia', 'Balitbangda', 'Telaah Position Paper dari Quantum Power Asia dan ib vogt tentang pengembangan Pembangkit Listrik Tenaga Surya (PLTS) menuju ekspor listrik energi bersih dari indonesia', '09-Agt-22', 'Disposisi (Mas Susilo) 11-Agustus 2022', 'TELAAH STAF', NULL, NULL, NULL),
(1206, '026.Agt/2022', 'PU.08/5463/VIII/2022', '0000-00-00', 'Jawaban Pengajuan Desain Pedestrian area Plaza Fountain Solo Technopark', 'Dinas Pekerjaan Umum dan Penataan Ruang', 'Jawaban Pengajuan Desain Pedestrian area Plaza Fountain Solo Technopark', '09-Agt-22', 'Bagian Umum & Kerjasama (Mas Susilo) Disampaikan ke Shopee (Mas Danang)', 'JAWABAN', NULL, NULL, NULL),
(1207, '027.Agt/2022', 'ISC-44/MST-VIII/2022', '0000-00-00', 'Undangan Rapat Sosialisasi Kegiatan \"Kompetisi Rocket Air Tahun 2022\"', 'Indonesia Scienci Center', 'Undangan Rapat Sosialisasi Kegiatan \"Kompetisi Rocket Air Tahun 2022\"', '09-Agt-22', 'Bagian Kerjasama & PP', 'UNDANGAN', '2022/08/12', '09.00 - 11.00 WIB', 'Virtual/Online via Zoom'),
(1208, '028.Agt/2022', 'B-8296/II.2/TU.01.02/7/2022', '2022-07-29', 'Undangan Peringatan Hari Kebangkitan Teknologi Nasional ke-27 secara Virtual', 'BRIN (Badan Riset dan Inovasi Nasional', 'Undangan Peringatan Hari Kebangkitan Teknologi Nasional ke-27 secara Virtual', '10-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/08/10', '08.00 -09.55 WIB', 'Zoom'),
(1209, '029.Agt/2022', 'B-8685/I/TU.01.02/8/2022', '0000-00-00', 'Penundaaan Peresmian Penamaan 4 (Empat) Kawasan Science Teknologi ( KST) BRIN', 'KEPALA BADAN RISET DAN INOVASI NASIONAL REPUBLIK INDONESIA', 'Penundaaan Peresmian Penamaan 4 (Empat) Kawasan Science Teknologi ( KST) BRIN', '10-Agt-22', 'Sudah Dihadiri', 'PENUNDAAN', '2022/08/10', '08.00 - 09.55 WIB', 'Kawasan Science Teknologi (KST)'),
(1210, '030.Agt/2022', 'B/1592/KI/VIII/2022', '0000-00-00', 'Undangan', 'Dinas Komunikasi, Informatika, Statistik dan Persandian', 'Rapat Koordiansi Pengelolaan SP4N-LAPOR', '10-Agt-22', 'Mbak Ani (Hadiri)', 'UNDANGAN', '2022/08/18', '09.00 WIB', 'Ruang Rapat Gedung DKK Lantai 3- sisi selatan Komplek Balaikota Surakarta'),
(1211, '031.Agt/2022', '1026/UN27.08/HM.01.00/2022', '0000-00-00', 'Permohonan Sponsorship', 'UNS', 'Permohonan Sponsorship', '10-Agt-22', 'Sudah Dibalas', 'PERMOHONAN', NULL, 'September - Noember 2022', NULL),
(1212, '032.Agt/2022', '293/RP.05/VIII/2022', '0000-00-00', 'Undangan Desk Pelaporan Simdalbangda Bulan Juli Tahun 2022', 'Sekda', 'Undangan Desk Pelaporan Simdalbangda Bulan Juli Tahun 2022', '11-Agt-22', 'Bu Susi', 'UNDANGAN', '2022/08/11', '11.00 - 12.00 WIB', 'Ruang Rapat Bagian Administrasi Pembangunan Setda Kota Surakarta'),
(1213, '033.Agt/2022', 'P6.00/3167/2022', '0000-00-00', 'Undangan', 'Sekertariat Daerah', 'Persiapan Pelaksanaan kegiatan \" Diseminasi Pencantuman Produk pada Katalog Elektronik\"', '11-Agt-22', 'Bagian Kerjasama & Umum (Mas Susilo)', 'UNDANGAN', '2022/08/12', '09.00 WIB', 'Ruang Rapat Bagian Tengah Pengadaan Barang/Jasa'),
(1214, '034.Agt/2022', '294/PG.00/VIII/2022', '0000-00-00', 'Permohonan pinjam tempat', 'Sekertariat Daerah', 'Diseminasi Pencantuman Produk pada Katalog Elektronik', '11-Agt-22', 'Bagian Kerjasama & Umum (Mas Susilo dan Mas Danang)', 'PERMOHONAN', '2022/08/18', '09.00 WIB', 'Ruang Seminar Besar Solo Technopark'),
(1215, '035.Agt/2022', '313/AT.04/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Rapat Koordinasi Pengurusan Kesesuaian Kegiatan Pemanfaatan Ruang (KKPR)', '12-Agt-22', 'Mas Reza (Hadiri)', 'UNDANGAN', '2022/08/12', '08.30 WIB', 'Ruang Rapat Balitbangda'),
(1216, '036.Agt/2022', '485/D.2-II/KP/TA/VIII/2022', '0000-00-00', 'Permohona ijin Survey Kerja Praktek', 'UMS', 'Permohonan ijin Survey Kerja Praktek', '12-Agt-22', 'Bagian Kerjasama dan Umum Fasilitasi (Pak Susilo & Pak Danang)', 'PERMOHONAN', NULL, NULL, 'STP'),
(1217, '037.Agt/2022', '486/D.2-II/KP/TA/VIII/2022', '0000-00-00', 'Permohonan ijin Kerja Praktek', 'UMS', 'Permohonan ijin Kerja Praktek', '12-Agt-22', 'Bag. Kerjasama & Umum, Fasilitasi (P. Susilo & P. Danang)', 'PERMOHONAN', NULL, NULL, 'STP'),
(1218, '038.Agt/2022', '487/D.2-II/KP/TA/VIII/2022', '0000-00-00', 'Permohona ijin Survey Kerja Praktek', 'UMS', 'Permohona ijin Survey Kerja Praktek', '12-Agt-22', 'Bag. Kerjasama & Umum, Fasilitasi (P. Susilo & P. Danang)', 'PERMOHONAN', NULL, NULL, 'STP'),
(1219, '039.Agt/2022', '488/D.2-II/KP/TA/VIII/2022', '0000-00-00', 'Permohonan ijin Kerja Praktek', 'UMS', 'Permohonan ijin Kerja Praktek', '12-Agt-22', 'Bagian Kerjasama, Fasilitasi (Pak Susilo & Pak Danang)', 'PERMOHONAN', NULL, NULL, 'STP'),
(1220, '040.Agt/2022', '003/007/YP2.RH/SMK.RHM/VIII/2022', '0000-00-00', 'Permohona Kunjungan Industri', 'SMK ROUDLOTUL HUDA MAGETAN', 'SMK Roudlotul Huda Magetan mengajukan permohonan kegitan Kunjungan industri (KI)', '12-Agt-22', 'Bag. PP, Fasilitasi (P. Christian & P. Budi)', 'PERMOHONAN', '2022/09/13', '10.00 - 12.00 WIB', 'STP'),
(1221, '041.Agt/2022', 'TM.00.07/264/VIII/2022', '0000-00-00', 'Undangan', 'Badan Pengelolaan Keuangan dan Aset Daerah', 'Sosialisai Tata Cara Pemotongan dan Pelaporan SPT Masa Intansi Pemerintah serta Perceptan Rekonsiliasi Pajak Pusat Semester II Tahun 2022', '12-Agt-22', 'Pak Agus T.H', 'UNDANGAN', '2022/08/16', '09.00 WIB', 'Hotel Sahid Jaya Solo (Ruang Pedan Ballroom)'),
(1222, '042.Agt/2022', 'B/837/BPSDMI/AKDM-Surakarta/PP/VIII/2022', '0000-00-00', 'Permohonan Sambutan PKKMB AK-Tekstil Solo', 'AK-Tekstil', 'Permohonan Sambutan PKKMB AK-Tekstil Solo', '15-Agt-22', 'Sudah Dihadiri', 'PERMOHONAN', '2022/08/15', '08.00 - 10.00 WIB', 'AKITPTS'),
(1223, '043.Agt/2022', 'BL-01-03/3182/2022', '0000-00-00', 'Surat Edaran', 'Sekertariat Daerah', 'Peringatan Hari Jadi ke-72 Provinsi Jawa Tengah', '15-Agt-22', 'Ibu Lusi', 'SURAT EDARAN', '2022/08/15', '07.00 WIB', 'Kenal Youtube Pemerintah Provinsi Jawa Tengah'),
(1224, '044.Agt/2022', 'Email', '0000-00-00', 'Permohona Kerjasama MOU Program Merdeka Belajar Kampus Merdeka (MBKM)', 'UNIMMA', 'Permohona Kerjasama MOU Program Merdeka Belajar Kampus Merdeka (MBKM)', '15-Agt-22', 'Bagian Kerjasama dan Legal (Pak Susilo & Pak Reza)', 'PERMOHONAN', NULL, NULL, 'STP'),
(1225, '045.Agt/2022', '240/WR.01/P.01/PA/VIII/2022', '0000-00-00', 'Proposal Audit Laporan Keuangan 2021', 'WARTONO dan REKAN', 'Proposal Audit Laporan Keuangan 2021', '15-Agt-22', 'Bag. Keuangan ditawar 25 jt (Bu Susi)', 'PROPOSAL', NULL, NULL, NULL),
(1226, '046.Agt/2022', '017/JA-Intermedia/SP/VIII/2022', '0000-00-00', 'Greeting Dies Natalis ke-38 Universitas Terbuka', 'Universitas Terbuka', 'Menyampaikan Penawaran Ucapan \"Selamat & Sukses Dies Natalis Universitas Terbuka ke 38\" Dalam Bentuk Iklan Greeting bersama di Solopos Media Group.', '15-Agt-22', 'Bayar Adm Umum & Logistik (Pak Untung), Diambil Rp. 600.000,- (Mas Oktaf)', 'PENAWARAN', '2022/09/04', NULL, '#NAME?'),
(1227, '047.Agt/2022', '083/DAHA-02/SK/08/2022', '0000-00-00', 'Surat Permohonan Rekrutmen Karyawan', 'PT.DAHA SURYA PERSADA', 'Menyampaikan Permohanan untuk dapat merekrut dan menyeleksi lulusan siswa Solo Technopark untuk mengikuti program OPERATOR MAGANG di Perusahaan kami. Adapun posisi yang kami tawarkan yaitu PROGRAM PEMAGANGAN', '15-Agt-22', 'Bagian PP (Pak Christian & Pak Budi)', 'PERMOHONAN', 'Pengumuman lowongan : 15-25 Agustus 2022. Tes Wawancara : Jumat, 26 Agustus 2022', NULL, NULL),
(1228, '048.Agt/2022', 'BL.01.03/3208/2022', '0000-00-00', 'Undangan', 'Sekertariat Daerah', 'Rapat Checking Akhir Pelaksanaan Pawai Pembangunan Tahun 2022', '18-Agt-22', NULL, 'UNDANGAN', '2022/08/18', '11.00 WIB', 'Ruang Rapat Tawangarum, Komplek Balaikota Surakarta JI. Jend. Sudirman No. 2 Surakarta'),
(1229, '049.Agt/2022', '450/OD.03.01', '0000-00-00', 'Undangan', 'DPRD KOTA SURAKARTA', 'Undangan Rapat Komisi III DPRD Kota Surakarta', '18-Agt-22', 'Arsipkan', 'UNDANGAN', '2022/08/19', '10.00 WIB', 'Ruang Komisi III DPRD Kota Surakarta'),
(1230, '050.Agt/2022', 'RP.03/3217/2022', '0000-00-00', 'Undangan', 'Sekretariat Daerah', 'Rapat Rencana Pelaksanaan Indo Smart City 2022', '18-Agt-22', NULL, 'UNDANGAN', '2022/08/18', '14.00 WIB', 'Ruang Rapat Bagian Tata Pemerintahan Setda Kota Surakarta'),
(1231, '051.Agt/2022', '444/OD.03.01', '0000-00-00', 'Undangan Rapat Pansus', 'DPRD KOTA SURAKARTA', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '18-Agt-22', 'Arsipkan', 'UNDANGAN', '2022/08/18', '14.00 WIB', 'Ruang Graha Paripurna DPRD Kota Surakarta'),
(1232, '052.Agt/2022', '10/DP-KORPRI-SKA/VIII/2022', '0000-00-00', 'Surat Edaran', 'KORPS (Dewan Pengurus Kota Surakarta)', 'Surat Edaran tentang Penilaian Terbaik Pawai Pembangunan Dalam Rangka Peringatan Hut Ke-77 Kemerdekaan RI Tahun 2022', '18-Agt-22', 'Arsipkan', 'SURAT EDARAN', NULL, NULL, NULL),
(1233, '053.Agt/2022', 'KS.00.23/3206/2022', '0000-00-00', 'Surat Edaran Walikota', 'Walikota Surakarta', 'Pemberlakuan Pembatasan Kegiatan Masyarakat Level 1 di Kota Surakarta', '18-Agt-22', 'HRD', 'SURAT EDARAN', NULL, NULL, NULL),
(1234, '054.Agt/2022', 'B-8872/II.8.5/TU.03.02/8/2022', '0000-00-00', 'Undangan Temu Pengelola Tahap III', 'BRIN (Direktorat Kemitraan Riset dan Inovasi)', 'Temu Pengelola Tahap III', '18-Agt-22', 'Hadiri (Pak Chris & Mba Ani)', 'UNDANGAN', '2022/08/25', '09.00 WIB-selesai', 'Zoom Meeting'),
(1235, '055.Agt/2022', '2346/PE.00.00/VIII/2022', '0000-00-00', 'Undangan', 'Bappeda Kota Surakarta', 'FGD Komite Ekonomi Kreatif Kota Surakarta 2022 Bidang Pengembangan Industri Kreatif. Tema : \"Transformasi Kegiatan Ekraf menjadi Industri Ekonomi Kreatif\"', '18-Agt-22', 'Hadiri (Mas Susilo)', 'UNDANGAN', '2022/08/23', '09.30 - selesai', 'Sala View Hotel - Akasia Room'),
(1236, '056.Agt/2022', 'ISC-50/MST-VIII/2022', '0000-00-00', 'Informasi dan Undangan Kompetisi Roket Air Nasional (KRAN) 2022', 'Indonesia Science Center', 'Informasi dan Undangan Kompetisi Roket Air Nasional (KRAN) 2022', '19-Agt-22', 'M. Ani, M. Lusi', 'UNDANGAN', '2022/10/08', NULL, 'Museum Purna Bhakti Pertiwi Taman Mini Indonesia Indah, JakTim'),
(1237, '057.Agt/2022', 'B-1630/DJAI.5/AI.03.04/08/2022', '0000-00-00', 'Undangan', 'KOMINFO', 'Menghadiri Kegiatan Ignation by Gerakan Nasional 1000 Startup Digital', '19-Agt-22', 'Mohon bisa diwakili (Pak Christian)', 'UNDANGAN', '2022/08/27', '10.00 WIB', 'Fairgrounts SCBD'),
(1238, '058.Agt/2022', 'B-835/D.3/UK.02.01/VIII/2022', '0000-00-00', 'Undangan Side Event G20 Indonesia Stakeholders Consultation : \"SME Opportunity on Global Value Chain and Logistic Solution\"', 'KEMENKOPUKM', 'Undangan Side Event G20 Indonesia Stakeholders Consultation : \"SME Opportunity on Global Value Chain and Logistic Solution\"', '22-Agt-22', 'Mohon bisa diwakili (Pak Danu)', 'UNDANGAN', 'Jum\'at, 26 Agustus 2022', '19.00 s/d 21.00 WIB', 'Daring Webex / Zoom'),
(1239, '059.Agt/2022', 'B-840/BPSDMI/AKOM-Surakarta/PP/VIII/2022', '0000-00-00', 'Undangan Temu Mitra Industri TPT bersama Akademi Komunitas Industri Tekstil dan Produk Tekstil Surakarta', 'AK-Tekstil', 'Undangan Temu Mitra Industri TPT bersama Akademi Komunitas Industri Tekstil dan Produk Tekstil Surakarta', '22-Agt-22', 'Hadiri Sendiri', 'UNDANGAN', 'Rabu - Jum\'at, 24-26 Agt 2022', '12.00 WIB - selesai', 'MG Setos Hotel (Semarang)'),
(1240, '060.Agt/2022', '027/UN27.05.5/STL/LPM VISI/VIII/2022', '0000-00-00', 'Surat Permohonan Ijin Liputan', 'UNS', 'Surat Permohonan Ijin Liputan', '22-Agt-22', 'Fasilits (Mbak Ani) Tanyakan Waktu Pelaksanaan', 'PERMOHONAN', NULL, NULL, NULL),
(1241, '061.Agt/2022', '2234/PM.04/VIII/2022', '0000-00-00', 'Undangan', 'Badan Perencanaan Pembangunan Daerah (BPPD)', 'Seminar Kerja sama Pemerintah dengan Badan Usaha (KPBU)', '22-Agt-22', 'Sudah Dihadiri (Pak Susilo)', 'UNDANGAN', '2022/08/23', '08.30 WIB', 'Ballroom Soemarno The Sunan Hotel Solo'),
(1242, '062.Agt/2022', '322/005/VIII/2022', '0000-00-00', 'Undangan', 'Badan Perencanaan dan Pembangunan Daerah (BPPD)', 'Rapat Koordionasi Tindak Lanjut Pembahasan Draft Perjanjian Kerjasama Bangun Guna Serah antara Mitra BGS dan Pemerintah Kota Surakarta', '22-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', 'Sealsa, 23 Agustus 2022', '08.00 WIB-selesai', 'Ruang Rapat Balitbangda, Gedung Tawangpraja Lt.1'),
(1243, '063.Agt/2022', '501/UDB/D.2-KM/VIII/2022', '0000-00-00', 'Permiohonan Magang Mahasiswa', 'UNIVERSITAS DUTA BANGSA SURAKARTA', 'Men gajukan Permohona Magang Mahasiswa dalam Sistem Informasi (S1) 6 Mahasiswa dan Teknik Informatika (S1) 5 Mahasiswa', '23-Agt-22', 'Bagian PP & Inkubator (Pak Chris) Fasilitas (Mas Danu)', 'PERMOHONAN', '01 September - 29 Desember 2022', NULL, 'STP'),
(1244, '064.Agt/2022', 'B-2033/Un.20/F.IV/PP.00.9/08/2022', '0000-00-00', 'Permohonan Menjadi Narasumber', 'UNIVERSITAS ISLAM NEGERI RADEN MAS SAID SURAKARTA', 'Permohonan Menjadi Narasumber dengan tema \"Digital Preneur Mahasiswa\" Fakultas Ekonomi dan Bisnis Islam UIN Raden Mas Said Surakarta', '23-Agt-22', 'Arsipkan', 'PERMOHONAN', '2022/09/01', '08.00 WIB-selesai', 'Gedung Graha UIN Raden Mas Said Surakarta'),
(1245, '065.Agt/2022', '4710/IT6.4/HM.01.00/2022', '0000-00-00', 'Permohonan Pinjam Tempat', 'ISI', 'Pinjam Tempat', '23-Agt-22', 'Bagian Kerjasama & Umum (Pak Susilo) Dibuatka Surat Balasan ( Mas Danang) Tempat sudah Diperbarui Indo Smart City', 'PERMOHONAN', 'Jumat - Minggu, 14-16 Oktober 2022', '11.00 s.d. 21.00 WIB', 'STP'),
(1246, '066.Agt/2022', '027.4/22959', '0000-00-00', 'Permohonan Fasilitas Tempat', 'Bapppeda', 'Dengan tema \" Strategi Membuka Peluang Pasar Ekspor bagi Tenant Binaan Technopark\"', '24-Agt-22', 'Fasilitas (Pak Chris, Mas Danu, dan Mas Danang)', 'PERMOHONAN', '2022/08/26', '09.00 WIB-selesai', 'STP'),
(1247, '067.Agt/2022', '027.4/22960', '0000-00-00', 'Undangan', 'Bapppeda', 'Acara Technopark dengan tema \" Strategi Membuka Peluang Pasar Ekspor bagi Tenant Binaan Technopark\"', '24-Agt-22', 'Bagian PP &Inkubator (Pak Chris) Dipersiapkan (Mas Danu) Bagian Umum. Siapkan (Mas Danang)', 'UNDANGAN', '2022/08/26', '09.00 WIB-selesai', 'STP'),
(1248, '068.Agt/2022', '1324/SCM.VP/320.9/08-22/E', '0000-00-00', 'Surat Penunjukan Appointment Letter', 'PT. Imbang Tata Alam', 'Surat Penunjukan Appointment Letter', '24-Agt-22', NULL, 'SURAT PENUNJUKKAN', NULL, NULL, NULL),
(1249, '069.Agt/2022', '007/FKIHM/Agustus/2022', '0000-00-00', 'Permohonan Kunjungan', 'FKIHM', 'Kunjungan', '24-Agt-22', 'Bagian Umum & Kerjasama (Mas Susilo) Fasilitas (Mas Danang)', 'KUNJUNGAN', '2022/08/25', '15.00 WIB - selesai', 'STP'),
(1250, '070.Agt/2022', 'Email', '0000-00-00', 'Permohonan Izin Penelitian', 'UNY', 'Permohonan Izin Penelitian dari Program Studi Psikologi', '24-Agt-22', 'Fasilitas (Mas Danu)', 'PERMOHONAN', NULL, NULL, NULL),
(1251, '071.Agt/2022', '423.6/038/SDTI/VIII/2022', '0000-00-00', 'Izin Berkunjung', 'SD TA\'MIRUL ISLAM SURAKARTA', 'Izin Berkunjung (50 orng)', '24-Agt-22', 'Fasilitasi (Mas Christian, Mas Budi)', 'PERMOHONAN', '2022/09/19', '09.00-selesai', 'STP'),
(1252, '072.Agt/2022', '002/G/ET_BEM/FT_UNY/VIII/2022', '0000-00-00', 'Permohonan Kunjungan Industri', 'UNY', 'Kunjungan Industri', '25-Agt-22', 'Fasilitasi (Mas Christian, Mas Budi)', 'PERMOHONAN', '2022/09/05', '09.30 - 11.10 WIB', 'STP'),
(1253, '073.Agt/2022', '004/STM.SP/VIII/2022', '0000-00-00', 'Disposisi Walikota SKA', 'PT. Sinar Tanputra Mandiri', 'PT STM menawarkan kerjasama kepada Kota Surakarta untuk Mengembangkan dan Memberdayakan Solo Technopark sebagai Pusat Kerjasama Indonesia dengan Korea Selatan dalam bidang Engineering, Doblikasi, dan Kultur', NULL, NULL, NULL, NULL, NULL, NULL),
(1254, '074.Agt/2022', '336/005/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Rapat Finalisasi Draf PKS Bangun Guna Serah antara Pemkot Surakarta dengan PT. Shopee Internasional Indonesia', '25-Agt-22', 'Arsipkan', 'UNDANGAN', '2022/08/29', '09.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1255, '075.Agt/2022', 'B/1702/KI/VIII/2022', '0000-00-00', 'Undangan', 'Diskominfo', 'Rapat Koordinasi Pembuatan Video Smart City', '26-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/08/26', '09.30 WIB - selesai', 'Zoom'),
(1256, '076.Agt/2022', '270/061015.H/L/2022', '0000-00-00', 'Undangan', 'Universitas Islam Batik Surakarta', 'Workhshop Universitas Islam Batik Surakarta dengan Mitra DUDIKA (Dunia Usaha dan Dunia Industri Kerja)', '26-Agt-22', 'Hadiri (Pak Christian, Pak Budi)', 'UNDANGAN', '2022/08/31', '08.00 WIB s/d Selesai', 'Ruang Sidoluhur Universitas Islam Batik Surakarta'),
(1257, '077.Agt/2022', '425.13/010/SMP/KPNK/VIII/2022', '0000-00-00', 'Permohonan Field Trip', 'SMP KRISTEN PELITA NUSANTARA KASIH', 'Selasa, 27 September 2022. Jam : 08.00-11.00 WIB (25 Orang). Rabu, 28 September 2022. Jam : 08.00-11.00 WIB. (63 Orang). Kamis, 29 September 2022. Jam : 08.00-11.00 WIB ( 52 Orang)', '26-Agt-22', 'Fasilitasi (Mas Christian, Mas Budi)', 'PERMOHONAN', 'Selasa, 27 September 2022, Rabu, 28 September 2022, Kamis, 29 September 2022', '08.00-11.00 WIB', 'STP'),
(1258, '078.Agt/2022', '341/PN.02.00/VIII/2022', '0000-00-00', 'Permohonan Personil', 'Balitbangda', 'Permohonan Personil untuk melaksanakan Penyusunan \"Kajian Dampak Sosial dan Lingkungan Pembangunan Islamic Center\" pada Kegiatan Penelitian dan Pengembangan Bidang Sosial dan Kependudukan', '29-Agt-22', 'Surat Balasan (Arsipkan)', 'PERMOHONAN', NULL, NULL, NULL),
(1259, '079.Agt/2022', NULL, '0000-00-00', 'Undangan', 'Politeknik ATMI Surakarta', 'Undangan Wisuda Ahli Madya Sarjana Terapan 2022', '29-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/10', '07.30 WIB', 'Mikael Sport Center'),
(1260, '080.Agt/2022', '0280/EMCL-CPO/2022', '0000-00-00', 'Permohonan Kinjungan', 'ExxonMobil', 'Melaksanankan Kunjungan di Migas Corner Solo Technopark dengan tema \"Aspek Pertahanan Jalur Pipa Minyak Bumi Urip\"', '29-Agt-22', 'Fasilitasi (Mas Christian) Buat Surat Balasan (Mba Ani)', 'PERMOHONAN', '2022/09/09', '08.00 - 10.00 WIB', 'Ruang Migas Corner'),
(1261, '081.Agt/2022', NULL, '0000-00-00', 'Proposal Kerjasama Platform Digital Asesmen', 'Widya Skillola', 'Proposal Kerjasama Platform Digital Asesmen', '29-Agt-22', 'Bagian kerjasama pelajari (m susilo)', 'PERMOHONAN', NULL, NULL, NULL),
(1262, '082.Agt/2022', '351/005/VIII/2022', '0000-00-00', 'Undangan', 'Balitbangda', 'Undangan Rapat Pembahasan Lanjutan Draft PKS Bangun Guna Serah antara Pemerintah Kota Surakarta dengan PT. Shopee Internasional Indonesia', '29-Agt-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/08/30', '09.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1263, '083.Agt/2022', '054/622/VIII/2022', '0000-00-00', 'Surat Perintah Tugas', 'Dinas Energi dan Sumber Daya Mineral Wilayah Solo', 'Pengawasan Uji Konstruksi (camera hole) di PT. Catur Putra Jati (Hotel Alila) dan peninjauan lapangan', '30-Agt-22', 'Arsipkan', 'SURAT TUGAS', '2022/08/25', NULL, NULL),
(1264, '084.Agt/2022', '02/AST/ICT/08/22', '0000-00-00', 'Permohonan Peminjaman Tempat', 'ASTERY', 'untuk diadakannya Indonesia Coffe Event League 2022/2023 Regional Jateng dan Yogyakarta di Surakarta', '30-Agt-22', 'Fasilitasi (Mas Susilo, Mas Danang)', 'PERMOHONAN', 'Kamis - Senin, 29 September 2022 - 3 Oktober 2022', '06.00 - 19.00 WIB', 'STP'),
(1265, '085.Agt/2022', '050/37/I-BRIDA/VIII/2022', '0000-00-00', 'Permohonan Kunjungan Studi TIiru', 'Badan Riset Dan Inovasi Daerah', 'Permohonan Kunjungan Studi Tiru dan Menindaklanjuti Kunjungan kami pada tanggal 02 Agustus 2022, yaitu Penjajakan Kerjasama dan Studi Tiru Kegiatan Solo Technopark untuk diterapkan di Badan Riset dan Inovasi Daerah Provinsi Nusa Tenggara Barat.', '31-Agt-22', 'Diterima Mas Christian info ke PIC', 'PERMOHONAN', '2022/09/02', '10.00 WIB', 'STP'),
(1266, '086.Agt/2022', 'SRT-0246/SKKMI6000/2022/S0', '0000-00-00', 'Peminjaman Alat Peraga Hulu Migas', 'SKK Migas', 'Peminjaman Alat Miniatur Gas Plant dan Market Hulu - Hilir Minyak dan Gas Bumi', '31-Agt-22', 'Arsipkan', 'PERMOHONAN', '29-30 Agustus 2022', NULL, 'Hotel Westin Surabaya');
INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(1267, '001.Sept/2022', '2514/PE.00.00/VIII/2022', '0000-00-00', 'Undangan', 'Bappeda', 'FGD Komite Ekonomi Kreatif Kota Surakarta 2022 Bidang Infrastruktur dan Kawasan Kreatif.', '2022/09/01', 'Hadiri (Mas Danu)', 'UNDANGAN', '2022/09/07', '09.00 WIB - selesai', 'Hotel Horison Aziza'),
(1268, '002.Sept/2022', '1148/SMK I-QON/E.11/VIII/2022', '0000-00-00', 'Permohonan Kunjungan Industri', 'SMK ISLAMIC QON', 'Permohonan Kunjungan Industri (146 orang)', '2022/09/01', 'Fasilitasi Pertimbangkan waktu dan jumlah (Mas Chris, Mas Budi)', 'PERMOHONAN', '2022/09/14', '08.30 WIB - selesai', NULL),
(1269, '003.Sept/2022', NULL, '2022-09-02', 'Permohonan pinjam pakai area di STP', 'Shopee Express', 'Kegiatan test drive', '2022/09/02', 'Fasilitasi (Mas Danang)', 'PERMOHONAN', 'Sabtu & Minggu, 10-11 September 2022', '09.00-16.00 WIB', 'STP'),
(1270, '004.Sept/2022', '4914/IT6.4/HM.01.00/2022', '2022-09-01', 'Permohonan Pinjam Tempat', 'ISI Surakarta', 'Pameran DKV ACT 8 \"Genap\"', '2022/09/02', 'Fasilitasi (Mas Susilo) Nego Biaya (Mas Danang)', 'PERMOHONAN', 'Jumat-Minggu, 28-30 Oktober 2022', '11.00-21.00 WIB', 'Technopark lantai 2'),
(1271, '005.Sept/2022', '670/IT.B07.5/TU.12/2022', '0000-00-00', 'Permohonan Kunjungan & Survey Lapangan ke Solo Technopark', 'Institut Teknologi Bandung', 'Kunjungan & Survey Lapangan ke Solo Technopark (4 orang)', '2022/09/02', 'Fasilitasi (Mas Danu)', 'PERMOHONAN', '2022/09/09', '09.00 - selesai', 'STP'),
(1272, '006.Sept/2022', NULL, '2022-09-02', 'Permohonan Pemakaian Space Solo Trade Center', 'nutrifood', 'Permohonan pemakaian Space Solo Trade Center', '2022/09/02', 'Fasilitasi (Mas Susilo) Surat balasan (Mba Ani) Pertemuan', 'PERMOHONAN', NULL, NULL, NULL),
(1273, '007.Sept/2022', 'Petro.01/072/VIII/2022', '1931-09-22', 'Undangan Rapat', 'PETROTEKNO', 'Meeting Negoisasi kerjasama jangka panjang program Apprentice dan Upskilling antara Pertamina Hulu Energi, Solo Technopark, dan Petrotekno', '2022/09/05', 'Arsipkan', 'UNDANGAN', '6-8 September 2022', NULL, 'PHE Tower Lt. 2, Jaksel'),
(1274, '008.Sept/2022', NULL, NULL, 'Surat Penawaran Produk', 'CV. Sinar Abadi Multimedia', 'Penawaran Produk', '2022/09/05', 'Arsipkan', 'PENAWARAN', NULL, NULL, NULL),
(1275, '009.Sept/2022', '421-2/03/051/IX/2022', '2022-09-05', 'Permohonan Ijin Kunjungan', 'SD NEGERI SEMANGGI KIDUL', 'Ijin kunjungan serta mendalami pengenalan Sciens Study dan peralatan ilmiah', '2022/09/05', 'Diterima (Mas Susilo, Mba Ani, MSIB Legal)', 'PERMOHONAN', '2022/09/20', '08.30 WIB', NULL),
(1276, '010.Sept/2022', 'ST-347/WPB.14/2022', '2022-09-02', 'Surat Tugas', 'Kantor Wilayah Direktorat Jenderal Perbendaharaan Provinsi Jawa Tengah', NULL, '2022/09/06', 'Arsipkan', 'SURAT TUGAS', NULL, NULL, NULL),
(1277, '011.Sept/2022', '032.B/102.5/SMK2 TJ/IX/2022', '2022-09-05', 'Permohonan Kunjungan Benchmarking', 'SMK 2 TRIPLE \"J\"', 'Kunjungan Benchmarking', '2022/09/06', 'Fasilitasi (M.Budi)', 'PERMOHONAN', '2022/09/09', '14.00 WIB - 16.00 WIB', NULL),
(1278, '012.Sept/2022', '423.4/540.6/IX TP', '2022-09-05', 'Permohonan tempat PKL', 'SMKN 1 Gombong', 'Permohonan tempat PKL', '2022/09/07', 'Fasilitasi M. Christian, M. Budi', 'PERMOHONAN', '1 Februari - 30 April 2023', NULL, 'STP'),
(1279, '013.Sept/2022', '002/SMOF/IX/2022', NULL, 'Permohonan izin peminjaman tempat', 'PT MEDIA SARANA DIGITALINDO', 'Untuk kegiatan \"Pelatihan Digital Customer Relationship Manager\"', '2022/09/07', 'Arsipkan', 'PERMOHONAN', 'Selasa, 6, 13, 20, 27 September 2022', '09.00 - selesai', 'Mandiri Digipreneur Hub'),
(1280, '014.Sept/2022', 'TM 00.07/5205', '2022-09-06', 'Undangan', 'Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Rapat Koordinasi Permohonan PKKPR Solo Technopark', '2022/09/07', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/07', '09.00 WIB - selesai', 'Ruang Rapat DPMPTSP'),
(1281, '015.Sept/2022', 'B/1795/KI/IX/2022', '2022-09-06', 'Undangan', 'DISKOMINFO', 'Rapat Koordinasi Lanjutan Pengisian Kuesioner Smart City', '2022/09/07', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/07', '09.00 WIB - selesai', 'Ruang rapat Upakari II DISKOMINFO SP Kota Surakarta'),
(1282, '016.Sept/2022', '590/UDB/D.2-AK/IX/2022', '2022-09-05', 'Undangan Workshop & Penandatangan MOU', 'UNIVERSITAS DUTA BANGSA SURAKARTA', '\"Workshop Pengembangan Kemitraan Dengan DUDI untuk Mendukung Kompetensi Data Science Bagi Program Studi Sistem Informasi\" & Penandatanganan MOU', '2022/09/07', 'Fasilitas M.Susilo, M .Reza', 'UNDANGAN', 'Selasa - Rabu, 13 - 14 September 2022', '12.00 - selesai', 'Multazam Syariah Hotel'),
(1283, '017.Sept/2022', '028/PH.e/SAN-SOLO/PAN-EMP/IX/2022', '2022-09-06', 'Peminjaman tempat', 'Senyum Anak Nusantara', 'untuk mengadakan kegiatan evaluari Ekspedisi Merah Putih (EMP)', '2022/09/07', 'Fasilitas Ruang Seminar Besar (M. Susilo, M. Danang)', 'PERMOHONAN', '2022/09/10', '12.30 WIB - selesai', 'STP'),
(1284, '018.Sept/2022', '367/005/IX/2022', '2022-09-07', 'Undangan', 'Balitbangda', 'Rapat Koordinasi Lanjutan Pembahasan Draft PKS Bangun Guna Serah antara Pemerintah Kota Surakarta dengan PT. Shopee Internasional Indonesia', '2022/09/07', 'Hadiri Mas Susilo', 'UNDANGAN', '2022/09/08', '12.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1285, '019.Sept/2022', '521/OD.03.01', '2022-09-06', 'Undangan Rapat BAPEMPERDA DPRD Kota Surakarta', 'DPRD KOTA SURAKARTA', 'Tentang Ketenagakerjaan, Pengelolaan Sistem Drainase, dan Fasilitasi Penyelenggaraan Pesantren', '2022/09/07', 'Hadiri M Reza', 'UNDANGAN', '2022/09/08', '09.00 WIB', 'Ruang Graha Paripurna DPRD Kota Surakarta'),
(1286, '020.Sept/2022', 'ISC-63/MST-IX/2022', '2022-09-06', 'Update Informasi dan Undangan Kompetisi Roket Air Nasional (KRAN) 2022', 'Indonesia Science Center', 'Daerah yang menyelenggarakan kompetisi regional di wilayahnya maksimal 20 orang peserta, sedangkan daerah yang mengkoordinasikan dan merekomendasikan peserta maksimal 15 orang peserta.', '2022/09/08', 'RAB Schedule', 'UNDANGAN', '2022/10/08', NULL, 'Museum Purna Bhakti Pertiwi Taman Mini Indonesia Indah, Jakarta Timur.'),
(1287, '021.Sept/2022', '04/09/BRAB/2022', '2022-09-06', 'Permohonan Untuk Menjadi Pembicara', 'Bale Rakyat Aria Bima', 'Kegiatan Sosialisasi Kementerian Koperasi dan UKM dengan tema \"Pemasyarakatan Inkubasi Bagi Calon Wirausaha Digital\"', '2022/09/08', 'Pembicara (Mas Danu)', 'PERMOHONAN', '2022/09/09', '13.00 WIB', 'Indah Palace Hotel'),
(1288, '022.Sept/2022', '361/005/IX/2022', '2022-09-05', 'Undangan Rapat Pembahasan Laporan Akhir MONEV RINDUK KELITBANGAN Surakarta', 'Balitbangda Pemkot Surakarta', 'Rapat Pembahasan Laporan Akhir MONEV RINDUK KELITBANGAN Surakarta', '2022/09/08', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/09', '09.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1289, '023.Sept/2022', NULL, '2022-09-11', 'Permohonan Pinjam Pakai Area Solo Technnoprk', 'Shopee Express', 'Kegiatan test drive (15 Kandidat)', '2022/09/12', 'Fasilitasi (M.Danang)', 'PERMOHONAN', 'Sabtu & Minggu, 17-18 September 2022', '09.00 - 16.00 WIB', 'STP'),
(1290, '024.Sept/2022', '010/ITB.Y/SKU/IX/2022', '2022-09-09', 'Permohonan Kunjungan Studi Ekskursi', 'Institut Teknologi dan Bisnis Yadika Pasuruan', 'Kunjungan Studi Ekskursi Mahasiswa', '2022/09/12', 'Fasilitasi (M.Budi)', 'KUNJUNGAN', '2022/09/23', '14.00 WIB - selesai', 'STP'),
(1291, '025.Sept/2022', '01/AST/ICE/08/22', '0000-00-00', 'Permohonan Audiensi dan Dukungan atas Penyelenggaraan Indonesia Coffee Event League 2022/2023 Surakarta', 'ASTERY', 'Permohonan Audiensi dan Dukungan atas Penyelenggaraan Indonesia Coffee Event League 2022/2023 Surakarta', '2022/09/12', 'Fasilitasi Free (Mas Susilo, Mas Danang)', 'PERMOHONAN', NULL, NULL, NULL),
(1292, '026.Sept/2022', 'TM.00.05/3603/2022', '2022-09-12', 'Undangan', 'Setda', 'Rapat Koordinasi Dukungan Side Event acara Indo Smart City di Kota Surakarta', '2022/09/12', 'Sudah dihadiri (Mas Susilo)', 'UNDANGAN', '2022/09/13', '10.30 WIB', 'Bagian Tata Pemerintahan Setda Kota Surakarta'),
(1293, '027.Sept/2022', '370/005/IX/2022', '2022-09-09', 'Undangan Rapat Pembahasan Laporan Pendahuluan Penyusunan Monitoring dan Evaluasi Smart City Kota Surakarta Tahun 2022', 'Balitbangda Surakarta', 'Undangan Rapat Pembahasan Laporan Pendahuluan Penyusunan Monitoring dan Evaluasi Smart City Kota Surakarta Tahun 2022 (Pak Christian)', '2022/09/13', 'Hadiri (Pak Christian)', 'UNDANGAN', '2022/09/14', '12.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1294, '028.Sept/2022', '374/005/IX/2022', '2022-09-12', 'Undangan Rapat Koordinasi Persiapan Kegiatan Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi Tahun 2022', 'Balitbangda Surakarta', 'Undangan Rapat Koordinasi Persiapan Kegiatan Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi Tahun 2022 (Pak Yudit, Pak Danu)', '2022/09/13', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/15', '12.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1295, '029.Sept/2022', '375/005/IX/2022', NULL, 'Undangan Rapat Koordinasi Persiapan Kegiatan Pendampingan Implementasi Prototype Hasil Lomba Krenova Tahun 2022', 'Balitbangda Surakarta', 'Undangan Rapat Koordinasi Persiapan Kegiatan Pendampingan Implementasi Prototype Hasil Lomba Krenova Tahun 2022 (Pak Yudit, Pak Susilo, Pak Zubaidi, Pak Soekma)', '2022/09/13', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/15', '09.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1296, '030.Sept/2022', '02/AST/ICE/09/2022', '2022-09-06', 'Permohonan Surat Rekomendasi Dukungan Penyelenggaraan Indonesia Coffee Event League', 'ASTERY', 'Permohonan Surat Rekomendasi Dukungan Penyelenggaraan Indonesia Coffee Event League', '2022/09/13', NULL, 'PRMOHONAN', '29 September - 3 Oktober 2022', NULL, 'STP'),
(1297, '031.Sept/2022', '326/RP.03/IX/2022', '2022-09-13', 'Undangan Desk Pelaporan Simdalbangda Bulan Agustus Tahun 2022', 'Setda', 'Undangan Desk Pelaporan Simdalbangda Bulan Agustus Tahun 2022', '2022/09/14', 'Bagian Keuangan Hadiri (Bu.Susi)', 'UNDANGAN', '2022/09/15', '08.30 - 14.30 WIB', 'Zoom Meeting (Room 3 Tanjung)'),
(1298, '032.Sept/2022', '003/SYEF/IX/2022', '2022-09-14', 'Permohonan peminjaman tempat', 'Youth Reinforcement Program', 'Untuk mengadakan Solo Youth Edutech Festival (SYEF) 2022 dengan tema \"Develop Your Skills, Elevate Your Career\"', '2022/09/14', 'Bagian kerjasama fasilitasi, beri penawaran (m susilo)', 'PERMOHONAN', 'Kamis - Sabtu, 3 - 5 November 2022', '10.00 - 20.00 WIB', 'STP'),
(1299, '033.Sept/2022', '379/005/IX/2022', '2022-09-13', 'Undangan Pembahasan Draf Surat Keputusan Walikota Surakarta tentang besaran Remunetasi Pejabat Pengelola dan Pegawai Non Pegawai negeri Sipil BLUD UPT Solo Technopark pada Balitbangda Kota Surakarta 2022', 'Balitbangda', 'Undangan Pembahasan Draf Surat Keputusan Walikota Surakarta tentang besaran Remunetasi Pejabat Pengelola dan Pegawai Non Pegawai negeri Sipil BLUD UPT Solo Technopark pada Balitbangda Kota Surakarta 2022', '14-Ssep-22', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/15', '10.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1300, '034.Sept/2022', 'TM.00.07/317/IX/2022', '2022-09-13', 'Undangan keperluan Bimtek Penyusunan RKA Tahun 2023', 'BPKAD', 'Keperluan Bimtek Penyusunan RKA Tahun 2023', '2022/09/14', 'Hadiri (Bu.Susi)', 'UNDANGAN', '2022/09/14', '10.00 WIB - selesai', 'Emerald Ballroom Hotel Solo Paragon'),
(1301, '035.Sept/2022', 'TM.00.07/318/IX/2022', '2022-09-13', 'Undangan keperluan Bimtek Penyusunan RKA Tahun 2023', 'BPKAD', 'Keperluan Bimtek Penyusunan RKA Tahun 2023', '2022/09/14', 'Hadiri (Bu.Susi)', 'UNDANGAN', 'Kamis - Jumat, 15 - 16 September 2022', '10.00 WIB - selesai', 'The Sunan Hotel'),
(1302, '036.Sept/2022', 'TM.00.07/3642/2022', '2022-09-14', 'Undangan Rapat Koordinasi Lanjutan Dukungan Side Event acara Indo Smart City di Kota Surakarta', 'Setda', 'Rapat Koordinasi Lanjutan Dukungan Side Event acara Indo Smart City di Kota Surakarta', '2022/09/15', 'Hadiri (m.Susilo)', 'UNDANGAN', '2022/09/15', '13.00 WIB', 'Ruang Manganti Praja'),
(1303, '037.Sept/2022', 'TM.00/3643/2022', '2023-09-22', 'Identifikasi dan Pemetaan Urusan Pemerintahan yang akan dikerjasamakan', 'Setda', 'Identifikasi dan Pemetaan Urusan Pemerintahan yang akan dikerjasamakan', '2022/09/15', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(1304, '038.Sept/2022', 'KD.01.02/3627/2022', '2022-09-13', 'Permintaan Data BLUD', 'Setda', 'Permintaan Data BLUD', '2022/09/15', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(1305, '039.Sept/2022', '383/005/IX/2022', '2022-09-15', 'Undangan Finalisasi dan Tindak Lanjut Draft PKS Bangun Guna Serah antara Pemkot Surakarta dengan PT. Shopee Internasional Indonesia', 'Balitbangda', 'Undangan Finalisasi dan Tindak Lanjut Draft PKS Bangun Guna Serah antara Pemkot Surakarta dengan PT. Shopee Internasional Indonesia', '2022/09/15', 'Arsipkan', 'UNDANGAN', '2022/09/16', '08.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1306, '040.Sept/2022', 'KM/2627/IX/2022', '2022-09-14', 'Undangan FGD dalam acara Focus Group Discussion Digital Entrepreneur Community Learning', 'Pemkot Dinas Koperasi, Usaha Kecil dan Menengah dan Perindustrian', 'Undangan FGD dalam acara Focus Group Discussion Digital Entrepreneur Community Learning', '2022/09/15', 'Arsipkan', 'UNDANGAN', '2022/09/16', '08.30 WIB - selesai', 'Aula Dinas Koperasi UKM Kota Surakarta'),
(1307, '041.Sept/2022', '388/KRENOV/IX/2022', '2022-09-15', 'Pinjam Tempat dan Sarpras Lomba Krenova Subosukawonosraten.', 'Balitbangda', 'Loading dan Gladi Bersih Lomba Krenova Kategori Masyarakat Umum Se Subosukawonosraten Tahun 2022. Selasa, 4 Oktober 2022. Jam 08.00 WIB - selesai. ( 30 Peserta ). Pelaksanaan Lomba Krenova Hari Rabu, 5 Oktober 2022. Jam 07.00 WIB - selesai. ( 120 Peserta ', '2022/09/16', 'Fasilitas (m. Susilo, m.Danu)', 'PERMOHONAN', 'Selasa-Rabu, 4 - 5 Oktober 2022', '08.00 WIB - selesai, dan 07.00 WIB - selesai', NULL),
(1308, '042.Sept/2022', 'B/930/BPSDMI/AKOM-Surakarta/PP/IX/2022', '2022-09-14', 'Undangan Wisuda', 'Ak-Tekstil', 'Undangan Wisuda Angkatan Ke VI Ak-Tekstil Solo Tahun 2022', '2022/09/16', 'Sudah dihadiri', 'UNDANGAN', '2022/09/22', '08.00 - 13.00 WIB', 'Hotel Grand Mercure Solo Baru'),
(1309, '043.Sept/2022', '1069.D.2-III/TA/IX/2022', '2022-09-15', 'Permohonan ijin penelitian/survey/mencari data pada instansi', 'UMS', 'Permohonan Ijin Penelitian /Survey/mencari data pada Instansi', '2022/09/16', 'Fasilitas (m.Budi, m.Cristian)', 'PERMOHONAN', NULL, NULL, NULL),
(1310, '044.Sept/2022', '1070.D.2-III/TA/IX/2022', '2022-09-15', 'Permohonan ijin penelitian/survey/mencari data pada instansi', 'UMS', 'Permohonan Ijin Penelitian /Survey/mencari data pada Instansi', '2022/09/16', 'Fasilitas (m.Budi, m.Cristian)', 'PERMOHONAN', NULL, NULL, NULL),
(1311, '045.Sept/2022', '518/IT 4.2/PP/2022', NULL, 'Izin Survey/Penelitian', 'ISI Yogyakarta', 'Izin Survey/Penelitian Tugas Akhir Perancangan Interior Solo Technopark', '2022/09/19', 'DiFasilitasi (m.Susilo, m.Danang)', 'PERMOHONAN', 'Sabtu - Jumat, 17 - 30 September 2022', NULL, NULL),
(1312, '046.Sept/2022', 'B/1093/KI/IX/2022', '2022-09-15', 'Monitoring dan EvaluasiPengelolaan Pengaduan Masyarakat', 'Diskominfo SP', 'Kegiatan Monitoring dan Evaluasi Admin dan Pengelola ULAS SP4N Lapor dan Lapor Mas Wali', '2022/09/19', NULL, 'UNDANGAN', 'Rabu-Kamis, 28-29 September 2022', NULL, 'Hotel Grand Serela'),
(1313, '047.Sept/2022', '001/AZKATOUR&TRAVEL/I/2022', NULL, 'Permohonan Kunjungan Industri', 'SMKN 1 BELITANG MADANG RAYA Sumatera Selatan', 'Permohonan Kunjungan Industri', '2022/09/21', 'Fasilitas (m.Budi, m.Cristian)', 'KUNJUNGAN', '2022/10/24', '10.00 WIB s.d selesai', NULL),
(1314, '048.Sept/2022', '17/PN/01.01/IX/2022', '2022-09-21', 'Undangan Sosialisasi KRAR 2022', 'Balitbangda', 'Sosialisasi Kompetisi Roket Air Tingkat Regional Surakarta Tahun 2022', '2022/09/21', 'Ani', 'UNDANGAN', '2022/09/23', '10.00 WIB - selesai', 'Zoom Meeting'),
(1315, '049.Sept/2022', '/60342.6/2022', '2022-09-21', 'Permohonan Literasi Produk Pegadaian', 'Pegadaian Syariah', 'Permohonan Literasi Produk Pegadaian', '2022/09/21', 'Bagian HRD ( BU LUSI) cari wadah untuk sosialisasi ke karyawan bisa kerjasama dgn briefing pagi awal bulan', 'PERMOHONAN', NULL, NULL, NULL),
(1316, '050.Sept/2022', '421/200/101.6.1.33/2022', '2022-09-21', 'Permohonan Kunjungan Industri', 'SMKN 13 Surabaya', 'Permohonan Kunjungan Industri', NULL, 'Fasilitas (m. Budi m. Cristian)', 'KUNJUNGAN', '2022/10/27', '09.00 - 11.00 WIB', NULL),
(1317, '051.Sept/2022', 'ISC-73/MST-IX/2022', '2022-09-19', 'Undangan & Update Informasi Kegiatan Kompetisi Roket Air Nasional ( KRAN ) 2023', 'Indonesia Science Center', 'Undangan & Update Informasi Kegiatan Kompetisi Roket Air Nasional ( KRAN ) 2023', '2022/09/22', '( m ani, m lusi)', 'UNDANGAN', '2022/10/04', '13.30', 'Zoom Meeting'),
(1318, '052.Sept/2022', 'PU.03/6792/IX/2022', '2022-09-22', 'Permohonan Tindak Lanjut Terkait Saluran Drainase Jl Ki Hajar Dewantara', 'DPUPR SKA', 'Melakukan Pengerukan Sedimen Saluran drainase pedestrian jalan Ki Hajar Dewantara didepan Solo Technopark', '2022/09/22', 'Info Drainase (m susilo, m danang)', 'PERMOHONAN', '2022/09/02', NULL, NULL),
(1319, '053.Sept/2022', '87/UN27.13/PT.01.04/2022', '2022-09-21', 'Permohonan Ijin Pra Penelitian a.n Dian Kusuma Kristinanda G0119028', 'UNS', 'Permohonan Ijin Pra Penelitian a.n Dian Kusuma Kristinanda G0119028', '2022/09/22', 'ARD Fasilitasi (bu lusi)', 'KUNJUNGAN', NULL, NULL, NULL),
(1320, '054.Sept/2022', 'KD.01.02/1070/IX/2022', '2022-09-23', 'Undangan Pembahasan awal Kajian Perubahan Hukum UPT. Kawasan Sains dan Teknologi', 'Sekretariat Daerah', 'Undangan Pembahasan awal Kajian Perubahan Hukum UPT. Kawasan Sains dan Teknologi', '2022/09/23', 'Sudah dihadiri', 'UNDANGAN', '2022/09/26', '09.00 WIB - selesai', 'RR. Bagian Perekonomian dan SDA Setda Kota Surakarta'),
(1321, '055.Sept/2022', 'PE.01.04/56 70/2022', '2022-09-14', 'Undangan Rapat Persiapan FGD Akses Permodalan Bagi Pelaku Ekonomi Sub Sektor Seni Pertunjukkan dan Film.', 'Dinas Kebudayaan dan Pariwisata', 'Undangan Rapat Persiapan FGD Akses Permodalan Bagi Pelaku Ekonomi Sub Sektor Seni Pertunjukkan dan Film.', '2022/09/26', 'Sudah Terlewat', 'UNDANGAN', '2022/09/26', '10.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1322, '056.Sept/2022', '411/PN.02.00/IX/2022', '2022-09-23', 'Pinjam tempat dan sarpras lomba krenova subosukawonosraten.', 'Balitbangda', 'Pelaksanaan technical meeting lomba krenova kategori masyarakat umum se subosukawonosraten tahun 2022. (50 peserta)', '2022/09/26', 'Sudah Dihadiri', 'PERMOHONAN', '2022/09/29', '09.00 WIB - selesai', NULL),
(1323, '057.Sept/2022', '414/005/IX/2022', '2022-09-26', 'Undangan Rapat Koordinasi seleksi produk hasil lomba krenova', 'Balitbangda', 'Undangan Rapat Koordinasi seleksi produk hasil lomba krenova', '2022/09/26', 'Sudah Dihadiri', 'UNDANGAN', 'Selasa, 27 Seotember 2022', '12.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1324, '058.Sept/2022', '415/005/IX/2022', '2022-09-26', 'Undangan verifikasi SOP Balitbangda kota Surakarta', 'Balitbangda', 'Undangan verifikasi SOP Balitbangda kota Surakarta', '2022/09/26', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/28', '12.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1325, '059.Sept/2022', 'PE.01.04/3741/2022', '2022-09-20', 'Undangan opening ceremony solo great sale 2022', 'Sekretariat Daerah', 'Undangan opening ceremony solo great sale 2022', '2022/09/26', 'Sudah Selesai Arsipkan', 'UNDANGAN', '2022/09/25', '06.00 WIB - selesai', 'CFD Depan Loji Gandrung Rumah Dinas Walkot Surakarta'),
(1326, '060.Sept/2022', '419/005/IX/2022', '2022-09-26', 'Undangan Rapat persiapan dan evaluasi hasil hilirisasi riset', 'Balitbangda', 'Undangan Rapat persiapan dan evaluasi hasil hilirisasi riset', '2022/09/27', NULL, 'UNDANGAN', '2022/09/28', '12.30 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1327, '061.Sept/2022', 'B/1946/KI/IX/2022', '2022-09-23', 'Ralat Monitoring dan evaluasi pengelolaan pengaduan masyarakat (di undur)', 'DISKOMINFO', 'Ralat Monitoring dan evaluasi pengelolaan pengaduan masyarakat (di undur)', '2022/09/27', 'Hadiri (mbak Ani)', 'UNDANGAN', 'Selasa - Rabu, 11 - 12 Oktober 2022', NULL, 'Hotel Grand serela Yogyakarta'),
(1328, '062.Sept/2022', '410/005/IX/2022', '2022-09-23', 'Undangan rapat koordinasi pelaksanaan lomba krenova kategori masyarakat umum se subosukawonosraten dan pembahasan teknis penjurian', 'Balitbangda', 'Undangan rapat koordinasi pelaksanaan lomba krenova kategori masyarakat umum se subosukawonosraten dan pembahasan teknis penjurian', '2022/09/27', 'Sudah Dihadiri', 'UNDANGAN', 'Selasa, 27 Seotember 2022', '09.00 WIB - selesai', 'Ruang Rapat Balitbangda'),
(1329, '063.Sept/2022', '1365/S2/AK/2022', '2022-09-21', 'Permohonan Izin magang industri', 'UNISRI', 'Permohonan Izin magang industri', '2022/09/27', 'Fasilitasi kalau dibutuhkan untuk membuat laporan', 'PERMOHONAN', '07 Nv - 23 Des 2022', NULL, NULL),
(1330, '064.Sept/2022', '1500/UN10.B100/TU/2022', '2022-09-26', 'Permohonan Kunjungan Benchmarking', 'Universitas Brawijaya', 'Permohonan Kunjungan Benchmarking', '2022/09/27', 'Fasilitasi (p christian, p budi)', 'KUNJUNGAN', '2022/10/19', '10.00 WIB - selesai', NULL),
(1331, '065.Sept/2022', NULL, '2022-09-27', 'Kunjungan Kerja Industri (62 org)', 'SMK TARBIYATUS SHIBYAN', 'Kunjungan Kerja Industri (62 org)', '2022/09/27', 'Fasilitasi (p christian, p budi)', 'KUNJUNGAN', '2022/10/27', '08.30 WIB - selesai', NULL),
(1332, '066.Sept/2022', '51/AST/ICE/09/2022', '2022-09-28', 'Undangan Opening Ceremony Astery Coffe League', 'ASTERY', 'Undangan Opening Ceremony Astery Coffe League', '2022/09/29', 'Sudah Dihadiri', 'UNDANGAN', '2022/09/29', '09.00 - 11.00', 'Solo Technopark'),
(1333, '067.Sept/2022', 'TM.00.05/3801/2022', '2022-09-26', 'Undangan melaksanakan workshop pemetaan kerja sama daerah tahun 2023', 'Sekretariat Daerah', 'Undangan melaksanakan workshop pemetaan kerja sama daerah tahun 2023', '2022/09/30', 'Hadiri (m.Susilo)', 'UNDANGAN', '2022/10/04', '08.00 WIB - selesai', 'Haris Hotel & Conventions Solo'),
(1334, '068.Sept/2022', '560/OD.03.01', '2022-09-30', 'Undangan Rapat Pansus', 'DPRD KOTA SURAKARTA', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '2022/09/30', 'Hadiri (m.Reza) Info (m.Susilo)', 'UNDANGAN', '2022/10/03', '10.00 WIB', 'Ruang Rapat Badan Anggaran DPRD Kota Surakarta'),
(1335, '001.Oct/2022', '94/B.2/A.4/2022', '2022-09-30', 'Rencana Kunjungan Kerja untuk Pengumpulan Data dan Informasi Kajian Inovasi', 'Kementrian Investasi/BKPM', 'Rencana Kunjungan Kerja untuk Pengumpulan Data dan Informasi Kajian Inovasi', '03-Oct-22', 'Siapkan Data, Selasa ikut hadiri (p. Christian) (m. Danu)', 'KUNJUNGAN', '2022/10/04', '08.30 - 10. 30 WIB', NULL),
(1336, '002.Oct/2022', '107/103.27.SMK Nust.1/PP/X/2022', '0000-00-00', 'Undangan Workshop materi pembelajaran berbasis real dan materi infrastruktur dari dunia kerja', 'SMK NUSANTARA 1 COMEL', 'Undangan Workshop materi pembelajaran berbasis real dan materi infrastruktur dari dunia kerja', '03-Oct-22', 'Hadiri. (mas christian)', 'UNDANGAN', '2022/10/29', '08.00 WIB - selesai', 'SMK NUSANTARA 1 COMEL'),
(1337, '003.Oct/2022', '440/005/X/2022', '0000-00-00', 'Undangan Rapat koordinasi pelaksanaan kegiatan UPT BLUD Solo Technopark', 'Balitbangda', 'Undangan Rapat koordinasi pelaksanaan kegiatan UPT BLUD Solo Technopark', '03-Oct-22', NULL, 'UNDANGAN', '2022/10/04', '09.00 WIB', 'Ruang rapat Balitbangda'),
(1338, '004.Oct/2022', 'B/2009/KI/X/2022', '0000-00-00', 'Kegiatan monitoring dan evaluasi pengelolaan pengaduan masyarakat', 'Diskominfo', 'Berangkat bersama dengan armada bus ke hotel grand serela yogyakarta', '03-Oct-22', 'Hadiri. (m ani)', 'UNDANGAN', '2022/10/11', '07.15 WIB', 'Halaman Balaikota'),
(1339, '005.Oct/2022', 'PN.0.50/3857.1/2022', '2022-09-28', 'Undangan Kegiatan lomba krenova kategori masyarakat umum se subosukawonosraten', 'Sekretariat Daerah', '1. Pembukaan lomba krenova kategori masyarakat umum se subosukawonosraten. 2. Penutupan lomba krenova kategori masyarakat umum se subosukawonosraten.', '03-Oct-22', 'Fasilitasi (m susilo, m danang)', 'UNDANGAN', '2022/10/05', 'Pembukaan : 08.00 WIB. Penutupan : 15.00', 'Gedung Inkubator Bisnis Solo Technopark'),
(1340, '006.Oct/2022', '004/INRARE/VIII/2022', '0000-00-00', 'Permohonan pemasangan installasi', 'HMDI UNS', 'Pameran , creative sharing dan music performance. Acara pra event INRARE 2022', '03-Oct-22', 'mas susilo', 'PERMOHONAN', 'Jumat - Minggu, 14 - 16 Oktober 2022', '09.00 - 21.00 WIB', 'Hatero space'),
(1341, '007.Oct/2022', '441/PN.08/X/2022', '0000-00-00', 'Permohonan personil tambahan panitia lomba krenova se subosukowonosraten, tambahan 8 orang', 'Balitbangda', 'Permohonan personil tambahan panitia lomba krenova se subosukowonosraten, tambahan 8 orang', '04-Oct-22', 'Tambahan dialihkan dari mahasiswa MSIB kerjasama (P susilo,P danang)', 'PERMOHONAN', NULL, NULL, NULL),
(1342, '008.Oct/2022', '084/SCI-X/UMKM/2022', '0000-00-00', 'Izin kunjungan kerja', 'ID survey.SUCOFINDO', 'Verifikasi data dan dokumentasi program evaluasi kemitraan tahun 2020/2021. 2 orang', '04-Oct-22', 'Sudah ditemui', 'KUNJUNGAN', '2022/10/04', NULL, NULL),
(1343, '009.Oct/2022', 'KU.00/3941/2022', '0000-00-00', 'Undangan menyaksikan penyerahan DPPA tahun anggaran 2022', 'Sekretariat Daerah', 'Undangan menyaksikan penyerahan DPPA tahun anggaran 2022', '04-Oct-22', 'Keuangan Hadiri', 'UNDANGAN', '2022/10/06', '08.00 WIB', 'Pendapi Gedhe Balaikota SKA'),
(1344, '010.Oct/2022', '04/SMKMD/X/2022', '0000-00-00', 'Permohonan Kunjungan', 'SMK Masa Depan', 'Permohonan Kunjungan', '05-Oct-22', NULL, 'KUNJUNGAN', '2022/10/06', '13.00 - 15.00 WIB', NULL),
(1345, '011.Oct/2022', '011.Oct/2022-SRT-0307/SKKMI6000/2022/S0', '0000-00-00', 'Alat peraga hulu', 'SKK Migas', 'menggunakan sementara beberapa alat peraga hulu migas yang berada di Migas Corner STP. alat peraga yang akan digunakan maket hulu - hilir minyak dan gas bumi.', '06-Oct-22', 'Sudah', 'PERMOHONAN', 'Jumat - Kamis, 7 - 13 Oktober 2022.', NULL, 'Jatim fair'),
(1346, '012.Oct/2022', '445/005/X/2022', '0000-00-00', 'Undangan seleksi presentasi calon peserta pendampingan hilirisasi hasil riset perguruan tinggi tahun 2022', 'Balitbangda', 'Undangan seleksi presentasi calon peserta pendampingan hilirisasi hasil riset perguruan tinggi tahun 2022', '06-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/07', '08.30 WIB', 'Gedung STC Solo Technopark'),
(1347, '013.Oct/2022', 'TM.00.07/357/X/2022', '0000-00-00', 'Undangan FGD dan inputing data sistem persediaan tahun anggaran 2022', 'BPPKD', 'Undangan FGD dan inputing data sistem persediaan tahun anggaran 2022', '10-Oct-22', 'Keuangan ( bu susi. M budi)', 'UNDANGAN', 'Senin - Selasa , 10 -11 Oktober 2022', '08.00 WIB', 'The Sunan Hotel Solo'),
(1348, '014.Oct/2022', NULL, '0000-00-00', 'Peminjaman tempat ruang seminar besar gedung STC untuk kegiatan kampus UMKM Shopee solo', 'PT Shopee International Indonesia', 'Kunjungan universitas muhammadiyan cirebon (120 Orang)', '10-Oct-22', 'Diterima (m susilo)', 'PERMOHONAN', '2022/11/05', '08.00 - 12.00', 'Ruang Seminar Besar Gedung STC'),
(1349, '015.Oct/2022', '0240/I.b/UMC-DK.FE/X/2022', '0000-00-00', 'Permohonan kunjungan ke kampus UMKM Shopee Ekspor Solo', 'Universitas Muhammadiyan Cirebon', 'Permohonan kunjungan ke kampus UMKM Shopee Ekspor Solo (124 Orang)', '10-Oct-22', 'Diterima (m susilo)', 'KUNJUNGAN', '2022/11/05', '08.00 - 12.00', NULL),
(1350, '016.Oct/2022', 'B-815/SD.4/WU/X/2022', '0000-00-00', 'Undangan Sosialisasi perpres RI No2 tahun 2022', 'KEMENKOPUKM', 'Undangan Sosialisasi perpres RI No2 tahun 2022', '10-Oct-22', 'Hadiri ( mas danu)', 'UNDANGAN', '2022/10/12', '08.30 WIB - selesai', 'Lor in Hotel Solo'),
(1351, '017.Oct/2022', '896/IT2.B07.5/KS/2022', '0000-00-00', 'Permohonan kunjungan ke solo technopark', 'ITB', 'Benchmarking stadium game developer di solo technopark. (19 orang)', '10-Oct-22', 'Bagian kerjasama & inkubasi fasilitasi ( m susilo, m danu)', 'PERMOHONAN', '2022/10/27', '09.00 - selesai', NULL),
(1352, '018.Oct/2022', '518.3/9.114', '0000-00-00', 'Kunjungan studi tiru digitalisasi UMKM', 'DINNAKERKOPUKM Banyumas', 'Kunjungan studi tiru digitalisasi UMKM. (40 orang)', '10-Oct-22', 'Diterima ( yudit,danu)', 'KUNJUNGAN', '2022/10/15', '09.00 - selesai', NULL),
(1353, '019.Oct/2022', '0403/BAAK.AK.7/TK/X/2022', '0000-00-00', 'Permohonan magang/PKL, Teknik Komputer', 'Politama', 'Permohonan magang/PKL, Teknik Komputer', '10-Oct-22', 'Diterima ( m christian)', 'PERMOHONAN', 'Februari - Juli 2023', NULL, NULL),
(1354, '020.Oct/2022', '1519/S2/AK/2022', '0000-00-00', 'Permohonan Izin magang industri', 'UNISRI', 'Permohonan Izin magang industri', '10-Oct-22', 'Magang Diterima ( mas christian, pak yudit)', 'PERMOHONAN', '7 November - 23 Desember 2022', NULL, NULL),
(1355, '021.Oct/2022', '421.2/SK-IU/SDICT-AA/IX/2022', '0000-00-00', 'Permohonan kunjungan kegiatan outing class', 'SDICT AL ABIDIN', 'Permohonan kunjungan kegiatan outing class', '10-Oct-22', 'Diterima SSC (mbak ani, mbak lusi, MSIB)', 'KUNJUNGAN', 'Rabu,19 Oktober 2022', '08.00 - 11.00 WIB', 'STP'),
(1356, '022.Oct/2022', '0417/BAAK.01/AK.7/TK/X/2022', '0000-00-00', 'Permohonan magang/PKL, Teknik Komputer', 'Politama', 'Permohonan magang/PKL, Teknik Komputer', '11-Oct-22', 'Bagian diklat fasilitasi (m christian, m budi)', 'PERMOHONAN', 'Februari - Juli 2023', NULL, NULL),
(1357, '023.Oct/2022', '01.3/SPm/KAFEGAMA/VI/2022', '2022-06-02', 'Partisipasi ilan display pada buku KAFEGAMA', 'KAFEGAMA (UGM,Yogyakarta)', 'Partisipasi ilan display pada buku KAFEGAMA', '11-Oct-22', 'Arsipkan tidak diambil (m ani)', 'PERMOHONAN', NULL, NULL, NULL),
(1358, '024.Oct/2022', '421/4984', '0000-00-00', 'Permohonan ijin kunjungan dan peminjaman tempat', 'SKMKN 2 DEPOK SLEMAN', 'Permohonan ijin kunjungan dan peminjaman tempat . (50 guru)', '13-Oct-22', 'Bagian kerjasama (m susilo, m danang)', 'PERMOHONAN', '2022/10/18', '09.00 - selesai', NULL),
(1359, '025.Oct/2022', '386/RP.05/X/2022', '0000-00-00', 'Undangan pelatihan dan pengisian aplikasi simdalbangda perubahan v.4 tahun anggaran 2022', 'Sekretariat Daerah', 'Undangan pelatihan dan pengisian aplikasi simdalbangda perubahan v.4 tahun anggaran 2022', '13-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/12', '10.30 - 12.00', 'Ruang rapat menganti praja urakarta'),
(1360, '026.Oct/2022', '387/RP.05/X/2022', '0000-00-00', 'Undangan desk pelaporan simdalbangda bulan september tahun 2022', 'Sekretariat Daerah', 'Undangan desk pelaporan simdalbangda bulan september tahun 2022', '13-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/12', NULL, 'Ruang rapat menganti praja urakarta'),
(1361, '027.Oct/2022', '002/G/ET BEM/FT UNY/VIII/2022', '0000-00-00', 'Permmohonan kunjungan industri', 'UNY', 'Pelaksanaan kegiatan \"Engineering Tour\"', '13-Oct-22', 'Bagian pelayanan diklat (m christian, m budi)', 'KUNJUNGAN', '2022/10/17', '09.30 - 11.10 WIB', 'STP'),
(1362, '028.Oct/2022', '608/OD.03.01', '0000-00-00', 'Undangan Rapat pansus', 'DPRD KOTA SURAKARTA', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '13-Oct-22', 'Sudah dihadiri(m reza)', 'UNDANGAN', '2022/10/14', '18.00 WIB', 'Gedung Graha Padipurna DPRD Kota Surakarta'),
(1363, '029.Oct/2022', 'B747/IKMA.3/IND/X/2022', '0000-00-00', 'Undangan talkshow strategi industri kecil dan menengah naik kelas', 'Kementrian perindustrian', 'Undangan talkshow strategi industri kecil dan menengah naik kelas', '13-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/14', '15.30 WIB - selesai', 'Canting Londo Kitchen'),
(1364, '030.Oct/2022', '041/SK/SIH/X/2022', '0000-00-00', 'Tanggapan atas surat UPT Solo Technopark Nomor 1/PN.01.01/X/2022', 'Kantor jasa penilai publik, SIH WIRYADI & REKAN', 'Tanggapan atas surat UPT Solo Technopark Nomor 1/PN.01.01/X/2022', '13-Oct-22', 'Bagian kerjasama & liga (m susilo, m reza)', NULL, NULL, NULL, NULL),
(1365, '031.Oct/2022', 'B-11648/II.8.5/TU.01.01/10/2022', '0000-00-00', 'Permohonan kunjungan', 'BRIN', 'Menindak lanjuti hasil temu pengelola science center tahap III (3 orang)', '13-Oct-22', 'Diterima (m christian, m ani)', 'KUNJUNGAN', '2022/10/27', '09.00 - selesai', NULL),
(1366, '032.Oct/2022', 'TM.00.05/411/2022', '0000-00-00', 'Undangnan mlampah mlampah ing kampung wisata batik kauman solo', 'Sekretariat Daerah', 'Undangnan mlampah mlampah ing kampung wisata batik kauman solo', '13-Oct-22', 'Sudah dihadiri', 'UNDANGAN', 'Kaamis, 13 Oktober 2022', '06.00 WIB', 'Halaman alaikota surakarta'),
(1367, '033.Oct/2022', '721/M.3/12-SMK/X/2022', '0000-00-00', 'Permohonan Praktik kerja industri', 'SMK PGRI 1 NGAWI', 'Permohonan Praktik kerja industri', '13-Oct-22', 'Bagian diklat fasilitasi (m christian, m budi)', 'PERMOHONAN', '2 Januari 2023 - 25 Maret 2023', NULL, NULL),
(1368, '034.Oct/2022', '171/APEKSI/IX/2022', '2022-09-26', 'Permohonan narasumber indo smart city APEKSI 2022.', 'APEKSI', 'Permohonan narasumber indo smart city APEKSI 2022.', '13-Oct-22', 'Sudah dihadiri', 'PERMOHONAN', '2022/10/14', '09.00 - 10.30 WIB', NULL),
(1369, '035.Oct/2022', 'TM.00.07/365/X/2022', '0000-00-00', 'Undangan teknis penyusunan APBD tahun anggaran 2023', 'BPPKAD', 'Undangan teknis penyusunan APBD tahun anggaran 2023', '13-Oct-22', 'Bagian keuangan hadiri (bu susi, m agus)', 'UNDANGAN', '2022/10/17', '08.30 WIB - selesai', 'Ballroom Swiss-Bellin Saripetojo Hotel Solo'),
(1370, '036.Oct/2022', '465/005/X/2022', '0000-00-00', 'Undangan rapat pembahasan lanjutan perjanjian sewa menyewa gedung Ex Teaching Factory kawasan solo technopark antara UPT solo technopark dengan PT.shopee internasional indonesia.', 'Balitbangda', 'Undangan rapat pembahasan lanjutan perjanjian sewa menyewa gedung Ex Teaching Factory kawasan solo technopark antara UPT solo technopark dengan PT.shopee internasional indonesia.', '14-Oct-22', 'Sudah dihadiri', 'UNDANGAN', 'Kaamis, 13 Oktober 2022', '09.00 - selesai', 'Ruang rapat balitbangda'),
(1371, '037.Oct/2022', '468/005/X/2022', '0000-00-00', 'Undangan rapat pembahasan rencana pengembangan prototype dan penjelasan pengumuman RAB.', 'Balitbangda', 'Undangan rapat pembahasan rencana pengembangan prototype dan penjelasan pengumuman RAB.', '14-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/14', '08.30 WIB - selesai', 'ruang meeting 1'),
(1372, '038.Oct/2022', '608.1/OD.03.01', '0000-00-00', 'Undangan Rapat pansus', 'DPRD KOTA SURAKARTA', 'Rapat Kerja Pansus Raperda tentang Fasilitasi Penyelenggaraan Pesantren', '14-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/14', '15.00-selesai', 'Gedung Graha Padipurna DPRD Kota Surakarta'),
(1373, '039.Oct/2022', '066/I03.01/SMK.K/P/2022', '0000-00-00', 'Permohonan kunjungan industri', 'SMK GIRIPURO Banyumas', 'Permohonan kunjungan industri (140 orang)', '17-Oct-22', 'Bagian diklat ( m christian, m budi)', 'KUNJUNGAN', 'Selasa,25 Oktober 2022', 'menyesuaikan', NULL),
(1374, '040.Oct/2022', 'RP.05/4171/2022', '0000-00-00', 'Undangan rapat koordinasi pengendalian operasional kegiatan (RAKOPROK) APBD triwulan III tahun anggaran 2022', 'Sekretariat Daerah', 'Undangan rapat koordinasi pengendalian operasional kegiatan (RAKOPROK) APBD triwulan III tahun anggaran 2022', '17-Oct-22', NULL, 'UNDANGAN', '2022/10/17', '09.00 - selesai', 'Balai Tawangarum Kompel Balaikota Surakarta'),
(1375, '041.Oct/2022', '015/I03.13/SMK YP Col/PSG/2022', '0000-00-00', 'Permohonan PKL. Teknik Pemesinan', 'SMK YP COLOMADU', 'Permohonan PKL. Teknik Pemesinan (2 orang)', '17-Oct-22', 'Fasilitasi (m christian, m budi)', 'PERMOHONAN', '2 Januari - 31 Maret 2023', NULL, NULL),
(1376, '042.Oct/2022', 'KU.00/4015/2022', '0000-00-00', 'Percepatan penyerapan anggaran dan realisasi belanja anggaran pendapatan dan belanja daerah perubahan ( APBD-P ) tahun anggaran 2022', 'Sekretariat Daerah', 'Percepatan penyerapan anggaran dan realisasi belanja anggaran pendapatan dan belanja daerah perubahan ( APBD-P ) tahun anggaran 2022', '17-Oct-22', 'Bagian Keuangan (bu susi, m agus)', NULL, NULL, NULL, NULL),
(1377, '043.Oct/2022', '2999/PE.04/X/2022', '0000-00-00', 'Undangan FGD komite ekonomi kreatif bidang riset, pendataan, pendidikan dan pelatihan dengan tema \" pemanfaatan potensi event kata dalam pengembangan ekonomi kreatif\"', 'BAPPEDA', 'Undangan FGD komite ekonomi kreatif bidang riset, pendataan, pendidikan dan pelatihan dengan tema \" pemanfaatan potensi event kata dalam pengembangan ekonomi kreatif\"', '17-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/20', '09.00 WIB - selesai', 'Hotel Loji'),
(1378, '044.Oct/2022', '44.5/47/SMK-BP 3 WIL V', '0000-00-00', 'Permohonan kunjungan industri', 'SMKN 1 Palasah Majalengka', 'Permohonan kunjungan industri (271 orang)', '17-Oct-22', 'Bagian pelayanan / diklat fasilitasi (m christian, m budi)', 'KUNJUNGAN', '2022/11/15', '08.00 - selesai', NULL),
(1379, '045.Oct/2022', 'DIS.01.01/B03030100/2022', '0000-00-00', 'Informasi pemeliharaan jaringan listrik', 'PLN', 'Informasi pemeliharaan jaringan listrik', '17-Oct-22', 'Segera infokan (m danang,m susilo)', NULL, '2022/10/18', '10.00 - 13.00', NULL),
(1380, '046.Oct/2022', '481/005/X/2022', '0000-00-00', 'undangan Rakor Percepatan Kegiatan Pengadaan Barang dan Jasa Solo Technopark Tahun 2022 dan 2023', 'Balitbangda', 'undangan Rakor Percepatan Kegiatan Pengadaan Barang dan Jasa Solo Technopark Tahun 2022 dan 2023', '17-Oct-22', 'Sudah dihadiri', NULL, '2022/10/18', '12.30 WIB - selesai', 'Ruang rapat balitbang'),
(1381, '047.Oct/2022', '071/A-1/DKV ACT-8/IX/2022', '0000-00-00', 'Undangan opening ceremony dalam main event pameran DKV ACT 8 \"Genap\"', 'DKV ISI Surakarta', 'Undangan opening ceremony dalam main event pameran DKV ACT 8 \"Genap\"', '18-Oct-22', 'Bagian inkubasi tolong dihadiri (m danu) siapkan sambutan', NULL, '2022/10/28', '14.00 WIB', NULL),
(1382, '048.Oct/2022', 'SRT.0555/SKKMI7000/2022/S0', '0000-00-00', 'Undangan pertemnuan pembahasan implementasi nota kesepakatan antara SKK Migas dan pemerintah kabupaten kartanegara.', 'SKK Migas', 'pembahasan implementasi nota kesepakatan tentang penyellenggaraan peningkatan kapasitas sumber daya manusia bidang hulu minyak dan gas bumi di kabupaten kartanegara.', '18-Oct-22', 'Infokan panitia tidak bisa hadir', 'UNDANGAN', '2022/10/20', '14.00 - 15.30 WIB', 'JW Marriot Hotel Surabaya'),
(1383, '049.Oct/2022', 'UP.04.01/3482-33.72/X/2022', '0000-00-00', 'Permohonan pinjam tempat untuk parkir, dalam rangka peringatan HANTARU mengadakan bazar UMKM.', 'BPN surakarta', 'Permohonan pinjam tempat untuk parkir, dalam rangka peringatan HANTARU mengadakan bazar UMKM.', '18-Oct-22', 'bagian umum persiapkan (p untung, m danang)', 'PERMOHONAN', '2022/10/21', '06.00 - 17.00 WIB', 'kantor petanahan'),
(1384, '050.Oct/2022', '1-102.14/PERUMDA.TS TJ/X/2022', '0000-00-00', 'Permohonan bantuan tanah urukan pembangunan ditaman satwa jurug surakarta memohon bantuan kurleb 150 truk dump', 'PERUMDA', 'Permohonan bantuan tanah urukan pembangunan ditaman satwa jurug surakarta memohon bantuan kurleb 150 truk dump', '18-Oct-22', 'bagian kawasan komunikasikan dengan shopee', 'PERMOHONAN', NULL, NULL, NULL),
(1385, '051.Oct/2022', 'PG.00.00/4217/2022', '0000-00-00', 'Surat edaran pemasangan logo dan peringatan hari sumpah pemuda ke-94 tahun 2022', 'Sekertariat Daerah', 'Surat edaran pemasangan logo dan peringatan hari sumpah pemuda ke-94 tahun 2022', '19-Oct-22', 'Bagian umum persiapkan(p untung)', NULL, NULL, NULL, NULL),
(1386, '052.Oct/2022', '4.2/D.PAN_KKI_05/SMK.SDL/X/2022', '0000-00-00', 'Permohonan Izin Kunjungan. 100 orang', 'NDANGAN', 'Permohonan Izin Kunjungan. 100 orang', '19-Oct-22', 'Bagian pelayanan dan diklat ( m shristian, m budi)', 'KUNJUNGAN', '2022/11/23', '08.30 - 11.00 WIB', NULL),
(1387, '053.Oct/2022', '1404/UN27.26/RT.02/2022', '0000-00-00', 'Permohonan peminjaman tempat acara UNS Innovation Festival di STP', 'UNS', 'Permohonan peminjaman tempat acara UNS Innovation Festival di STP', '19-Oct-22', 'Bagian kerjasama komunikasikan dengan UNS ( m susilo m danang', 'PERMOHONAN', NULL, NULL, NULL),
(1388, '054.Oct/2022', '420/171/411.405.302.Kosg/2022', '0000-00-00', 'Permohonan kunjungan industri. 51 Peserta', 'SMK KASGORO Nganjuk', 'Permohonan kunjungan industri. 51 Peserta', '19-Oct-22', 'Bagian pelayanan dan diklat ( m shristian, m budi)', 'KUNJUNGAN', '2022/12/20', NULL, 'STP'),
(1389, '055.Oct/2022', 'KD.01.03/4221/2022', '0000-00-00', 'Surat edaran pakta integritas fasilitas barang milik daerah', 'Sekretariat Daerah', 'Surat edaran pakta integritas fasilitas barang milik daerah', '20-Oct-22', 'Buat surat ( m ani, m budi)', NULL, NULL, NULL, NULL),
(1390, '056.Oct/2022', 'TM.0007/4311/2022', '0000-00-00', 'Undangan rapat pleno tim koordinasi kerjasama daerah (TKKSD) tahun 2022', 'Sekretariat Daerah', 'Undangan rapat pleno tim koordinasi kerjasama daerah (TKKSD) tahun 2022', '24-Oct-22', 'Bagian kerjasama ( m susilo)', 'UNDANGAN', '2022/10/25', NULL, 'Alila hotel & resort'),
(1391, '057.Oct/2022', 'KT 00/4266/2022', '0000-00-00', 'Undangan, Pengukuhan & penguatan kapasitas SDM forum Skill Development Centre (SDC)', 'Dinas Tenaga Kerja Kota Surakarta', 'Undangan, Pengukuhan & penguatan kapasitas SDM forum Skill Development Centre (SDC)', '24-Oct-22', NULL, 'UNDANGAN', '2022/10/25', NULL, 'Solia Zigna hotel laweyan'),
(1392, '058.Oct/2022', NULL, NULL, 'Penawaran menjadi lokasi tujuan study tour acara FTI+', 'Universitas Kristen Duta Wacana', 'Penawaran menjadi lokasi tujuan study tour acara FTI+', '24-Oct-22', 'Bagian kerjasama buat rencana kerja ( m susilo, m danang)', 'KUNJUNGAN', '2022/11/12', NULL, NULL),
(1393, '059.Oct/2022', '800/983/101.6.2.27/2022', '0000-00-00', 'Permohonan Izin Kunjungan Industri', 'SMKN 2 SUKOREJO', 'Permohonan Izin Kunjungan Industri (50 Org)', '24-Oct-22', 'Bagian pelayanan diklat fasilitasi ( m christian, m budi)', 'KUNJUNGAN', '2022/11/02', '12.00 - 14.00', NULL),
(1394, '060.Oct/2022', 'H.063/X/2022/SMK/K.XIX-1', '0000-00-00', 'Permohonan Kunjungan Industri. (141 orang)', 'SMK Kartika XIX-1 Bandung', 'Permohonan Kunjungan Industri. (141 orang)', '24-Oct-22', 'Bagian pelayanan dan diklat (m christian , m budi)', 'KUNJUNGAN', '2023/02/02', '08.00', NULL),
(1395, '061.Oct/2022', '494/005/X/2022', '0000-00-00', 'Undangan penilaian pemetaan daya saing daerah melalui zoom conference.', 'Balitbangda', 'Undangan penilaian pemetaan daya saing daerah melalui zoom conference.', '24-Oct-22', 'Bagian pelayanan tolong diwakili (m christian)', 'UNDANGAN', '2022/10/25', '08.30 - selesai', 'ruang rapat Balitbangda'),
(1396, '062.Oct/2022', '417/RP.05/X/2022', '0000-00-00', 'DESK LANJUTAN PELAPORAN SIMDALBANGDA BULAN SEPTEMBER TA.2022', 'Sekretariat Daerah', 'DESK LANJUTAN PELAPORAN SIMDALBANGDA BULAN SEPTEMBER TA.2022', '24-Oct-22', 'Bagian keuangan hadiri ( bu susi, m agus)', 'UNDANGAN', '2022/10/25', '13.00 - 15.00 WIB', 'Ruang rapat manganti praja'),
(1397, '063.Oct/2022', '01/PHS/X/2022', '0000-00-00', 'Permohonan Partisipasi HUT Satuan Pengamanan ke - 42 tahun 2022.', 'Kasat Binmas', 'Permohonan Partisipasi HUT Satuan Pengamanan ke - 42 tahun 2022.', '24-Oct-22', NULL, 'PERMOHONAN', NULL, NULL, NULL),
(1398, '064.Oct/2022', NULL, '0000-00-00', 'Pengajuan Proposal Kerjasama kegiatan Internasional Millenial Summit', 'KAMI Foundation', 'Pengajuan Proposal Kerjasama kegiatan Internasional Millenial Summit', '24-Oct-22', 'Bagian kerjasama buat kajian (m susilo)', 'PERMOHONAN', NULL, NULL, NULL),
(1399, '065.Oct/2022', '421.2/591/SMP/2022', '0000-00-00', 'Permohonan kunjungan sekolah h1 = 236 siswa, h2 = 251 siswa.', 'SMPN 3 Surakarta', 'Permohonan kunjungan sekolah h1 = 236 siswa, h2 = 251 siswa.', '25-Oct-22', 'Diterima bagian kerjasama fokus tarif (m ani, m susilo)', 'KUNJUNGAN', 'Senin dan Selasa, 7-8 November 2022', 'terlampir', NULL),
(1400, '066.Oct/2022', '3663/UN21.5/HM.00.01/2022', '0000-00-00', 'Permohonan izin kunjungan. (48 orang)', 'Universitas Jambi', 'Permohonan izin kunjungan. (48 orang)', '26-Oct-22', 'Sudah dilakukan', 'KUNJUNGAN', '2022/10/27', '14.00 WIB', NULL),
(1401, '067.Oct/2022', '/UN27.05/PT.01.01/2022', '0000-00-00', 'Melakukan perekaman vidio pemenuhan tugas mata kuliah public relation.', 'UNS', 'Melakukan perekaman vidio pemenuhan tugas mata kuliah public relation.', '26-Oct-22', 'Sudah dilakukan', 'PERMOHONAN', '2022/10/27', '13.00 - selesai', NULL),
(1402, '068.Oct/2022', '496/005/X/2022', '0000-00-00', 'Undangan rapat pendahuluan kajian dampak sosial dan lingkungan pembangunan islamic center kota Surakarta.', 'Balitbang Daerah', 'Undangan rapat pendahuluan kajian dampak sosial dan lingkungan pembangunan islamic center kota Surakarta.', '26-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/27', '13.00 - selesai', 'di ruang rapat balitbangda'),
(1403, '069.Oct/2022', '515/005/X/2022', '0000-00-00', 'Undangan rapat pendampingan II ( Sinkronisasi RAB dan finalisasi rencana pendampingan produksi)', 'Balitbang Daerah', 'Undangan rapat pendampingan II ( Sinkronisasi RAB dan finalisasi rencana pendampingan produksi)', '26-Oct-22', 'Sudah', 'UNDANGAN', '2022/10/28', '08.39 - selesai', 'Gedung STC Solo Technopark'),
(1404, '070.Oct/2022', '468/MP-ICMI Muda Pusat/X/2022', '0000-00-00', 'Permohonan berkunjung ke solo technopark (rakernas ICMI muda).', 'ICMI Muda Pusat', 'Permohonan berkunjung ke solo technopark (rakernas ICMI muda).', '27-Oct-22', 'Sudah dilakukan', 'KUNJUNGAN', '2022/10/29', '14.30 - selesai', NULL),
(1405, '071.Oct/2022', '514/005/X/2022', '0000-00-00', 'Undangan rapat pendampingan III ( Development produk )', 'Balitbangda', 'Undangan rapat pendampingan III ( Development produk )', '27-Oct-22', 'Sudah dihadiri', 'UNDANGAN', '2022/10/27', '09.00 - selesai', 'di STC'),
(1406, '072.Oct/2022', '6708/IT.64/HM.01.04/2022', '0000-00-00', 'Pernyataan kesanggupan perihal permohonan pinjam tempat yang telah diajukan ke UPT Solo Technopark terkait penyelenggaraan acara DKV ACT 8 \"Genap\".', 'ISI Surakarta DKV', 'Pernyataan kesanggupan perihal permohonan pinjam tempat yang telah diajukan ke UPT Solo Technopark terkait penyelenggaraan acara DKV ACT 8 \"Genap\".', '28-Oct-22', 'Bagian kerjasama (m susilo)', 'PERMOHONAN', NULL, NULL, NULL),
(1407, '073.Oct/2022', 'DA/02/SK.01/X/2022', '0000-00-00', 'Permohonan peminjaman ruang dan barang adanya permintaan kegiatan treasure hunting team building dari medco energi jakarta.', 'Dandelion Adventure', 'Permohonan peminjaman ruang dan barang adanya permintaan kegiatan treasure hunting team building dari medco energi jakarta.', '28-Oct-22', 'Bagian kerjasama & umum fasilitasi (m susilo, m danang)', 'PERMOHONAN', '2022/12/09', '07.30 - 13.00 WIB', NULL),
(1408, '074.Oct/2022', 'MD/952/2022', '0000-00-00', 'Permohonan Dukungan Acara Klarifikasi Lapangan Lomba Kelurahan Tingkat Regional di Kelurahan Jebres', 'Sekretariat Daerah', 'Permohonan Dukungan Acara Klarifikasi Lapangan Lomba Kelurahan Tingkat Regional di Kelurahan Jebres', '28-Oct-22', 'Sudah diarsipkan', 'PERMOHONAN', 'Senin - Rabu, 31 Okt - 2 Nov 2022', NULL, NULL),
(1409, '075.Oct/2022', NULL, '0000-00-00', 'Permohonan pinjam pakai area di STP guna kelanacaran test drive. (21 Orang)', 'Shopee Express', 'Permohonan pinjam pakai area di STP guna kelanacaran test drive. (21 Orang)', '28-Oct-22', 'Sudah dihadiri', 'PERMOHONAN', 'Sabtu & Minggu, 5-6 November 2022', '09.00 - 16.00 WIB', NULL),
(1410, '076.Oct/2022', '590/UN27.04.9.3/ICD/B/X/2022', '0000-00-00', 'Permohonan Magang. ( 1 orang ).', 'UNS', 'Permohonan Magang. ( 1 orang ).', '28-Oct-22', 'Bagian inkubator fasilitasi (m danu)', 'PERMOHONAN', '1 November - 2 Desember 2022', NULL, NULL),
(1411, '077.Oct/2022', '532/C.12/FTI/2022', '0000-00-00', 'Kunjungan study tour. kegiatan mahasiswa yakni FTI+ tahun 2022. (198 Orang)', 'Unisversitas Kristen Duta Wacana Yogyakarta', 'Kunjungan study tour. kegiatan mahasiswa yakni FTI+ tahun 2022. (198 Orang)', '31-Oct-22', 'Bagian pelayanan fasilitasi ( m christian )', 'KUNJUNGAN', '2022/11/11', '10.00 WIB', NULL),
(1412, '078.Oct/2022', 'email', '0000-00-00', 'Kunjungan untuk berdiskusi terkait program pelatihan dan sertifikasi minyak dan gas, guna pengembangan kompetensi para pekerja PT BSP yang saat ini dipercaya pemerintah Provinsi Riau.', 'PT Bumi Siak Pusako', 'Kunjungan untuk berdiskusi terkait program pelatihan dan sertifikasi minyak dan gas, guna pengembangan kompetensi para pekerja PT BSP yang saat ini dipercaya pemerintah Provinsi Riau.', '31-Oct-22', 'Bagian diklat & pelayanan koordinasikan ( m christian )', 'KUNJUNGAN', '2022/11/04', NULL, NULL),
(1413, '079.Oct/2022', '752/UN27.05/PT.01.01/2022', '0000-00-00', 'Permohonan melakukan perekaman vidio . pemenuhan tugas mata kuliah public reaction.', 'UNS', 'Permohonan melakukan perekaman vidio . pemenuhan tugas mata kuliah public reaction.', '31-Oct-22', 'Sudah dihadiri', 'PERMOHONAN', '2022/10/29', NULL, NULL),
(1414, '080.Oct/2022', 'DK.02.03/815.3/X/2022', '0000-00-00', 'Undangan klarifikasi lapangan lomba kelurahan tingkat regional.', NULL, 'Undangan klarifikasi lapangan lomba kelurahan tingkat regional.', '31-Oct-22', NULL, 'UNDANGAN', '2022/11/01', '08.00 - selesai', 'pendapi alit kelurahan jebres'),
(1415, '081.Oct/2022', NULL, '0000-00-00', 'Permohonan ijin kunjungan dan peminjaman tempat, grup dynamic & amazing race ( membangun kolaborasi tim dalam bekerja). (100 orang)', 'Learning Box', 'Permohonan ijin kunjungan dan peminjaman tempat, grup dynamic & amazing race ( membangun kolaborasi tim dalam bekerja). (100 orang)', '31-Oct-22', 'Bagian kerjasama fasilitasi (m susilo, m danang)', 'KUNJUNGAN', 'Rabu/Kamis, 7/8 Desember 2022', 'half day', 'stp'),
(1416, '082.Oct/2022', '163/B.2/A.4/2022', '0000-00-00', 'Undangan. (1) Identifikasi dan pemetaan hasil riset, penelitian, inovasi dan invensi teknologi yang telah siap untuk dimanfaatkan pada skala industri. (2) Permasalahan dan peluang pengembangan riset, penelitian, inovasi, dan invensi teknologi.', 'Kementrian Investasi/BKPM', 'Undangan. (1) Identifikasi dan pemetaan hasil riset, penelitian, inovasi dan invensi teknologi yang telah siap untuk dimanfaatkan pada skala industri. (2) Permasalahan dan peluang pengembangan riset, penelitian, inovasi, dan invensi teknologi.', '31-Oct-22', 'Bagian Inkubator hadiri ( m danu )', 'UNDANGAN', '2022/11/01', '09.00 - selesai', 'Zoom meeting');
INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(1417, '083.Oct/2022', 'KP.11.00/9223/X/2022', '0000-00-00', 'Pengiriman Personil menindak lanjuti surat dari UPT STP BAPPEDA perihal permohonan personil.', 'DPUPR SKA', 'Pengiriman Personil menindak lanjuti surat dari UPT STP BAPPEDA perihal permohonan personil.', '31-Oct-22', 'Bagian keuangan dan bagian kawasan ( bu susi., mas susilo)', NULL, NULL, NULL, NULL),
(1418, '084.Oct/2022', 'KP.11.00/1143/X/2022', '0000-00-00', 'Permohonan personil. melaksanakan bimbingan teknis pengelolaan keuangan badan layanan umum daerah.', 'Badan Pengelolaan Keuangan dan Aset Daerah', 'Permohonan personil. melaksanakan bimbingan teknis pengelolaan keuangan badan layanan umum daerah.', '31-Oct-22', 'Bagian keuangan hadiri ( bu susi, m agus)', 'PERMOHONAN', '11-13 November 2022', NULL, 'Surabaya'),
(1419, '085.Oct/2022', '650/OD.03.01', '0000-00-00', 'Undangan Rapat Pansus. Rapat kerja pansus Rperda tentang fasilitasi penyelenggaraan pesantresn', 'DPRD KOTA SURAKARTA', 'Undangan Rapat Pansus. Rapat kerja pansus Rperda tentang fasilitasi penyelenggaraan pesantresn', '31-Oct-22', 'Bagian legal ( m reza )', 'UNDANGAN', '2022/11/01', '13.00 WIB', 'Gedung graha paripurna DPRD'),
(1420, '001.Nov/2022', '522/PN.02.00/X/2022', '0000-00-00', 'Permohonan narasumber, workshop strategi dan kebijakan penguatan SIDa guna meningkatkan daya saing kota Surakarta.', 'Balitbangda', 'Permohonan narasumber, workshop strategi dan kebijakan penguatan SIDa guna meningkatkan daya saing kota Surakarta.', '2022/11/01', 'Sudah dihadiri', 'PERMOHONAN', '2022/11/03', '08.30-selesai', 'Ballroom 2 hotel sunan SKA'),
(1421, '002.Nov/2022', 'PW.00/4420/2022', '0000-00-00', 'Undangan rapat dinas gelar pengawasan daerah kota surakarta tahun 2022.', 'Sekretariat Daerah', 'Undangan rapat dinas gelar pengawasan daerah kota surakarta tahun 2022.', '2022/11/01', NULL, 'UNDANGAN', '2022/11/08', '09.00 - selesai', 'Hotel Sunan SOLO'),
(1422, '003.Nov/2022', '421.6/013/MITTQUM/XI/2022', '2022-11-01', 'Izin berkunjung kegiatan outing class. (47 anak siswa kelas 4 dan 6 guru )', 'MITTQUM', 'Izin berkunjung kegiatan outing class. (47 anak siswa kelas 4 dan 6 guru )', '2022/11/02', 'Umum (m ani, m lusi)', 'KUNJUNGAN', '2022/11/10', '08.00 - selesai', NULL),
(1423, '004.Nov/2022', 'KA.03.07/1902/X/2022', '0000-00-00', 'Mohon peserta sosialisasi kegiatan autentikasi arsip statis dan arsip hasil alih media.', 'Dinas perpustakaan dan kearsipan', 'Mohon peserta sosialisasi kegiatan autentikasi arsip statis dan arsip hasil alih media.', '2022/11/02', 'Hadiri ( m ani )', 'PERMOHONAN', '2022/11/09', '07.30 - selesai', 'Balai Tawangarum Kompel Balaikota Surakarta'),
(1424, '005.Nov/2022', NULL, '2022-11-02', 'Undangan mawayang hayu, wayang moderasi dan keberagaman', 'ISI Surakarta', 'Undangan mawayang hayu, wayang moderasi dan keberagaman', '2022/11/02', 'Disposisi via wa pak yudit (pak untung)', 'UNDANGAN', '2022/11/04', '19.00 - selesai WIB', 'Pendapa Ageng GPH Joyokusumo ISI Surakarta'),
(1425, '006.Nov/2022', '096/OSSKA/SVC/11/2022', '2022-11-02', 'Permohonan peminjaman tempat, sosialisasi dengan BKKBN \"Promosi dan KIE program percepatan penurunan stunting\"', 'Omah Sambung', 'Permohonan peminjaman tempat, sosialisasi dengan BKKBN \"Promosi dan KIE program percepatan penurunan stunting\"', '2022/11/02', 'Sudah dilaksanakan', 'PERMOHONAN', '2022/11/04', '07.30 - selesai', 'Seminar besar STC'),
(1426, '007.Nov/2022', 'B-150/KUKM/Dep.4.2.1/XI/2022', '2022-11-02', 'Monitoring dan evaluasi fasilitasi inkubasi wirausaha tahun 2021. melaksanakan kunjungan ke lembaga inkubator bulan november dan desember.', 'KEMENKOPUKM', 'Monitoring dan evaluasi fasilitasi inkubasi wirausaha tahun 2021. melaksanakan kunjungan ke lembaga inkubator bulan november dan desember.', '2022/11/03', 'Bagian inkubator fasilitasi (m danu)', 'KUNJUNGAN', 'Novmeber dan Desember', NULL, NULL),
(1427, '008.Nov/2022', NULL, '2022-11-03', 'Penawaran cartdrigde toner compatible.', 'Indographia Printer', 'Penawaran cartdrigde toner compatible.', '2022/11/03', NULL, NULL, NULL, NULL, NULL),
(1428, '009.Nov/2022', '665/OD.03.01', '2022-11-02', 'Undangan rapat paripurna DPRD. Rapat parirpurna ke-IV.', 'DPRD KOTA SURAKARTA', 'Undangan rapat paripurna DPRD. Rapat parirpurna ke-IV.', '2022/11/03', 'Sudah dihadiri', 'UNDANGAN', '2022/11/03', '13.00 WIB', 'Gedung Graha Paripurna SKA'),
(1429, '010.Nov/2022', '297/UN27.24/TU/2022', '2022-11-03', 'Permohonan peminjaman ruang seminar dilantai 1 gedung inkubasi bisnis STP. kegiatan \"pelepasan pengiriman produk UMKM surakarta siap ekspor ke prancis\"', 'UNS', 'Permohonan peminjaman ruang seminar dilantai 1 gedung inkubasi bisnis STP. kegiatan \"pelepasan pengiriman produk UMKM surakarta siap ekspor ke prancis\"', '2022/11/03', 'Bagian kerjasama dan keuangan fasilitasi ( m susilo, m danang )', 'PERMOHONAN', 'Selasa-Rabu, 8-9 November 2022', '16.00 WIB-14.00 WIB', 'ruang Seminar lantai 1 gd inkubasi bisnis STP'),
(1430, '011.Nov/2022', NULL, '2022-11-03', 'Permohonan sponsor \" seminar nasional al - qur\'an \"', 'IQ UNS', 'Permohonan sponsor \" seminar nasional al - qur\'an \"', '2022/11/04', 'sudah terlewat', 'PERMOHONAN', '2022/11/19', '08.00 - selesai', NULL),
(1431, '012.Nov/2022', 'B-PP.00.01/4145/2022', '2022-11-03', 'Konsultasi kebijakan penyelenggaraan kearsiapan nasional penyusunan kebijakan keamanan arsip digital.', 'Arsip Nasional Republik Indonesia', 'Konsultasi kebijakan penyelenggaraan kearsiapan nasional penyusunan kebijakan keamanan arsip digital.', '2022/11/04', 'Bagian kerjasam (m susilo,m reza, m yuli)', 'KUNJUNGAN', 'Selasa - Jumat, 8-11 November 2022', NULL, NULL),
(1432, '013.Nov/2022', 'B/839/ILMATE.5/IND/XI/2022', '2022-11-02', 'Undangan Focus Group Discussion ( FGD ) perkembangan pembuatan virtual Technopark.', 'Kementrian Perindustrian', 'Undangan Focus Group Discussion ( FGD ) perkembangan pembuatan virtual Technopark.', '2022/11/04', 'Hadiri (p christian)', 'UNDANGAN', '2022/11/10', '09.00 - selesai', 'hotel grand edge'),
(1433, '014.Nov/2022', '-II-237/PSLO/M/IX/2022', '2022-11-04', 'Informasi pemeriksaan kesehatan gratis. pemeriksaan papsmear.', 'Prodia', 'Informasi pemeriksaan kesehatan gratis. pemeriksaan papsmear.', '2022/11/04', 'Bagian HRD pertimbangkan (bu lusi)', NULL, NULL, NULL, NULL),
(1434, '015.Nov/2022', '421/4686', '2022-09-19', 'Permohonan ijin kunjungan. (124 Orang )', 'SMKN 2 DEPOK SLEMAN', 'Permohonan ijin kunjungan. (124 Orang )', '2022/11/04', 'Bagian diklat / pelayanan fasilitasi (m christian,m budi)', 'KUNJUNGAN', '2022/11/08', '13.00 - selesai', 'STP'),
(1435, '016.Nov/2022', 'B/2303/KI/XI/2022', '2022-11-04', 'Undangan desk pengelolaan SP4N LAPOR bagi pejabat penghubung di perangkat daerah.', 'Diskominfo', 'Undangan desk pengelolaan SP4N LAPOR bagi pejabat penghubung di perangkat daerah.', '2022/11/07', 'Sekretaris (m ani)', 'UNDANGAN', '2022/11/09', '12.00 - 15.00 WIB', 'ruang rapatupakari II Diskominfo'),
(1436, '017.Nov/2022', '422/168/SMP-AI/LL/2022', '2022-11-05', 'Permohonan kunjungan Technopark \" Experience Class\"', 'SMP Al - Irsyad SKA', 'Permohonan kunjungan Technopark \" Experience Class\"', '2022/11/07', NULL, 'KUNJUNGAN', '2022/11/10', '09.00 - selesai', NULL),
(1437, '018.Nov/2022', '3309/BP.03.04/XI/2022', '2022-11-01', 'Undangan, FGD/FEDEP/Temu forum pengembangan ekonomi lokal (PEL) solo raya dengan tema \"pengembangan kerjasama pariwisata dan ekonomi kreatif solo raya\"', 'Bappeda', 'Undangan, FGD/FEDEP/Temu forum pengembangan ekonomi lokal (PEL) solo raya dengan tema \"pengembangan kerjasama pariwisata dan ekonomi kreatif solo raya\"', '2022/11/07', 'Hadiri (m danu)', 'UNDANGAN', '2022/11/10', '09.00 -- selesai', 'haris hotel'),
(1438, '019.Nov/2022', 'SRT-O349/SKKMI6000/2022/S0', '2022-11-07', 'Alat peraga hulu migas, menggunakan sementara beberapa alat peraga hulu migas sebagai sarana peraga informasi.', 'SKK Migas', 'Alat peraga hulu migas, menggunakan sementara beberapa alat peraga hulu migas sebagai sarana peraga informasi.', '2022/11/07', 'Bagian pelayanan (m chris)', NULL, '2022/11/08', NULL, 'Grand city surabaya'),
(1439, '020.Nov/2022', '422/1418/MK.2/X/2022', '0000-00-00', 'Permohonan Kunjungan Industri. (310 Orang)', 'SMK LPPM RI 2 Kedungreja', 'Permohonan Kunjungan Industri. (310 Orang)', '2022/11/08', 'Bagian pelayanan (m chris, m budi)', 'KUNJUNGAN', '2022/12/21', NULL, 'STP'),
(1440, '021.Nov/2022', '21/XXI/435/MA', '2022-11-07', 'Peminjaman tempat dan permohonan ijin kunjungan. diadakannya kuliah tamu mata kuliah pengantar bisnis \"talk with entrepreneur\" (72 Orang)', 'UNS Sekolah Vokasi', 'Peminjaman tempat dan permohonan ijin kunjungan. diadakannya kuliah tamu mata kuliah pengantar bisnis \"talk with entrepreneur\" (72 Orang)', '2022/11/08', 'Bagian kerjasama & pelayanan (m susilo , p christian)', 'PERMOHONAN', '2022/11/10', '09.30 - 12.30 WIB', 'STP'),
(1441, '022.Nov/2022', '0646/BAAK.01/AK.7/MI/X/2022', '0000-00-00', 'Permohohan Magang/PKL. Menejemen Informatika', 'Politama', 'Permohohan Magang/PKL. Menejemen Informatika', '2022/11/08', 'Hanya diterima (m susilo)', 'PERMOHONAN', 'Februari-Juli 2023', NULL, NULL),
(1442, '023.Nov/2022', '033/K/SMK/NU/VIII/2022', '0000-00-00', 'Permohonan Kunjungan Industri (Company Visit) dan Karyawisata. 115 orang siswa dan 20 orang guru', 'SMK NU Suruh', 'Permohonan Kunjungan Industri (Company Visit) dan Karyawisata. 115 orang siswa dan 20 orang guru', '2022/11/08', 'Bagian pelayanan (m chris, m budi)', 'PERMOHONAN', '2022/12/12', NULL, 'STP'),
(1443, '024.Nov/2022', '539/005/XI/2022', '2022-11-07', 'Undangan pembhasan laporan akhir monitoring dan evaluasi smart city kota surakarta tahun 2022.', 'Balitbangda', 'Undangan pembhasan laporan akhir monitoring dan evaluasi smart city kota surakarta tahun 2022.', '2022/11/08', 'Hadiri (m christian)', 'UNDANGAN', '2022/11/09', '09.30 - selesai', 'ruang rapat balitbangda'),
(1444, '025.Nov/2022', '946/UN27.26/TU.01/2022', '2022-11-09', 'Permohonan kunjungan lapang, pendirian inkubator bisnis ekonomi kreatif adalah training of trainer (TOT)', 'UNS PKKWU', 'Permohonan kunjungan lapang, pendirian inkubator bisnis ekonomi kreatif adalah training of trainer (TOT)', '2022/11/09', 'Bagian Kerjasama siapkan tempat & fasilitasi (Yudit,danu,susilo)', 'KUNJUNGAN', '2022/12/05', '09. 00 WIB-selesai', NULL),
(1445, '026.Nov/2022', 'KI.03.00/1303/2022', '2022-11-04', 'SKM Triwulan IV. Undangan rapat koordinasi pelaksanaan SKM unit pelayanan publik di lingkungan pemerintah kota surakarta tahun 2022 Triwulan IV.', 'Sekretariat Daerah', 'SKM Triwulan IV. Undangan rapat koordinasi pelaksanaan SKM unit pelayanan publik di lingkungan pemerintah kota surakarta tahun 2022 Triwulan IV.', '2022/11/10', NULL, 'UNDANGAN', '2022/11/10', '09.00 - selesai', 'ruang kerja masing masing (meeting id: 508 042 5974, Passcode skabagor22)'),
(1446, '027.Nov/2022', 'II/Dekran.Ska/XI/2022', '2022-11-10', 'Undangan. Rapat koordinasi, fasilitasi pengembangan usaha dan pemberdayaan UMKM dengan tema \"packaging dan pemasaran produk\"', 'Dewan Kerajinan Nasional', 'Undangan. Rapat koordinasi, fasilitasi pengembangan usaha dan pemberdayaan UMKM dengan tema \"packaging dan pemasaran produk\"', '2022/11/10', 'Sudah dihadiri', 'UNDANGAN', '2022/11/14', '09.00 - selsai', 'The sunan hotel'),
(1447, '028.Nov/2022', '560/7.592', '2022-11-10', 'Undangan penguatan jejaring program penempatan tenaga kerja wilayah Jawa Tengah tahun 2022', 'Dinas Tenaga Kerja dan Transmigrasi', 'Undangan penguatan jejaring program penempatan tenaga kerja wilayah Jawa Tengah tahun 2022', '2022/11/10', 'Bagian diklat zoom (m chris, m budi)', NULL, '2022/11/11', '09.00 - selesai', 'ruang kerja masing masing dengan aplikasi e-Makaryo (meeting id: 82098073049, Password 463319)'),
(1448, '029.Nov/2022', '001/99.2/A/SobatDIA/XI/2022', '2022-11-10', 'Undangan, Syukuran peresmian yayasan SobatDIA Sobat Diabetes.', 'SobatDIA', 'Undangan, Syukuran peresmian yayasan SobatDIA Sobat Diabetes.', '2022/11/11', 'Bagian Inkubator hadiri ( m danu )', 'UNDANGAN', '2022/11/11', '13.00-14.00 WIB', 'Aula pendopo lodji gandrung'),
(1449, '030.Nov/2022', 'TM.00.07/4588/2022', '2022-11-07', 'Undangan desk monitoring dan evaluasi kerjasama daerah tahun 2022.', 'Sekretariat Daerah', 'Undangan desk monitoring dan evaluasi kerjasama daerah tahun 2022.', '2022/11/11', 'Sudah dihadiri', 'UNDANGAN', '2022/11/15', '09.00 WIB - selesai', 'Solia hotel'),
(1450, '031.Nov/2022', '03/176/SU/XI/2022', '2022-11-10', 'Permohonan kunjungan dan penggunaan tempat untuk kegiatan \"Ngobrol dan talkshow santri ngaji teknologi\" di STP.', 'Duta Santri Nasional', 'Permohonan kunjungan dan penggunaan tempat untuk kegiatan \"Ngobrol dan talkshow santri ngaji teknologi\" di STP.', '2022/11/11', 'Bagian Kerjasama (m susilo, m danang)', 'PERMOHONAN', '2022/11/26', '08.00 - 12.00 WIB', 'STP'),
(1451, '032.Nov/2022', 'RP.01/4685/2022', '2022-11-11', 'Surat Edaran Walikota Surakarta tentang Prioritas Pembangunan Kota Surakarta Tahun 2023 dan Penyelenggaraam Musrenbang RKPD Tahun 2023', 'Bappeda', 'Surat Edaran Walikota Surakarta tentang Prioritas Pembangunan Kota Surakarta Tahun 2023 dan Penyelenggaraam Musrenbang RKPD Tahun 2023', '2022/11/11', NULL, NULL, NULL, NULL, NULL),
(1452, '033.Nov/2022', NULL, '2022-11-14', 'Permohonan pinjam pakai area di solo technopark guna kelancaran kegiatan test drive. (42 Kandidat)', 'Shopee Express', 'Permohonan pinjam pakai area di solo technopark guna kelancaran kegiatan test drive. (42 Kandidat)', '2022/11/14', 'Sudah dilaksanakan', 'PERMOHONAN', 'Sabtu & Minggu, 19-20 November 2022', '09.00 - 16.00 WIB', 'STP'),
(1453, '034.Nov/2022', '562/005/XI/2022', '2022-11-14', 'undangan FGD kajian dampak sosial dan lingkungan pembangunan islamic canter kota surakarta', 'Balitbangda', 'undangan FGD kajian dampak sosial dan lingkungan pembangunan islamic canter kota surakarta', '2022/11/14', NULL, 'UNDANGAN', '2022/11/15', '12:30WIB-selesai', 'Hotel DANA'),
(1454, '035.Nov/2022', 'PN.02/4731/2022', '2022-11-11', 'undangan workshop forum litbang subosukawonosraten dengan tema: \"Kolaborasi Penguatan Riset dan Inovasi Daerah Melalui Sistem Kewilayahan Subosukawonosraten\"', 'Sekretariat Daerah', 'undangan workshop forum litbang subosukawonosraten dengan tema: \"Kolaborasi Penguatan Riset dan Inovasi Daerah Melalui Sistem Kewilayahan Subosukawonosraten\"', '2022/11/14', 'Sudah dihadiri', 'UNDANGAN', '2022/11/15', '08.30 WIB -selesai', 'Ballroom IV Hotel Sunan SKA'),
(1455, '036.Nov/2022', 'TM.00.07/4588/2022', '2022-11-07', 'RALAT UNDANGAN MONEV KERJASAMA DAERAH 15 NOVEMBER 2022', 'Sekretariat Daerah', 'RALAT UNDANGAN MONEV KERJASAMA DAERAH 15 NOVEMBER 2022', '2022/11/14', 'Hadiri (m susilo)', 'UNDANGAN', '2022/11/15', '11.00 - 13.00 WIB', 'Solia Hotel Yosodipuro Solo'),
(1456, '037.Nov/2022', '565/005/XI/2022', '2022-11-14', 'Undangan Rapat Koordinasi Pembahasan Draft Perwali Pola Tata Kelola BLUD UPT Kawasan Sains Teknologi (KST)', 'Balitbangda', 'Undangan Rapat Koordinasi Pembahasan Draft Perwali Pola Tata Kelola BLUD UPT Kawasan Sains Teknologi (KST)', '2022/11/15', 'Sudah dihadiri', 'UNDANGAN', '2022/11/17', '09.00 - selesai', 'Ruang rapat balitbangda'),
(1457, '038.Nov/2022', '141/UN 27.41.20/KM/2022', '2022-11-12', 'Permohonan Sponsorship Kegiatan Pementasan Pentas Produksi Ormawa Kesenian Tradisional UNS tahun 2022.', 'UNS', 'Permohonan Sponsorship Kegiatan Pementasan Pentas Produksi Ormawa Kesenian Tradisional UNS tahun 2022.', '2022/11/15', 'Bagian kerjasama tolong di kajian (m susilo)', 'PERMOHONAN', '2022/12/02', '15.00 - 23.00 WIB', 'TBJT Surakarta'),
(1458, '039.Nov/2022', 'PU.17.01/10143/XI/2022', '2022-11-14', 'Undangan sosialisasi penyelenggaraan implementasi SIMBG', 'DPUPR', 'Undangan sosialisasi penyelenggaraan implementasi SIMBG', '2022/11/15', 'Bagian Keuangan (bu susi)', 'UNDANGAN', '2022/11/17', '09.00 - selesai', 'Ballroom Adhiwangsa Hotel & Convention'),
(1459, '040.Nov/2022', '040.Nov/2022-B/12989/UN37.1.5/KM/2022', '2022-11-14', 'Permohonan Izin PKL. Teknik mesin. (3 Orang)', 'UNNES Semarang', 'Permohonan Izin PKL. Teknik mesin. (3 Orang)', '2022/11/16', 'Bagian Pelayanan Diklat Fasilitasi (m christian, m budi)', 'PERMOHONAN', '2 Januari - 30 Juni 2023', NULL, NULL),
(1460, '041.Nov/2022', '050/BAPPEDALITBANG-UPT.RSTP/0676', '2022-11-14', 'Permohonan kunjungan kerja, optimalisasi dan memaksimalkan peran UPT Riau Science Technopark.', 'Bappeda', 'Permohonan kunjungan kerja, optimalisasi dan memaksimalkan peran UPT Riau Science Technopark.', '2022/11/16', 'fasilitasi', 'PERMOHONAN', '2022/11/29', '09.00 - selesai', 'STP'),
(1461, '042.Nov/2022', 'PG.01/4636/2022', '2022-11-16', 'RAPAT KOORDINASI MONEV TRIWULAN III TAHUN ANGGARAN 2022', 'Sekretariat Daerah', 'RAPAT KOORDINASI MONEV TRIWULAN III TAHUN ANGGARAN 2022', '2022/11/16', 'Bagian Keuangan (bu susi)', 'UNDANGAN', '2022/11/21', '08.30 - selesai', 'Ruang tawangarum komplek balaikota surakarta'),
(1462, '043.Nov/2022', '486/RP.05/XI/2022', '2022-11-16', 'DESK LANJUTAQN PELAPORAN SIMDALBANGDA BULAN OKTOBER 2022 KAMIS/17 NOVEMBER 2022', 'Sekretariat Daerah', 'DESK LANJUTAQN PELAPORAN SIMDALBANGDA BULAN OKTOBER 2022 KAMIS/17 NOVEMBER 2022', '2022/11/16', 'Bagian Keuangan (bu susi)', 'UNDANGAN', '2022/11/17', '09.00 - selesai', 'Ruang rapat bagian administrasi pembangunan setda'),
(1463, '044.Nov/2022', '569/005/XI/2022', '2022-11-15', 'Undangan, Pendampingan V (Evaluasi pendampingan prototype dan paparan bussiness model canvas)', 'Balitbangda', 'Undangan, Pendampingan V (Evaluasi pendampingan prototype dan paparan bussiness model canvas)', '2022/11/17', 'Hadiri (m susilo)', 'UNDANGAN', '2022/11/17', '09.00 - selesai', 'Ruang rapat balitbangda'),
(1464, '045.Nov/2022', NULL, '2022-11-16', 'Permohonan izin peminjaman ruangan untuk kegiatan training oleh tim call center pizza hut indonesia.', 'Pizza Hut', 'Permohonan izin peminjaman ruangan untuk kegiatan training oleh tim call center pizza hut indonesia.', '2022/11/17', 'Bagian kerjasama & kawasan lihat kecanggihan tempat (bp susilo & b danang)', 'PERMOHONAN', 'Senin - Jumat, 1 - 31 Desember 2022', '08.00 - 16.00 WIB', NULL),
(1465, '046.Nov/2022', '421/1154', '2022-11-16', 'Permohonan ijin kunjungan (155 Orang)', 'SMAN 1 Kalasan', 'Permohonan ijin kunjungan (155 Orang)', '2022/11/17', 'Bagian Pelayanan Diklat Fasilitasi (m christian, m budi)', 'KUNJUNGAN', '2022/01/18', '09.00 - 12.00 WIB', 'STP'),
(1466, '047.Nov/2022', '629/005/XI/2022', '2022-11-17', 'Undangan. Rapat lanjutan pembahasan sewa menyewa gedung teaching factory solo technopark.', 'Balitbangda', 'Undangan. Rapat lanjutan pembahasan sewa menyewa gedung teaching factory solo technopark.', '2022/11/17', 'Sudah dihadiri', 'UNDANGAN', '2022/11/21', '10.00 - selesai', 'Ruang rapat balitbangda'),
(1467, '048.Nov/2022', '023/unu.RKT/UND/XI', '2022-11-15', 'Undangan acara \" UNU Yogyakarta industri forum 2022\" dengan tema \"Noosting higher education capacity through collaboration innovation and celleration arogams', 'UNU Yogyakarta', 'Undangan acara \" UNU Yogyakarta industri forum 2022\" dengan tema \"Noosting higher education capacity through collaboration innovation and celleration arogams', '2022/11/21', 'Hadiri (m susilo, pak yudit)', 'UNDANGAN', '2022/11/25', '13.30 - 16.30 WIB', 'Ashley hotel jakarta'),
(1468, '049.Nov/2022', '1367/ST/IR.II/2022', '2022-11-13', 'Surat tugas permohonan pendampingan perjalnan dinas dalam rangka pengawasan terpadu kegiatan pendampingan terhadap pemeriksaan paket pekerjaan infrastruktur di jawa tengah.', 'Kementrian ESDM RI', 'Surat tugas permohonan pendampingan perjalnan dinas dalam rangka pengawasan terpadu kegiatan pendampingan terhadap pemeriksaan paket pekerjaan infrastruktur di jawa tengah.', '2022/11/21', 'Sudah dilaksanakan', NULL, 'Rabu - Minggu, 16-20 November 2022', NULL, 'cilacap'),
(1469, '050.Nov/2022', '635/PN.02/XI/2022', '2022-11-21', 'Permohonan pendampingan tentang undangan penjurian pemetaan daya saing daerah (PDSD) tingkat provinsi jawa tengah.', 'Balitbangda', 'Permohonan pendampingan tentang undangan penjurian pemetaan daya saing daerah (PDSD) tingkat provinsi jawa tengah.', '2022/11/21', 'Sudah dihadiri', 'PERMOHONAN', '2022/11/22', '07.30 - selesai', 'ruang rapat bappeda'),
(1470, '051.Nov/2022', '192/K.YP IPPI/XI/2022', '2022-11-15', 'Permohonan izin Kunjungan Industr 110 orang', 'SMK YP IPPI Jakarta', 'Permohonan izin Kunjungan Industr 110 orang', '2022/11/21', 'Bagian Pelayanan Diklat Fasilitasi (m christian, m budi)', 'KUNJUNGAN', '2023/02/02', '10.00 WIB - selesai', NULL),
(1471, '052.Nov/2022', 'PET-STP/XI/003/2022', '2022-11-04', 'Permohonan Izin Perbaikan Mushola dan Toilet Gedung RnD Lt.2', 'PETROTEKNO', 'Permohonan Izin Perbaikan Mushola dan Toilet Gedung RnD Lt.2', '2022/11/22', 'Bagian kawasan umum (m danang, p untung)', 'PERMOHONAN', 'Sabtu - Selasa, 5-8 November 2022', NULL, 'Mushola'),
(1472, '053.Nov/2022', '255/UN27.13/PK.01.03/2022', '2022-11-21', 'Permohonan ijin melaksanakan wawancara pelaksanakan tugas pengumpulan data.', 'UNS', 'Permohonan ijin melaksanakan wawancara pelaksanakan tugas pengumpulan data.', '2022/11/22', 'Bagian HRD Fasilitas (bu lusi)', 'PERMOHONAN', NULL, NULL, NULL),
(1473, '054.Nov/2022', '641/KP II.00/XI/2022', '2022-11-22', 'Surat perintah, mengikuti lomba olahraga tradisional dalam rangka peringatan hari ulang tahun KORPRI ke-51.', 'Balitbangda', 'Surat perintah, mengikuti lomba olahraga tradisional dalam rangka peringatan hari ulang tahun KORPRI ke-51.', '2022/11/23', 'Hadiri (tim lomba)', NULL, '2022/11/24', '07.30 WIB - selesai', 'Lap softball kompleks std manahan surakarta (utara lap tennis indoor)'),
(1474, '055.Nov/2022', '653/005/XI/2022', '2022-11-23', 'Undangan, rapat koordinasi lanjutan pembahasan draft perwali pola tata kelola BLUT UPT kawasan sains dan teknologi', 'Balitbangda', 'Undangan, rapat koordinasi lanjutan pembahasan draft perwali pola tata kelola BLUT UPT kawasan sains dan teknologi', '2022/11/23', 'sudah duhadiri', 'UNDANGAN', '2022/11/24', '12.30 - selesai', 'Ruang rapat balitbangda'),
(1475, '056.Nov/2022', NULL, '2022-11-26', 'permohonan pinjaman pakai area Solo Technopark untuk diselengarakannya kegiatan Test Drive Shopee Xpress (15 Kandidat)', 'Shopee Xpress', 'permohonan pinjaman pakai area Solo Technopark untuk diselengarakannya kegiatan Test Drive Shopee Xpress (15 Kandidat)', '2022/11/24', 'sudah dihadiri', NULL, NULL, NULL, NULL),
(1476, '057.Nov/2022', 'KM.00/3655/XI/2022', '2022-11-24', 'Undangan menerima kunjungan BPPD, penelitian dan pengembangan provinsi riau.', 'Dinas Koperasi UKM dan Perindustria', 'Undangan menerima kunjungan BPPD, penelitian dan pengembangan provinsi riau.', '2022/11/25', 'Mohon bisa diterima (p. christian)', 'UNDANGAN', '2022/11/29', '14.00 WIB - selesai', 'aula dinas koperasi ukm'),
(1477, '058.Nov/2022', '563/460/BLKI.BTG/XI', '2022-11-22', 'Kunjungan kerja dalam rangka pengembangan program pelatihan las bawah air', 'Disnaker Trans', 'Kunjungan kerja dalam rangka pengembangan program pelatihan las bawah air', '2022/11/25', 'sudah dilaksanakan', 'KUNJUNGAN', '2022/11/24', NULL, NULL),
(1478, '059.Nov/2022', '800/645/101.6.10.22/2022', '2022-11-23', 'Permohonan peningkatan mutu guru (18 guru)', NULL, 'Permohonan peningkatan mutu guru (18 guru)', '2022/11/25', 'bagian pelayanan fasilitasi mas chris', 'PERMOHONAN', '2022/12/09', NULL, NULL),
(1479, '060.Nov/2022', '045.2/647/101.6.12.16/2022', '2022-11-24', 'Kunjungan industri (91 orang)', NULL, 'Kunjungan industri (91 orang)', '2022/11/28', 'bagian pelayanan fasilitasi mas chris dan mas budi', 'KUNJUNGAN', '2023/01/04', '10.00 - selesai', 'STP'),
(1480, '061.Nov/2022', '03.001/UN27.10.6.4/XI/2022', '2022-11-28', 'Permohonan penyewaan tempat, kegiatan pameran seni.', 'UNS', 'Permohonan penyewaan tempat, kegiatan pameran seni.', '2022/11/28', 'mas susilo, mas danu pertimbangkan waktunya', 'PERMOHONAN', 'Jumat - Sabtu, 23-24 November 2022', '10.00 - selesai', NULL),
(1481, '062.Nov/2022', '/DIS.01.01/B03030100/2022', '2022-11-25', 'Informasi pemeliharaan jaringan listrik.', 'PLN', 'Informasi pemeliharaan jaringan listrik.', '2022/11/28', 'Tolong diurus solusinya PLN, Gneset (m susilo, m danang)', NULL, '2022/11/29', '10.00 - 13.00 WIB', NULL),
(1482, '063.Nov/2022', '663/005/XI/2022', '2022-11-28', 'Undangan rapat pembahasan draft penilaian penerapan pola pengelolaan keuangan BLUD UPTD kawasan sains dan teknologi.', 'Balitbangda', 'Undangan rapat pembahasan draft penilaian penerapan pola pengelolaan keuangan BLUD UPTD kawasan sains dan teknologi.', '2022/11/29', 'sudah dihadiri', 'UNDANGAN', '2022/11/29', '13.00 WIB - selesai', 'Ruang rapat Balitbangda'),
(1483, '064.Nov/2022', 'TM.00.07/473/XI/2022', '2022-11-29', 'Undangan sosialisasi PMK tentang penghapusan piutang daerah yang tidak dapat diserahkan pengurusnya kepada panitia urusan piutang negara', 'BPKAD', 'Undangan sosialisasi PMK tentang penghapusan piutang daerah yang tidak dapat diserahkan pengurusnya kepada panitia urusan piutang negara', '2022/11/30', NULL, 'UNDANGAN', '2022/12/01', '09.00 WIB- Selsai', 'aula lt 4 gedung sekretariat bersama kota SKA'),
(1484, '065.Nov/2022', 'PG.00/5041/2022', '2022-11-28', 'Undangan dalam rangka meningjatkan pemahaman terhadap tata cara dan ketentuan pengadaan barang/jasa melalui katalog llokal kota surakarta', 'Sekretariat Daerah', 'Undangan dalam rangka meningjatkan pemahaman terhadap tata cara dan ketentuan pengadaan barang/jasa melalui katalog llokal kota surakarta', '2022/11/30', NULL, 'UNDANGAN', '2022/11/30', '08.30 WIB - selesai', 'Adhiwangsa hotel & convention'),
(1485, '066.Nov/2022', 'PG.00/4776/2022', '2022-11-15', 'Surat edaran pedoman pengunaaan katalog lokal kota Surakarta', 'Sekretariat Daerah', 'Surat edaran pedoman pengunaaan katalog lokal kota Surakarta', '2022/11/30', 'bagian keuangan informasi (bu susi mas agus)', NULL, NULL, NULL, NULL),
(1486, '067.Nov/2022', 'RP.00/5076/2022', '2022-11-30', 'Undangan rapat koordinasi capaian serapan anggaran belanja DPD TA 2022', 'Sekretariat Daerah', 'Undangan rapat koordinasi capaian serapan anggaran belanja DPD TA 2022', '2022/11/30', NULL, NULL, NULL, NULL, NULL),
(1487, '001.Des/2022', '1635/1/UTP/XI/2022', '2022-12-28', 'permohonan izin pinjam ruang dalam rangka penyelengaraan latihan keterampilan mahasiswa tingkat dasar (LKMM-TD) Universitas Pembangunan Surakarta (70 peserta)', 'UTP SKA', 'permohonan izin pinjam ruang dalam rangka penyelengaraan latihan keterampilan mahasiswa tingkat dasar (LKMM-TD) Universitas Pembangunan Surakarta (70 peserta)', '2022/12/01', 'bagian kerjasama pertimbangkan (mas Susilo)', NULL, NULL, NULL, NULL),
(1488, '002.Des/2022', 'B-1192/Dep.4.2/WU.01.01/XI/2022', '2022-12-28', 'Monitoring dan Evaluasi Program Fasilitas Inkubasi Wirausaha ke Lembaga Inkubator BLUD UTP Solo Technopark.', 'KEMENKOP UKM', 'Monitoring dan Evaluasi Program Fasilitas Inkubasi Wirausaha ke Lembaga Inkubator BLUD UTP Solo Technopark.', '2022/12/01', 'mas danu dan pak christ , bagian inkubator dihadiri', NULL, NULL, NULL, NULL),
(1489, '003.Des/2022', '684/005/XII/2022', '2022-12-01', 'Undangan Rapat Penjelasan dan Penyusunan BMC Kegiatan Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi.', 'BALITBANGDA', 'Undangan Rapat Penjelasan dan Penyusunan BMC Kegiatan Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi.', '2022/12/02', 'sudah dihadiri', NULL, NULL, NULL, NULL),
(1490, '004.Des/2022', '686/005/XII/2022', '2022-12-01', 'Undangan Rapat Finalisasi Perjanjian Sewa Menyewa antara Pt. Shopee Indonesia dengan Solo Technopark.', 'BALITBANGDA', 'Undangan Rapat Finalisasi Perjanjian Sewa Menyewa antara Pt. Shopee Indonesia dengan Solo Technopark.', '2022/12/02', 'bagian kerjasama dihadiri mas susilo', NULL, NULL, NULL, NULL),
(1491, '005.Des/2022', '422/005/405.43.03./SMP.T/2022', '2022-12-01', 'Permohonan izin Kunjungan (FILTD TRIP)', 'SMP Terpadu Ponorogo', 'Permohonan izin Kunjungan (FILTD TRIP)', '2022/12/02', 'bagian pelayanan fasilitasi mas budi dan pak chris', NULL, NULL, NULL, NULL),
(1492, '006.Des/2022', '424/356', '2022-12-01', 'Permohonan Izin Kunjungan Industri', 'SMK Pancasila 3 Baturetno', 'Permohonan Izin Kunjungan Industri', '2022/12/02', 'bagian dikat pelayanan difasilitasi mas budi dan pak chris', NULL, NULL, NULL, NULL),
(1493, '007.Des/2022', '050/0950/Litbang/2022', '2022-12-01', 'Permohonan Studi Komparasi dalam rangka Meningkatkan Kualitas Kelitbangan Bappeda Kabupaten Pati.', 'BAPPEDA PATI', 'Permohonan Studi Komparasi dalam rangka Meningkatkan Kualitas Kelitbangan Bappeda Kabupaten Pati. Jumlah 4 orang', '2022/12/05', 'sudah dihadiri', NULL, NULL, NULL, NULL),
(1494, '008.Des/2022', '0157/YKAI/A.300/12.22', '2022-12-03', 'Permohonan pinjam tempat untuk YKAI untuk prpgram \"Senyum Sehat Anak Indonesia\". Tema acara: Mama Hebat Sekarang dan Selamanya', 'YKAI', 'Permohonan pinjam tempat untuk YKAI untuk prpgram \"Senyum Sehat Anak Indonesia\". Tema acara: Mama Hebat Sekarang dan Selamanya', '2022/12/05', NULL, NULL, NULL, NULL, NULL),
(1495, '009.Des/2022', NULL, '2022-12-05', 'Permohonan pinjam pakai area Solo Technopark untuk kegiatan Test Drive.', 'Shopee Xpress', 'Permohonan pinjam pakai area Solo Technopark untuk kegiatan Test Drive.', '2022/12/05', NULL, NULL, NULL, NULL, NULL),
(1496, '010.Des/2022', '801/UN27.04.9.3/ICD/B/XI/2022', '2022-11-28', 'Permohonan izin magang mahasiswa UNS Prodi Manajemen. (2 orang).', 'UMS', 'Permohonan izin magang mahasiswa UNS Prodi Manajemen. (2 orang).', '2022/12/05', 'bagian media branding ditempatkan sebagai admin ITD (mas rizky)', NULL, NULL, NULL, NULL),
(1497, '012.Des/2022', '673/PN.02.00/XII/2022', '2022-12-01', 'permohonan acara workshop hasil kajian monitoring dan evaluasi Smart city kota surakarta', 'balitbangda', 'permohonan acara workshop hasil kajian monitoring dan evaluasi Smart city kota surakarta', '2022/12/05', 'sudah diurus', NULL, NULL, NULL, NULL),
(1498, '013.Des/2022', '685/005/XII/2022', '2022-12-01', 'undangan rapat finalisasi kegiatan pendampingan hilirisasi hasil riset perguruan tinggi', 'Balitbangda', 'undangan rapat finalisasi kegiatan pendampingan hilirisasi hasil riset perguruan tinggi', '2022/12/06', 'sudah dilaksanakan', NULL, NULL, NULL, NULL),
(1499, '015.Des/2022', '528/RP.05/XII/2022', '2022-12-05', 'undangan Desk asistensi realisasi belanja perangkat daerah tahun anggaran 2022', 'sekretariat daerah', 'undangan Desk asistensi realisasi belanja perangkat daerah tahun anggaran 2022', '2022/12/06', 'bagian keuangan bu susi', NULL, NULL, NULL, NULL),
(1500, '016.Des/2022', 'B/140.39/UN.37.15/KM/22', '2022-12-05', 'Permohonan izin PKL fakultas teknik UNNES Semarang (4 orang)', 'UNNES Semarang', 'Permohonan izin PKL fakultas teknik UNNES Semarang (4 orang)', '2022/12/06', NULL, 'Permohonan', '02-Jan s.d 30-Jun-23', NULL, NULL),
(1501, '017.Des/2022', 'JU.01.00/5180/2022', '2022-12-05', 'undangan rapat foccus Group Discussion (FGD) pedoman teknis pelaksanaan kegiatan APBD surakarta th.2021', 'Sekretariat Daerah', 'undangan rapat foccus Group Discussion (FGD) pedoman teknis pelaksanaan kegiatan APBD surakarta th.2021', '2022/12/06', 'bagian keuangan , bu susi dan mas agus', NULL, NULL, NULL, NULL),
(1502, '018.Des/2022', '14.033/PJR/XI/2022', '2022-12-06', 'Undangan Opening Speakers Connext Masterclass: Introduction to Executive Bussines School in Telecoms by APJII & Pijar Foundation.', 'Pijar Foundatioan', 'Undangan Opening Speakers Connext Masterclass: Introduction to Executive Bussines School in Telecoms by APJII & Pijar Foundation.', '2022/12/06', 'bagian kerjasama & umum, siapkan tempatnya (mas susilo dan pak danang)', NULL, NULL, NULL, NULL),
(1503, '019.Des/2022', 'KM.05.00/5189/2022', '2022-12-05', 'pembukaan pameran paroduk usaha mikro', 'Sekretariat Daerah', 'pembukaan pameran paroduk usaha mikro', '2022/12/06', 'bagian inkubator hadiri mas danu', NULL, NULL, NULL, NULL),
(1504, '020.Des/2022', 'TM.00.05/5603/2022', '2022-12-06', 'Undangan Rapat Teknis Tim Koordinasi Kerja Sama Daerah (TKKSD) tentang Pembaharuan Kerja Sama antara Pemerintah Kota Surakarta dengan PT. Shopee International Indonesia.', 'Sekretariat Daerah', 'Undangan Rapat Teknis Tim Koordinasi Kerja Sama Daerah (TKKSD) tentang Pembaharuan Kerja Sama antara Pemerintah Kota Surakarta dengan PT. Shopee International Indonesia.', '2022/12/07', 'Bagian kerjasama. Hadiri. Mas Susilo', NULL, NULL, NULL, NULL),
(1505, '021.Des/2022', '423.4/356', '2022-11-28', 'Permohonan Praktik Kerja Industri SMK Tunas Harapan Pati. (8 siswa)', 'SMK Tuna Harapan Pati', 'Permohonan Praktik Kerja Industri SMK Tunas Harapan Pati. (8 siswa)', NULL, 'bagian diklat pertimbangkan mas budi dan masa chris', NULL, NULL, NULL, NULL),
(1506, '022.Des/2022', '728/OD.03.01', '2022-12-07', 'undangan Public Hearding Hearing Raperda tentang Ketenagakejaan', 'DPRD kota surakarta', 'undangan Public Hearding Hearing Raperda tentang Ketenagakejaan', '2022/12/07', 'disposisi mas riza', 'Undangan', '2022/12/08', '10.00', 'ruang Graha Pripurna DPRD kota surakarta'),
(1507, '023.Des/2022', '852/UN40.R3.2/TU.01.10/2022', '2022-12-06', 'Permohonan kunjungan kerja Program Pengembangan Science Technopark (Inovasi, HKI, dan Paten)', 'Universitas Pendidikan Indonesia', 'Permohonan kunjungan kerja Program Pengembangan Science Technopark (Inovasi, HKI, dan Paten)', '2022/12/08', 'fasilitasi sisiapkan tempat bagian pelayanan, (pak yudit, pak chris, mas danang, ) , bagian umum siapkan tempat (mas danu)', 'kunjungan', '2022/12/16', '09.00-11.00', 'solo technopark'),
(1508, '024.Des/2022', '16/SKL-TM/XII/2022', '2022-12-06', 'Permohonan pinjam gedung untuk Penandatanganan MOU antara PT. Triangle Motorindo (VIAR) dengan Universitas Negeri Sebelas Maret (UNS).', 'VIAR motor indonesia', 'Permohonan pinjam gedung untuk Penandatanganan MOU antara PT. Triangle Motorindo (VIAR) dengan Universitas Negeri Sebelas Maret (UNS).', '2022/12/08', 'bagian kerjasama fasilitasi mas susilo', 'Permohonan', '2022/12/13', '13.00', 'solo technopark'),
(1509, '025.Des/2022', 'DH3.SUR/862/2022', '2022-12-07', 'Permohonan kegiatan Senam Sehat Bersama Nasabah Bank Mandiri Taspen di Solo Technopark. (30 orang)', 'mandiri taspen', 'Permohonan kegiatan Senam Sehat Bersama Nasabah Bank Mandiri Taspen di Solo Technopark. (30 orang)', '2022/12/08', 'bagian umum&kerjasama fasilitasi full mas susilo dan mas danu', 'Permohonan', '2022/12/09', '06.00-08.00', 'solo technopark'),
(1510, '026.Des/2022', '001/HEAVENLYBLUSH/JTG/XII/2022', '2022-12-02', 'Permohonan izin kegiatn edukasi, sampling, dan open both Heavenly Blush di Solo Technopark (Solo Trade Building).', 'Heavenly Blush', 'Permohonan izin kegiatn edukasi, sampling, dan open both Heavenly Blush di Solo Technopark (Solo Trade Building).', '2022/12/08', 'bagian kerjasama dilangsungkan durasi weaktu open booth mas susilo dan mas danu', 'Permohonan', NULL, NULL, 'soso trade building (STP)'),
(1511, '027.Des/2022', 'RP.00/5236/2022', '2022-12-07', 'surat edaran percepatan realisasi belanja, percepatan realisasi belanja dan pleaksanaan desk belanja OPD', 'Sekertariat Daerah', 'surat edaran percepatan realisasi belanja, percepatan realisasi belanja dan pleaksanaan desk belanja OPD', '2022/12/08', 'bagian keuangan bu susi mas agus', NULL, NULL, NULL, NULL),
(1512, '028.Des/2022', '704/005/XII/2022', '2022-12-06', 'undangan pembahasan laporan akhir kajian dampak sosial dan lingkungan pembangunan islamic center kota surakarta', 'Balitbangda', 'undangan pembahasan laporan akhir kajian dampak sosial dan lingkungan pembangunan islamic center kota surakarta', '2022/12/08', 'sudah', 'Undangan', '2022/12/12', '12.30', 'ruang rapat balitbangda surakarta'),
(1513, '029.Des/2022', '217/III.4/AU/A/2022', '2022-11-08', 'kunjungan industri SMK Muhamadiyah Mungkid', 'SMK Muhamadiyah Mungkid', 'kunjungan industri SMK Muhamadiyah Mungkid', '2022/12/08', 'bagian pelayanan fasilitasi mas budi dan pak chris', 'permohonan', '2022/01/04', '09.00', 'STP'),
(1514, '030.Des/2022', '1493/54/KM/2022', '2022-12-08', 'ijin wawancara dalam rangka melengkapi tugas mata kuliah komunikasi publik fakultas ilmu sosial dan ilmu politik UNISRI (5orang)', 'UNISRI', 'ijin wawancara dalam rangka melengkapi tugas mata kuliah komunikasi publik fakultas ilmu sosial dan ilmu politik UNISRI (5orang)', '2022/12/08', NULL, 'Permohonan', NULL, NULL, NULL),
(1515, '031.Des/2022', '046/19.G/SMK-YSJ/XI/2022', '2022-12-09', 'permohonan izin kunjungan industri (company visit) jumlah 80 siswa dan 8 guru', 'SMK YOS SUDARJO JERUKLEGI', 'permohonan izin kunjungan industri (company visit) jumlah perserta 80 siswa dan 8 guru', '2022/12/09', 'bagian pelayanan fasilitasi mas chris dan mas budi', 'permohonan', '2022/01/19', NULL, 'STP'),
(1516, '032.Des/2022', '224/790/103.27.SMK', '2022-12-09', 'pemberitahuan kunjungan dalam rangka melaksanakan program SMK PK Pemadanan (4 peserta)', 'SMK NUSANTARA 1 COMAL', 'pemberitahuan kunjungan dalam rangka melaksanakan program SMK PK Pemadanan (4 peserta)', '2022/12/09', 'sudah ditemui', 'Permohonan', '2022/12/13', '13.00', 'STP'),
(1517, '033.Des/2022', 'RP.00/5292/2022', '2022-12-09', 'Rapat Koordinasi capaian serapan anggaran belanja OPD TA 2022', 'Sekretariat Daerah', 'Rapat Koordinasi capaian serapan anggaran belanja OPD TA 2022', '2022/12/09', 'bagian keuangan bu susi', 'Undandan', '2022/12/12', '13.00', 'Ruang Rapat Tawang Arum Kompleks Balai Kota Surakarta'),
(1518, '034.Des/2022', '028/TV 10/XII/2022', '2022-12-09', 'permohonana kerjasama peliputan program TV 10 dalam hal penayangan peliputan/Revew solo technopark yang dikemas dalam program tayangan jalan-jalan yo di TV 10', 'Televisi Inspirasi dan Edukasi', 'permohonana kerjasama peliputan program TV 10 dalam hal penayangan peliputan/Revew solo technopark yang dikemas dalam program tayangan jalan-jalan yo di TV 10', '12-Des--22', NULL, 'permohonan', NULL, NULL, NULL),
(1519, '035.Des/2022', 'S-1521/PD/KPR.320603/22', '2022-12-08', 'pemberitahuan perubahan data dari permohonan perubahan data yang dikirim pada 8 desember 2022', 'KPP Pratama Surakarta', 'pemberitahuan perubahan data dari permohonan perubahan data yang dikirim pada 8 desember 2022', '12-Des--22', 'bagian keuangan (bu susi mas agus)', 'pemberitahuan', NULL, NULL, NULL),
(1520, '036.Des/2022', 'KT.00/5238/2022', '2022-12-07', 'Penunjukan personil khusus sebagai perwakilan Forum SDC Surakarta. 2. Undangan Koordinasi & Harmonisasi kegiatan Forum SDC Surakarta tahun 2023 dalam rangka Penciptaan Implementasi Program Kerja.', 'Sekretariat Daerah', 'Penunjukan personil khusus sebagai perwakilan Forum SDC Surakarta. 2. Undangan Koordinasi & Harmonisasi kegiatan Forum SDC Surakarta tahun 2023 dalam rangka Penciptaan Implementasi Program Kerja.', '12-Des--22', 'bagian pelayanan pak cris', 'Undangan', '12-Des--22', '12.30', 'aula BPUD Surakarta'),
(1521, '037.Des/2022', '223/790/103.27.SMK.NUST.1/XII/PP/2022', '2022-12-09', 'Pemberitahuan kegiatan kunjungan INCUKA (4 peserta)', 'SMK Nusantara 1 Comal', 'Pemberitahuan kegiatan kunjungan INCUKA (4 peserta)', '12-Des--22', 'bagian pelayanan dan kerjasama (pak cris dan pak susilo)', NULL, NULL, NULL, NULL),
(1522, '038.Des/2022', '4/TKIM/XII/2022', '2022-12-12', 'Izin Outing Class', 'KB-TK&TPA Isalam \"insan mulia\"', 'Izin Outing Class', '12-Des--22', 'bagian HRD & Sekretariat ( bu lusi dan bu ani) bagian untuk siapkan tempat (mas dany)', NULL, NULL, NULL, NULL),
(1523, '039.Des/2022', 'B/140.39/UN.37.15/KM/22', '2022-12-05', 'Permohonan izin PKL mahasiswa fakultas teknik Universitas negri Semarang (4 peserta)', 'Universitas Negri Semarang', 'Permohonan izin PKL mahasiswa fakultas teknik Universitas negri Semarang (4 peserta)', '12-Des--22', 'bagian pelayanan 2 dimasukan media branding, 2 simasukan IDT (mas christian dan mas eko)', NULL, NULL, NULL, NULL),
(1524, '040.Des/2022', 'PG.00/538/XII/2022', '2022-12-09', 'undangan rapat koordinasi pemenuhan kebutuhan tenaga outsourcing di lingkungan pemkot surakarta TA.2023', 'Sekretariat Daerah', 'undangan rapat koordinasi pemenuhan kebutuhan tenaga outsourcing di lingkungan pemkot surakarta TA.2023', '12-Des--22', 'bagian keuangan dihadiri bu susi dan mas agus', NULL, NULL, NULL, NULL),
(1525, '041.Des/2022', 'TM.00.07/494/XII/2022', '2022-12-12', 'undangan sosialisasi penyusunan bukti potong instansi pemerintah serta pra Rekon pajak pusat TA 2022', 'BPKD', 'undangan sosialisasi penyusunan bukti potong instansi pemerintah serta pra Rekon pajak pusat TA 2022', '12-Des--22', 'Bagian keuangan hadiri (bu susi, bu anna)', 'undanngan', '2022/12/13', '09.00', 'hotel megaland'),
(1526, '042.Des/2022', 'KD.01.03/5284/2022', '2022-12-09', 'usulan pengurus barang dan penyimpanan baraang TA 2023', 'Sekretariat daerah', 'usulan pengurus barang dan penyimpanan baraang TA 2023', '2022/12/13', 'bagian keuangan bu susi', 'Permohonan', NULL, NULL, NULL),
(1527, '043.Des/2022', '722/005/XII/2022', '2022-12-12', 'Undangan laporan akhir kajian penilaian ulang BLUD', 'Balitbangda', 'Undangan laporan akhir kajian penilaian ulang BLUD', '2022/12/13', 'sudah dihadiri', 'Undangan', '2022/12/16', '08.30', 'ruang rapat balitbangda surakarta'),
(1528, '044.Des/2022', '070/1526/XII/2022', '2022-12-08', 'surat izin rekomendasai dari instansi permohonan untuk melakukan penelitian dengan judul \"pengembangan strategi solo technopark menjadi role model technopark Nasional/Studi kasus service Quality tenanda mengunakan servqual IPA dan QTD)', 'Balitbangda', 'surat izin rekomendasai dari instansi permohonan untuk melakukan penelitian dengan judul \"pengembangan strategi solo technopark menjadi role model technopark Nasional/Studi kasus service Quality tenanda mengunakan servqual IPA dan QTD)', '2022/12/14', 'bagian kerjasama dan kawasan mas susilo dan pak untung', 'permohonan', NULL, NULL, NULL),
(1529, '045.Des/2022', '046/19.6/SMK.YSJ/XI/22', '2022-12-11', 'permohonan kunjungan industri company visit (88 peserta)', 'SMK YOS SUDARSO JERUKLEGI', 'permohonan kunjungan industri company visit (88 peserta)', '2022/12/14', 'bagian pelayanan pak christ mas budi', 'Permohonan', '2022/01/19', NULL, NULL),
(1530, '046.Des/2022', '476/UN 27.2.1.3.8/PK.01.06/2022', '2022-12-12', 'permohonan izin magang (3orang) dari manajemen bisnis', 'UNS', 'permohonan izin magang (3orang) dari manajemen bisnis', '2022/12/14', 'dikirimkan posisi ppemimpin 1 orang skretariat 1 orang pak yudit dan pak cristian', 'Permohonan', '09-Jan s.d 24-Mar', NULL, NULL),
(1531, '047.Des/2022', '076/19.6/SMK.YSJ/XI/2022', '2022-12-11', 'Permohonan izin kunjungan industri (company visit) (60 peserta)', 'SMK YOS SUDARSO JERUKLEGI', 'Permohonan izin kunjungan industri (company visit) (60 peserta)', '2022/12/14', 'bagian pelayanan diklat pak christ mas budi', 'Permohonan', '2022/01/19', NULL, NULL),
(1532, '048.Des/2022', '046/19.6/SMK.YSJ/XI/2022', '2022-12-11', 'Permohonan izin kunjungan industri (company visit) (38 peserta)', 'SMK YOS SUDARSO JERUKLEGI', 'Permohonan izin kunjungan industri (company visit) (38 peserta)', '2022/12/14', 'bagian pelayanan fasilitasi pak chris pak budi', 'Permohonan', '2022/01/19', NULL, NULL),
(1533, '049.Des/2022', '0559/BAAK.01/AK.7/TM/XII/2022', '2022-12-12', 'Permohonan PKL /magang prodi akuntansi waktu magang : 6 bulan (6 febuari-7juli 2023) bagian keuangan dan administrasi keuangan', 'Politama', 'Permohonan PKL /magang prodi akuntansi waktu magang : 6 bulan (6 febuari-7juli 2023) bagian keuangan dan administrasi keuangan', '2022/12/15', NULL, 'Permohonan', '6 febuari-7 juli 2022', NULL, NULL),
(1534, '050.Des/2022', '729/005/XII/2022', '2022-12-14', 'undangan pembahasan tindak lanjut pengumpulan stakeholder calon responden indeks kepemimpinan kepala daerah (IKKD)', 'Balitbangda', 'undangan pembahasan tindak lanjut pengumpulan stakeholder calon responden indeks kepemimpinan kepala daerah (IKKD)', '2022/12/15', 'sudah dihadiri', 'Undangan', '2022/12/15', '09.00', 'ruang rapat balitbangda surakarta'),
(1535, '051.Des/2022', '730/055/XII/22', '2022-12-15', 'undangan rapat pembatasan klausul perpajakan pada perjanjian bangun guna serah (BOS) antara PT Shopee indonesia dengan Pemerintah kota surakarta', 'Balitbangda', 'undangan rapat pembatasan klausul perpajakan pada perjanjian bangun guna serah (BOS) antara PT Shopee indonesia dengan Pemerintah kota surakarta', '2022/12/15', 'pak susilo', 'Undangan', '2022/12/15', '13.00', NULL),
(1536, '052.Des/2022', 'B/15442/122022', '2022-12-12', 'Informasi upah minimum 35 kabupaten/ kota di provinsi jawa tengah 2023 dan iuran tetap bulan BPJS ketenagakerjaan', 'BPJS ketenagakerjaan', 'Informasi upah minimum 35 kabupaten/ kota di provinsi jawa tengah 2023 dan iuran tetap bulan BPJS ketenagakerjaan', '2022/12/15', NULL, 'pemberitahuan', NULL, NULL, NULL),
(1537, '053.Des/2022', 'KU.00/5384/2022', '2022-12-14', 'Undangan menyaksikan penyerahan DPPA tahun anggaran 2023', 'Sekertariat Daerah', 'Undangan menyaksikan penyerahan DPPA tahun anggaran 2023', '2022/12/16', 'sudah dihadiri', 'undangan', '2022/12/19', '08.00', 'pendapi gedhe sala- balaikota surakarta'),
(1538, '054.Des/2022', '13/2449/UN/34/18/PK.01.06/2023', '2022-12-16', 'permohonan praktik kerja lapangan/magang FE UNY (satu orang )', 'UNY', 'permohonan praktik kerja lapangan/magang FE UNY (satu orang )', '2022/12/16', NULL, 'Permohonan', '1-Feb s.d 1-april', NULL, NULL),
(1539, '055.Des/2022', '6069/113/KM.0.02.2023', '2022-12-16', 'Permohonan kunjungan audiensi mengenai peningkatan kualitas kurikulum dan lulusan perguruan tuinggi khususnya pada bidang (yhei sechurity)', 'Kemendikbud ristek', 'Permohonan kunjungan audiensi mengenai peningkatan kualitas kurikulum dan lulusan perguruan tuinggi khususnya pada bidang (yhei sechurity)', '2022/12/19', 'disiapkan pelayanan , siapkan snack dan makan siaNG PERSONIL ll dikti dan pt (10 orang) ( yudsit, shristian, susilo, risky)', 'permohonan', '2022/12/22', '09.00-12.00', 'solo technopark'),
(1540, '056.Des/2022', 'TM.00.07/505/XII/2022', '2022-12-16', 'Undangan rapat koordinasi persiapan FGD penerapan standar audit 600 pada pemeriksaan LK BLUD dan LK BUMD sebagai dukungan pemeriksaan LKPD', 'BPKAD', 'Undangan rapat koordinasi persiapan FGD penerapan standar audit 600 pada pemeriksaan LK BLUD dan LK BUMD sebagai dukungan pemeriksaan LKPD', '2022/12/19', 'sudah dihadiri', 'Undangan', '2022/12/19', '10.00', 'ruang rapat BPKAD Surakarta'),
(1541, '057.Des/2022', '3958/BP.03.04/XII/2022', '2022-12-15', 'undangan rapat penyusunan rekomendasi FEDEP/Forum pengembangan ekonomi lokal (PEL) th 2022', 'BPPD', 'undangan rapat penyusunan rekomendasi FEDEP/Forum pengembangan ekonomi lokal (PEL) th 2022', '2022/12/19', 'bagian pelayanan hadiri pak cristian', 'Undangan', '2022/12/21', '09.00', NULL),
(1542, '058.Des/2022', 'PG.00/5454/2022', '2022-12-19', 'undangan rapat koordinasi monitoring dan evaluasi (Monev) pengadaan barang/ jasa triwulan IV TA 2022', 'Sekertariat Daerah', 'undangan rapat koordinasi monitoring dan evaluasi (Monev) pengadaan barang/ jasa triwulan IV TA 2022', '2022/12/19', NULL, 'Undangan', '2022/12/20', '08.30', 'Ruang tawangarum'),
(1543, '059.Des/2022', 'TM.00.07/504/XII/2022', '2022-12-19', 'Undangan sosialisasi peraturan walikota tentang tata cara pergeseran anggaran, peraturan walikota tentang pedoman petunjuk teknis APBD TA 2023. dan penyampaian laporan keuangan daerah TN 2022 pemerintah kota surakarta', 'BPKAD', 'Undangan sosialisasi peraturan walikota tentang tata cara pergeseran anggaran, peraturan walikota tentang pedoman petunjuk teknis APBD TA 2023. dan penyampaian laporan keuangan daerah TN 2022 pemerintah kota surakarta', '2022/12/19', 'bagian keuangan bu susi mas agus', 'Undangan', '2022/12/21', '08.30', 'Swiss-Belin Saripetojo'),
(1544, '060.Des/2022', '399/UM DPC.PDI-P/XI/2022', '2022-12-20', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', 'DPC PDI PERJUANGAN', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', '2022/12/20', 'bagian umum disiapkan dikirim pak untung', 'Permohonan', '03 s.d 11- jan-22', '08.00', 'Bumi perkemahan dan graha wisata pramuka cibubur'),
(1545, '061.Des/2022', 'PG.00/5481/2022', '2022-12-20', 'Undangan koordinasi pelaksanaan pengadaan barang/jasa di lingkungan pemerintah Kota Surakarta', 'Sekretariat Daerah', 'Undangan koordinasi pelaksanaan pengadaan barang/jasa di lingkungan pemerintah Kota Surakarta', '2022/12/20', 'Sudah dihadiri keuangan', 'Undangan', '21-Des s.d 22-Des-22', '09.00', 'Ruangan Manganti Praja Balaikota Surakarta'),
(1546, '062.Des/2022', '4014/KI.03.01/XII/2022', '2022-12-19', 'Undangan rapat forum satu data kota surakarta dan monitoring serta evaluasi penyelenggaraan satu data', 'Bappeda', 'Undangan rapat forum satu data kota surakarta dan monitoring serta evaluasi penyelenggaraan satu data', '2022/12/20', 'Sudah dihadiri Mas Danu', 'Undangan', '2022/12/22', '09.00', 'Zoom'),
(1547, '063.Des/2022', '399/UM/DPC.PDI-P/XII/2022', '2022-12-08', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', 'DPC PDI PERJUANGAN', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', '2022/12/21', 'Bagian umum diijinkan', 'Permohonan', '03 s.d 11- jan-22', '08.00', 'Bumi perkemahan dan graha wisata pramuka cibubur'),
(1548, '064.Des/2022', '413/UM/DPC.PDI-P/XII/2022', '2022-12-12', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', 'DPC PDI PERJUANGAN', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', '2022/12/21', 'Bagian umum diijinkan', 'Permohonan', '03 s.d 11- jan-22', '08.00', 'Bumi perkemahan dan graha wisata pramuka cibubur'),
(1549, '065.Des/2022', 'B/13760/UN37.1.5/KM/2022', '2022-11-29', 'Permohonan izin PKL mahasiswa fakultas teknik Universitas negri Semarang (2 peserta)', 'UNNES Semarang', 'Permohonan izin PKL mahasiswa fakultas teknik Universitas negri Semarang (2 peserta)', '2022/12/22', 'Bagian pelayanan fasilitasi', 'Permohonan', '06-Feb s.d 06-Ags', NULL, NULL);
INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(1550, '066.Des/2022', '413/UM/DPC.PDI-P/XII/2022', '2022-12-12', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', 'DPC PDI PERJUANGAN', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', '2022/12/21', 'Diberikan ijin bagian umum', 'Permohonan', '09 s.d 11- jan-22', '08.00', 'Jakarta International Expo'),
(1551, '067.Des/2022', '001/SK-PPA/M-XII/2022', '2022-12-21', 'Permohonan izin penarikan magang UNISRI', 'UNISRI', 'Permohonan izin penarikan magang UNISRI', '2022/12/22', 'Sudah di follow up', 'Permohonan', '2022/12/23', NULL, 'solo technopark'),
(1552, '068.Des/2022', '413/UM/DPC.PDI-P/XII/2022', '2022-12-12', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', 'DPC PDI PERJUANGAN', 'Dispensasi ijin kerja latihan dan atraksi gelar pasukan apel satgas PDI perjuangan kota surakarta', '2022/12/23', 'Diberikan ijin bagian umum', 'Permohonan', '03 s.d 11- jan-22', '08.00', 'Bumi perkemahan dan graha wisata pramuka cibubur'),
(1553, '069.Des/2022', '914/UN27.04.9.3/ICD/B/XII/2022', '2022-12-23', 'Permohonan izin magang (4 orang) FEB UNS', 'UNS', 'Permohonan izin magang (4 orang) FEB UNS', '2022/12/23', NULL, 'Permohonan', '09-Jan s.d 09-Feb-23', NULL, NULL),
(1554, '070.Des/2022', 'PG.00/5503/2022', '2022-12-21', 'Surat edaran tentang percepatan pelaksanaan pengadaan barang/jasa di lingkungan pemkot surakarta', 'Setda', 'Surat edaran tentang percepatan pelaksanaan pengadaan barang/jasa di lingkungan pemkot surakarta', '2022/12/23', 'Bagian keuangan', 'Pemberitahuan', NULL, NULL, NULL),
(1555, '071.Des/2022', 'PG.00/5503.1/2022', '2022-12-21', 'Surat edaran tentang periodesasi tender/seleksi pengadaan barang/jasa di lingkungan pemkot surakarta', 'Setda', 'Surat edaran tentang periodesasi tender/seleksi pengadaan barang/jasa di lingkungan pemkot surakarta', '2022/12/23', 'Bagian keuangan', 'Pemberitahuan', NULL, NULL, NULL),
(1556, '072.Des/2022', '748/OD.03.01', '2022-12-22', 'Undangan sosialisasi RAPERDA tentang ketenagakerjaan', 'DPRD kota surakarta', 'Undangan sosialisasi RAPERDA tentang ketenagakerjaan', '2022/12/23', 'Bagian kerjasama', 'Pemberitahuan', '2022/12/26', '08.30', 'Ballroom The Sunan Hotel'),
(1557, '073.Des/2022', '423.4/880/101.6.24.16/2022', '2022-12-12', 'Permohonan kunjungan industri Kamis 2 Feb 2023 pukul 10.00 (120 orang)', 'SMKN 1 Sidaya Gresik', 'Permohonan kunjungan industri Kamis 2 Feb 2023 pukul 10.00 (120 orang)', '2022/12/26', 'Bagian Pelayanan fasilitasi', 'Permohonan', '2023/02/02', '10.00', 'solo technopark'),
(1558, '074.Des/2022', 'E-5/SMP AL QOLAM/004/XII/2022', '2022-12-23', 'Permohonan pelaksanaan kegiatan outing class (120 orang)', 'SMP Al Qolam Muhammadiyah Gemolong', 'Permohonan pelaksanaan kegiatan outing class (120 orang)', '2022/12/26', 'Sekretariat follow up', 'Permohonan', '2022/12/28', '07.30', 'Solo Science Center'),
(1559, '075.Des/2022', 'PG.00/5576/2022', '2022-12-26', 'Penggunaan katalog lokal kota surakarta TA 2023', 'Setda', 'Penggunaan katalog lokal kota surakarta TA 2023', '2022/12/26', 'Penggunaan STP, Kerjasama (Sosialisasi)', 'pemberitahuan', NULL, NULL, NULL),
(1560, '076.Des/2022', 'PG.00/5578/2022', '2022-12-26', 'Surat edaran tentang penilaian penyedia TA 2022', 'Setda SKA', 'Surat edaran tentang penilaian penyedia TA 2022', '2022/12/26', 'Bagian Keuangan Diklat Penilaian', 'pemberitahuan', NULL, NULL, NULL),
(1561, '001.Jan/2023', '03/PN.00/I/2023', '2023-01-02', 'Penyampaian Hasil Koordinasi Laporan BLUD STP Tahun 2022', 'Balitbangda Surakarta', 'Penyampaian Hasil Koordinasi Laporan BLUD STP Tahun 2022', '02-Jan-23', 'Bagian Keuangan Follow Up', 'Pemberitahuan', NULL, NULL, NULL),
(1562, '002.Jan/2023', 'RP.00/5605/2022', '2022-12-30', 'Surat Edaran tentang Pengisian dan Penguploadan Database TA 2022', 'Setda Surakarta', 'Surat Edaran tentang Pengisian dan Penguploadan Database TA 2022', '02-Jan-23', 'Bagian Keuangan Bu Susi', 'Pemberitahuan', NULL, NULL, NULL),
(1563, '003.Jan/2023', 'TM.00.03/005/2023', '2023-01-02', 'Undangan RAKOR Monev Pengadaan Barjas TA 2022; Persiapan Pelaksanaan Pengadaan Barjas TA 2023', 'Setda Surakarta', 'Undangan RAKOR Monev Pengadaan Barjas TA 2022; Persiapan Pelaksanaan Pengadaan Barjas TA 2023', '02-Jan-23', 'Bagian Keuangan Hadiri', 'Undangan', '03-Jan-23', '12.30', 'Ruang Tawangarum Komplek Balaikota Surakarta'),
(1564, '004.Jan/2023', NULL, '2023-01-02', 'Undangan Pengarahan Penunjukan Kap sesuai data sikap', 'BPKAD Surakarta', 'Undangan Pengarahan Penunjukan Kap sesuai data sikap', '03-Jan-23', 'Tolong dihadiri', 'Undangan', '04-Jan-23', '08.30', 'Ruang Rapat 3 BPKAD Kota Surakarta'),
(1565, '005.Jan/2023', 'TM.00.07/529/XII/2022', '2022-12-30', 'Undangan Rekonsiliasi Laporan Keuangan SKPD TA 2022', 'BPKAD Surakarta', 'Undangan Rekonsiliasi Laporan Keuangan SKPD TA 2022', '04-Jan-23', 'Mas Agus, Mas Budi, Mbak Ana mohon hadir dan siapkan dokumen terkait.Nuwun', 'Undangan', '04 s.d 24-Jan-23', '08.00-15.30', 'The Sunan Hotel Solo'),
(1566, '006.Jan/2023', 'PW.00/0043/I/2023', '2023-01-03', 'Revisi Laporan Keuangan Pemkot Surakarta Tahun 2022', 'Inspektorat', 'Revisi Laporan Keuangan Pemkot Surakarta Tahun 2022', '04-Jan-23', 'Kepala UPTD KST : Tolong koordinasikan dengan Mas Agus, Mbak Ana dan Mas Budi dan siapkan kelengkapan lap. Keuangan', 'Undangan', '10 s.d 24-Jan-23', '08.00', 'Hotel Sunan'),
(1567, '007.Jan/2023', 'PM.05.02/6107', '2022-11-03', 'Pengambilan Gambar Potensi Investasi dan Peluang Usaha', 'DPMPTSP Surakarta', 'Pengambilan Gambar Potensi Investasi dan Peluang Usaha', '04-Jan-23', 'Bagian Kerjasama', 'Pemberitahuan', NULL, NULL, NULL),
(1568, '008.Jan/2023', '0065/E/GOV/SM/SPID/XII/2022', '2023-01-04', 'Permohonan Izin Pengambilan Gambar Seluruh Area STP', 'Shopee', 'Permohonan Izin Pengambilan Gambar Seluruh Area STP', '04-Jan-23', 'Fasilitasi bagian umum', 'Pemberitahuan', '12 s.d 14-Jan-23', '08.00-19.00', 'Solo Techno Park'),
(1569, '009.Jan/2023', 'KA.01.03/038/2023', '2023-01-04', 'Surat Edaran tentang Hari Libur Nasional dan Cuti Bersama Tahun 2023', 'Setda Surakarta', 'Surat Edaran tentang Hari Libur Nasional dan Cuti Bersama Tahun 2023', '04-Jan-23', 'Kepala UPTD : Kepala TU mohon dipedomani dan diinfokan kpd seluruh karyawan UPTD KST', 'Pemberitahuan', NULL, NULL, NULL),
(1570, '010.Jan/2023', 'B-00137/HM.02.02/Dt.5.3/01/2012', '2023-01-04', 'Permohonan Kunjungan Diskusi Kebijakan KST untuk Perencanaan Pembangunan Nasional bidang IPTEK ke depan', 'BAPPENAS', 'Permohonan Kunjungan Diskusi Kebijakan KST untuk Perencanaan Pembangunan Nasional bidang IPTEK ke depan', '05-Jan-23', 'Diterima', 'Permohonan', '13-Jan-23', '09.00', 'Solo Techno Park'),
(1571, '011.Jan/2023', '463.2/131.4/404.3.1.9.21.001/2023', '2023-01-04', 'Permohonan Kunjungan Industri (47 orang)', 'SMK Krian 1 Sidoarjo', 'Permohonan Kunjungan Industri (47 orang)', '05-Jan-23', 'Fasilitasi', 'Permohonan', '31-Jan-23', '10.00', 'Solo Techno Park'),
(1572, '012.Jan/2023', '08/YG/SMKSBLORA/I.II/1.2023', '2023-01-05', 'Permohonan Kunjungan Industri (20 orang)', 'SMKS Katolik Santo Pius Blora', 'Permohonan Kunjungan Industri (20 orang)', '05-Jan-23', 'Fasilitasi', 'Permohonan', '31-Jan-23', '09.00', 'Solo Techno Park'),
(1573, '013.Jan/2013', NULL, '2022-10-01', 'Proposal Sponsorship Roboboat 2023', 'UNS', 'Proposal Sponsorship Roboboat 2023', '05-Jan-23', 'Bagian kerjasama pelajari', 'Permohonan', NULL, NULL, NULL),
(1574, '014.Jan/2023', 'B/024/KP/I/2023', '2023-01-04', 'Admin Ulas dan SP4N LAPOR', 'Diskominfo SP', 'Admin Ulas dan SP4N LAPOR', '05-Jan-23', 'KA.TU tolong buatkan surat pengantar', 'Pemberitahuan', NULL, NULL, NULL),
(1575, '015.Jan/2023', '01/MusrenJbrs/I/2023', '2023-01-04', 'Permohonan Pinjam Pakai Ruangan MusrenBangkel Jebres Tahun 2023', 'Panitia Musrenbangkel Jebres', 'Permohonan Pinjam Pakai Ruangan MusrenBangkel Jebres Tahun 2023', '05-Jan-23', 'Fasilitas Gedung R&D', 'Permohonan', '15-Jan-23', '08.00', NULL),
(1576, '016.Jan/2023', '267/UN27.4.6.2/KP/2022', '2022-12-29', 'Undangan Workshop Kemitraan Program Merdeka Belajar Kampus Merdeka (MBKM)', 'FEB UNS', 'Undangan Workshop Kemitraan Program Merdeka Belajar Kampus Merdeka (MBKM)', '05-Jan-23', 'Hadiri', 'Undangan', '07-Jan-23', '09.00-13.00', 'Al Fawwaz Meeting Room Lt. 12 Syariah Hotel Solo'),
(1577, '017.Jan/2023', 'KU.00/057/2023', '2023-01-05', 'Surat Edaran tentang Penyusunan Pelaporan Pengendalian Kegiatan APBD TA 2022 dan Percepatan Pelaksanaan APBD TA 2023 di Lingkungan Pemkot Surakarta', 'Setda Surakarta', 'Surat Edaran tentang Penyusunan Pelaporan Pengendalian Kegiatan APBD TA 2022 dan Percepatan Pelaksanaan APBD TA 2023 di Lingkungan Pemkot Surakarta', '06-Jan-23', 'Kepala UPTD', 'Pemberitahuan', NULL, NULL, NULL),
(1578, '018.Jan/2023', '04/I.3/B/S.Ph/I/2023', '2023-01-06', 'Permohonan Kunjungan Industri', 'STKIP Muhammadiyah Blora', 'Permohonan Kunjungan Industri', '06-Jan-23', 'Bagian Pelayanan Fasilitasi diberikan surat balasan', 'Permohonan', '12-Jan-23', '08.00-09.30', NULL),
(1579, '019.Jan/2023', '421.4/002/2023', '2023-01-02', 'Permohonan Tempat Praktik Kerja Lapangan (PKL)', 'SMKN 2 Karanganyar', 'Permohonan Tempat Praktik Kerja Lapangan (PKL)', '06-Jan-23', 'Fasilitasi dan buatkan surat balasan', 'Permohonan', '27-Feb s.d 13-Mei-23', NULL, NULL),
(1580, '020.Jan/2023', NULL, '2023-01-06', 'Test Drive', 'Shopee Xpress', 'Test Drive', '06-Jan-23', 'Sudah dilaksanakan', 'Permohonan', '07-Jan-23', '09.00-16.00', NULL),
(1581, '021.Jan/2023', 'TM.00.07/101/I/2023', '2023-01-04', 'Undangan Rapat Koordinasi Anggaran BLUD', 'BPKAD Kota Surakarta', 'Undangan Rapat Koordinasi Anggaran BLUD', '06-Jan-23', 'KA.TU tolong siapkan materi RBA (hard & soft), tugaskan bendahara BLUD hadir bersama saya ; Pemimpin BLUD mohon dapat hadir juga bersama saya', 'Undangan', '09-Jan-23', '09.00', 'Ruang Rapat 3 BPKAD Kota Surakarta'),
(1582, '022.Jan/2023', '129/PO/I/2023', '2023-01-05', 'Permohonan Data Kewirausahaan Pemuda Tahun 2022', 'Dinas Kepemudaan dan Olahraga', 'Permohonan Data Kewirausahaan Pemuda Tahun 2022', '06-Jan-23', 'Pejabat teknis layanan mohon siapkan data data peserta Solocorn dan tolong kirimkan ke CP di dalam surat', NULL, NULL, NULL, NULL),
(1583, '023.Jan/2023', '250/103.30/SMK.WP/H/2023', '2023-01-06', 'Permohonan Kunjungan Industri', 'SMK Widya Praja Ungaran', 'Permohonan Kunjungan Industri (21 orang)', '06-Jan-23', 'Bagian Diklat fasilitasi', 'Permohonan', '16-Jan-23', '09.00', NULL),
(1584, '024.Jan/2023', 'Email', '2023-01-09', 'Undangan Kolaborasi Penthahelix di DUDI', 'PMO Kedaireka', 'Undangan Kolaborasi Penthahelix di DUDI', '09-Jan-23', 'Pemimpin BLUD KST STP', 'Undangan', NULL, NULL, NULL),
(1585, '026.Jan/2023', 'KI.03.00/066/2023', '2023-01-06', 'Undangan Persiapan Pelaksanaan SKM pada unit Pelayanan Publik di Lingkungan Pemkot Surakarta', 'Sekretariat Daerah', 'Undangan Persiapan Pelaksanaan SKM pada unit Pelayanan Publik di Lingkungan Pemkot Surakarta', '09-Jan-23', 'Pejabat Teknis Umum mohon ikuti dan laporkan', 'Undangan', '13-Jan-23', '09.00', 'Zoom Meeting'),
(1586, '027.Jan/2023', 'T-800/8/Nakertrans/2023', '2023-01-09', 'Permohonan Kunjungan Studi Komperatif Pengembangan SDM', 'Dinas Tenaga Kerja dan Transmigrasi Kabupaten Musi Banyuasin', 'Permohonan Kunjungan Studi Komperatif Pengembangan SDM', '10-Jan-23', 'Ditemui', 'Permohonan', '10-Jan-23', NULL, 'Solo Techno Park'),
(1587, '028.Jan/2023', 'KM.00/06/I/2023', '2023-01-02', 'Undangan Diskusi Kelompok Terbatas (DKT) Penyusunan Rencana Kerja (RENJA) Dinas Kooperasi, UKM dan Perindustrian Kota Surakarta', 'Dinas Kooperasi, UKM dan Perindustrian Kota Surakarta', 'Undangan Diskusi Kelompok Terbatas (DKT) Penyusunan Rencana Kerja (RENJA) Dinas Kooperasi, UKM dan Perindustrian Kota Surakarta', '10-Jan-23', 'Saya hadir. Pejabat Teknis PP tolong siapkan data-data Solocorn dan Smeska dan rincian programnya', 'Undangan', '12-Jan-23', '08.00', 'Harris Hotel'),
(1588, '029.Jan/2023', '27/PM.02.00/1/2023', '2023-01-09', 'Permohonan Personil Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi', 'Balitbangda Surakarta', 'Permohonan Personil Pendampingan Hilirisasi Hasil Riset Perguruan Tinggi', '10-Jan-23', 'Ka. TU tolong buatkan surat jawaban. Nuwun', 'Permohonan', '13-Jan-23', NULL, NULL),
(1589, '030.Jan/2023', '37/PN.02.00/I/2023', '2023-01-09', 'Permohonan Tim Pendamping Kegiatan Pendampingan Produk Hasil Lomba Krenova Tingkat Kota Surakarta', 'Balitbangda Surakarta', 'Permohonan Tim Pendamping Kegiatan Pendampingan Produk Hasil Lomba Krenova Tingkat Kota Surakarta', '10-Jan-23', 'Ka. TU tolong buatkan surat balasan. Nuwun', 'Permohonan', NULL, NULL, NULL),
(1590, '031.Jan/2023', '084/F-3.a/STIES/57/I/2023', '2023-01-07', 'Permohonan Izin Tempat Magang (2 orang)', 'STIE Surakarta', 'Permohonan Izin Tempat Magang (2 orang)', '11-Jan-23', 'Diterima bagian magang (Mas Rizky)', 'Permohonan', '01-Feb s.d 31-Mar-23', NULL, NULL),
(1591, '032.Jan/2023', '45/PN.02.00/I/2023', '2023-01-10', 'Permohonan Personil Juri Lomba Kreativitas dan Inovasi Kota Surakarta', 'Balitbangda Surakarta', 'Permohonan Personil Juri Lomba Kreativitas dan Inovasi Kota Surakarta', '11-Jan-23', 'Ka. TU tolong buatkan surat balasan. Nuwun', 'Permohonan', '17-Jan-23', NULL, NULL),
(1592, '033.Jan/2023', NULL, '2023-01-11', 'Pemberitahuan Kegiatan Acara Pre-Event Peresmian Kawasan STP', 'PT SHOPEE INTERNATIONAL INDONESIA', 'Pemberitahuan Kegiatan Acara Pre-Event Peresmian Kawasan STP', '12-Jan-23', 'Arsipkan', 'Pemberitahuan', '13-Jan s.d 15-Jan-23', NULL, 'Solo Techno Park'),
(1593, '034.Jan/2023', '09/TEPANAS/I/2023', '2023-01-12', 'Permohonan Kerjasama Program Soft Opening Solo Safari', 'TEPANAS (Teman Parekraf Nasional)', 'Permohonan Kerjasama Program Soft Opening Solo Safari', '12-Jan-23', 'Sudah dihadiri', 'Permohonan', '13-Jan-23', '14.00', 'Kantor Solo Techno Park'),
(1594, '035.Jan.2023', '054/1.b/PR/UMC.DK.FE/I/2023', '2023-01-12', 'Permohonan Kemitraan sebagai Fasilitator Program Orientasi Digipreneurship bagi Mahasiswa', 'FE Universitas Muhammadiyah Cirebon', 'Permohonan Kemitraan sebagai Fasilitator Program Orientasi Digipreneurship bagi Mahasiswa', '12-Jan-23', 'Fasilitasi bagian kerjasama buat PKS (Pak Susilo) dan Bagian Inkubator buat program (Pak Danu)', 'Permohonan', NULL, NULL, NULL),
(1595, '036.Jan/2023', 'S-28/KPP.3206/2023', '2023-01-05', 'Penyampaian SPT Tahunan PPh Orang Pribadi secara e-Filling sesuai SE MENPAN Nomor 8 Tahun 2015 hal kewajiban ASN/TNI dan POLRI', 'KPP Pratama Surakarta', 'Penyampaian SPT Tahunan PPh Orang Pribadi secara e-Filling sesuai SE MENPAN Nomor 8 Tahun 2015 hal kewajiban ASN/TNI dan POLRI', '12-Jan-23', 'Ka. TU tolong infokan ke ASN KST STP, koordinasikan bukti potong dari Bendahara Balitbangda. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1596, '037.Jan/2023', '174/UN1/SV2-TEDI/AKM/PI/2023', '2023-01-12', 'Permohonan Praktik Industri (1 orang)', 'Sekolah Vokasi UGM', 'Permohonan Praktik Industri (1 orang)', '12-Jan-23', 'Diterima, didata Mas Risky ditempatkan di IT', 'Permohonan', '26-Jun s.d 14-Agt-23', NULL, NULL),
(1597, '038.Jan/2023', 'KT.00/17', '2023-01-12', 'Undangan Diskusi Kelompok Terbatas (DKT) Penyusunan Rencana Kerja (RENJA) Dinas Tenaga Kerja', 'Dinas Tenaga Kerja', 'Undangan Diskusi Kelompok Terbatas (DKT) Penyusunan Rencana Kerja (RENJA) Dinas Tenaga Kerja', '13-Jan-23', 'Pemimpin BLUD KST STP', 'Undangan', '17-Jan-23', '08.30', 'Megaland Hotel'),
(1598, '039.Jan/2023', 'RP.05/104/2023', '2023-01-10', 'Undangan Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK)', 'Setda Surakarta', 'Undangan Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK)', '13-Jan-23', 'Ka. TU tolong siapkan bahan dan hadir bersama saya (tolong buatkan rincian yg tidak terserap apa saja dan nilainya berapa. Nuwun)', 'Undangan', '17-Jan-23', '09.00', 'Balai Tawangarum Kompleks Balaikota Surakarta'),
(1599, '040.Jan/2023', NULL, '2023-01-12', 'Undangan Acara Tech to Impact - Networking and Sharing Session', 'British Embassy Jakarta', 'Undangan Acara Tech to Impact - Networking and Sharing Session', '13-Jan-23', 'Sudah dihadiri', 'Undangan', '18-Jan-23', '10.00-13.00', NULL),
(1600, '041.Jan/2023', '387/UN27.21/PK.01.06/2023', '2023-01-12', 'Permohonan Kuliah Magang Mahasiswa (KMM) Individu secara Luring', 'Sekolah Vokasi UNS', 'Permohonan Kuliah Magang Mahasiswa (KMM) Individu secara Luring', '13-Jan-23', 'Diterima bagian kerjasama (Pak Susilo)', 'Permohonan', 'Jan-Maret 23', NULL, NULL),
(1601, '042.Jan/2023', '52/005/I/2023', '2023-01-12', 'Undangan Sosialisasi Penyusunan Sasaran Kinerja Pegawai Tahun 2023', 'Balitbangda Surakarta', 'Undangan Sosialisasi Penyusunan Sasaran Kinerja Pegawai Tahun 2023', '12-Jan-23', 'Ka. TU, Mas Agus, Mas Budi hadir bersama saya. Nuwun', 'Undangan', '16-Jan-23', '12.30', 'Ruang Rapat BALITBANGDA'),
(1602, '043.Jan/2023', '03.010/GDC/I/2023', '2023-01-16', 'Permohonan Waktu Diskusi Program Pendidikan Commercial Diving', 'PT. Pusat Wisata Selam Global', 'Permohonan Waktu Diskusi Program Pendidikan Commercial Diving', '16-Jan-23', 'Mohon direschedule minggu depan (24 Jan 2023 pukul 10.00)', 'Permohonan', '24-Jan-23', '13.00', NULL),
(1603, '044.Jan2023', '024/PI.03/SMKNBHD', '2023-01-12', 'Permohonan Kunjungan Industri', 'SMK N 1 Buahdua', 'Permohonan Kunjungan Industri', '16-Jan-23', 'Bagian Pelayanan (Pak Chris, Pak Budi)', 'Permohonan', '21-Feb-23', '08.00', NULL),
(1604, '045.Jan/2023', 'Dp.05/0098', '2023-01-12', 'Undangan Diskusi Terbuka Kelompok Terbatas (DKT) DPMPTSP Kota Surakarta Tahun 2023', 'DPMPTSP Surakarta', 'Undangan Diskusi Terbuka Kelompok Terbatas (DKT) DPMPTSP Kota Surakarta Tahun 2023', '16-Jan-23', 'Saya hadir. Nuwun', 'Undangan', '18-Jan-23', '09.00', 'Hotel Horizon Aziza Solo'),
(1605, '046.Jan/2023', NULL, NULL, 'Undangan Pengesahan dan Pengukuhan Dewan Pengurus Kadin Kota Surakarta', 'KADIN Kota Surakarta', 'Undangan Pengesahan dan Pengukuhan Dewan Pengurus Kadin Kota Surakarta', '17-Jan-23', 'Arsipkan', 'Undangan', '20-Jan-23', '18.30', 'Diamond International Restaurant Lantai 2'),
(1606, '047.Jan/2023', '03/TM/I/2023', '2023-01-16', 'Undangan Diskusi Penjajakan Kerjasama', 'PT. Triangle Motorindo (VIAR Motor)', 'Undangan Diskusi Penjajakan Kerjasama', '17-Jan-23', 'Sudah dilaksanakan', 'Undangan', '19-Jan-23', '10.00', 'PT. Triangle Motorindo Semarang'),
(1607, '048.Jan/2023', 'KP.05.02/594/I/2023', '2023-01-16', 'Desk Evaluasi e-Kinerja', 'BKPSDM Kota Surakarta', 'Desk Evaluasi e-Kinerja', '17-Jan-23', 'Ka. TU tolong siapkan materi dan hadiri. Nuwun', 'Undangan', '17-Jan-23', '08.00-selesai', 'Harris Hotel & Convention'),
(1608, '049.Jan/2023', '14/SD.04.05/I/2023', '2023-01-12', 'Undangan Pelatihan Pengisian Aplikasi SIMDALBANGDA MURNI Tahun Anggaran 2023', 'Setda Surakarta', 'Undangan Pelatihan Pengisian Aplikasi SIMDALBANGDA MURNI Tahun Anggaran 2023', '17-Jan-23', 'Ka. TU tolong tugaskan admin simdalbanngda. Nuwun', 'Undangan', '18-Jan-23', '13.00', 'Ruang Rapat Manganti Praja'),
(1609, '050.Jan/2023', '…/K/TL.CD/I/2023', '2023-01-17', 'Permohonan Izin Berkunjung Outing Class STP', 'TK Cemara Dua Surakarta', 'Permohonan Izin Berkunjung Outing Class STP', '17-Jan-23', 'Fasilitasi keliling kawasan', 'Permohonan', '15-Feb-23', '08.00', 'Solo Technopark'),
(1610, '051.Jan/2023', '90/005/I/2023', '2023-01-18', 'Undangan Rapat Penyusunan Kajian Monev RAD Sistem Inovasi Daerah Kegiatan Penelitian Dan Pengembangan Bidang Ekonomi dan Pembangunan', 'Balitbangda Surakarta', 'Undangan Rapat Penyusunan Kajian Monev RAD Sistem Inovasi Daerah Kegiatan Penelitian Dan Pengembangan Bidang Ekonomi dan Pembangunan', '18-Jan-23', 'Saya hadir. Nuwun', 'Undangan', '18-Jan-23', '12.30-selesai', 'Ruang Rapat BALITBANGDA Gedung Tawang Praja Lantai 1 Komplek Balaikota'),
(1611, '052.Jan/2023', '89/005/2023', '2023-01-18', 'Undangan Rapat Penyusunan Kajian Analisis Kebijakan tentang Relevansi Kebijakan Perencanaan Pembangunan Daerah dengan Rangkaian Kegiatan Riset Pemerintah', 'Balitbangda Surakarta', 'Undangan Rapat Penyusunan Kajian Analisis Kebijakan tentang Relevansi Kebijakan Perencanaan Pembangunan Daerah dengan Rangkaian Kegiatan Riset Pemerintah', '18-Jan-23', 'Saya hadir. Nuwun', 'Undangan', '18-Jan-23', '09.00', 'Ruang Rapat BALITBANGDA Gedung Tawang Praja Lantai 1 Komplek Balaikota'),
(1612, '053.Jan/2023', 'KA.00.00/64/I/2023', '2023-01-19', 'Pinjam Tempat Musyawarah Perencanaan Pembangunan Kecamatan Jebres Tahun 2023', 'Kecamatan Jebres', 'Pinjam Tempat Musyawarah Perencanaan Pembangunan Kecamatan Jebres Tahun 2023', '19-Jan-23', 'Pejabat Teknis Umum tolong difasilitasi dan koordinasi ttg sarprasnya. Nuwun', 'Permohonan', '04-Feb-23', '08.00', NULL),
(1613, '054.Jan/2023', '005/95/2023', '2023-01-18', 'Undangan Diskusi Kelompok Terbuka (DKT) Badan Penelitian dan Pengembangan Daerah Kota Surakarta Tahun 2023', 'Balitbangda Surakarta', 'Undangan Diskusi Kelompok Terbuka (DKT) Badan Penelitian dan Pengembangan Daerah Kota Surakarta Tahun 2023', '19-Jan-23', 'Ka. TU, Mas Agus, Mas Budi hadir bersama saya. Nuwun', 'Undangan', '25-Jan-23', '09.00', 'Ruang BRIGHT 2 Harris Hotel Solo'),
(1614, '055.Jan/2023', 'DR.00/266/I/2023', '2023-01-19', 'Undangan DKT Dinas Pemadam Kebakaran Kota Surakarta Tahun 2023', 'Dinas Pemadam Kebakaran', 'Undangan DKT Dinas Pemadam Kebakaran Kota Surakarta Tahun 2023', '20-Jan-23', 'Saya hadir. Nuwun', 'Undangan', '26-Jan-23', '09.00', 'UNS Inn Ruang Mangkunegara Lounge'),
(1615, '056.Jan/2023', 'PAUS.553.9/0170/I.2023', '2023-01-20', 'Permohonan Izin Penggunaan Lahan untuk Parkir acara Groundbreaking Museum Sains dan Teknologi', 'PERUMDA PAU \"Pedaringan\"', 'Permohonan Izin Penggunaan Lahan untuk Parkir acara Groundbreaking Museum Sains dan Teknologi', '20-Jan-23', 'Mohon difasilitasi di KST (Pak Untung)', 'Permohonan', NULL, NULL, NULL),
(1616, '058.Jan/2023', 'B/1046/UN37.1.5/KM/2023', '2023-01-18', 'Permohonan Izin PKL (2 Orang)', 'FT UNNES', 'Permohonan Izin PKL (2 Orang)', '24-Jan-23', 'Bagian pelayanan fasilitasi, ditempatkan di bagian produksi (Pak Chris, Pak Febri)', 'Permohonan', NULL, NULL, NULL),
(1617, '059.Jan/2023', '023/A./TK.Is.Bakti XI/I/2023', '2023-01-24', 'Permohonan Izin Kunjungan SSC', 'TK Islam Bakti XI Surakarta', 'Permohonan Izin Kunjungan SSC', '24-Jan-23', 'Fasilitasi (Bu Ani & Bu Lusi)', 'Kunjungan', '14,16,17-Feb-23', '09.00', NULL),
(1618, '060.Jan/2023', '27/001.3/SMK-PL/E/I/2023', '2023-01-21', 'Surat Permohonan PKL (4 orang)', 'SMK Pangudi Luhur Muntilan', 'Surat Permohonan PKL (4 orang)', '25-Jan-23', 'Fasilitasi di bag. Produksi (Pak Chris & Pak Budi)', 'Permohonan', '3-Jul s.d 25-Nov-23', NULL, NULL),
(1619, '061.Jan/2023', 'TM.00', '2023-01-19', 'Undangan Entry Pergeseran APBD TA 2023', 'Badan Pengelolaan Keuangan dan Aset Daerah', 'Undangan Entry Pergeseran APBD TA 2023', '26-Jan-23', 'Ka. TU tolong tugaskan bend. Peng. Pembantu untuk hadir dlm entry pengesahan APBD. Nuwun', 'Undangan', '24-Jan s.d 26-Jan-23', '08.30', 'Horison Aziza Solo'),
(1620, '062.Jan/2023', '39/PHS/I/2023', '2023-01-20', 'Permohonan Personil Upacara HUT SATPAM ke-42', 'Pembina SATPAM', 'Permohonan Personil Upacara HUT SATPAM ke-42', '26-Jan-23', 'Bagian umum fasilitasi (Pak Untung)', 'Permohonan', '30-Jan-23', '07.00', 'POLRESTA Surakarta'),
(1621, '063.Jan/2023', '21/A/IP-BKPM/I/2023', '2023-01-17', 'Sponsorship Publikasi Ucapan Selamat 50 Tahun BKPM', 'IP-BKPM', 'Sponsorship Publikasi Ucapan Selamat 50 Tahun BKPM', '26-Jan-23', 'untuk tahun ini belum bisa berkontribusi', NULL, NULL, NULL, NULL),
(1622, '064.Jan/2023', 'PG.00/325/2023', '2023-01-26', 'Undangan Desk Inputing RUP TA 2023', 'Sekretariat Daerah', 'Undangan Desk Inputing RUP TA 2023', '27-Jan-23', 'Ka. TU tolong tugaskan Admin SIRUP untuk hadir. Nuwun', 'Undangan', '31-Jan-23', '10.30', 'Ruang DKK Lantai 3'),
(1623, '065.Jan/2023', '3', '2023-01-27', 'Penawaran Jasa Perbaikan AC', 'Hidayah Tehnik (AC)', 'Penawaran Jasa Perbaikan AC', '30-Jan-23', 'Bagian umum dan kawasan (Pak Untung ; Pak Susilo/Pak Danang)', 'Permohonan', NULL, NULL, NULL),
(1624, '066.Jan/2023', '005/131/I/2023', '2023-01-30', 'Rapat Pembahasan KAK Penyusunan Kajian Indeks Daya Saing Daerah Kota Surakarta', 'Balitbangda Surakarta', 'Rapat Pembahasan KAK Penyusunan Kajian Indeks Daya Saing Daerah Kota Surakarta', '30-Jan-23', 'Saya hadir. Nuwun', 'Undangan', '31-Jan-23', '10.00', 'Ruang Rapat Balitbangda Gedung Tawang Praja Lantai 1'),
(1625, '067.Jan/2023', 'TM.00/307/2023', '2023-01-25', 'Undangan Workshop Pemetaan Kerjasama Daerah Tahun 2023', 'Setda Surakarta', 'Undangan Workshop Pemetaan Kerjasama Daerah Tahun 2023', '30-Jan-23', 'Dihadiri (Pak Susilo)', 'Undangan', '31-Jan-23', '09.00', 'Swiss-Belhotel Solo'),
(1626, '068.Jan/2023', '31/UN1/SV.1/AKM/PK.01.06/2023', '2023-01-31', 'Permohonan Izin Magang', 'Sekolah Vokasi UGM', 'Permohonan Izin Magang', '31-Jan-23', 'Diterima/fasilitasi masuk PPIC (Pak Febri & Pak Chris)', 'Permohonan', '13-Feb s.d 13-Jun', NULL, NULL),
(1627, '069.Jan/2023', 'PN.01.01/239/I/2023', '2023-01-30', 'Permohonan Pelaksana JDIH', 'Setda Surakarta', 'Permohonan Pelaksana JDIH', '31-Jan-23', 'Ka. TU mohon usulkan mas budi untuk jadi admin. Nuwun', 'Permohonan', NULL, NULL, NULL),
(1628, '001.Feb/2023', 'PM.01/144/2023', '2023-01-31', 'Pengiriman Personil Juri Createch', 'Balitbangda Surakarta', 'Pengiriman Personil Juri Createch', '01-Feb-23', 'Sudah dilaksanakan', 'Permohonan', NULL, NULL, NULL),
(1629, '002.Feb/2023', '005/146/2023', '2023-01-31', 'Undangan Rapat Penyusunan Kajian Potensi dan Peluang serta Fasilitas Pendaftaran HKI untuk Produk Hasil Lomba Krenova dan Hilirisasi Riset', 'Balitbangda Surakarta', 'Undangan Rapat Penyusunan Kajian Potensi dan Peluang serta Fasilitas Pendaftaran HKI untuk Produk Hasil Lomba Krenova dan Hilirisasi Riset', '01-Feb-23', 'Saya hadir. Nuwun', 'Undangan', '03-Feb-23', '09.00', 'Ruang Rapat Balitbanda'),
(1630, '003.Feb/2023', '005/132/I/2023', '2023-01-30', 'Undangan Rapat KAK \"Digitalisasi IKM dan UMKM\"', 'Balitbangda Surakarta', 'Undangan Rapat KAK \"Digitalisasi IKM dan UMKM\"', '01-Feb-23', 'Ka. TU mohon hadir. Nuwun', 'Undangan', '03-Feb-23', '09.00', 'Ruang Rapat Balitbanda'),
(1631, '004.Feb/2023', 'B-924/II.9/TU.03.02/1/2023', '2023-01-27', 'Undangan Rakortek BRIDA \"Pembinaan Teknik untuk Penguatan Ekosistem Riset dan Inovasi Daerah untuk Pembangunan Berkelanjutan\"', 'BRIN', 'Undangan Rakortek BRIDA \"Pembinaan Teknik untuk Penguatan Ekosistem Riset dan Inovasi Daerah untuk Pembangunan Berkelanjutan\"', '01-Feb-23', 'Saya hadir. Biaya SPPD, hotel, transportasi menuju, makan APBD KST. Ka TU mohon dibantu proses. Nuwun', 'Undangan', '7 s.d 8-Feb-23', '08.30', 'Auditorium Lantai 3 Gedung B.J. Habibie, BRIN'),
(1632, '005.Feb/2023', '035/105.5/SMK.Gm-1 Mdn/I/I/2023', '2023-01-31', 'Permohonan Kunjungan Industri', 'SMK Gamaliel 1 Madiun', 'Permohonan Kunjungan Industri', '01-Feb-23', 'Fasilitasi & konfirmasi jumlah peserta (Pak Budi, Eva, Bu Ani)', 'Permohonan', '09-Mar-23', '09.00', 'KST'),
(1633, '007.Feb/2023', '800/39.1/06-Disdag/2023', '2023-01-30', 'Surat Permohonan Kunjungan', 'Dinas Perdagangan Provinsi NTB', 'Surat Permohonan Kunjungan', '01-Feb-23', 'Saya hadir. Mohon Pejabat Teknis Umum & Ka Div Kawasan, dan Ka TU ikut hadir. Nuwun', 'Kunjungan', '01-Feb-23', '09.00', 'Ruang Meeting 1'),
(1634, '008.Feb/2023', '392/A/SMK.Vet.1.Skh/VI/2023', '2023-01-31', 'Permohonan Kunjungan Industri', 'SMK Veteran 1 Sukoharjo', 'Permohonan Kunjungan Industri', '02-Feb-23', 'Fasilitasi (Pak Budi dan Mbak Eva)', 'Permohonan', '07-Feb-23', '09.00', 'KST'),
(1635, '009.Feb/2023', 'IN/343/I/2023', '2023-01-31', 'Permohonan Personil yang membidangi Tim Teknis paling lambat tanggal 6 Februari 2023', 'Dinas Koperasi, UKM, dan Perindustrian', 'Permohonan Personil yang membidangi Tim Teknis paling lambat tanggal 6 Februari 2023', '02-Feb-23', 'Pejabat teknis pelayanan mohon tugaskan Kepala produksi. Nuwun', 'Permohonan', NULL, NULL, NULL),
(1636, '010.Feb/2023', '72/III.4/AU/J/2023', '2023-01-17', 'Permohonan Kunjungan Industri', 'SMK Muhammadiyah 3 Karanganyar', 'Permohonan Kunjungan Industri', '02-Feb-23', 'Fasilitasi (Pak Budi dan Mbak Eva)', 'Permohonan', '08-Feb-23', NULL, 'KST'),
(1637, '011.Feb/2023', '421.5/122/I/2023', '2023-01-16', 'Permohonan Kunjungan Industri', 'SMK PGRI Brati Grobogan', 'Permohonan Kunjungan Industri', '02-Feb-23', 'Fasilitasi (Pak Budi dan Mbak Eva)', 'Permohonan', '13-Feb-23', NULL, 'KST'),
(1638, '012.Feb/2023', '007/JA-Int/SP-SM/I/2023', '2023-01-11', 'Penawaran Pemasangan Greeting Ucapan Selamat Hari Jadi Kota Solo ke-278 di Media Solo Pos & Suara Merdeka', 'Solo Pos & Suara Merdeka', 'Penawaran Pemasangan Greeting Ucapan Selamat Hari Jadi Kota Solo ke-278 di Media Solo Pos & Suara Merdeka', '03-Feb-23', 'Alternatif 2 Bikin Narasi (Pak Untung)', 'Permohonan', NULL, NULL, NULL),
(1639, '013.Feb/2023', '23/MJ/I/2023', '2023-01-27', 'Permohonan Diskon', 'CV. Mekkar Jaya', 'Permohonan Diskon', '07-Feb-23', 'Acc disc 5%', 'Permohonan', NULL, NULL, NULL),
(1640, '014.Feb/2023', 'B-0335/Un.29/D.5/KS.00.1/2/2023', '2023-02-07', 'Permohonan Kunjungan Studi Banding', 'FEB UIN Salatiga', 'Permohonan Kunjungan Studi Banding', '07-Feb-23', 'Diterima/fasilitasi (Bu Ani, Pak Danu)', 'Permohonan', '10-Feb-23', '10.00', 'KST'),
(1641, '015.Feb/2023', NULL, '2023-01-23', 'Surat Penawaran Produk Paket Lebaran', 'PT. Inti Cakrawala Citra (Indogrosir)', 'Surat Penawaran Produk Paket Lebaran', '07-Feb-23', 'Penawaran Paket Lebaran Bahan Pertimbangan (Bu Lusi)', 'Penawaran', NULL, NULL, NULL),
(1642, '016.Feb/2023', '369/SMA/ASB-SOLO/KS/II/2023', '2023-02-07', 'Permohonan Outing Class', 'SMA Al-Azhar Syifa Budi Solo', 'Permohonan Outing Class', '07-Feb-23', 'Diterima/fasilitasi (Ibu Ani & Ibu Lusi)', 'Kunjungan', '15-Feb-23', '09.00', 'SSC'),
(1643, '017.Feb/2023', '029.SUND-045/MTATV/II/2023', '2023-02-08', 'Undangan Narasumber \"Kopi Istimewa MTATV\"', 'MTATV', 'Undangan Narasumber \"Kopi Istimewa MTATV\"', '08-Feb-23', 'Reschedule', 'Undangan', NULL, NULL, NULL),
(1644, '018.Feb/2023', '-', '2023-02-08', 'Permohonan Kerjasama Peminjaman Ruang Acara Try Out SNBT UTBK & Workshop', 'Masukkeptn', 'Permohonan Kerjasama Peminjaman Ruang Acara Try Out SNBT UTBK & Workshop', '08-Feb-23', 'Pelajari maksud & tujuan (Pak Susilo)', 'Permohonan', NULL, NULL, NULL),
(1645, '019.Feb/2023', 'B/2149/UN37.1.5/KM/2023', '2023-02-07', 'Permohonan Izin PKL (3 orang)', 'FT UNNES', 'Permohonan Izin PKL (3 orang)', '08-Feb-23', 'Diterima ditempatkan di bagian produksi (Pak Chris, Pak Febri)', 'Permohonan', '13-Feb s.d 14-Jul', NULL, NULL),
(1646, '020.Feb/2023', '02.03/SPm/ECP-Ska/II/2023', '2023-02-08', 'Permohonan Outing Class', 'SDIT Mujahidin Surakarta', 'Permohonan Outing Class', '08-Feb-23', 'Diterima di STP (Bu Ani)', 'Kunjungan', '10-Feb-23', '09.00', 'SSC'),
(1647, '021.Feb/2023', 'KS.II/385/II/2023', '2023-02-08', 'Pemberitahuan Pendataan Sentra Jajanan Makanan', 'Puskesmas Ngoresan', 'Pemberitahuan Pendataan Sentra Jajanan Makanan', '10-Feb-23', 'Tolong Pejabat Teknis Umum difasilitasi dan laporkan hasilnya. Nuwun', 'Pemberitahuan', '10-Feb-23', '11.00', NULL),
(1648, '022.Feb/2023', 'TM.00/486/2023', '2023-02-06', 'Undangan Workshop Pemetaan Potensi Kerjasama Daerah Tahun 2023', 'Setda Surakarta', 'Undangan Workshop Pemetaan Potensi Kerjasama Daerah Tahun 2023', '09-Feb-23', 'Pak Susilo tolong hadiri dan laporkan hasilnya. Nuwun', 'Undangan', '14-Feb-23', '11.00-12.00', 'Solo\'s Bistro Restaurant'),
(1649, '023.Feb/2023', '02/PBR/SDAB1/I/2023', '2023-02-02', 'Permohonan Izin Kegiatan OTFA', 'SD Alam Bengawan Solo', 'Permohonan Izin Kegiatan OTFA', '09-Feb-23', 'Fasilitasi (SSC)', 'Permohonan', '23-Feb-23', '10.00', 'SSC'),
(1650, '024.Feb/2023', '002/SMK BK/E.11/I/TM/2023', '2023-01-25', 'Permohonan Praktik Kerja Lapangan', 'SMK Bhinneka Karya Surakarta', 'Permohonan Praktik Kerja Lapangan', '10-Feb-23', 'Dipetakan Kapasitas PKL', 'Permohonan', '20-Jun s.d 16-Sept-23', NULL, NULL),
(1651, '025.Feb/2023', '305/FEB-UNIKU/KNG/LL/2023', '2023-02-10', 'Permohonan Kunjungan ke Kampus UMKM Shopee Solo', 'FEB Universitas Kuningan', 'Permohonan Kunjungan ke Kampus UMKM Shopee Solo', '10-Feb-23', 'Sudah disampaikan Shopee', 'Permohonan', '16-Mar-23', '09.00', 'Kampus UMKM Shopee'),
(1652, '026.Feb/2023', '306/FEB-UNIKU-KNG/LL/2023', '2023-02-10', 'Permohonan sebagai Narasumber', 'FEB Universitas Kuningan', 'Permohonan sebagai Narasumber', '10-Feb-23', 'Sudah disampaikan Shopee', 'Permohonan', '16-Mar-23', '09.00', 'Kampus UMKM Shopee'),
(1653, '028.Feb/2023', '086/C3/D.L/MTs.NDM/II/2023', '2023-02-11', 'Permohonan Rencana Kunjungan', 'MTs NDM Surakarta', 'Permohonan Rencana Kunjungan', '13-Feb-23', 'Fasilitasi (SSC)', 'Kunjungan', '15-Feb-23', '10.30', 'KST'),
(1654, '029.Feb/2023', 'BL.01.03/608/2023', '2023-02-13', 'Surat Edaran tentang Peringatan Hari Jadi ke-278 Kota Solo Tahun 2023', 'Setda Surakarta', 'Surat Edaran tentang Peringatan Hari Jadi ke-278 Kota Solo Tahun 2023', '13-Feb-23', 'Ka. TU mohon disebarluaskan dan dipedoman. Nuwun', 'Surat Edaran', '17-Feb-23', NULL, NULL),
(1655, '030.Feb/2023', 'B-708/II.2.4/PL.02.02/2/2023', '2023-02-10', 'Pemeriksaan Fisik BMN yang akan dihibahkan', 'BRIN', 'Pemeriksaan Fisik BMN yang akan dihibahkan', '13-Feb-23', 'Mohon pemimpin, Ka. TU, dan Pengurus BMD serta pengelola kawasan hadir bersama saya. Nuwun', 'Kunjungan', '15-Feb-23', '10.00', 'KST'),
(1656, '031.Feb/2023', '582/SMARTID.02/TU/2023', '2023-02-10', 'Undangan Agenda Perkenalan SmartID', 'SmartID', 'Undangan Agenda Perkenalan SmartID', '13-Feb-23', 'pejabat pengelola, Ka. TU, manajer kerjasama mohon hadir bersama saya. Nuwun', 'Undangan', '15-Feb-23', '13.00', 'Zoom'),
(1657, '032.Feb/2023', 'TM.00.07/049/II/2023', '2023-02-13', 'Undangan Bimbingan Teknis Aplikasi E-BLUD', 'Badan Pengelolaan Keuangan dan Aset Daerah', 'Undangan Bimbingan Teknis Aplikasi E-BLUD', '13-Feb-23', 'Ka. TU tolong tugaskan Bendahara BLUD. Nuwun', 'Undangan', '15 s.d 17-Feb-23', '08.30', 'Grand Hap Hotel'),
(1658, '033.Feb/2023', '019/Female&Children-Red/02/23', '2023-02-10', 'Permohonan Liputan tentang \"Menengok Wisata Edukatif Ramah Anak Technopark\"', 'KG Media (PT. Penerbitan Sarana Bobo)', 'Permohonan Liputan tentang \"Menengok Wisata Edukatif Ramah Anak Technopark\"', '13-Feb-23', 'Diterima 15/16 Feb 2023', 'Permohonan', NULL, '09.00-12.00', 'KST'),
(1659, '034.Feb/2023', '072/D.2-II-1/I.Kom/I/2023', '2023-02-13', 'Permohonan Magang (3 orang)', 'Universitas Muhammadiyah Surakarta', 'Permohonan Magang (3 orang)', '13-Feb-23', 'CANCEL', NULL, NULL, NULL, NULL),
(1660, '035.Feb/2023', NULL, '2023-02-12', 'Permohonan Izin untuk Foto Buku Kenangan', 'SMK Negeri 1 Surakarta', 'Permohonan Izin untuk Foto Buku Kenangan', '14-Feb-23', 'Bagian umum fasilitasi (P Danang; P Untung)', 'Permohonan', '18-Feb-23', '08.00-11.30', 'Lapangan Tribun STP'),
(1661, '036.Feb/2023', '420/991', '2022-11-14', 'Permohonan Tempat Praktik Kerja Lapangan (2 orang)', 'SMK Negeri 5 Surakarta', 'Permohonan Tempat Praktik Kerja Lapangan (2 orang)', '14-Feb-23', 'Diterima dibuat surat balasan', 'Magang', '01-Mar-23 s.d 31-Okt-23', NULL, NULL),
(1662, '037.Feb/2023', 'KP.00/1436/2023', '2023-02-13', 'Pelaporan Non ASN Tahun 2023', 'BKPSM', 'Pelaporan Non ASN Tahun 2023', '14-Feb-23', 'Ka. TU mohon koordinasi dg HRD untuk mendata Non-ASN BLUD KST. Nuwun', 'Pemberitahuan', '14-Feb-23', NULL, NULL),
(1663, '038.Feb/2023', '005/222/2023', '2023-02-14', 'Pembahasan KAK Kajian Evaluasi Penilaian UPT BLUD KST', 'Balitbangda Surakarta', 'Pembahasan KAK Kajian Evaluasi Penilaian UPT BLUD KST', '15-Feb-23', 'Saya hadir. Nuwun', 'Undangan', '15-Feb-23', '12.30', 'Ruang Rapat Balitbanda'),
(1664, '039.Feb/2023', 'B-03/D5.4/MARVES/PE.04.00/II/2023', '2023-02-13', 'Undangan Rapat Koordinasi Pengelolaan KI pada DPSP Borobudur', 'Kementrian Koordinator Bidang Kemaritiman dan Investasi RI', 'Undangan Rapat Koordinasi Pengelolaan KI pada DPSP Borobudur', '15-Feb-23', 'Saya hadir. Nuwun', 'Undangan', '16-Feb-23', '13.00-14.00', 'Zoom Meeting'),
(1665, '040.Feb/2023', '688/METTAMEDIA/SP/II/2023', '2023-02-15', 'Permohonan Siaran Live From Location', 'Metta Solo FM', 'Permohonan Siaran Live From Location', '15-Feb-23', 'Fasilitasi narasumber (B Ani ; P Rizky)', 'Permohonan', '15-Mar-23', '10.00-11.00', NULL),
(1666, '041.Feb/2023', 'PG.00/662/2023', NULL, 'Surat Edaran Pelaksanaan atas Inputing RUP TA 2023', 'Setda Surakarta', 'Surat Edaran Pelaksanaan atas Inputing RUP TA 2023', '15-Feb-23', 'Ka. TU mohon dipedomani dan kroscek kembali isian SIRUP KST 2023. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1667, '042.Feb/2023', 'W.15 PAS.PAS.11.UM.01.01-640', '2023-02-14', 'Permohonan Kegiatan Studi Tiru', 'LPP Kelas IIA Malang', 'Permohonan Kegiatan Studi Tiru', '15-Feb-23', 'Fasilitasi (Pak Yudit ; Pak Danu)', 'Permohonan', '03-Mar-23', '08.30', 'KST'),
(1668, '043.Feb/2023', '129/C.6-II.1/I.Kom/II/2023', '2023-02-13', 'Permohonan Magang (1 orang)', 'Universitas Muhammadiyah Surakarta', 'Permohonan Magang (1 orang)', '15-Feb-23', 'CANCEL', NULL, NULL, NULL, NULL),
(1669, '044.Feb/2023', 'B/362/KI/II/2023', '2023-02-10', 'Undangan BIMTEK Pengajuan Rekomendasi', 'Diskominfo', 'Undangan BIMTEK Pengajuan Rekomendasi', '16-Feb-23', 'Mbak Lusi mohon untuk hadir dan laporkan hasilnya. Nuwun', 'Undangan', '22-Feb-23', '13.00-15.00', 'Diskominfo'),
(1670, '045.Feb/2023', '002/C/PAN/PEL/AEC13/I/2023', NULL, 'Permohonan Sponsorship Pameran Seni Rupa Internasional LPTK Seni Rupa dan Non LPTK dalam Negeri maupun Luar Negeri dengan tajuk Art Edu Care #13 Reconnect', 'FKIP UNS', 'Permohonan Sponsorship Pameran Seni Rupa Internasional LPTK Seni Rupa dan Non LPTK dalam Negeri maupun Luar Negeri dengan tajuk Art Edu Care #13 Reconnect', '16-Feb-23', 'Mas Susiolo buat analisis layak/tidaknya diberi sponsor', 'Permohonan', '24 s.d 28-Mei-23', NULL, 'Taman Budaya Jawa Tengah'),
(1671, '046.Feb/2023', 'B/977/UN46.3.5/PK.01.06/2023', '2023-02-14', 'Pengantar MSIB Nasional', 'Universitas Trunojoyo Madura', 'Pengantar MSIB Nasional', '16-Feb-23', 'Diterima (sudah diterima di instansi lain)', 'Permohonan', NULL, NULL, NULL),
(1672, '047.Feb/2023', 'BL.01.03/602/2023', '2023-02-10', 'Peringatan Hari Ulang Tahun ke-278 Kota Solo Tahun 2023', 'Setda Surakarta', 'Peringatan Hari Ulang Tahun ke-278 Kota Solo Tahun 2023', '16-Feb-23', 'Pejabat Teknis Umum mohon dilaksanakan dan dikoordinasikan dgn pihak terkait. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1673, '048.Feb/2023', 'KP.12.08/1551/II/2023', '2023-02-16', 'Surat Edaran tentang Seleksi Anggota Tim Paduan Suara Pemerintah Kota Surakarta', 'Setda Surakarta', 'Surat Edaran tentang Seleksi Anggota Tim Paduan Suara Pemerintah Kota Surakarta', '17-Feb-23', 'Ka. TU tolong diinfokan, bagi yg berminat silahkan diusulkan dan koordinasi dgn Balitbangda. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1674, '049.Feb/2023', '420/025/2023', '2023-02-16', 'Permohonan PKL', 'SMK Negeri 2 Surakarta', 'Permohonan PKL', '17-Feb-23', 'Fasilitasi jumlah bisa dikurangi (Pak Chris ; Pak Budi)', NULL, NULL, NULL, NULL),
(1675, '051.Feb/2023', NULL, '2023-02-17', 'Surat Permohonan Kunjungan (Benchmarking)', 'PT DUA EMPAT TUJUH', 'Surat Permohonan Kunjungan (Benchmarking)', '20-Feb-23', 'Sudah ditemui (Pak Yudit)', 'Permohonan', '21-Feb-23', '09.30-11.30', 'KST'),
(1676, '052.Feb/2023', '281/YPIN/SMA.Nas/II/2023', '2023-02-16', 'Permohonan Izin Kunjungan', 'SMA NASIMA', 'Permohonan Izin Kunjungan', '20-Feb-23', 'Fasilitasi (Pak Budi)', 'Kunjungan', '07-Mar-23', '09.00-11.00', 'KST'),
(1677, '053.Feb/2023', '415/I03.51.C7/HM/II/2023', '2023-01-16', 'Permohonan Kunjungan', 'SMP Batik Surakarta', 'Permohonan Kunjungan', '20-Feb-23', 'Fasilitasi (Bu Ani)', 'Kunjungan', '24-Feb-23', '13.00', 'SSC'),
(1678, '054.Feb/2023', 'TM.00/590/2023', '2023-02-10', 'Rapat Teknis Tim Koordinasi Kerjasama Daerah (TKKSD) tentang Tindak Lanjut Kerjasama', 'Setda Surakarta', 'Rapat Teknis Tim Koordinasi Kerjasama Daerah (TKKSD) tentang Tindak Lanjut Kerjasama', '20-Feb-23', 'Manager Kerjasama mohon hadir dan laporkan hasilnya. Nuwun', 'Undangan', '20-Feb-23', '08.30', 'Ruang Rapat Bagian Tata Pemerintahan Setda'),
(1679, '055.Feb/2023', '021.SUND-008/MTATV/II/2023', '2023-02-20', 'Undangan Narasumber', 'MTATV', 'Undangan Narasumber', '20-Feb-23', 'Sudah dihadiri (Pak Chris)', 'Undangan', '21-Feb-23', '09.00-10.00', 'Studio 2 MTATV'),
(1680, '056.Feb/2023', '422/Ikl/SM/Slo/II/2023', '2023-02-15', 'Penawaran Greeting Dies Natalis UNS', 'SUARA MERDEKA', 'Penawaran Greeting Dies Natalis UNS', '20-Feb-23', 'Tidak usah diambil', NULL, NULL, NULL, NULL),
(1681, '057.Feb/2023', '26/02.3/SP/II/2023', '2023-02-13', 'Penawaran Greeting Dies Natalis UNS', 'SOLOPOS', 'Penawaran Greeting Dies Natalis UNS', '20-Feb-23', 'Diambil alternatif 1 (Pak Untung)', NULL, NULL, NULL, NULL),
(1682, '058.Feb/2023', '011/DPKS/II/2023', '2023-02-20', 'Undangan Sinergitas Dunia Pendidikan dan Dunia Usaha atau Industri', 'Dewan Pendidikan Kota Surakarta', 'Undangan Sinergitas Dunia Pendidikan dan Dunia Usaha atau Industri', '20-Feb-23', 'Sudah dihadiri', 'Undangan', '25-Feb-23', '08.30', 'Rumah Dinas Walikota Surakarta'),
(1683, '059.Feb/2023', '070/4813', '2023-02-15', 'Undangan Hasil Evaluasi PDSD 2022 & Persiapan PDSD 2023', 'Badan Perencanaan Pembangunan, Penelitian dan Pengembangan Daerah', 'Undangan Hasil Evaluasi PDSD 2022 & Persiapan PDSD 2023', '20-Feb-23', 'Saya hadir mendampingi Pak Agung. Mohon Bendahara UPTD KST menyiapkan berkas SPPDnya. Nuwun', 'Undangan', '21-Feb-23', '09.00', 'Ruang Prayogasala Kantor Bappeda'),
(1684, '060.Feb/2023', 'B/264/BPSDMI/AKOM-Surakarta/PP/II/2023', '2023-02-20', 'Undangan Rapat Koordinasi Penerimaan Mahasiswa Baru AK Tekstil 2023', 'BPSDMI', 'Undangan Rapat Koordinasi Penerimaan Mahasiswa Baru AK Tekstil 2023', '20-Feb-23', 'Hadir', 'Undangan', '28-Feb-23', '14.00', 'Gedung AK Tekstil Solo'),
(1685, '061.Feb/2023', 'B/447/KI/II/2023', '2023-02-20', 'Undangan Tindak Lanjut Pengembangan Aplikasi Manajemen Talent dan Pelatihan berbasis Artifisial Intelegence', 'Diskominfo SP', 'Undangan Tindak Lanjut Pengembangan Aplikasi Manajemen Talent dan Pelatihan berbasis Artifisial Intelegence', '21-Feb-23', 'Staf IT a.n Eko ; Divisi Diklat a.n Budi ;untuk hadir', 'Undangan', '21-Feb-23', '13.00', 'Diskominfo SP'),
(1686, '062.Feb/2023', 'KP.02/772/2023', '2023-02-20', 'Data Personil Pengelola SIJALAK KOAR', 'Setda Surakarta', 'Data Personil Pengelola SIJALAK KOAR', '21-Feb-23', 'Bu Lusi untuk hadir. Nuwun', 'Permohonan', '23-Feb-23', NULL, NULL),
(1687, '063.Feb/2023', '01/ii/yec/2023', '2023-02-21', 'Surat Pemberitahuan Penggunaan Ruangan', 'GOJEK', 'Surat Pemberitahuan Penggunaan Ruangan', '21-Feb-23', 'Sudah dilaksanakan', 'Pemberitahuan', '22-Feb-23', '08.00-17.00', 'GOTO'),
(1688, '064.Feb/2023', '01/EKS-1/KBIT-AS/II/2023', '2023-02-17', 'Izin Pemakaian Tempat untuk Family Gathering', 'TPA-KBIT-RA Alif Smart Surakarta', 'Izin Pemakaian Tempat untuk Family Gathering', '21-Feb-23', 'Dihubungi ditanyakan detail acara kegiatan (B. Ani)', 'Permohonan', '21-Mei-23', '06.00', NULL),
(1689, '065.Feb/2023', '120.0/25', '2023-02-20', 'Undangan Kick-Off Hetero for Startup Season 3', 'Dinkop', 'Undangan Kick-Off Hetero for Startup Season 3', '21-Feb-23', 'Arsipkan', 'Undangan', '21-Feb-23', '08.00-10.00', 'Bioskop Cinepolis Javamall Semarang'),
(1690, '066.Feb/2023', '488.0/340', '2023-02-14', 'Permohonan Fasilitasi Kegiatan Temu Admin Media Sosial dalam rangka pelatihan peningkatan keamanan akun media sosial bersama Meta Indonesias', 'Diskominfo Provinsi', 'Permohonan Fasilitasi Kegiatan Temu Admin Media Sosial dalam rangka pelatihan peningkatan keamanan akun media sosial bersama Meta Indonesias', '21-Feb-23', 'Pejabat Teknis Umum mohon difasilitasi dan koordinasi dgn PIC Diskominfo ybs. Nuwun', NULL, NULL, NULL, NULL),
(1691, '067.Feb/2023', 'KU.05/708/2023', '2023-02-16', 'Surat Edaran Penyusunan Pelaporan Pengendalian Kegiatan APBD di Lingkungan Pemerintah Kota Surakarta TA 2023', 'Setda Surakarta', 'Surat Edaran Penyusunan Pelaporan Pengendalian Kegiatan APBD di Lingkungan Pemerintah Kota Surakarta TA 2023', '21-Feb-23', 'Ka. TU mohon dipedomani dan diinfokan ke Mas Agus. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1692, '068.Feb/2023', 'KU.01/707/2023', '2023-02-16', 'Surat Edaran Tim Pelaksana Kegiatan (TPK) Sesuai Pedoman Teknis Pelaksanaan Kegiatan APBD Kota Surakarta TA 2023 di Lingkungan Pemkot Surakarta', 'Setda Surakarta', 'Surat Edaran Tim Pelaksana Kegiatan (TPK) Sesuai Pedoman Teknis Pelaksanaan Kegiatan APBD Kota Surakarta TA 2023 di Lingkungan Pemkot Surakarta', '21-Feb-23', 'Ka. TU mohon dipedomani dan kroscek SIRUP, apakah sudah dianggarkan konsultan pengawas untuk diatas 1M. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1693, '069.Feb/2023', '0387/Sekr/AKBARA/II/2023', '2023-02-21', 'Permohonan Kunjungan Industri D4 Bisnis Digital', 'Politeknik Akbara', 'Permohonan Kunjungan Industri D4 Bisnis Digital', '21-Feb-23', 'Dihubungi waktu by personal (Bu Ani) - Komunikasi dgn Eva, surat menyusul minggu kedua bulan maret', 'Permohonan', NULL, NULL, NULL),
(1694, '070.Feb/2023', 'TM.00/779/2023', '2023-02-21', 'Undangan Pembahasan Prioritas Rencana Kerjasama Daerah Kota Surakarta Tahun 2023', 'Setda Surakarta', 'Undangan Pembahasan Prioritas Rencana Kerjasama Daerah Kota Surakarta Tahun 2023', '22-Feb-23', 'Manager Kerjasama mohon hadir, persiapkan bahan dan koordinasi dgn HRD untuk menyiapkan surat tugas. Nuwun', 'Undangan', '23-Feb-23', '09.00', 'The Legacy Hotel Solo'),
(1695, '071.Feb/2023', 'TM.00.05/161/2023', '2023-02-22', 'Undangan Pembahasan Tindak Lanjut Perjanjian Sewa antara STP dan Shopee', 'Setda Surakarta', 'Undangan Pembahasan Tindak Lanjut Perjanjian Sewa antara STP dan Shopee', '23-Feb-23', 'Reschedule Jumat 24 Feb 2023 (Pak Yudit, Pak Wahyu, Pak Susilo ikut hadir bersama saya. Nuwun)', 'Undangan', '24-Feb-23', '08.00', 'Zoom Meeting'),
(1696, '072.Feb/2023', '005/263/II/2023', '2023-02-23', 'Undangan Pembahasan Surat Edaran Sekretaris Daerah tentang Inovasi', 'Balitbangda Surakarta', 'Undangan Pembahasan Surat Edaran Sekretaris Daerah tentang Inovasi', '23-Feb-23', 'Saya hadir. Nuwun', 'Undangan', '23-Feb-23', '12.30', 'Balitbangda'),
(1697, '073.Feb/2023', '277/UNIDA/LPPI-HKI-I/VIII/2023', NULL, 'Benchmarking dengan STP tentang Sentra HKI UNIDA Gontor', 'UNIDA Gontor', 'Benchmarking dengan STP tentang Sentra HKI UNIDA Gontor', '23-Feb-23', 'Ditemui/fasilitasi (Pak Chris ; Pak Danu)', 'Permohonan', '27-Feb-23', '08.00-10.30', 'KST'),
(1698, '074.Feb/2023', 'PBx/SP/2023/II/003', '2023-02-21', 'Permohonan Izzin Sahabat Becik Surakarta PKBM Piwulang Becik', 'PKBM Piwulang Becik', 'Permohonan Izzin Sahabat Becik Surakarta PKBM Piwulang Becik', '23-Feb-23', 'Fasilitasi free, izin ke shopee garena (Pak Danang Pak Susilo)', 'Permohonan', '25-Feb-23', '09.00-12.00', 'KST'),
(1699, '075.Feb/2023', NULL, '2023-02-22', 'Test Driver Kandidat Driver Shopee Xpress', 'Shopee Xpress', 'Test Driver Kandidat Driver Shopee Xpress', '23-Feb-23', 'Fasilitaso (Pak Danang)', 'Permohonan', '25 s.d 26-Feb-23', '09.00-16.00', 'KST'),
(1700, '076.Feb/2023', 'B/170/UN31.UPBJJ18/TM.00.02/2023', '2023-02-22', 'Pendaftaran Mahasiswa Baru UT Permohonan Tempat', 'Universitas Terbuka Surakarta', 'Pendaftaran Mahasiswa Baru UT Permohonan Tempat', '23-Feb-23', 'Bagian kerjasama dan fasilitasi free (Pak Susilo dan Pak Danu)', 'Permohonan', '25-Feb-23 & 01-Mar-23', '08.00-15.00', 'Outdoor Area'),
(1701, '077.Feb/2023', '420/025/2023', '2023-02-23', 'Permohonan PKL (6 orang)', 'SMK Negeri 2 Surakarta', 'Permohonan PKL (6 orang)', '23-Feb-23', 'Fasilitasi (Pak Budi)', 'Permohonan', '10-Jul s.d 23-Des-23', NULL, 'KST'),
(1702, '078.Feb/2023', '002/PPLS-JSIT JATENG/II/2023', '2023-02-14', 'Permohonan Izin Tempat Kunjungan', 'JSIT Indonesia Wilayah Jawa Tengah', 'Permohonan Izin Tempat Kunjungan', '24-Feb-23', 'Fasilitasi (P Budi ; Mbak Eva & Team)', 'Permohonan', '06-Mar-23', '08.00-10.00', NULL),
(1703, '079.Feb/2023', NULL, '2023-02-27', 'Peminjaman Area untuk Test Drive', 'Shopee Xpress', 'Peminjaman Area untuk Test Drive', '27-Feb-23', 'Fasilitasi (Pak Untung ; Pak Danang)', 'Permohonan', '4 s.d 5-Mar-23', '09.00-16.00', 'Area Outdoor KST'),
(1704, '080.Feb/2023', '124.A/keg/smp_lazkam/II/2023', '2023-02-27', 'Permohonan Kunjungan Outing School', 'SMP Lazuardi Kamila', 'Permohonan Kunjungan Outing School', '28-Feb-23', 'Fasilitasi (Bu Ani)', 'Kunjungan', '14-Mar-23', '08.30-12.00', 'KST'),
(1705, '081.Feb/2023', '0424/Sekr/AKBARA/II/2023', '2023-02-28', 'Permohonan Kunjungan Industri', 'Politeknik Akbara', 'Permohonan Kunjungan Industri', '28-Feb-23', 'Bagian pelayanan fasilitasi (P Chris ; Pak Budi)', 'Permohonan', '08-Mar-23', '09.00-12.00', 'KST'),
(1706, '082.Feb/2023', '420/025/2023', '2023-02-28', 'Permohonan Praktik Kerja Lapangan', 'SMK Negeri 2 Surakarta', 'Permohonan Praktik Kerja Lapangan', '28-Feb-23', 'Fasilitasi (P Budi)', 'Permohonan', '10-Jul s.d 23-Des-23', NULL, NULL),
(1707, '001.Mar/2023', '5864/Pusdiklat/02/2023', '2023-02-28', 'Undangan untuk mengikuti Kegiatan Pelatihan Katalog Elektronik bagi Pejabat Pembuat Komitmen & Pejabat Pengadaan oada K/L/Pemda', 'LKPP RI', 'Undangan untuk mengikuti Kegiatan Pelatihan Katalog Elektronik bagi Pejabat Pembuat Komitmen & Pejabat Pengadaan oada K/L/Pemda', '01-Mar-23', 'Ka. TU mohon disiapkan SDM untuk mengikuti pelatihan PBJP (pertimbangkan beban kerja dan krn waktu pelatihan). Nuwun', 'Undangan', '10 s.d 16-Mar-23', NULL, 'E-Learnin / Zoom Meeting'),
(1708, '002.Mar/2023', '421.5/081/v.01.v1.10/026/2023', '2023-03-01', 'Permohonan Kunjungan Industri', 'SMA Negeri 1 Kalianda', 'Permohonan Kunjungan Industri', '01-Mar-23', 'CANCEL', 'Permohonan', '07-Mar-23', '09.00', 'Aula Gedung RnD'),
(1709, '003.Mar/2023', '422/030/101.6.23.18/2023', '2023-01-20', 'Permohonan Kunjungan Industri', 'SMK Negeri 1 Kalitengah Lamongan', 'Permohonan Kunjungan Industri', '01-Mar-23', 'Fasilitasi Kunjungan (P Budi ; Mbak Eva)', 'Permohonan', '09-Mar-23', '10.00', 'KST');
INSERT INTO `surat_masuk` (`Id_Suratmasuk`, `No_Suratmasuk`, `Nomor_surat`, `Tanggal`, `Perihal`, `Terima_dari`, `Isi`, `Tanggal_diteruskan`, `Catatan`, `Kategori`, `Tgl_pelaksanaan`, `Waktu_pelaksanaan`, `Tempat_pelaksanaan`) VALUES
(1710, '004.Mar/2023', '36/D.2-III/TA/III/2023', '2023-03-01', 'Permohonan Izin penelitian/survey/mencari data tugas studio perancangan arsitektur 4 (15 orang)', 'UMS', 'Permohonan Izin penelitian/survey/mencari data tugas studio perancangan arsitektur 4 (15 orang)', '02-Mar-23', 'Fasilitasi, Tanyakan waktunya (P Susilo;P Danang; B Ani)', NULL, NULL, NULL, NULL),
(1711, '005.Mar/2023', 'PN.00.03/678/2023', '2023-02-28', 'Permohonan Narasumber Sosialisasi Lomba Kreativitas dan Inovasi Kota Surakarta Tahun 2023', 'Balitbangda Surakarta', 'Permohonan Narasumber Sosialisasi Lomba Kreativitas dan Inovasi Kota Surakarta Tahun 2023', '02-Mar-23', 'Ka. TU mohon dibantu membuatkan surat kesedi dan sbg narasumber atas nama saya. Nuwun', 'Permohonan', '07-Mar-23', '08.30', 'Ballroom Merukawang Lantai 2 Solia Zigna Surakarta'),
(1712, '006.Mar/2023', '005/685/III/2023', '2023-03-01', 'Undangan Rapat Koordinasi Persiapan Kegiatan Hilirisasi Riset Perguruan Tinggi', 'Balitbangda Surakarta', 'Undangan Rapat Koordinasi Persiapan Kegiatan Hilirisasi Riset Perguruan Tinggi', '02-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '03-Mar-23', '08.30', 'Ruang Rapat Balitbangda'),
(1713, '007.Mar/2023', '070/222.LIT/III/2023', '2023-03-02', 'Surat Izin Penelitian untuk Tugas Akhir', 'Balitbangda Surakarta', 'Surat Izin Penelitian untuk Tugas Akhir', '02-Mar-23', 'Fasilitasi (B Ani ; B Lucia)', 'Permohonan', '01-Mar s.d 31-Mei-23', NULL, 'SSC'),
(1714, '008.Mar/2023', '070/221.LIT/III/2023', '2023-03-02', 'Surat Izin Penelitian untuk Tugas Akhir', 'Balitbangda Surakarta', 'Surat Izin Penelitian untuk Tugas Akhir', '02-Mar-23', 'Fasilitasi (P Chris ; P Arif ; P Tegar)', 'Permohonan', '01-Mar s.d 31-Mei-23', NULL, 'Produksi/Diklat'),
(1715, '009.Mar/2023', '070/223.LIT/III/2023', '2023-03-02', 'Surat Izin Penelitian untuk Tugas Akhir', 'Balitbangda Surakarta', 'Surat Izin Penelitian untuk Tugas Akhir', '02-Mar-23', 'Fasilitasi (P Susilo ; P Danang)', 'Permohonan', '01-Mar s.d 31-Mei-23', NULL, 'Logistik/Kerjasama'),
(1716, '010.Mar/2023', 'B/1343/II/LOG.4.17.1/2023/Ditbinmas', '2023-02-03', 'Partisipasi menyambut hari raya idul fitri 1444 H/2023', 'Kepolisian Negara RI Daerah Jawa Tengah', 'Partisipasi dalam rangka menyambut hari raya idul fitri 1444 H/2023', '06-Mar-23', 'Dilewatkan dulu. Belum ada anggaran untuk kegiatan tersebut (B Ani)', 'Permohonan', NULL, NULL, NULL),
(1717, '011.Mar/2023', '59/Greet-RS/II/2023', '2023-02-01', 'Greeting Dies Natalis UNS Ke-47', 'RADAR SOLO', 'Greeting Dies Natalis UNS Ke-47', '06-Mar-23', 'Ambil Tipe B (P Untung)', NULL, NULL, NULL, NULL),
(1718, '012.Mar/2023', '126.2-A/Keg/smp-lazkam/II/2023', '2023-02-27', 'Permohonan Kunjungan Game Working Space', 'SMP Lazuardi Kamila GIS', 'Permohonan Kunjungan Game Working Space', '06-Mar-23', 'Fasilitasi GWS (M Risky ; B Ani & tim)', 'Permohonan', '15-Mar-23', '08.30-12.00', 'Game Working Space'),
(1719, '013.Mar/2023', 'PG.00/892/2023', '2023-02-28', 'Surat Edaran Pelaksanaan Pengadaan Barang/Jasa Non Tender', 'Setda Surakarta', 'Surat Edaran Pelaksanaan Pengadaan Barang/Jasa Non Tender', '06-Mar-23', 'Ka.TU mohon dishare ke temen-temen ASN dan dipedomani. Maturnuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1720, '015.Mar/2023', 'UC TATI.100/223-', '2023-03-06', 'Kunjungan Penandatanganan PKS', 'University College TATI', 'Kunjungan Penandatanganan PKS', '06-Mar-23', 'Pengelola terima (P Yudit ; P Chris ; P Susilo ; B Ani ; P Budi)', 'Kunjungan', '14-Mar-23', '09.00-12.00', 'KST'),
(1721, '016.Mar/2023', 'Fkapnas/No.01/III/2023', '2023-03-06', 'Kunjungan Persiapan Program Kapasitas Nasional 3', 'Forum Kapasitas Nasional III', 'Kunjungan Persiapan Program Kapasitas Nasional 3', '06-Mar-23', 'Disiapkan penerimaan )P Yudit ; P Chris ; P Tegar)', 'Kunjungan', '08-Mar-23', '08.00', 'STP Petrotekno'),
(1722, '017.Mar/2023', 'TM.00.07/081/III/2023', '2023-03-06', 'Undangan Rapat Koordinasi Laporan RBA BLUD Tahun Anggaran 2023', 'BPKAD', 'Undangan Rapat Koordinasi Laporan RBA BLUD Tahun Anggaran 2023', '07-Mar-23', 'Ka. TU mohon tugaskan Mbak Ana. Nuwun', 'Undangan', '07-Mar-23', '10.00', 'Ruang Rapat Lantai III BPKAD'),
(1723, '018.Mar/2023', 'PG.00/1055/2023', '2023-02-07', 'Undangan Bimtek Peningkatan Kapasitas PPK', 'Setda Surakarta', 'Undangan Bimtek Peningkatan Kapasitas PPK', '07-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '08-Mar-23', '08.00', 'Soemaryo Grand Ballroom The Sunan Hotel'),
(1724, '019.Mar/2023', 'AT.04/1777/III/2023', '2023-03-03', 'Permohonan Pinjam Tempat Pembinaan Gugus Kota Layak Anak tahun 2023', 'DP3AP2KB', 'Permohonan Pinjam Tempat Pembinaan Gugus Kota Layak Anak tahun 2023', '07-Mar-23', 'Sudah difasilitasi', 'Permohonan', '06-Mar-23', '09.00', 'Ruang Seminar Besar STC'),
(1725, '020.Mar/2023', '11/D-2/LNP/02/2023', '2023-02-23', 'Surat Perintah Perjalanan Dinas', 'Kemensetneg RI', 'Surat Perintah Perjalanan Dinas', '07-Mar-23', 'Fasilitasi (P Yudit ; P Susilo ; P Danang)', 'Pemberitahuan', '08-Mar-23 s.d 10-Mar-23', NULL, NULL),
(1726, '021.Mar/2023', '008/UN27.41.23/KM/2023', '2023-02-27', 'Permohonan Peminjaman Tempat Acara Awarding', 'Ormawa Kerohanian Islam UNS', 'Permohonan Peminjaman Tempat Acara Awarding', '07-Mar-23', NULL, NULL, NULL, NULL, NULL),
(1727, '022.Mar/2023', '008/MGMP-BCF/LKS/III/2023', NULL, 'Permohonan Izin Lokasi Shooting Produksi Program Soft News', 'MGMP Broadcasting Surakarta', 'Permohonan Izin Lokasi Shooting Produksi Program Soft News', '08-Mar-23', 'Fasilitasi bikin surat balasan (P Susilo/P Danang ; B Ani)', 'Permohonan', '15-Mar-23', '08.00', 'KST'),
(1728, '024.Mar/2023', '005/706/III/2023', '2023-03-06', 'Undangan Rapat Koordinasi dan Briefing Kegiatan Penyusunan Kerja', 'Balitbangda Surakarta', 'Undangan Rapat Koordinasi dan Briefing Kegiatan Penyusunan Kerja', '08-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '08-Mar-23', '12.30', 'Ruang Rapat Balitbangda'),
(1729, '025.Mar/2023', '1579/UN27.21/PK.01.06/2023', '2023-02-15', 'Permohonan Kuliah Magang Mahasiswa', 'Sekolah Vokasi UNS', 'Permohonan Kuliah Magang Mahasiswa', '08-Mar-23', 'Fasilitas/buat balasan (P Danu ; B Ani)', 'Permohonan', 'Feb-23 s.d Mar-23', NULL, NULL),
(1730, '026.Mar/2023', 'SRT-0026/SKKIC3000/2023/SO', '2023-03-06', 'Undangan Meeting Pembahasan Program Pembelajaran dan Pengembangan Pekerja Hulu Migas Periode Tahun 2023', 'SKK Migas', 'Undangan Meeting Pembahasan Program Pembelajaran dan Pengembangan Pekerja Hulu Migas Periode Tahun 2023', '08-Mar-23', 'Hadiri (P Chris ; P Tegar)', 'Undangan', '14-Mar-23', '08.00', 'Hotel Alila Solo'),
(1731, '027.Mar/2023', '369/E.13/SMKKM/III/2023', '2023-03-06', 'Permohonan Peminjaman Tempat', 'SMK Katolik ST. Mikael Surakarta', 'Permohonan Peminjaman Tempat', '08-Mar-23', 'Fasilitasi (P Chris)', 'Permohonan', '09-Mar-23 dan 13-Mar-23', '08.00', NULL),
(1732, '028.Mar/2023', '02/TK IDOLA/III/2023', '2023-03-02', 'Permohonan Kunjungan', 'TK Idola Shiraathal Mustaqim', 'Permohonan Kunjungan', '08-Mar-23', 'Fasilitasi ( B Ani)', 'Permohonan', '14-Mar-23', '08.30', 'SSC'),
(1733, '029.Mar/2023', '324.1/SMPWW.1/B.24/III/2023', '2023-03-06', 'Permohonan Izin Outing Class', 'SMP Widya Wacana 1 Surakarta', 'Permohonan Izin Outing Class', '09-Mar-23', 'Fasilitasi ( B Ani)', 'Permohonan', '17-Mar-23', '08.00 - 11.00', 'KST'),
(1734, '030.Mar/2023', '55/D.2-III/TA/III/2023', '2023-03-06', 'Permohonan izin penelitian/survey/mencari data tugas studio perancangan arsitektur 4', 'FT UMS', 'Permohonan izin penelitian/survey/mencari data tugas studio perancangan arsitektur 4', '09-Mar-23', 'Fasilitasi, tanyakan waktunya (P Susilo;P Danang; B Ani)', 'Permohonan', NULL, NULL, NULL),
(1735, '031.Mar/2023', NULL, '2023-02-08', 'Permohonan Sponsorship HUT Ke-33', 'SMA Negeri 1 Mojolaban', 'Permohonan Sponsorship HUT Ke-33', '09-Mar-23', 'Bagian kerjasama & inkubator dipelajari (P Danu & P Susilo)', 'Permohonan', NULL, NULL, NULL),
(1736, '032.Mar/2023', 'KT.00/734', '2023-03-09', 'Undangan Penutupan Pelatihan Barista Dinas Tenaga Kerja', 'Dinas Tenaga Kerja', 'Undangan Penutupan Pelatihan Barista Dinas Tenaga Kerja', '09-Mar-23', 'Hadiri (P Budi)', 'Undangan', '09-Mar-23', '16.00', 'Hotel Solia Zigna'),
(1737, '033.Mar/2023', 'B/331/BPSDMI/AKOM-Surakarta/RT/III/2023', '2023-03-07', 'Permohonan Bantuan Petugas Keamanan', 'BPSDMI', 'Permohonan Bantuan Petugas Keamanan', '09-Mar-23', 'Bagian umum fasilitasi (P Untung)', 'Permohonan', '14-Mar-23 s.d 16-Mar-23', 'terlampir', 'AK Tekstil'),
(1738, '034.Mar/2023', '005/762/2023', '2023-03-08', 'Undangan Seleksi Presentasi Kegiatan Hilirisasi Riset Perguruan Tinggi Tahun 2023', 'Balitbangda Surakarta', 'Undangan Seleksi Presentasi Kegiatan Hilirisasi Riset Perguruan Tinggi Tahun 2023', '09-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '14-Mar-23', '09.30', 'Ruang Rapat Balitbangda'),
(1739, '035.Mar/2023', '0133/UP-DKN4/SB/III/2023', '2023-03-08', 'Permohonan Izin Wawancara dan Pengambilan Data Penelitian', 'Universitas Pertamina', 'Permohonan Izin Wawancara dan Pengambilan Data Penelitian', '09-Mar-23', 'Fasilitasi (Mas Okta)', 'Permohonan', '15-Mar-23 s.d 10-Apr-23', NULL, NULL),
(1740, '036.Mar/2023', 'TM.00.07/089/III/2023', '2023-03-09', 'Undangan Bimtek Pengelolaan Keuangan Daerah Tahun 2023', 'BPKAD', 'Undangan Bimtek Pengelolaan Keuangan Daerah Tahun 2023', '10-Mar-23', 'Ka subag TU mohon tugaskan bendahara peng. Pembantu dan tlg siapkan surat tugasnya. Nuwun', 'Undangan', '13 s.d 14-Mar-23', '09.00', 'Hotel Swiss Belinn Saripetojo'),
(1741, '037.Mar/2023', 'DG/972/III/2023', '2023-03-09', 'Bantuan Informasi Data (Kunjungan)', 'Dinas Perdagangan', 'Bantuan Informasi Data (Kunjungan)', '10-Mar-23', 'Ka. TU mohon koordinasikan dgn PIC di surat, kira-kira rundown kunjungan seperti apa dan data yg dibutuhkan apa saja, tolong bantu menyiapkan. Nuwun', 'Kunjungan', '14 s.d 15-Mar-23', NULL, NULL),
(1742, '038.Mar/2023', NULL, '2023-03-10', 'Undangan', 'Xegara', 'Undangan Seminar Xegara \"Sustainable Prosperity with Xegara NFT\"', '10-Mar-23', 'Sudah dihadiri (P Danu)', 'Undangan', '13-Mar-23', '08.00 - 13.30', 'Ballroom The Sunan Hotel'),
(1743, '039.Mar/2023', 'KT.00/763', '2023-03-10', 'Undangan', 'Dinas Tenaga Kerja', 'Undangan Pelatihan Barbershop Dinas Tenaga Kerja', '13-Mar-23', 'Sudah lewat, arsipkan', 'Undangan', '14-Mar-23', '09.00', 'Hotel Sahid Jaya'),
(1744, '040.Mar/2023', 'B/333/BPSDMI/AKOM-Surakarta/RT/III/2023', '2023-03-08', 'Revisi Surat Permohonan Bantuan Petugas Keamanan', 'BPSDMI', 'Revisi Surat Permohonan Bantuan Petugas Keamanan (Total 20 Personel)', '13-Mar-23', 'Beri tambahan personil (P Untung)', 'Permohonan', '14 - 16 Maret 2023', NULL, NULL),
(1745, '041.Mar/2023', '421/129/SMK.01/2023', '2023-03-09', 'Penyerahan Siswa PKL', 'SMKN 1 Surakarta', 'Penyerahan Siswa PKL', '13-Mar-23', 'Diterima, tanyakan jumlah siswa & jurusannya (B Ani)', 'Permohonan', '13 Maret - 13 Juni 2023', NULL, NULL),
(1746, '042.Mar/2023', '005/801/III/2023', '2023-03-08', 'Undangan Forum Konsultasi Publik \"Pelayanan Publik\" Balitbangda Tahun 2023', 'Balitbangda Surakarta', 'Undangan Forum Konsultasi Publik \"Pelayanan Publik\" Balitbangda Tahun 2023', '13-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '15-Mar-23', '09.00', 'Swiss-BelHotel Solo'),
(1747, '043.Mar/2023', '005/785/III/2023', '2023-03-13', 'Undangan Pembahasan Laporan Pendahuluan Analisis Kebijakan tentang Relevansi Kebijakan Perencanaan Pembangunan Daerah dengan Rangkaian Kegiatan Riset Pemerintah', 'Balitbangda Surakarta', 'Undangan Pembahasan Laporan Pendahuluan Analisis Kebijakan tentang Relevansi Kebijakan Perencanaan Pembangunan Daerah dengan Rangkaian Kegiatan Riset Pemerintah', '13-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '14-Mar-23', '14.00', 'Ruang Rapat Balitbangda'),
(1748, '044.Mar/2023', '005/786/III/2023', '2023-03-09', 'Undangan Forum Konsultasi Publik \"Pelayanan Publik\" Balitbangda Tahun 2023', 'Balitbangda Surakarta', 'Undangan Forum Konsultasi Publik \"Pelayanan Publik\" Balitbangda Tahun 2023', '13-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '15-Mar-23', '09.00', 'Swiss-BelHotel Solo'),
(1749, '045.Mar/2023', '197/PKL/HUBIN/III/2023', '2023-03-13', 'Permohonan Tempat PKL', 'SMK Leonardo Klaten', 'Permohonan Tempat PKL selama 6 bulan', '13-Mar-23', 'Fasilitasi (P Chris ; Mba Dhika)', 'Permohonan', '15 Juni - 15 Desember 2023', NULL, NULL),
(1750, '046.Mar/2023', '914/FEB-UNIKU/KNG/LL/2023', '2023-03-13', 'Permohonan Kunjungan', 'FEB Universitas Kuningan', 'Permohonan Kunjungan Kamis, 16 Maret 2023; 09.00;215 orang', '14-Mar-23', 'Fasilitasi (P Danu)', 'Kunjungan', '16-Mar-23', '09.00', NULL),
(1751, '047.Mar/2023', '421.6/044/MITTQUM/III/2023', '2023-03-14', 'Permohonan Outing Class', 'MITTQUM', 'Permohonan Outing Class', '14-Mar-23', 'Sudah difasilitasi (B Ani)', 'Permohonan', '15-Mar-23', '10.30', 'KST'),
(1752, '048.Mar/2023', '933/BP.03.00/III/2023', '2023-03-10', 'Undangan FGD Penyusunan Rekomendasi PEL/FEDEP', 'Badan Perencanaan Pembangunan Daerah', 'Undangan FGD Penyusunan Rekomendasi PEL/FEDEP', '14-Mar-23', 'Yth Pemimpin BLUD UPTD KST. Nuwun', 'Undangan', '16-Mar-23', '09.00', 'Sala View Hotel'),
(1753, '049.Mar/2023', '005/705/2023', '2023-03-06', 'Undangan Pemaparan Laporan Pendahuluan Kajian Digitalisasi IKM dan UKM', 'Balitbangda Surakarta', 'Undangan Pemaparan Laporan Pendahuluan Kajian Digitalisasi IKM dan UKM', '14-Mar-23', 'Ka. TU mohon hadir. Nuwun', 'Undangan', '16-Mar-23', '09.30', 'Ruang Rapat Balitbangda'),
(1754, '050.Mar/2023', 'KA.01.03/1136.1/2023', '2023-03-09', 'Undangan Workshop Aplikasi SIJALAK KOAR dalam rangka inputing data dukung PEKPPP', 'Setda Surakarta', 'Undangan Workshop Aplikasi SIJALAK KOAR dalam rangka inputing data dukung PEKPPP', '15-Mar-23', 'Ka. TU mohon tugaskan PIC ybs. Nuwun', 'Undangan', '20 s.d 21-Mar-23', '08.30', 'Harris Hotel & Convention'),
(1755, '051.Mar/2023', 'KU.01.03/1230/2023', '2023-03-15', 'Usulan Refocusing Anggaran APBD Tahun Anggaran 2023', 'Setda Surakarta', 'Usulan Refocusing Anggaran APBD Tahun Anggaran 2023', '15-Mar-23', 'Ka. TU mohon dicek kembali hasil pergeseran dan refocusing senin tgl 13 kemarin. Penyampaian soft file ke BPKAD paling lambat kamis 16 maret 2023. Nuwun', 'Pemberitahuan', NULL, NULL, NULL),
(1756, '052.Mar/2023', NULL, '2023-03-08', 'Surat Pemberitahuan Peminjaman Fasilitas Outdoor dan Area Mabar Garena', 'PT Shopee International Indonesia', 'Surat Pemberitahuan Peminjaman Fasilitas Outdoor dan Area Mabar Garena', '16-Mar-23', 'Fasilitasi (P Untung ; P Danang)', 'Pemberitahuan', '16-Mar-23', '08.00-12.00', 'Outdoor STC & Mabar Garena'),
(1757, '053.Mar/2023', '009/KBTK-SRT/III/2023', '2023-03-15', 'Surat Kunjungan', 'KB-TK Widyatama', 'Surat Kunjungan', '16-Mar-23', 'Fasilitasi (B Ani)', 'Permohonan', '20-Mar-23', '08.30', 'SSC'),
(1758, '054.Mar/2023', '005/790/III/2023', '2023-03-14', 'Undangan Rapat Pembahasan Laporan Pendahuluan Kajian Evaluasi Penilaian BLUD UPT Kawasan Sains dan Teknologi', 'Balitbangda Surakarta', 'Undangan Rapat Pembahasan Laporan Pendahuluan Kajian Evaluasi Penilaian BLUD UPT Kawasan Sains dan Teknologi', '16-Mar-23', 'Saya hadir. Nuwun', 'Undangan', '17-Mar-23', '08.30', 'Ruang Rapat Balitbangda'),
(1759, '055.Mar/2023', '411/K/D-E/III/2023', '2023-03-06', 'Penarikan siswa PKL Tahap 1 dan Permohonan Tempat PKL Tahap 2', 'SMK Kristen 1 Surakarta', 'Penarikan siswa PKL Tahap 1 dan Permohonan Tempat PKL Tahap 2', '16-Mar-23', 'Fasilitasi (P Budi)', 'Permohonan', '16-Mar-23', NULL, NULL),
(1760, '056.Mar/2023', '03.112/PL8/TE/DT/2023', '2023-03-08', 'Permohonan Kunjungan Industri', 'Politeknik Negeri Bali', 'Permohonan Kunjungan Industri', '17-Mar-23', 'Fasilitasi, buat surat balasan tulis di agenda (P Budi ; B Ani)', 'Permohonan', '11-Jul-23', '14.00', 'KST'),
(1761, '057.Mar/2023', '005/827/III/2023', '2023-03-17', 'Undangan Rapat Pendampingan I (Analisa Produk, Rencana Pengembangan Prototype & Penjelasan Penyusunan RAB)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1762, '058.Mar/2023', '1024/UN27.04/KM.05.02/2023', '2023-03-16', 'Undangan FGD - Business Gathering bersama Regulator dan Industri', 'FEB UNS', 'Undangan FGD - Business Gathering bersama Regulator dan Industri', '20-Mar-23', 'Hadiri (P Chris)', 'Undangan', '21-Mar-23', '07.30', 'Gd. Soedara Soepono Lantai 5 FEB UNS'),
(1763, '059.Mar/2023', NULL, '2023-03-20', 'Mutasi Citra Pradnya Paramitha', 'Politeknik ATMI Surakarta', 'Mutasi pemindahan tempat kerja karyawan', '20-Mar-23', 'Urus administrasi, materi personal (P Lusi)', 'Permohonan', NULL, NULL, NULL),
(1764, '061.Mar/2023', '184/UN27.05/PT.01.01/2023', '2023-03-20', 'Permohonan Mengajukan Kerja Sama Public Relation', 'FISIP UNS', 'Permohonan pemenuhan tugas mata kuliah Public Relation 2 periode hingga Juli', '21-Mar-23', 'Fasilitasi (P Susilo), Tanyakan waktunya (B Ani)', 'Permohonan', NULL, NULL, NULL),
(1765, '062.Mar/2023', '09/CKK-SP/III/2023', '2023-03-20', 'Permohonan Kerjasama', 'CERGAS KONSULTAN', 'Permohonan Kerjasama', '21-Mar-23', 'Jajaki kemungkinan-kemungkinan kerjasama dengan inkubator bisnis (P Danu)', 'Permohonan', NULL, NULL, NULL),
(1766, '063.Mar/2023', '110/UN27.21.3.8/PK.01.06/2023', '2023-03-21', 'Permohonan Magang', 'Sekolah Vokasi UNS', 'Permohonan kegiatan magang mahasiswa', '21-Mar-23', 'Fasilitasi, Tempatkan di Pelayanan (P Chris)', 'Permohonan', '24 Maret - 26 Mei 2023', NULL, NULL),
(1767, '064.Mar/2023', 'KP.00/1314/2023', '2023-03-21', 'SE Penetapan Jam kerja Pegawai Aparatur Sipil Negara pada Bulan Ramadhan 1444 H Tahun 2023 di Lingkungan Pemerintah Kota Surakarta', 'Setda Surakarta', 'SE Penetapan Jam kerja Pegawai Aparatur Sipil Negara pada Bulan Ramadhan 1444 H Tahun 2023 di Lingkungan Pemerintah Kota Surakarta', '21-Mar-23', 'Divisi HRD mohon dipedomani dan disesuaikan dengan jam kerja yang ada di KST STP seperti tahun-tahun sebelumnya. Nuwun', NULL, NULL, NULL, NULL),
(1768, '065.Mar/2023', '207/R3/AD/2023', '2023-03-20', 'Koordinasi Proker dan Sosialisasi Incubator Bisnis', 'UNISRI', 'Koordinasi Proker dan Sosialisasi Incubator Bisnis', '24-Mar-23', 'Fasilitasi, Hadiri (P danu)', 'Undangan', '24-Mar-23', '13.00', 'Ruang Seminar Gedung B Lantai 3 (Ruang Sidang Baru)'),
(1769, '066.Mar/2023', '89/UN27.06.3.1/PM.03/2023', '2023-03-24', 'Permohonan pemateri/pelatih', 'Fakultas Kedokteran UNS', 'Permohonan pemateri/pelatih untuk workdhop pengembangan produk kreatifitas dan penalaran mahasiswa', '24-Mar-23', 'Fasilitasi, Arsipkan (B Ani)', 'Permohonan', '31-Mar-23', '13.00 - 15.00', 'Ruang Auditorium Gedung Pendidikan Dokter Fakultas Kedokteran UNS'),
(1770, '067.Mar/2023', '070/093/II/2023', '2023-02-08', 'Izin Penelitian', 'UNISRI/Rekomendasi BALITBANGDA', 'Izin Penelitian', '24-Mar-23', 'Kepada Ka. Div Incubator Bisnis (P Danu) mohon dibantu fasilitasi. Nuwun', 'Permohonan', '9 Feb - 31 Mar 2023', NULL, NULL),
(1771, '068.Mar/2023', 'KD.01.03/1319/2023', '2023-03-24', 'SE Usulan Rencana Kebutuhan BMD dan Rencana Kebutuhan Pemeliharaan BMD TA 2023', 'BPKAD SKA', 'SE Usulan Rencana Kebutuhan BMD dan Rencana Kebutuhan Pemeliharaan BMD TA 2023', '24-Mar-23', 'Ka. TU mohon dipedomani dan menugaskan pengurus barang untuk menindaklanjuti. Nuwun', 'Surat Edaran', NULL, NULL, NULL),
(1772, '069.Mar/2023', '005/839/2023', '2023-03-24', 'Undangan', 'Balitbangda Surakarta', 'Undangan rapat pendampingan II (Penyusunan RAB dan Rencana Kegiatan KST untuk pengembangan Prototype I)', '24-Mar-23', 'Saya Hadir. Nuwun', 'Undangan', '28-Mar-23', '10.00 - Selesai', 'Ruang rapat Balitbangda'),
(1773, '070.Mar/2023', 'B/KWU.6.2/S.19/D.IV.M.EKON.1/03/2023', '2023-03-21', 'Permohonan pengisi showcase/exhibition Booth', 'KEMENKO Perekonomian', 'Permohonan pengisi showcase/exhibition booth dalam acara festival ekonomi keuangan digital indonesia (FEKDI) 2023', '27-Mar-23', '1. Disiapkan tim dan materi pameran; 2. siapkan RAB (Detail) (P Christ; P Danu)', 'Permohonan', '09 - 13 Mei 2023', NULL, 'Jakarta Convention Center (JCC)'),
(1774, '071.Mar/2023', NULL, '2023-03-24', 'Pemberitahuan pendaftaran program Nurture To Scale (Program pengembangan) untuk perusahaan startup berbasis teknologi', 'British Embassy Jakarta', 'Pemberitahuan pendaftaran program Nurture To Scale (Program pengembangan) untuk perusahaan startup berbasis teknologi', '27-Mar-23', 'Seleksi dan kirimkan peserta', 'Pemberitahuan', '16 Mar - 21 Apr 2023', NULL, NULL),
(1775, '072.Mar/2023', 'KU.01.03/1338/2023', '2023-03-24', 'Surat Edaran', 'Walikota Surakarta', 'Pembatasan kegiatan keluar daerah dan kegiatan di Hotel pada satuan kerja perangkat daerah dan unit satuan kerja perangkat daerah lingkungan pemerintah kota surakarta tahun 2023', '27-Mar-23', 'Ka.Subag TU mohon dipedomani dan diinfokan ke pejabat pengelola dan pengelola keuangan KST. Nuwun', 'Edaran', NULL, NULL, NULL),
(1776, '073.Mar/2023', '005/147', '2023-03-24', 'Undangan Rakor Kelembagaan Inkubator', 'Badan Perencanaan Pembangunan, Penelitian dan Pengembangan Daerah', 'Undangan Rakor Kelembagaan Inkubator', '27-Mar-23', '1. Ka.Divisi Inkubator mohon hadir bersama pemimpin BLUD ; 2. Mba Lusi tolong buatkan surat tugas dan mas Danu serta SPPDnya setelah jadi tolong kasih mas Agus untuk proses. Nuwun (P Yudit)', NULL, NULL, NULL, NULL),
(1777, '075.Mar/2023', '421.5/590/SMK N 1 WP/III/2023', '2023-03-27', 'Permohonan Kunjungan', 'SMK Negeri 1 Way Panji', 'Permohonan Kunjungan', '27-Mar-23', 'Fasilitasi (M.Buel, M. Era, M.Ani) Buat Balasan', 'Permohonan', NULL, NULL, NULL),
(1778, '076.Mar/2023', NULL, '2023-03-27', 'Permohonan Kerjasama', 'Superskin Beauty Clinic', 'permohonan kerjasama', '27-Mar-23', 'bagikan brosur', 'Permohonan', NULL, NULL, NULL),
(1779, '077.Mar/2023', 'KWU.02/44/D.IV.M.EKON.2/03/2023', '2023-03-27', 'Undangan', 'Kemenkop', 'undangan pembahasan konsep/konten booth FEKDI 2023', '28-Mar-23', 'Hadiri (P Yudit; P Susilo; P Danu; P Christ)', 'Undangan', '29-Mar-23', '13.30 - Selesai', 'Zoom Meeting'),
(1780, '078.Mar/2023', 'A.015/LIGASOLO-UM/II/2023', '2023-03-18', 'Permohonan Penggunaan Tempat', 'Liga Bola Basket Solo', 'Permohonan Penggunaan Tempat', '28-Mar-23', 'sudah dibuat surat balasan (B Ani; P Tegar)', 'Permohonan', NULL, NULL, NULL),
(1781, '080.Mar/2023', '005/PH/B/PORTAKA/HIMATIKA/III/2023', '2023-03-23', 'Permohonan Peminjaman Tempat', 'UNS', 'Permohonan Peminjaman Tempat untuk kegiatan Pekan Olahraga Antarangkatan Matematika (PORTAKA)', '29-Mar-23', 'Tolong diatur jadwalnya koordinasi dengan P Tegar & P danu (P Susilo)', 'Permohonan', '02 - 06 Apr 2023', '16.00 - 18.00', 'Lapangan Basket Solo Technopark'),
(1782, '082.Mar/2023', '395/GEO-FISIPOL/ADM/III/2023', '2023-03-27', 'Company Visit Singapore Management University', 'UGM', 'Permohonan company visit ke Solo Technopark dengan jumlah partisipan 39 orang', '29-Mar-23', 'Konfirmasi (B Ani)', 'Kunjungan', '17-Juni-23', NULL, NULL),
(1783, '083.Mar/2023', NULL, '2023-03-29', 'Test Drive kandidat driver shopee xpress', 'Shopee Xpress', 'Test Drive kandidat driver shopee xpress', '29-Mar-23', 'Fasilitasi (P Untung; P Danu)', 'Permohonan', '01 - 02 April 2023', '09.00 - 16.00', 'Area Solo Technopark'),
(1784, '084.Mar/2023', '420/025/2023', '2023-03-29', 'Permohonan Praktek kerja lapangan', 'SMKN 2 Surakarta', 'Permohonan Praktek kerja lapangan', '29-Mar-23', 'Fasilitasi (Surat Balasan), dimasukkan ke bagian IT Bp Eko (P Budi; P Eko)', 'Permohonan', '10 Jul - 23 Des 23', NULL, NULL),
(1785, '085.Mar/2023', '002/IKL-RS/III/2023', '2023-03-20', 'Ucapan Idul Fitri 1444 H/2023', 'Jawa Pos Radar Solo', 'Ucapan Idul Fitri 1444 H/2023', '30-Mar-23', 'Ambil yang tipe B (Rp. 555.000) P. Untung', 'Permohonan', NULL, NULL, NULL),
(1786, '086.Mar/2023', 'RP.02.08/1412/2023', '2023-03-29', 'Workshop pengisian aplikasi e-Sakip kota Surakarta', 'Setda', 'Workshop pengisian aplikasi e-Sakip kota Surakarta', '31-Mar-23', 'Ka.Subag TU mohon hadir, untuk bahan-bahan bisa berkoordinasi dengan Mbak Sari (Balitbangda), Nuwun', 'Permohonan', '05 - 06 April 2023', '09.00 - Selesai', 'Ruang Rapat Manganti Praja Komplek Balai Kota Surakarta'),
(1787, '087.Mar/2023', '005/870/III/2023', '2023-03-31', 'undangan', 'BALITBANGDA', 'Undangan rapat pendampingan III (Tahap Development - Progress Pengadaan bahan/material/peralatan pengembangan prototype penyusunan RAB dan rencana kegiatan', '31-Mar-23', 'saya hadir. Nuwun', 'Undangan', '04-Apr-23', '09.00 - Selesai', 'Ruang Rapat Balitbangda'),
(1788, '088.Mar/2023', '/SMK PGRI-1 KDR/HUMAS/SKA4/III/2023', '2023-03-28', 'Permohonan kunjungan Universitas', 'SMK PGRI 1 KEDIRI', 'Permohonan Tempat junjungan Universitas pada tanggal 26 Juni 2023 PKL.09.00 Berjumlah 262 Perserta', '31-Mar-23', 'Fasilitasi ( Dibagi menjadi beberapa kelompok dalam satu hari M.Budi&M.Eva)', 'Kunjungan', '26-Jun-23', NULL, NULL),
(1789, '001.Apr/2023', '422/061.5/101.6.18.14/2023', '2023-02-20', 'Permohonan kunjungan industri', 'SMKN 1 Geneng Ngawi', 'Permohonan kunjungan industri', '03-Apr-23', 'Fasilitasi (P Budi)', 'Permohonan', '13-Jun-23', '09.00 - Selesai', NULL),
(1790, '002.Apr/2023', 'B-412/11.8.5/MR.06.00/3/2023', '2023-03-31', 'Pemberitahuan penyelenggaraan bimbingan teknis', 'Badan Riset dan Inovasi Nasional', 'Pemberitahuan penyelenggaraan bimbingan teknis', '03-Apr-23', 'Hadiri (B Ani ; Mhs MSIB)', 'Pemberitahuan', '12 - 13 Apr 2023', NULL, NULL),
(1791, '003.Apr/2023', '01/IV/AIBI2023', '2023-04-01', 'Rapat Anggota Tahunan AIBI', 'AIBI', 'Undangan Pertemuan Hybreed Zoom Meeting Rapat Anggota Tahunan AIBI', '03-Apr-23', 'Sudah Di Hadiri', 'Undangan', NULL, NULL, NULL),
(1792, '004.Apr/2023', '099/JA-Intermedia/IV/2023', '2023-04-01', 'Greeting Ucapan Selamat Idul Fitri 1444 H', 'Solopos & Suara Merdeka', 'Greeting Ucapan Selamat Idul Fitri 1444 H', '03-Apr-23', 'Ambil Solo Pos Alternatif 1', NULL, NULL, NULL, NULL),
(1793, '005.Apr/2023', '26/02.4/SP/IV/2023', '2023-04-03', 'Penawaran Greeting Pelantikan Rektor Baru UNS', 'PT. Aksara SOLOPOS', 'Penawaran Greeting Pelantikan Rektor Baru UNS', '03-Apr-23', 'Tidak Jadi Dilantik', NULL, NULL, NULL, NULL),
(1794, '006.Apr/2023', 'B-248/Dep.4.2/WU.01.00/III/2023', '2023-03-31', 'Sosialisasi kerjasama SME Support Japan 2023-2023', 'KEMENKOP UKM', 'Sosialisasi kerjasama SME Support Japan 2023-2023', '03-Apr-23', 'pilih start up nya, diminta ikut (P Danu)', 'Undangan', '03-Apr-23', '13.30 - Selesai', 'Zoom Meeting'),
(1795, '007.Apr/2023', '395/GEO-FISIPOL/ADM/III/2023', '2023-03-27', 'Company Visit Singapore Management University', 'Falkutas Ilmu Sosial dan Ilmu Politik', 'Permohonan Company Visit ke Solotehnopark Pada hari kamis tanggal 15 juni 2023', '04-Apr-23', 'Diterima Pejabat Juli ini (Bpk.Christian,Bpk. Danu) di buat surat balasan Bu.Ani', 'Permohonan', '15-Juni-23', NULL, NULL),
(1796, '008.Apr/2023', '497/PK.03.03/SMK N 1 LMS.KCD.IX.IV/2023', '2023-04-04', 'Permohonan kunjungan industri', 'SMK N 1 LEMAHSUGIH', 'Permohonan kunjungan industri', '04-Apr-23', 'Fasilitasi membuat surat balasan (m.Budi&M.Eva)', 'Permohonan', NULL, NULL, NULL),
(1797, '009.Apr/2023', '0420/4/SMK.AB/IV/2023', '2023-04-04', 'Permohonan kunjungan industri', 'SMKS Al-Wahhab Kradenan', 'Kunjungan Industri 59 Siswa 10 Guru Pendamping pada 4 Juli 2023', '04-Apr-23', 'Fasilitasi (M. Eva/M.Budi)', 'Permohonan', '04-Jul-23', NULL, NULL),
(1798, '010.Apr/2023', NULL, '2023-02-23', 'pemberitahuan kegiatan', 'PT. Shopee International Indonesia', 'pemberitahuan kegiatan \"Dari Pesantren Untuk Pesantren\" & pelaksanaan pekerjaan bongkar muat barang beserta properti kegiatan', '05-Apr-23', 'Fasilitasi (P Untung; P Danu)', 'Pemberitahuan', '06-Apr-23', '15.00 - 17.00', 'Pantry Gedung Gumarang'),
(1799, '011.Apr/2023', 'TM.00.07/1495/2023', '2023-04-04', 'Undangan', 'Pemerintah Kota Surakarta', 'undangan rapat konsolidasi metode penghitungan unsur TPP dari perangkat daerah pengampu BLUD', '05-Apr-23', 'Saya hadir. Nuwun', 'Undangan', '05-Apr-23', '09.00 - Selesai', 'Ruang Rapat Nata Praja'),
(1800, '012.Apr/2023', 'PW.00/1492/2023', '2023-04-05', 'Pengendalian Gratifikasi dan Penggunaan Kendaraan Dinas Pada Hari raya Lebaran di Lingkungan Kota Surakarta tahun 2023', 'Pemerintah Kota Surakarta', 'Pengendalian Gratifikasi dan Penggunaan Kendaraan Dinas Pada Hari raya Lebaran di Lingkungan Kota Surakarta tahun 2023', '05-Apr-23', 'Ka.TU mohon dipedomani dan dilakukan penyebarluasan informasi di lingkungan KST berkoordinasi dengan HRD. Nuwun', 'Edaran', NULL, NULL, NULL),
(1801, '013.Apr/2023', '2022/E/GOV/SB/SPID/III/2023', '2023-03-28', 'Undangan Acara Pengumuman Pemenang Kompetisi Shopee Barokah', 'PT. Shopee International Indonesia', 'Pengembangan Bisnis Digital Melalui Program Shopee Barokah (Pelatihan UMKM dan Kompetisi Antar Santri)', '06-Apr-23', 'Pak Untung Hadiri', 'Undangan', '06-Apr-23', '15.00 - 17.00', 'Gedung Gumarang Solo Technopark'),
(1802, '014.Apr/2023', '8/827/KI/IV/2023', '2023-04-06', 'Dukungan data dan informasi', 'Dinas Komunikasi, Informatika, Statistika dan Persandian Kota Surakarta', 'Dukungan data dan informasi untuk PPID Kota Surakarta', '10-Apr-23', 'Ka. TU tolong ditindaklanjuti berkoordinasi dengan Bendahara BLUD tentang laporan keuangan BLUD', NULL, NULL, NULL, NULL),
(1803, '015.Apr/2023', 'KP.04.00/2668/IV/2023', '2023-04-06', 'Undangan', 'Badan Kepegawaian dan Pengembangan Sumberdaya Manusia', 'Undangan Penjelasan Teknis LMS', '10-Apr-23', 'Saya hadir. Nuwun', 'Undangan', '12-Apr-23', NULL, NULL),
(1804, '016.Apr/2023', '238/A/FT/UTP/IV/2023', '2023-04-03', 'Surat pengantar izin survey', 'Univ Tunas Pembangunan Kota Surakarta', 'Izin survey & permohonan Daata', '10-Apr-23', 'Fasilitasi (M. Susilo & M. Danny)', 'Permohonan', '10-Apr-23', NULL, NULL),
(1805, '017.Apr/2023', '084/SOCMEDIA/III/2023', '2023-04-05', 'Surat Perizinan Produksi', 'SOC Media Group', 'Permohonan izin photoshoot dan take video reels untuk project SOC Media Group bersama Honda Jateng', '10-Apr-23', 'Fasilitasi (M.Susilo)', 'Permohonan', NULL, NULL, NULL),
(1806, '018.Apr/2023', '025/UN27.02.719/DP/2023', '2023-04-10', 'Surat Permohonan Izin Observasi', 'Universitas Negeri Semarang', 'Melakukan Observasi', '11-Apr-23', 'Diterima/Komunikasi Dengan M.Tegar', 'Permohonan', '11-Apr-23', NULL, NULL),
(1807, '019.Apr/2023', 'RP.05/1562/2023', '2023-04-10', 'Undangan', 'Pemerintah Kota Surakarta', 'Rapat Koordinasi Pengendalian Operasional Kegiatan (RAKORPOK) Kota Surakarta Triwulan I TA. 2023', '11-Apr-23', 'Saya hadir, Yth. Ka. TU mohon dibantu menyediakan bahannya', 'Undangan', '13-Apr-23', NULL, NULL),
(1808, '020.Apr/2023', 'B/KWU.6.2/UND.30.=/D.IV.M.EKON.1/04/2023', '2023-04-06', 'Rapat Koordinasi Teknis Festival Ekonomi Keuangan Digital Indonesis (FEKDI) 2023', 'KEMENKO', 'Rapat Koordinasi Teknis Festival Ekonomi Keuangan Digital Indonesis (FEKDI) 2023 pada hari Jum\'at, 14 April 2023 pukul 09.00', '11-Apr-23', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `Id_unit_kerja` int(11) NOT NULL,
  `Kode_unit_kerja` int(11) NOT NULL,
  `Kontak_unit_kerja` varchar(255) NOT NULL,
  `Nama_unit_kerja` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`Id_unit_kerja`, `Kode_unit_kerja`, `Kontak_unit_kerja`, `Nama_unit_kerja`) VALUES
(1, 1, '02372437893', 'Produksi'),
(2, 2, '02838924729', 'Diklat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`Id_jabatan`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`Id_karyawan`);

--
-- Indexes for table `master_agenda`
--
ALTER TABLE `master_agenda`
  ADD PRIMARY KEY (`Id_agenda`);

--
-- Indexes for table `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`Id_barang`);

--
-- Indexes for table `master_belanja`
--
ALTER TABLE `master_belanja`
  ADD PRIMARY KEY (`Id_jenisbelanja`);

--
-- Indexes for table `master_cuti`
--
ALTER TABLE `master_cuti`
  ADD PRIMARY KEY (`Id_cuti`);

--
-- Indexes for table `master_divisi`
--
ALTER TABLE `master_divisi`
  ADD PRIMARY KEY (`Id_divisi`);

--
-- Indexes for table `master_instansi`
--
ALTER TABLE `master_instansi`
  ADD PRIMARY KEY (`Id_instansi`);

--
-- Indexes for table `master_jenis_peraturan`
--
ALTER TABLE `master_jenis_peraturan`
  ADD PRIMARY KEY (`Id_jenisperaturan`);

--
-- Indexes for table `master_keterangan`
--
ALTER TABLE `master_keterangan`
  ADD PRIMARY KEY (`Id_keterangan`);

--
-- Indexes for table `master_pegawai`
--
ALTER TABLE `master_pegawai`
  ADD PRIMARY KEY (`Id_pegawai`);

--
-- Indexes for table `master_penerimaan`
--
ALTER TABLE `master_penerimaan`
  ADD PRIMARY KEY (`Id_penerimaan`);

--
-- Indexes for table `master_pengeluaran`
--
ALTER TABLE `master_pengeluaran`
  ADD PRIMARY KEY (`Id_pengeluaran`);

--
-- Indexes for table `master_sumberdana`
--
ALTER TABLE `master_sumberdana`
  ADD PRIMARY KEY (`Id_sumberdana`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`Id_user`);

--
-- Indexes for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`Id_metode`);

--
-- Indexes for table `mytable`
--
ALTER TABLE `mytable`
  ADD PRIMARY KEY (`Id_Suratmasuk`);

--
-- Indexes for table `peraturan`
--
ALTER TABLE `peraturan`
  ADD PRIMARY KEY (`Id_peraturan`);

--
-- Indexes for table `riwayat_cuti`
--
ALTER TABLE `riwayat_cuti`
  ADD PRIMARY KEY (`Id_riwayatcuti`);

--
-- Indexes for table `riwayat_hukuman`
--
ALTER TABLE `riwayat_hukuman`
  ADD PRIMARY KEY (`Id_hukuman`);

--
-- Indexes for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  ADD PRIMARY KEY (`Id_riwayat_jabatan`);

--
-- Indexes for table `riwayat_keluarga`
--
ALTER TABLE `riwayat_keluarga`
  ADD PRIMARY KEY (`Id_keluarga`);

--
-- Indexes for table `riwayat_pelatihan`
--
ALTER TABLE `riwayat_pelatihan`
  ADD PRIMARY KEY (`Id_pelatihan`);

--
-- Indexes for table `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
  ADD PRIMARY KEY (`Id_pendidikan`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`Id_Suratkeluar`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`Id_Suratmasuk`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`Id_unit_kerja`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `Id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `Id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_agenda`
--
ALTER TABLE `master_agenda`
  MODIFY `Id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `master_barang`
--
ALTER TABLE `master_barang`
  MODIFY `Id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2173;

--
-- AUTO_INCREMENT for table `master_belanja`
--
ALTER TABLE `master_belanja`
  MODIFY `Id_jenisbelanja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `master_cuti`
--
ALTER TABLE `master_cuti`
  MODIFY `Id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_divisi`
--
ALTER TABLE `master_divisi`
  MODIFY `Id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `master_instansi`
--
ALTER TABLE `master_instansi`
  MODIFY `Id_instansi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_jenis_peraturan`
--
ALTER TABLE `master_jenis_peraturan`
  MODIFY `Id_jenisperaturan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_keterangan`
--
ALTER TABLE `master_keterangan`
  MODIFY `Id_keterangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `master_pegawai`
--
ALTER TABLE `master_pegawai`
  MODIFY `Id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `master_penerimaan`
--
ALTER TABLE `master_penerimaan`
  MODIFY `Id_penerimaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=769;

--
-- AUTO_INCREMENT for table `master_pengeluaran`
--
ALTER TABLE `master_pengeluaran`
  MODIFY `Id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `master_sumberdana`
--
ALTER TABLE `master_sumberdana`
  MODIFY `Id_sumberdana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `metode_bayar`
--
ALTER TABLE `metode_bayar`
  MODIFY `Id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `peraturan`
--
ALTER TABLE `peraturan`
  MODIFY `Id_peraturan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_cuti`
--
ALTER TABLE `riwayat_cuti`
  MODIFY `Id_riwayatcuti` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_hukuman`
--
ALTER TABLE `riwayat_hukuman`
  MODIFY `Id_hukuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_jabatan`
--
ALTER TABLE `riwayat_jabatan`
  MODIFY `Id_riwayat_jabatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_keluarga`
--
ALTER TABLE `riwayat_keluarga`
  MODIFY `Id_keluarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pelatihan`
--
ALTER TABLE `riwayat_pelatihan`
  MODIFY `Id_pelatihan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayat_pendidikan`
--
ALTER TABLE `riwayat_pendidikan`
  MODIFY `Id_pendidikan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `Id_Suratkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=683;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `Id_Suratmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1809;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `Id_unit_kerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
