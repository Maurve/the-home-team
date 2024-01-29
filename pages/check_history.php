<?php 
    include "../functions.php";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order History</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/all.min.css">
    <script src="../js/jquery-3.7.1.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg bg-white fs-5">
        <div class="container">
            <a class="navbar-brand fs-3" href="../index.php">The Home Team</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="jerseys.php">Jerseys</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shirts.php">Shirts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hoodies.php">Hoodies</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="order_history.php">Order History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="my-4">
        <div class="p-4 text-center bg-white">
            <div class="container py-4">
                <h1 class="display-4">Order History</h1>
                <p class="lead text-muted">
                    Here is your order history.
                </p>
            </div>
        </div>
    </section>
    <section class="album py-5 bg-light">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-6">
                    
                </div>
            </div>    
        </div>
    </section>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>