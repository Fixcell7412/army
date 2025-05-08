<?php
include 'sql/sql.php';

// Set a new password for admin
$new_password = "Admin@123"; // This will be the new admin password
$hashed_password = password_hash($new_password, PASSWORD_DEFAULT);

// Update admin password
$sql = "UPDATE tbl_accounts SET password = ? WHERE user_type = 'Admin'";
$stmt = $con->prepare($sql);
$stmt->bind_param("s", $hashed_password);

if ($stmt->execute()) {
    echo "Admin password has been reset.<br>";
    echo "New password is: Admin@123<br>";
    echo "Hash: " . $hashed_password;
} else {
    echo "Error resetting password: " . $stmt->error;
}

// Delete this file after use for security
unlink(__FILE__);
?> 