<?php
    include "../functions.php";
    if(!isset($_COOKIE['cartIDCookie']) || session_status() === PHP_SESSION_NONE) {
        session_start();
        setCartID();
    }
    $stmt = $pdo->prepare("SELECT * FROM products WHERE type='shirt'");
    $stmt->execute();
    $shirts = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shirts</title>
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
                        <a class="nav-link active" aria-current="page" href="shirts.php">Shirts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="hoodies.php">Hoodies</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="order_history.php">Order History</a>
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
                <h1 class="display-4">Shirts</h1>
                <p class="lead text-muted">
                    Check out our shirts that you will never have to replace (as long as you aren't growing).
                </p>
            </div>
        </div>
    </section>
    <section class="album py-5 bg-light">
        <div class="container">
            <div class="row">
                <?php foreach ($shirts as $shirt): ?>
                <div class="col-md-4">
                    <div class="card mb-4">
                        <img class="card-img-top img-fluid" src="<?=$shirt['image']?>" style="display: block;" alt="<?=$shirt['name']?>">
                        <div class="card-body">
                            <p class="card-text">
                                <?=$shirt['name']?>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-dark addToCartButton" data-productid="<?=$shirt['id']?>">Add to Cart</button>
                                </div>
                                <small class="text-muted">$<?=$shirt['price']?></small>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>