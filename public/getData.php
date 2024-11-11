<?php
include 'connection.php';

try {

    header('Content-Type: application/json');

  
    $stmt = $pdo->query("SELECT * FROM countries");
    $countries = [];
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $countries[] = $row; 
    }


    $stmt = $pdo->query("SELECT * FROM apartmans");
    $apartmans = [];
    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        $apartmans[] = $row; 
    }


    $data = [
        'countries' => $countries,
        'apartmans' => $apartmans
    ];

   
    echo json_encode($data);
} catch (PDOException $e) {
    
    echo json_encode(['error' => 'Lekérdezési hiba: ' . $e->getMessage()]);
}
