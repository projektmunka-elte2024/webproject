<?php
include 'connection.php';

// Fetch all available destinations
$sql = "SELECT name, image_url, rating, link FROM available_destinations";
$stmt = $pdo->query($sql);
$destinations = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dynamic Carousel</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            background: linear-gradient(orange, yellow);
            font-family: Arial, sans-serif;
            padding: 20px;
            text-align: center;
        }
        .carousel-inner .item img {
            display: block;
            margin: 0 auto;
            border-radius: 15px;
        }
        .carousel-caption {
            background: rgba(0, 0, 0, 0.6);
            padding: 10px;
            border-radius: 10px;
        }
        .carousel-caption h3, .carousel-caption p {
            margin: 0;
            color: #fff;
        }
    </style>
</head>
<body>
    <h1>Explore Our Destinations</h1>
    <div id="destinationCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <?php foreach ($destinations as $index => $destination): ?>
                <li data-target="#destinationCarousel" data-slide-to="<?= $index ?>" class="<?= $index === 0 ? 'active' : '' ?>"></li>
            <?php endforeach; ?>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <?php foreach ($destinations as $index => $destination): ?>
                <div class="item <?= $index === 0 ? 'active' : '' ?>">
                    <a href="<?= $destination['link'] ?>" target="_blank">
                        <img src="<?= $destination['image_url'] ?>" alt="<?= $destination['name'] ?>" class="img-responsive" style="max-height: 400px;">
                    </a>
                    <div class="carousel-caption">
                        <h3><?= $destination['name'] ?></h3>
                        <p>Rating: <?= $destination['rating'] ?>/5</p>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#destinationCarousel" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#destinationCarousel" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</body>
</html>