<?php
    include "../functions.php";
    if(!isset($_COOKIE['cartIDCookie']) || session_status() === PHP_SESSION_NONE) {
        session_start();
        setCartID();
    }
    $orderID = htmlspecialchars($_GET["order_id"]);
    $sqlOrder = "SELECT DISTINCT orders.id, orders.first_name, orders.last_name, orders.email, SUM(price * quantity) OVER(PARTITION BY order_items.product_id) AS product_total, products.name, products.price, order_items.quantity, SUM(price * quantity) OVER() AS total_cost FROM orders 
        INNER JOIN order_items ON orders.id = order_items.order_id AND order_items.order_id = '$orderID'
        INNER JOIN products ON order_items.product_id = products.id
        WHERE orders.id = '$orderID'";
    $stmt1 = $pdo->prepare($sqlOrder);
    $stmt1->execute();
    $orderItems = $stmt1->fetchAll(PDO::FETCH_ASSOC);
    $stmt2 = $pdo->prepare(
        "SELECT DATE_FORMAT(order_date, '%M %e, %Y') AS order_date FROM orders WHERE id = $orderID");
    $stmt2->execute();
    $orderDates = $stmt2->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Summary</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/all.min.css">
    <script src="../js/jquery-3.7.1.min.js"></script>

</head>
<body>
    <nav class="navbar navbar-expand-lg bg-white fs-5">
        <div class="container">
            <a class="navbar-brand fs-3" href="index.php">The Home Team</a>
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
                        <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i><span class="badge rounded-pill text-bg-danger" id="quantityCountBadge">0</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="my-4">
        <div class="p-4 text-center bg-white">
            <div class="container py-4">
                <h1 class="display-4">Order Summary</h1>
                <p class="lead text-muted">
                    Order ID: <strong><?=$orderID?></strong>
                </p>
                <?php foreach ($orderDates as $orderDate): ?>
                <p class="lead text-muted">
                    Order Date: <strong><?=$orderDate['order_date']?></strong>
                </p>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
    <section class="cartContainer">
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
                    </tr>
                </thead>
                <tbody>
                    <?php 
                        $totalCost = 0;  
                        $loopIndex = 1;
                    ?>
                    <?php foreach ($orderItems as $orderItem): ?>
                        <?php if ($loopIndex == 1) {
                            $totalCost = $orderItem['total_cost'];
                        }?>
                        <tr class="productsRow" id="row_<?=$orderItem['id']?>">
                            <td class="productCell" data-productid="c" data-quantity="<?=$orderItem['quantity']?>">
                                <?=$orderItem['name']?>
                            </td>
                            <td>
                                <?=$orderItem['quantity']?>
                            </td>
                            <td class="productCost" data-productcost="<?=$orderItem['product_total']?>">
                                $<?=$orderItem['product_total']?>
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
                        <td id="totalCost">
                            <strong>$<?php echo "$totalCost"?></strong>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </section>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>