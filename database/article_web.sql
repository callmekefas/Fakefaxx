-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 09:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `article_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'knggebu@gmail.com', 'akuadmin');

-- --------------------------------------------------------

--
-- Table structure for table `trivias`
--

CREATE TABLE `trivias` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trivias`
--

INSERT INTO `trivias` (`id`, `user_id`, `author`, `title`, `category`, `content`, `file_path`, `status`, `created_at`) VALUES
(7, 3, 'Elon', 'Zidane : Dribling Terpanjang', 'sports', 'Pada tahun 1998, pada pertandingan Piala Dunia FIFA antara Prancis dan Arab Saudi, Zinedine Zidane, yang merupakan pemain timnas Prancis, melakukan dribel dari titik tengah lapangan hingga ke gawang lawan tanpa disentuh oleh pemain lawan, sehingga disebut \"dribel terpanjang tanpa disentuh\" dalam sejarah Piala Dunia.', 'uploads/zidane.jpg', 'rejected', '2024-05-31 06:14:02'),
(10, 3, 'Elon', 'Ukuran dan Skala Alam Semesta', 'science', 'Alam semesta kita diperkirakan berusia sekitar 13,8 miliar tahun, dan ia terus mengembang sejak peristiwa Big Bang. Dalam skala yang begitu besar, sulit untuk membayangkan jarak yang ada. Sebagai contoh, galaksi terdekat dengan Bima Sakti, yaitu Galaksi Andromeda, berjarak sekitar 2,537 juta tahun cahaya. Jika kita bisa melakukan perjalanan secepat cahaya, yang bergerak pada kecepatan 299.792.458 meter per detik, kita masih memerlukan lebih dari dua juta tahun untuk mencapai Andromeda.', 'uploads/universe.jpg', 'rejected', '2024-06-05 23:03:30'),
(11, 3, 'Elon', 'Nikola Tesla dan Penemuan Listrik Alternating Current (AC)', 'science', 'Nikola Tesla adalah seorang penemu dan insinyur listrik yang revolusioner, dikenal karena pengembangannya terhadap sistem listrik alternating current (AC) yang digunakan secara luas di seluruh dunia saat ini. Tesla adalah sosok eksentrik dengan banyak kebiasaan unik; dia tidur hanya beberapa jam setiap malam dan mengklaim mendapatkan inspirasinya dari kilatan cahaya yang tiba-tiba. Tesla juga memiliki fobia terhadap permata dan kekaguman yang mendalam terhadap burung, khususnya merpati. Meskipun ia meninggal dalam keadaan miskin, kontribusinya terhadap ilmu pengetahuan dan teknologi tetap sangat dihargai, dan namanya diabadikan dalam satuan medan magnetik, Tesla.', 'uploads/tesla.jpg', 'rejected', '2024-06-05 23:09:12'),
(12, 3, 'Elon', 'Tembok Besar Cina: Simbol Kekuatan dan Ketahanan', 'history', 'Tembok Besar Cina adalah salah satu struktur paling ikonik di dunia. Dibangun selama lebih dari 1.000 tahun oleh berbagai dinasti, panjang totalnya mencapai sekitar 21.196 kilometer. Tembok ini dibangun untuk melindungi wilayah Cina dari serangan musuh. Selain sebagai benteng pertahanan, Tembok Besar Cina juga menjadi simbol kekuatan dan ketahanan bangsa Cina. Hingga saat ini, tembok ini masih menjadi salah satu tujuan wisata paling populer di dunia.', 'uploads/greatwall.jpg', 'rejected', '2024-06-07 09:10:40'),
(14, 4, 'Mr. Triviacer', 'The Simpsons : Serial Terlama', 'entertainment', 'Serial TV \"The Simpsons\" adalah serial animasi dengan durasi terpanjang dalam sejarah televisi. Ditayangkan pertama kali pada tahun 1989, serial ini telah mencapai lebih dari 700 episode dan terus berlanjut. \"The Simpsons\" dikenal karena satir sosialnya yang tajam dan referensinya yang kocak terhadap budaya pop. Serial ini telah mempengaruhi banyak aspek budaya modern dan bahkan memprediksi beberapa peristiwa besar di dunia nyata. Kesuksesan dan daya tahan \"The Simpsons\" menunjukkan bagaimana sebuah serial dapat tetap relevan dan dicintai selama lebih dari tiga dekade.', 'uploads/thesimphsons.jpg', 'rejected', '2024-06-07 10:03:30'),
(15, 6, 'Pekkagrok', 'Pesan Email Pertama : \"QWERTYUIOP\" ', 'technology', 'Pada tahun 1971, Ray Tomlinson mengirimkan email pertama di dunia, sebuah langkah revolusioner yang mengubah cara kita berkomunikasi secara permanen. Dengan penggunaan simbol \"@\" yang sederhana namun genial, Tomlinson menciptakan sistem email yang memungkinkan pengguna untuk mengirim pesan instan ke pengguna lain di komputer yang berbeda di jaringan ARPANET. Pesan pertamanya yang berisi \"QWERTYUIOP\" mungkin tampak sederhana, tetapi eksperimen ini membuktikan potensi besar dari teknologi email yang kemudian berkembang menjadi alat komunikasi penting dalam kehidupan sehari-hari, memungkinkan kita untuk terhubung secara cepat dan efisien di seluruh dunia.', 'uploads/emailfr.jpg', 'rejected', '2024-06-07 10:58:05'),
(16, 7, 'dragunov', 'PSG Ukir Sejarah: Juara Liga Champions 2025 dengan Kemenangan Telak atas Inter Milan', 'sports', 'Paris Saint-Germain (PSG) akhirnya meraih gelar UEFA Champions League pertama mereka setelah menang 5-0 atas Inter Milan di final yang digelar di Allianz Arena, Munich, pada 31 Mei 2025. Di bawah asuhan Luis Enrique, PSG tampil dominan dan sukses mencetak sejarah sebagai klub Prancis pertama yang meraih treble winners (Ligue 1, Coupe de France, dan Liga Champions).\r\n\r\nGol-gol kemenangan dicetak oleh Achraf Hakimi, Désiré Doué (2 gol), Khvicha Kvaratskhelia, dan Senny Mayulu. Kemenangan telak ini menjadi margin terbesar dalam sejarah final Liga Champions.\r\n\r\nPerayaan kemenangan disambut meriah di Paris, meski sempat diwarnai kerusuhan. Luis Enrique dan para pemain muda PSG mendapat pujian luas atas pencapaian ini. Kemenangan ini juga menandai awal era baru PSG yang lebih kolektif dan fokus pada regenerasi.', '../proses/uploadsScreenshot 2025-06-03 025100.png', 'approved', '2025-06-01 17:46:00'),
(17, 1, 'Elon', 'Zidane : Dribling Terpanjang', 'sports', 'Pada tahun 1998, pada pertandingan Piala Dunia FIFA antara Prancis dan Arab Saudi, Zinedine Zidane, yang merupakan pemain timnas Prancis, melakukan dribel dari titik tengah lapangan hingga ke gawang lawan tanpa disentuh oleh pemain lawan, sehingga disebut \"dribel terpanjang tanpa disentuh\" dalam sejarah Piala Dunia.', '../proses/uploadszidane.jpg', 'approved', '2025-06-02 19:08:33'),
(18, 1, 'Elon', 'Ukuran dan Skala Alam Semesta', 'science', 'Alam semesta kita diperkirakan berusia sekitar 13,8 miliar tahun, dan ia terus mengembang sejak peristiwa Big Bang. Dalam skala yang begitu besar, sulit untuk membayangkan jarak yang ada. Sebagai contoh, galaksi terdekat dengan Bima Sakti, yaitu Galaksi Andromeda, berjarak sekitar 2,537 juta tahun cahaya. Jika kita bisa melakukan perjalanan secepat cahaya, yang bergerak pada kecepatan 299.792.458 meter per detik, kita masih memerlukan lebih dari dua juta tahun untuk mencapai Andromeda.', '../proses/uploadsuniverse.jpg', 'approved', '2025-06-02 19:10:49'),
(19, 1, 'Elon', 'Nikola Tesla dan Penemuan Listrik Alternating Current (AC)', 'history', 'Nikola Tesla adalah seorang penemu dan insinyur listrik yang revolusioner, dikenal karena pengembangannya terhadap sistem listrik alternating current (AC) yang digunakan secara luas di seluruh dunia saat ini. Tesla adalah sosok eksentrik dengan banyak kebiasaan unik; dia tidur hanya beberapa jam setiap malam dan mengklaim mendapatkan inspirasinya dari kilatan cahaya yang tiba-tiba. Tesla juga memiliki fobia terhadap permata dan kekaguman yang mendalam terhadap burung, khususnya merpati. Meskipun ia meninggal dalam keadaan miskin, kontribusinya terhadap ilmu pengetahuan dan teknologi tetap sangat dihargai, dan namanya diabadikan dalam satuan medan magnetik, Tesla.', '../proses/uploadstesla.jpg', 'approved', '2025-06-02 19:13:08'),
(20, 1, 'Elon', 'Tembok Besar Cina: Simbol Kekuatan dan Ketahanan', 'history', 'Tembok Besar Cina adalah salah satu struktur paling ikonik di dunia. Dibangun selama lebih dari 1.000 tahun oleh berbagai dinasti, panjang totalnya mencapai sekitar 21.196 kilometer. Tembok ini dibangun untuk melindungi wilayah Cina dari serangan musuh. Selain sebagai benteng pertahanan, Tembok Besar Cina juga menjadi simbol kekuatan dan ketahanan bangsa Cina. Hingga saat ini, tembok ini masih menjadi salah satu tujuan wisata paling populer di dunia.', '../proses/uploadsgreatwall.jpg', 'approved', '2025-06-02 19:14:05'),
(21, 1, 'Mr. Triviacer', 'The Simpsons : Serial Terlama', 'entertainment', 'Serial TV \"The Simpsons\" adalah serial animasi dengan durasi terpanjang dalam sejarah televisi. Ditayangkan pertama kali pada tahun 1989, serial ini telah mencapai lebih dari 700 episode dan terus berlanjut. \"The Simpsons\" dikenal karena satir sosialnya yang tajam dan referensinya yang kocak terhadap budaya pop. Serial ini telah mempengaruhi banyak aspek budaya modern dan bahkan memprediksi beberapa peristiwa besar di dunia nyata. Kesuksesan dan daya tahan \"The Simpsons\" menunjukkan bagaimana sebuah serial dapat tetap relevan dan dicintai selama lebih dari tiga dekade.', '../proses/uploadsthesimphsons.jpg', 'approved', '2025-06-02 19:14:33'),
(22, 1, 'Pekkagrok', 'Pesan Email Pertama : \"QWERTYUIOP\"', 'technology', 'Pada tahun 1971, Ray Tomlinson mengirimkan email pertama di dunia, sebuah langkah revolusioner yang mengubah cara kita berkomunikasi secara permanen. Dengan penggunaan simbol \"@\" yang sederhana namun genial, Tomlinson menciptakan sistem email yang memungkinkan pengguna untuk mengirim pesan instan ke pengguna lain di komputer yang berbeda di jaringan ARPANET. Pesan pertamanya yang berisi \"QWERTYUIOP\" mungkin tampak sederhana, tetapi eksperimen ini membuktikan potensi besar dari teknologi email yang kemudian berkembang menjadi alat komunikasi penting dalam kehidupan sehari-hari, memungkinkan kita untuk terhubung secara cepat dan efisien di seluruh dunia.', '../proses/uploadsemailfr.jpg', 'approved', '2025-06-02 19:15:09'),
(23, 1, 'dragunov', 'Palung Mariana: Dunia yang Belum Dijelajahi', 'science', 'Palung Mariana adalah tempat terdalam di Bumi, mencapai 11.034 meter di bawah permukaan laut. Tekanan di dasar palung ini bisa mencapai 1.086 bar, setara dengan berat 50 jet jumbo yang menekan tubuh manusia. Meskipun ekstrem, beberapa makhluk unik seperti Amphipoda raksasa dan ikan hantu berhasil bertahan hidup di lingkungan ini.', '../proses/uploadspalung mariana.jpg', 'approved', '2025-06-02 19:22:38'),
(24, 1, 'Mr. Triviacer', 'Danau Baikal: Harta Karun Air Tawar', 'science', 'Danau Baikal di Siberia adalah danau air tawar terdalam di dunia dengan kedalaman 1.620 meter. Selain itu, danau ini menyimpan sekitar 20% dari seluruh air tawar yang tidak membeku di dunia. Uniknya, danau ini juga menjadi rumah bagi Nerpa, satu-satunya spesies anjing laut yang hidup di air tawar', '../proses/uploadsDanau Baikal.jpeg', 'approved', '2025-06-02 19:24:39'),
(25, 1, 'Pekkagrok', 'Lobster: Makhluk yang Tidak Menua', 'science', 'Lobster memiliki enzim yang membantu memperbaiki sel mereka, sehingga mereka bisa terus beregenerasi tanpa batas. Ini membuat mereka tampak seperti tidak menua secara biologis. Bahkan, beberapa lobster bisa hidup lebih dari 100 tahun dan terus bertambah besar sepanjang hidupnya.', '../proses/uploadslobss.jpg', 'approved', '2025-06-02 19:28:14'),
(26, 1, 'Kefas', 'Sungai Nil: Sumber Kehidupan Sejak Zaman Kuno', 'science', 'Sungai Nil, dengan panjang 6.853 km, adalah sungai terpanjang di dunia dan melintasi 11 negara. Sungai ini telah menjadi sumber kehidupan bagi peradaban Mesir kuno selama ribuan tahun. Bahkan, banyak piramida dan kuil kuno dibangun di dekat sungai ini karena airnya yang sangat penting bagi pertanian.', '../proses/uploadsnil.jpg', 'approved', '2025-06-02 19:30:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'Cook', 'cookzmury@gmail.com', '$2y$10$vnVsNqawayZHklr4WWf9zuwZR6OlbetMYFCzxNVOYdeMrb7Cq0dHS', '2024-05-30 13:29:02'),
(2, 'Jack ', 'jackzuuuu@gmail.com', '$2y$10$gI.uDtEfL9lE1YmgBGZSeeycuFEqQ6/CfDpVYM8IZ.xN5oRycBWD6', '2024-05-30 23:21:27'),
(3, 'Elon', 'elonmusketer@gmail.com', '$2y$10$7Y7/WSOdG/nz8gTzmyM/9ed8n46qBDW66h5xIUGiWLtWm9ktxN1jm', '2024-05-31 01:47:49'),
(4, 'Mr. Triviacer', 'mrtriviacer@gmail.com', '$2y$10$RUbAZGoSqB7HjSY22UFrG.fDvwwkAHitHA/bbvg56x7VPGdf3Z0ZG', '2024-06-07 09:56:12'),
(5, 'Pekka77', 'pekka77@gmail.com', '$2y$10$rwDZ7QbN7R85ucIZ3UvfPug1yDgLnCQpp7Bx0ICLrDuLpq6tFZiZG', '2024-06-07 10:45:39'),
(6, 'Pekkagrok', 'pekkagrck@gmail.com', '$2y$10$tuqL10d4rTBE/EMBnC90xuRDTeYAaKN8N2GIOSKbQcf4cQsfAUrdi', '2024-06-07 10:51:24'),
(7, 'kefas', 'upgayn00@gmail.com', '$2y$10$YIgD2OqtcNhwdA/Fbhmtt.M0iFRWdL/Pss1G3BwRxIk5KghtmMxbS', '2025-06-01 14:59:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivias`
--
ALTER TABLE `trivias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trivias`
--
ALTER TABLE `trivias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
