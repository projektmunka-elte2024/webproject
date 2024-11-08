<?php
include 'connection.php';

try {
    // Egyszerű lekérdezés
    $stmt = $pdo->query("SELECT * FROM countries");
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        echo "Ország neve: " . $row['name'] . "<br>";
    }
} catch (PDOException $e) {
    echo "Lekérdezési hiba: " . $e->getMessage();
}
?>
