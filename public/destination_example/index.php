<?php
include 'connection.php';

// Example destination details (you can replace this with a dynamic query from the DB)
$destination = [
    'name' => 'Tokyo Tower Hotel',
    'rating' => 5,
    'description' => 'Experience luxury and comfort at the Tokyo Tower Hotel, located at the heart of the city. Enjoy panoramic views, world-class amenities, and close proximity to the Tokyo Tower.',
];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $destination['name']; ?> - Destination</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <!-- Navigation Menu -->
    <div class="navbar">
        <a href="http://eltewebproject.nhely.hu/404/">Fõoldal</a>
        <a href="http://eltewebproject.nhely.hu/404/">Véletlenszerû szállás</a>
        <a href="http://eltewebproject.nhely.hu/404/">Profilom</a>
        <a href="http://eltewebproject.nhely.hu/404/">Option 4</a>
        <a href="http://eltewebproject.nhely.hu/404/">Option 5</a>
    </div>

    <!-- Destination Content -->
    <div class="container">
        <div class="destination-title"><?= $destination['name']; ?></div>
        <div class="destination-rating">Rating: <?= $destination['rating']; ?>/5</div>
        <div class="destination-description"><?= $destination['description']; ?></div>
        <button class="book-btn">Book This Destination</button>
    </div>
</body>
</html>
