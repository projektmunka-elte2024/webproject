<?php
include 'connection.php';

$sql = "SELECT name, image_url, rating, link FROM available_destinations";
$stmt = $pdo->query($sql);

$destinations = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Available Destinations</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="carousel-container">
        <button class="arrow left" onclick="scrollLeft()">&#8249;</button>
        <div class="carousel-wrapper">
            <div class="carousel" id="carousel">
                <?php foreach ($destinations as $destination): ?>
                    <a href="<?= $destination['link'] ?>" class="card" target="_blank">
                        <img src="<?= $destination['image_url'] ?>" alt="<?= $destination['name'] ?>">
                        <h3><?= $destination['name'] ?></h3>
                        <p>Rating: <?= $destination['rating'] ?>/5</p>
                    </a>
                <?php endforeach; ?>
            </div>
        </div>
        <button class="arrow right" onclick="scrollRight()">&#8250;</button>
    </div>

    <script src="script.js"></script>
</body>
</html>
