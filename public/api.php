<?php
header("Content-Type: application/json");
include 'connection.php';

$method = $_SERVER['REQUEST_METHOD'];
$requestUri = $_SERVER['REQUEST_URI'];
$input = json_decode(file_get_contents('php://input'), true);

switch ($method) {
    case 'GET':
        handleGet($pdo, $requestUri);
        break;
    case 'POST':
        handlePost($pdo, $input);
        break;
    case 'PUT':
        handlePut($pdo, $input);
        break;
    case 'DELETE':
        handleDelete($pdo, $input);
        break;
    default:
        echo json_encode(['message' => 'Invalid request method']);
        break;
}

function handleGet($pdo, $requestUri) {
    
    $path = explode('/', trim(parse_url($requestUri, PHP_URL_PATH), '/'));

    
    if (isset($path[2])) { 
        $endpoint = $path[2];

        if ($endpoint === 'users') {
            $sql = "SELECT * FROM users";
        } elseif ($endpoint === 'apartmans') {
           
            if (isset($path[3])) {
                $id = $path[3];  
                $sql = "SELECT * FROM apartmans WHERE id = :id";
                $stmt = $pdo->prepare($sql);
                $stmt->bindParam(':id', $id, PDO::PARAM_INT);
                $stmt->execute();
                $result = $stmt->fetch(PDO::FETCH_ASSOC); 
                if ($result) {
                    echo json_encode($result); 
                } else {
                    echo json_encode(['message' => 'Apartment not found']); 
                }
                return; 
            } else {
                $sql = "SELECT * FROM apartmans"; 
                $stmt = $pdo->prepare($sql);
                $stmt->execute();
                $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
                echo json_encode(['apartmans' => $result]); 
            }
        } else {
            echo json_encode(['message' => 'Invalid endpoint']);
            return;
        }
    } else {
        echo json_encode(['message' => 'Endpoint not specified']);
    }
}





function handlePost($pdo, $input) {
    $sql = "INSERT INTO users (name, email) VALUES (:name, :email)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['name' => $input['name'], 'email' => $input['email']]);
    echo json_encode(['message' => 'User created successfully']);
}

function handlePut($pdo, $input) {
    $sql = "UPDATE users SET name = :name, email = :email WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['name' => $input['name'], 'email' => $input['email'], 'id' => $input['id']]);
    echo json_encode(['message' => 'User updated successfully']);
}

function handleDelete($pdo, $input) {
    $sql = "DELETE FROM users WHERE id = :id";
    $stmt = $pdo->prepare($sql);
    $stmt->execute(['id' => $input['id']]);
    echo json_encode(['message' => 'User deleted successfully']);
}
?>
