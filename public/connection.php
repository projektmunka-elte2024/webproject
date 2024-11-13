<?php

$host = 'localhost';       
$dbname = 'travel_agency'; 
$username = 'travel_agency'; 
$password = 'webproject123'; 
try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
   
} catch (PDOException $e) {
    // Hibakezelés hiba esetén
    echo "Kapcsolódási hiba: " . $e->getMessage();
}
?>
