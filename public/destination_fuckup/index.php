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
    <title>Dynamic Multi-Card Carousel</title>
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
        .carousel-inner {
            display: flex;
            flex-wrap: nowrap;
            justify-content: center;
        }
        .carousel-inner .item {
            display: flex;
            justify-content: center;
            align-items: center;
            flex: 1;
        }
        .carousel-inner .item .card {
            flex: 0 0 30%;
            margin: 10px;
            text-decoration: none;
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
        }
        .carousel-inner .item .card:hover {
            transform: scale(1.05);
        }
        .carousel-inner .item .card img {
            width: 100%;
            height: auto;
        }
        .carousel-inner .item .card h3 {
            padding: 10px;
            font-size: 18px;
            color: #333;
            margin: 0;
        }
        .carousel-control {
            background: none;
        }
        .carousel-control .glyphicon {
            color: #333;
            font-size: 30px;
        }
    </style>
</head>
<body>
    <h1>Explore Our Destinations</h1>
    <div id="destinationCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <?php
            $chunks = array_chunk($destinations, 3); // Split destinations into groups of 3
            foreach ($chunks as $index => $chunk): ?>
                <div class="item <?= $index === 0 ? 'active' : '' ?>">
                    <?php foreach ($chunk as $destination): ?>
                        <a href="<?= $destination['link'] ?>" class="card" target="_blank">
                            <img src="<?= $destination['image_url'] ?>" alt="<?= $destination['name'] ?>">
                            <h3><?= $destination['name'] ?> - <?= $destination['rating'] ?>/5</h3>
                        </a>
                    <?php endforeach; ?>
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
