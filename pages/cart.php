<?php
    include "../functions.php";
    if(!isset($_COOKIE['cartIDCookie']) || session_status() === PHP_SESSION_NONE) {
        session_start();
        setCartID();
    }
    $sqlCart = "SELECT cart.quantity, products.name, products.price * cart.quantity as totalCost from cart inner join products on cart.product_id = products.id  where cart.id = :cookie_value";
    $stmt = $pdo->prepare($sqlCart);
    $stmt->execute([
        ':cookie_value' => $_COOKIE['cartIDCookie']
    ]);
    $cartItems = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
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
                        <a class="nav-link" href="order_history.php">Order History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="cart.php"><i class="fa-solid fa-cart-shopping"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="my-4">
        <div class="p-4 text-center bg-white">
            <div class="container py-4">
                <h1 class="display-4">Your Cart</h1>
                <p class="lead text-muted">
                    Here is what's in your cart. It will expire in 60 days.
                </p>
            </div>
        </div>
    </section>
    <div class="cartContainer">
        <table class="table table-striped">
            <thead>
                <th>
                    Product Name
                </th>
                <th>
                    Qty
                </th>
                <th>
                    Price
                </th>
            </thead>
            <tbody>
                <?php foreach ($cartItems as $cartItem): ?>
                    <tr>
                        <td>
                            <?=$cartItem['name']?>
                        </td>
                        <td>
                            <?=$cartItem['quantity']?>
                        </td>
                        <td>
                            $<?=$cartItem['totalCost']?>
                        </td>
                    </tr>

                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    <section class="py-5 bg-white">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-6">
                    <form class="was-validated" action="check_history.php" method="post">
                        <div class="mb-3">
                            <label for="emailAddress" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="emailAddress" name="emailAddress" placeholder="Email address" required>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>
                        <button type="submit" class="btn btn-outline-dark">Submit</button>
                    </form>
                </div>
            </div>    
        </div>
    </section>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>