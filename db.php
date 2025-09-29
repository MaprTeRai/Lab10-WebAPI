<?php
$host = "localhost";
$db_name = "lab10_webapi";
$username = "root";
$password = ""; // เปลี่ยนตาม MySQL ของคุณ

try {
    $conn = new PDO("mysql:host=$host;dbname=$db_name;charset=utf8", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo json_encode(["error" => "Connection failed: " . $e->getMessage()]);
    exit;
}
?>
