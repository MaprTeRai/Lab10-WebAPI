<?php
header("Content-Type: application/json");
include 'db.php';

$method = $_SERVER['REQUEST_METHOD'];
$request = explode('/', trim($_SERVER['PATH_INFO'],'/'));
$id = isset($request[1]) ? (int)$request[1] : null;

switch($method) {
    case 'GET':
        if ($id) {
            $stmt = $conn->prepare("SELECT * FROM products WHERE id=?");
            $stmt->execute([$id]);
            echo json_encode($stmt->fetch(PDO::FETCH_ASSOC));
        } else {
            $stmt = $conn->query("SELECT * FROM products");
            echo json_encode($stmt->fetchAll(PDO::FETCH_ASSOC));
        }
        break;

    case 'POST':
        $data = json_decode(file_get_contents('php://input'), true);
        $stmt = $conn->prepare("INSERT INTO products (title, price, description, category, image) VALUES (?,?,?,?,?)");
        $stmt->execute([$data['title'],$data['price'],$data['description'],$data['category'],$data['image']]);
        echo json_encode(['id'=>$conn->lastInsertId(),'message'=>'Product added!']);
        break;

    case 'PUT':
        $data = json_decode(file_get_contents('php://input'), true);
        $stmt = $conn->prepare("UPDATE products SET title=?, price=?, description=?, category=?, image=? WHERE id=?");
        $stmt->execute([$data['title'],$data['price'],$data['description'],$data['category'],$data['image'],$id]);
        echo json_encode(['message'=>'Product updated!']);
        break;

    case 'DELETE':
        $stmt = $conn->prepare("DELETE FROM products WHERE id=?");
        $stmt->execute([$id]);
        echo json_encode(['message'=>'Product deleted!']);
        break;

    default:
        http_response_code(405);
        echo json_encode(['message'=>'Method Not Allowed']);
        break;
}
?>
