<?php
    $pdo = pdo_connect_mysql();

     if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['action'])) {
        if ($_POST['action'] === 'addToCart') {
            if (isset($_POST['productID'])) {
                $productID = $_POST['productID'];
                addToCart($productID);
            }
        }
    }
    function pdo_connect_mysql() {
        // Local database
        $hostname = "localhost";
        $username = "root";
        $password = "";
        $dbname = "web_268";
        // 000webhost database
        
        try {
            return new PDO('mysql:host=' . $hostname . ';dbname=' . $dbname . ';charset=utf8', $username, $password);
        } catch (PDOException) {
            exit('Cannot connect to database');
        }
    }

    function addToCart($productID) {
        $pdo = pdo_connect_mysql();
        session_start();
        $product_id = $productID;
        $cartID = $_SESSION["cartid"];
        $sql = "INSERT INTO cart (id, product_id, quantity)
                VALUES (?, ? , 1)
                ON DUPLICATE KEY UPDATE quantity = quantity + 1";
        $stmt = $pdo->prepare($sql);
        $stmt->execute([$cartID, $product_id]);
    }

    function setCartID() {
        $pdo = pdo_connect_mysql();

        if(!isset($_SESSION["cartid"])){
            $sql = "SELECT max(id) AS cart_id from cart";
            $statement = $pdo->prepare($sql);
            $statement->execute();
            $maxCartID = $statement->fetchAll(PDO::FETCH_ASSOC);
            $cartID = $maxCartID[0]['cart_id']+1;
        } else {
            $cartID = $_SESSION["cartid"];
        }
        
        $_SESSION["cartid"] = $cartID;
        $cookie_name = "cartIDCookie";
        $cookie_value = $cartID;
        setcookie($cookie_name, $cookie_value, time() + (86400 * 60), "/");
    }

    function getCart() {
        $pdo = pdo_connect_mysql();
        $sqlCart = "SELECT count(*) from cart where id = ?";
        $stmt = $pdo->prepare($sqlCart);
        $stmt->execute($_COOKIE['cartIDCookie']);
    }    
?>