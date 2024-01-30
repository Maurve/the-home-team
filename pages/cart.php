<?php
    include "../functions.php";
    if(!isset($_COOKIE['cartIDCookie']) || session_status() === PHP_SESSION_NONE) {
        session_start();
        setCartID();
    }
    $sqlCart = "SELECT products.id, products.name, cart.quantity, products.price, SUM(price * quantity) OVER(PARTITION BY cart.product_id) AS product_total, SUM(price * quantity) OVER() AS total_cost
        FROM products
        INNER JOIN cart ON products.id = cart.product_id
        WHERE cart.id = :cookie_value";
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
                    Here is what's in your cart.
                </p>
            </div>
        </div>
    </section>
    <div class="cartContainer">
        <div class="table-responsive">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">
                            Product Name
                        </th>
                        <th scope="col">
                            Qty
                        </th>
                        <th scope="col">
                            Price
                        </th>
                        <th scope="col">
                            &nbsp;
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $totalCost = 0;  
                        $loopIndex = 1;
                    ?>
                    <?php foreach ($cartItems as $cartItem): ?>
                        <?php if ($loopIndex == 1) {
                            $totalCost = $cartItem['total_cost'];
                        }?>
                        <tr>
                            <td class="productCell" data-productid="<?=$cartItem['id']?>" data-quantity="<?=$cartItem['quantity']?>">
                                <?=$cartItem['name']?>
                            </td>
                            <td class="quantityCell">
                                <?=$cartItem['quantity']?>
                            </td>
                            <td>
                                $<?=$cartItem['product_total']?>
                            </td>
                            <td>
                                <img src="../svgs/trash.svg">
                            </td>
                        </tr>
                        <?php $loopIndex += 1?>
                    <?php endforeach; ?>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            <strong>Total:</strong>
                        </td>
                        <td>
                            <strong>$<?php echo "$totalCost"?></strong>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <section class="py-5 bg-white">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-6">
                    <form class="was-validated" id="orderForm" action="order_confirmation.php" method="post">
                        <input type="hidden" name="productData" id="productData" value="">
                        <div class="mb-3">
                            <label for="firstName" class="form-label">First name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First name" required>
                            <div class="invalid-feedback">
                                Please enter your first name.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="lastName" class="form-label">Last name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last name" required>
                            <div class="invalid-feedback">
                                Please enter your last name.
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="emailAddress" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="emailAddress" name="emailAddress" placeholder="Email address" required>
                            <div class="invalid-feedback">
                                Please enter a valid email address.
                            </div>
                        </div>
                        <button type="button" class="btn btn-outline-success submitButton">Submit</button>
                    </form>
                </div>
            </div>    
        </div>
    </section>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>