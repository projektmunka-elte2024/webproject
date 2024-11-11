<?php
include 'connection.php';

try {
    // Set the header to return JSON data
    header('Content-Type: application/json');

    // Query the database for country data
    $stmt = $pdo->query("SELECT * FROM countries");
    $countries = [];

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $countries[] = $row; // Add each country to an array
    }

    // Output the data as JSON
    echo json_encode($countries);
} catch (PDOException $e) {
    echo json_encode(['error' => 'Lekérdezési hiba: ' . $e->getMessage()]);
}
