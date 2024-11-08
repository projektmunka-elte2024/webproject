<?php
// Adatbázis kapcsolat konfiguráció
$host = 'localhost';       // Az adatbázis szerver címe (pl. localhost)
$dbname = 'travel_agency'; // Az adatbázis neve
$username = 'travel_agency'; // Az adatbázis felhasználó neve
$password = 'webproject123'; // Az adatbázis felhasználó jelszava

try {
    // PDO objektum létrehozása
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8mb4", $username, $password);
    // Hiba kezelési mód beállítása kivételre
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Sikeres csatlakozás az adatbázishoz!";
} catch (PDOException $e) {
    // Hibakezelés hiba esetén
    echo "Kapcsolódási hiba: " . $e->getMessage();
}
?>
