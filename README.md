Lab10 Web API - Nan Store

## รายละเอียด
- สร้างฐานข้อมูล MySQL ชื่อ `nan_store`
- ตาราง `products` เก็บข้อมูลสินค้า
- สร้าง Web API ด้วย PHP/XAMPP
- รองรับ CRUD สำหรับสินค้า (Products)
- ข้อมูลทั้งหมดเป็น JSON format

## โครงสร้างไฟล์
lab10_webapi/
├── api.php
├── db.php
├── lab10_webapi.sql
├── README.md
├── Get all products.png
├── Get a single product.png
├── Add a new product.png
├── Update a product.png
└── Delete a product.png

## การเรียกใช้งาน API
- Base URL: `http://localhost/lab10_webapi/api.php`

| สัญลักษณ์ | Method | URL | Body (JSON) | คำอธิบาย |
|------------|--------|-----|------------|-----------|
| 🛒 | GET | `/products` | - | ดูสินค้าทั้งหมด |
| 🔍 | GET | `/products/{id}` | - | ดูสินค้าเฉพาะ ID |
| ➕ | POST | `/products` | {"title":"Mouse","price":2500,"description":"Gaming Mouse","category":"Accessories","image":"https://example.com/mouse.jpg"} | เพิ่มสินค้า |
| ✏️ | PUT | `/products/{id}` | {"title":"Laptop Updated","price":35500,"description":"Updated","category":"Laptop","image":"https://example.com/laptop_updated.jpg"} | แก้ไขสินค้า |
| 🗑️ | DELETE | `/products/{id}` | - | ลบสินค้า ID |

---

## ตัวอย่างเรียก API ด้วย Postman

# Lab10 Web API - Nan Store

## 🛒 Products API

### 1️⃣ ดูสินค้าทั้งหมด
Method: GET  
URL: `/api.php/products`  

![Get all products](Get all products.png)

---

### 2️⃣ ดูสินค้าเฉพาะ ID
Method: GET  
URL: `/api.php/products/1`  

![Get a single product](Get a single product.png)

---

### 3️⃣ เพิ่มสินค้า
Method: POST  
URL: `/api.php/products`  
Body (JSON):
```json
{
  "title": "Logitech Mouse",
  "price": 1200,
  "description": "Gaming Mouse",
  "category": "Accessories",
  "image": "https://example.com/mouse.jpg"
}
![Add a new product](Add a new product.png)

4️⃣ แก้ไขสินค้า
Method: PUT
URL: /api.php/products/1
Body (JSON):

json
Copy code
{
  "title": "Logitech Mouse Updated",
  "price": 1300,
  "description": "Updated Gaming Mouse",
  "category": "Accessories",
  "image": "https://example.com/mouse_updated.jpg"
}
![Update a product](Update a product.png)

5️⃣ ลบสินค้า
Method: DELETE
URL: /api.php/products/1

![Delete a product](Delete a product.png)