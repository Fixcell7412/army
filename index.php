<?php
include 'sql/sql.php';
session_start();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];
    
    // First try to find the user
    $sql = "SELECT id, username, password, user_type, status, must_change_password FROM tbl_accounts WHERE username = ? AND status = 'active'";
    $stmt = $con->prepare($sql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $stored_password = $row['password'];
        
        // Debug information - remove in production
        error_log("Stored password hash: " . $stored_password);
        error_log("Entered password: " . $password);
        
        // First try password_verify
        $password_verified = password_verify($password, $stored_password);
        
        // If that fails, check for plain text match (legacy support)
        if (!$password_verified && $password === $stored_password) {
            $password_verified = true;
            // Hash the password for future security
            $hashed_password = password_hash($password, PASSWORD_DEFAULT);
            $update_sql = "UPDATE tbl_accounts SET password = ? WHERE id = ?";
            $update_stmt = $con->prepare($update_sql);
            $update_stmt->bind_param("si", $hashed_password, $row['id']);
            $update_stmt->execute();
        }
        
        if ($password_verified) {
            // Store the account ID in the session
            $_SESSION['user_id'] = $row['id'];
            $_SESSION['username'] = $row['username'];
            $_SESSION['user_type'] = $row['user_type'];
            
            // Check if password needs to be changed
            if ($row['must_change_password'] == 1) {
                $_SESSION['force_password_change'] = true;
                header("Location: change-password.php");
                exit();
            }
            
            // Redirect based on user type
            if ($row['user_type'] == 'Admin') {
                header("Location: admin/dashboard.php");
            } else {
                header("Location: user/dashboard.php");
            }
            exit();
        } else {
            $error_message = "Invalid password";
        }
    } else {
        $error_message = "Invalid username or account is inactive";
    }
}
?>


<!DOCTYPE html>
<html lang="en" class="light">
    <!-- BEGIN: Head -->
    <head>
        <meta charset="utf-8">
        <link href="src/images/army.png" rel="shortcut icon">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Tinker admin is super flexible, powerful, clean & modern responsive tailwind admin template with unlimited possibilities.">
        <meta name="keywords" content="admin template, Tinker Admin Template, dashboard template, flat admin template, responsive admin template, web app">
        <meta name="author" content="LEFT4CODE">
        <title>Philippine Army</title>
        <!-- BEGIN: CSS Assets-->
        <link rel="stylesheet" href="dist/css/app.css" />
        <!-- END: CSS Assets-->
    </head>
    <!-- END: Head -->
    <body class="login">
        <div class="container sm:px-10">
            <div class="block xl:grid grid-cols-2 gap-4">
                <!-- BEGIN: Login Info -->
                <div class="hidden xl:flex flex-col min-h-screen">
                    <a href="" class="-intro-x flex items-center pt-5">
                        <img alt="Midone - HTML Admin Template" class="w-6" src="src/images/army.png">
                        <span class="text-white text-lg ml-3"> Philippine Army </span> 
                    </a>
                    <div class="my-auto">
                        <img alt="Midone - HTML Admin Template" class="-intro-x w-1/2 -mt-16" src="src/images/army.png">
                        <div class="-intro-x text-white font-small text-3xl leading-tight mt-10">
                            Information Communication Technology  
                            <br>
                            Monitoring System.
                        </div>
                        <!-- <div class="-intro-x mt-5 text-lg text-white text-opacity-70 dark:text-slate-400">Manage all your inventory in one place</div> -->
                    </div>
                </div>
                <!-- END: Login Info -->
                <!-- BEGIN: Login Form -->
                <div class="h-screen xl:h-auto flex py-5 xl:py-0 my-10 xl:my-0">
                    <div class="my-auto mx-auto xl:ml-20 bg-white dark:bg-darkmode-600 xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">
                        <h2 class="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-left">
                            Sign In
                        </h2>
                        <?php if (isset($error_message)): ?>
                            <div class="intro-x mt-4 text-red-600 text-center">
                                <?php echo $error_message; ?>
                            </div>
                        <?php endif; ?>
                        <div class="intro-x mt-2 text-slate-400 xl:hidden text-center">A few more clicks to sign in to your account. Manage all your e-commerce accounts in one place</div>
                        <form method="POST" action="">
                            <div class="intro-x mt-8">
                                <input type="text" name="username" class="intro-x login__input form-control py-3 px-4 block" placeholder="Username" required>
                                <input type="password" name="password" class="intro-x login__input form-control py-3 px-4 block mt-4" placeholder="Password" required>
                            </div>
                            <div class="intro-x flex text-slate-600 dark:text-slate-500 text-xs sm:text-sm mt-4">
                                <a href="forgot-password.php">Forgot Password?</a> 
                            </div>
                            <div class="intro-x mt-5 xl:mt-8 text-center xl:text-left">
                                <button type="submit" class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top">Login</button>
                            </div>
                        </form>
                        <!--div class="intro-x mt-10 xl:mt-24 text-slate-600 dark:text-slate-500 text-center xl:text-left"> By signin up, you agree to our <a class="text-primary dark:text-slate-200" href="">Terms and Conditions</a> & <a class="text-primary dark:text-slate-200" href="">Privacy Policy</a> </div-->
                    </div>
                </div>
                <!-- END: Login Form -->
            </div>
        </div>
        <!-- BEGIN: Dark Mode Switcher-->
        <!--div data-url="login-dark-login.html" class="dark-mode-switcher cursor-pointer shadow-md fixed bottom-0 right-0 box dark:bg-dark-2 border rounded-full w-40 h-12 flex items-center justify-center z-50 mb-10 mr-10">
            <div class="mr-4 text-gray-700 dark:text-gray-300">Dark Mode</div>
            <div class="dark-mode-switcher__toggle border"></div>
        </div-->
        <!-- END: Dark Mode Switcher-->
        
        <!-- BEGIN: JS Assets-->
        <script src="dist/js/app.js"></script>
        <!-- END: JS Assets-->
    </body>
</html>