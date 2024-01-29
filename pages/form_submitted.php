<?php 
    include "../functions.php";
    $pdo = pdo_connect_mysql();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Submission</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/all.min.css">
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
                        <a class="nav-link" href="cart.php"><i class="fa-solid fa-cart-shopping"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <section class="my-5">
        <div class="p-5 text-center bg-white">
            <div class="container py-5">
                <h1 class="display-4">Contact Form Submitted</h1>
                <p class="lead text-muted">
                    <?php     
                        $firstName = $_POST['firstName'];
                        $lastName = $_POST['lastName'];
                        $emailAddress = $_POST['emailAddress'];
                        $concern = htmlspecialchars($_POST['concern']);

                        $sql = "INSERT INTO contact(id, first_name, last_name, email, question) VALUES(NULL, :firstName, :lastName, :emailAddress, :concern)";

                        $statement = $pdo->prepare($sql);

                        $statement->execute([
                            ':firstName' => $firstName,
                            ':lastName' => $lastName,
                            ':emailAddress' => $emailAddress,
                            ':concern' => $concern,
                        ]);

                        if ($statement) {
                            echo "Your form has been submitted. You should get a response in 2-3 business days. Thank you.";
                        } else {
                            echo "There was an error submitting your form. Please try again.";
                        };
                    ?>
                </p>
            </div>
        </div>
    </section>
<script src="../js/bootstrap.bundle.min.js"></script>
<script src="../js/script.js"></script>
</body>
</html>