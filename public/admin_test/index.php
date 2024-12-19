<?php
include 'connection.php';

// Handle Deletion
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['delete_id'])) {
    $deleteId = $_POST['delete_id'];
    $stmt = $pdo->prepare("DELETE FROM available_destinations WHERE id = :id");
    $stmt->execute(['id' => $deleteId]);
    header("Location: /admin_test/");
    exit;
}

// Handle Adding
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['name'])) {
    $name = $_POST['name'];
    $imageUrl = $_POST['image_url'];
    $rating = $_POST['rating'];
    $link = $_POST['link'];

    $stmt = $pdo->prepare("INSERT INTO available_destinations (name, image_url, rating, link) VALUES (:name, :image_url, :rating, :link)");
    $stmt->execute([
        'name' => $name,
        'image_url' => $imageUrl,
        'rating' => $rating,
        'link' => $link
    ]);
    header("Location: /admin_test/");
    exit;
}

// Fetch All Destinations
$stmt = $pdo->query("SELECT * FROM available_destinations");
$destinations = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <!-- Delete Destination -->
        <div class="box">
            <h3>Delete Destination</h3>
            <form method="POST" action="">
                <input type="number" name="delete_id" placeholder="Enter Destination ID" required>
                <button type="submit">Delete Destination</button>
            </form>
        </div>

        <!-- Add New Destination -->
        <div class="box">
            <h3>New Destination</h3>
            <form method="POST" action="">
                <input type="text" name="name" placeholder="Name" required>
                <input type="url" name="image_url" placeholder="Image URL" required> <!-- URL validation -->
                <input type="number" step="0.1" name="rating" placeholder="Rating" required>
                <input type="url" name="link" placeholder="Link" required>
                <button type="submit">Add Destination</button>
            </form>
        </div>
    </div>

    <!-- List of Destinations -->
    <div class="table-container">
        <h3>Available Destinations</h3>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Rating</th>
                    <th>Link</th>
                    <th>Image</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($destinations as $destination): ?>
                    <tr>
                        <td><?= $destination['id'] ?></td>
                        <td><?= $destination['name'] ?></td>
                        <td><?= $destination['rating'] ?></td>
                        <td><a href="<?= $destination['link'] ?>" target="_blank">Visit</a></td>
                        <td><img src="<?= $destination['image_url'] ?>" alt="<?= $destination['name'] ?>"></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</body>
</html>