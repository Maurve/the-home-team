<?php
    include "../functions.php";
    if(!isset($_COOKIE['cartIDCookie']) || session_status() === PHP_SESSION_NONE) {
        session_start();
        setCartID();
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Confirmation</title>
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
                <h1 class="display-4">Order Confirmation</h1>
                <p class="lead text-muted">
                <?php
                    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                        $productData = json_decode($_POST['productData']);
                        $firstName = $_POST['firstName'];
                        $lastName = $_POST['lastName'];
                        $emailAddress = $_POST['emailAddress'];
                        $stmt1 = $pdo->prepare('INSERT INTO orders (first_name, last_name, email) VALUES(:firstName, :lastName, :emailAddress)');
                        $stmt2 = $pdo->prepare('INSERT INTO order_items (order_id, product_id, quantity) VALUES(:order_id,:product_id,:quantity)');
                        $pdo->beginTransaction();
                        $stmt1->execute([
                            ':firstName' => $firstName,
                            ':lastName' => $lastName,
                            ':emailAddress' => $emailAddress
                        ]);
                        $lastId = $pdo->lastInsertId();
                        foreach ($productData as $key => $value) {
                            $stmt2->execute([':order_id' => $lastId,
                            ':product_id' =>$key,
                            ':quantity' => $value]);
                        }
                        $pdo->commit();
                        echo "Your order has been submitted. Thank you for shopping with The Home Team.";
                        session_destroy();
                        if (isset($_COOKIE['cartIDCookie'])) {
                            unset($_COOKIE['cartIDCookie']); 
                            setcookie('cartIDCookie', '', -1, '/'); 
                        } 
                    } else {
                        echo "There was an error submitting your order. Please try again.";
                    }
                ?>
                </p>
            </div>
        </div>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>