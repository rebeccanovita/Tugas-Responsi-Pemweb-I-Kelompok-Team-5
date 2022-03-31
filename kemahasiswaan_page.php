<?php
require '../admin/functions.php';
$id = $_GET["id"];
$kemahasiswaan = query("SELECT * FROM berita where id_berita=$id")[0];
$semua_kemahasiswaan = query("SELECT * FROM berita,kategori where berita.id_kategori=kategori.id_kategori and berita.id_kategori=2");
$kemahasiswaan_terbaru = array_reverse($semua_kemahasiswaan);
?>

<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Universitas Palangka Raya</title>

</head>
<header>
    <div class="text-white" style="background-color: #043507;">
        <div class="container">
            <img src="https://media.neliti.com/media/organisations/logo-None-universitas-palangka-raya-48176a02.png" class="py-3" style="max-width: 200px; max-height: 200px;" alt="">
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #09280B;">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item mx-2">
                                <a class="nav-link" aria-current="page" href="../index.php">Home</a>
                            </li>
                            <li class="nav-item dropdown mx-2">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Profil
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="profil_page.php?id=1">Sejarah</a></li>
                                    <li><a class="dropdown-item" href="profil_page.php?id=2">Visi dan Misi</a></li>
                                    <li>
                                </ul>
                            </li>
                            <li class="nav-item active dropdown mx-2">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Berita
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="../kemahasiswaan.php">Kemahasiswaan</a></li>

                                </ul>
                            </li>
                            <li class="nav-item mx-2">
                                <a class="nav-link" href="../pengumuman.php">Pengumuman</a>
                            </li>
                        </ul>
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-light" type="submit">Search</button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
<div class="container py-2">
    <div class="row">
        <div class="col-8">
            <div class="card">
                <div class="card-body">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb flex-nowrap">
                            <li class="breadcrumb-item"><a class="text-dark text-decoration-none" href="../index.php">Home</a></li>
                            <li class="breadcrumb-item text-decoration-none text-truncate"><a class="text-dark text-decoration-none" href="#">Kemahasiswaan</a></li>
                            <li class="breadcrumb-item active text-truncate" aria-current="page"><?php echo $kemahasiswaan["judul"]; ?></li>
                        </ol>
                    </nav>
                    <h3 class="py-3"><?php echo $kemahasiswaan["judul"]; ?></h3>
                    <?php
                    if (!$kemahasiswaan["gambar"]) {
                        //tidak ada gambar yang ditampilkan
                    ?>
                    <?php } else { ?>
                        <div class="d-flex justify-content-center">
                            <img src="../img/<?php echo $kemahasiswaan["gambar"]; ?>" class="h-75 w-75">
                        </div>
                    <?php } ?>
                    <p><?php echo $kemahasiswaan["isi"]; ?></p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <div class="card-body">
                    <div class="py-3">
                        <h4>Kemahasiswaan</h4>
                        <hr class="text-subline">
                        <dl>
                            <?php $i = 0 ?>
                            <?php foreach ($kemahasiswaan_terbaru as $row) : if ($i++ < 4) ?>
                                <dt><a href="kemahasiswaan_page.php?id=<?php echo $row["id_berita"]; ?>" class="text-dark text-decoration-none"><?php echo $row["judul"]; ?></a></dt>
                            <?php endforeach; ?>
                        </dl>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="text-center text-white" style="background-color: #09280B;">
    <div class="container p-4">

        <div class="row">
            <div class="col-md-4">
                <h5>CONTACT US</h5>
                <p>
                    KAMPUS UPR TANJUNG NYAHO
                    ALAMAT:
                    Jln. Yos Sudarso Palangka Raya
                    73111, Kalimantan Tengah
                </p>
                <p>email: info@upr.ac.id</p>
            </div>
            <div class="col-md-4">
                <h5 class="text-uppercase">FAKULTAS</h5>

                <ul class="list-unstyled mb-0">
                    <li>
                        <a href="#!" class="text-white">Link 1</a>
                    </li>
                    <li>
                        <a href="#!" class="text-white">Link 2</a>
                    </li>
                    <li>
                        <a href="#!" class="text-white">Link 3</a>
                    </li>
                    <li>
                        <a href="#!" class="text-white">Link 4</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4">
                <h5 class="text-uppercase">UNIT PELAYANAN TEKNIS & LEMBAGA</h5>

                <ul class="list-unstyled mb-0">
                    <li>
                        <a href="#!" class="text-white">Link 1</a>
                    </li>
                    <li>
                        <a href="#!" class="text-white">Link 2</a>
                    </li>
                    <li>
                        <a href="#!" class="text-white">Link 3</a>
                    </li>
                    <li>
                        <a href="#!" class="text-white">Link 4</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Copyright -->
    <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
        © 2022 Copyright:
        <a class="text-white" href="">Kelompok 5</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
</script>
</body>

</html>