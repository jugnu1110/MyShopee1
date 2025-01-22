<?php
$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "myshop";
$port = 3307;

$conn = new mysqli($servername, $username, $password, $dbname, $port);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch all orders
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['fetch_orders'])) {
    $sql = "SELECT orders.id, customer.first_name, customer.last_name, customer.phone, orders.order_date, orders.status, products.name AS product_name, customer.address
            FROM orders
            JOIN customer ON orders.customer_id = customer.id
            JOIN products ON orders.product_id = products.id order by orders.status";
    $result = $conn->query($sql);

    $orders = [];
    while ($row = $result->fetch_assoc()) {
        $orders[] = $row;
    }
    echo json_encode($orders);
    exit;
}

// Fetch single order details
if ($_SERVER['REQUEST_METHOD'] === 'GET' && isset($_GET['order_id'])) {
    $order_id = intval($_GET['order_id']);
    $sql = "SELECT orders.id, customer.first_name, customer.last_name, customer.phone, orders.order_date, orders.status, products.id AS product_id, 
            products.name AS product_name, products.category, products.price, products.description, products.image1, products.image2, customer.address
            FROM orders
            JOIN customer ON orders.customer_id = customer.id
            JOIN products ON orders.product_id = products.id
            WHERE orders.id = $order_id ";
    $result = $conn->query($sql);
    echo json_encode($result->fetch_assoc());
    exit;
}

// Update order status
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $data = json_decode(file_get_contents('php://input'), true);
    $order_id = intval($data['order_id']);
    $new_status = $conn->real_escape_string($data['new_status']);
    $sql = "UPDATE orders SET status = '$new_status' WHERE id = $order_id";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false, 'message' => $conn->error]);
    }
    exit;
}
include('includes/admin_navbar.php');
include('includes/admin_leftbar.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin View Orders</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    
<div class="container-fluid mt-5">
    
    <center><h2><br>Orders</h2></center>
    <div class="row">
    <div class="col-md-2"></div>
    <div class="col-md-10">
    
    <table class="table table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Customer Name</th>
            <th>Phone</th>
            <th>Date</th>
            <th>Status</th>
            <th>Product Name</th>
            <th>Address</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody id="orderTableBody"></tbody>
    </table>
</div>
</div>
</div>

<!-- Modal -->
<div class="modal fade" id="detailsModal" tabindex="-1" aria-labelledby="detailsModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="detailsModalLabel">Order Details</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h5>Customer Details</h5>
                <p><strong>Name:</strong> <span id="customer_name"></span></p>
                <p><strong>Phone:</strong> <span id="customer_phone"></span></p>
                <p><strong>Address:</strong> <span id="customer_address"></span></p>

                <h5>Product Details</h5>
                <p><strong>Product ID:</strong> <span id="product_id"></span></p>
                <p><strong>Name:</strong> <span id="product_name"></span></p>
                <p><strong>Category:</strong> <span id="product_category"></span></p>
                <p><strong>Price:</strong> ₹<span id="product_price"></span></p>
                <p><strong>Description:</strong> <span id="product_description"></span></p>
                <div class="row">
                    <div class="col-md-6">
                        <img id="product_image1" class="img-fluid" alt="Product Image 1">
                    </div>
                    <div class="col-md-6">
                        <img id="product_image2" class="img-fluid" alt="Product Image 2">
                    </div>
                </div>

                <h5>Order Details</h5>
                <p><strong>Status:</strong>
                    <select id="order_status_dropdown" class="form-select">
                        <option value="Pending">Pending</option>
                        <option value="Processed">Processed</option>
                        <option value="Shipped">Shipped</option>
                        <option value="Delivered">Delivered</option>
                    </select>
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary" onclick="updateOrderStatus()">Update Status</button>
            </div>
        </div>
    </div>
</div>

<script>
    function fetchOrders() {
        fetch('?fetch_orders=1')
            .then(response => response.json())
            .then(data => {
                const tableBody = document.getElementById('orderTableBody');
                tableBody.innerHTML = '';
                data.forEach((order, index) => {
                    tableBody.innerHTML += `
                        <tr>
                            <td>${index + 1}</td>
                            <td>${order.first_name} ${order.last_name}</td>
                            <td>${order.phone}</td>
                            <td>${order.order_date}</td>
                            <td>${order.status}</td>
                            <td>${order.product_name}</td>
                            <td>${order.address}</td>
                            <td><button class="btn btn-primary btn-sm" onclick="viewDetails(${order.id})">View</button></td>
                        </tr>
                    `;
                });
            });
    }

    function viewDetails(orderId) {
        fetch('?order_id=' + orderId)
            .then(response => response.json())
            .then(data => {
                document.getElementById('customer_name').textContent = `${data.first_name} ${data.last_name}`;
                document.getElementById('customer_phone').textContent = data.phone;
                document.getElementById('customer_address').textContent = data.address;

                document.getElementById('product_id').textContent = data.product_id;
                document.getElementById('product_name').textContent = data.product_name;
                document.getElementById('product_category').textContent = data.category;
                document.getElementById('product_price').textContent = data.price;
                document.getElementById('product_description').textContent = data.description;

                document.getElementById('product_image1').src = data.image1;
                document.getElementById('product_image2').src = data.image2;

                document.getElementById('order_status_dropdown').value = data.status;

                const modal = new bootstrap.Modal(document.getElementById('detailsModal'));
                modal.show();

                // Attach order ID to modal
                document.getElementById('detailsModal').setAttribute('data-order-id', orderId);
            });
    }

    function updateOrderStatus() {
        const orderId = document.getElementById('detailsModal').getAttribute('data-order-id');
        const newStatus = document.getElementById('order_status_dropdown').value;

        fetch('', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                order_id: orderId,
                new_status: newStatus,
            }),
        })
            .then(response => response.json())
            .then(data => {
                if (data.success) {
                    alert('Order status updated successfully!');
                    fetchOrders();
                } else {
                    alert('Failed to update order status: ' + data.message);
                }
            });
    }

    document.addEventListener('DOMContentLoaded', fetchOrders);
</script>
</body>
</html>
<?php
include('includes/customer_footer.php');
include('linking.php');


?>