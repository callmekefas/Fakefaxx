<?php
require '../proses/connect.php';
session_start();

$is_login = isset($_SESSION['user_id']);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FactPedia</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="../css/styles.css">

</head>
<body>
    <style>/* Main Styles */
main {
    padding: 20px;
}

.article-grid {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
    padding-top: 100px;
}

.hidden {
    display: none;
}
.article-card {
    border: 1px solid #ddd;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    margin-bottom: 20px;
}
.article-image img {
    width: 100%;
    height: 450px;
    display: block;
}
.article-content {
    padding: 16px;
}
.read-more {
    color: #007BFF;
    text-decoration: none;
    cursor: pointer;
}

.article-date {
    font-size: 14px;
    color: #666;
    margin-bottom: 10px;
}

.article-title {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
}

.article-excerpt {
    font-size: 14px;
    color: #666;
    margin-bottom: 10px;
}

.read-more {
    text-decoration: none;
    color: #007BFF;
    font-weight: bold;
    display: inline-block;
    margin-top: 10px;
    transition: color 0.3s;
}

.read-more:hover {
    color: #0056b3;
}

/* Footer Styles */
footer {
    background: #007BFF;
    color: white;
    text-align: center;
    padding: 10px 0;
    margin-top: 20px;
    border-radius: 0 0 10px 10px;
}

footer p {
    margin: 0;
}
header {
    background-color: #fff;
}
.logo {
    color: black;
}
/* CSS untuk ikon media sosial */
.article-content .hidden .fab.fa-facebook {
    color: blue; /* Warna ikon Facebook */
}

.article-content .hidden .fab.fa-twitter {
    color: blue; /* Warna ikon Twitter */
}

.article-content .hidden .fab.fa-instagram {
    color: red; /* Warna ikon Instagram */
}

.article-content .hidden .fab {
    display: inline-block; /* Membuat ikon media sosial tetap dalam kondisi span */
    margin-right: 10px; /* Menambahkan jarak antara ikon-ikon */
    font-size: 20px; /* Mengatur ukuran ikon */
    transition: color 0.3s; /* Transisi warna saat dihover */
    padding-top: 10px;
}

.article-content .hidden .fab:hover {
    color: whitesmoke; /* Warna saat dihover */
}



</style>
<header>
        <div class="nav container">
            <a href="#" class="logo">Fake<span>Fact</span></a>
            <div class="nav-page">
                <a href="../index.php">Home</a>
                <a href="../index.php#read">Read</a>
                <a href="#" class="write-link" id="write-link">Write</a>
                <a href="#">About</a>
                <?php if ($is_login) : ?>
                    <a href="../proses/logout.php" class="login">Logout</a>
                <?php else : ?>
                    <a href="../proses/login.php" class="login">Login</a>
                <?php endif ?>
            </div>
        </div>
    </header>
    <main>
        <div class="container article-grid">
            <div class="article-card">
                <div class="article-image">
                    <img src="../img/kefas.png" alt="picture">
                </div>
                <div class="article-content">
                    <h2 class="article-title">Kefas Rainaldi Ferdiand Nggebu</h2>
                    <p class="article-excerpt">
                        Age: 20 <br>
                        Status: Student <br>
                        <span class="hidden"> 
                             University: Sam Ratulangi University <br>
                             Major: informatics Engineering <br>
                             Hobby: Music <br>
                             Favorite Club: Manchester United<br>
                               <!-- Icon media sosial -->
                               <a href="https://www.facebook.com/share/1R5r55dv8q/">
                               <i class="fab fa-facebook"></i>
                               <a href="https://x.com/">
                                <i class="fab fa-x-twitter"></i>
                               </a>
                               <a href="https://www.instagram.com/kefassn?igsh=MWthZW01NHl6a3p0dA==">
                                    <i class="fab fa-instagram"></i>
                               </a>
                        </span>
                    </p>
                    <a href="#" class="read-more">Read More</a>
                </div>
            </div>
            <div class="article-card">
                <div class="article-image">
                    <img src="../img/arvin.png" alt="Picture">
                </div>
                <div class="article-content">
                    <h2 class="article-title">Arvin Neutron Wolff</h2>
                    <p class="article-excerpt">
                        Age: 20 <br>
                        Status: Student <br>
                        <span class="hidden"> 
                             University: Sam Ratulangi University <br>
                             Major: informatics Engineering <br>
                             Hobby: Music <br>
                             Favorite Club: Fc Barcelona<br>
                               <!-- Icon media sosial -->
                                <a href="https://www.facebook.com/share/1EdUGmHMUN/">
                               <i class="fab fa-facebook"></i>
                               <i class="fab fa-x-twitter"></i>
                               <a href="https://www.instagram.com/arvinasalan?igsh=MXkyYTF5YnlqdHk2eA==">
                                    <i class="fab fa-instagram"></i>
                               </a>
                        </span>
                    </p>
                    <a href="#" class="read-more">Read More</a>
                </div>
            </div>
            <div class="article-card">
                <div class="article-image">
                    <img src="../img/fahril1.png" alt="Yet Another Logo">
                </div>
                <div class="article-content">
                    <h2 class="article-title">Muhammad Fakhril Huri</h2>
                    <p class="article-excerpt">
                        Age: 20 <br>
                        Status: Student <br>
                        <span class="hidden"> 
                             University: Sam Ratulangi University <br>
                             Major: informatics Engineering <br>
                             Hobby: Music <br>
                             Favorite Club: PSG<br>
                               <!-- Icon media sosial -->
                                <a href="https://www.facebook.com/">
                                    <i class="fab fa-facebook"></i>
                                </a>                             
                               <i class="fab fa-x-twitter"></i>
                               <a href="https://www.instagram.com/fakhrihuri_1847?igsh=MW5oaXI2bXg0MXVhaw==">
                                    <i class="fab fa-instagram"></i>
                               </a>

                        </span>
                    </p>
                    <a href="#" class="read-more">Read More</a>
                </div>
            </div>
            <div class="article-card">
                <div class="article-image">
                    <img src="../img/forlan.png" alt="And Another Logo">
                </div>
                <div class="article-content">
                    <h2 class="article-title">Forlan Okin Antou</h2>
                    <p class="article-excerpt">
                        Age: 20 <br>
                        Status: Student <br>
                        <span class="hidden"> 
                             University: Sam Ratulangi University <br>
                             Major: informatics Engineering <br>
                             Hobby: Cooking <br>
                             Favorite Club: Manchester City <br>
                               <!-- Icon media sosial -->
                                <a href="https://www.facebook.com/forlan619/#">
                                    <i class="fab fa-facebook"></i>
                               </a>
                               <i class="fab fa-x-twitter"></i>
                               <a href="https://www.instagram.com/justkinzz_/#">
                                    <i class="fab fa-instagram"></i>
                               </a>

                        </span>
                    </p>
                    <a href="#" class="read-more">Read More</a>
                </div>
            </div>
        </div>
    </main>
    <script>
        document.querySelectorAll('.read-more').forEach(button => {
            button.addEventListener('click', event => {
                event.preventDefault();
                const hiddenContent = button.previousElementSibling.querySelector('.hidden');
                if (hiddenContent.style.display === 'none' || !hiddenContent.style.display) {
                    hiddenContent.style.display = 'inline';
                    button.textContent = 'Read Less';
                } else {
                    hiddenContent.style.display = 'none';
                    button.textContent = 'Read More';
                }
            });
        });

        document.getElementById('write-link').addEventListener('click', function(event) {
            event.preventDefault();
            <?php if (isset($is_login) && $is_login) : ?>
                window.location.href = '../proses/upload.php';
            <?php else : ?>
                window.location.href = '../proses/warning.php';
            <?php endif; ?>
        });
    </script>
</body>
</html>
