<?php
session_start();
require_once 'sql/sql.php';

// Check if user is logged in OR has verified OTP for password reset
if (!isset($_SESSION['user_id']) && !isset($_SESSION['otp_verified'])) {
    header("Location: index.php");
    exit();
}

$success_message = '';
$error_message = '';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];
    
    // Password validation
    $uppercase = preg_match('@[A-Z]@', $new_password);
    $lowercase = preg_match('@[a-z]@', $new_password);
    $number    = preg_match('@[0-9]@', $new_password);
    $specialChars = preg_match('@[^\w]@', $new_password);
    
    // Enhanced validation with specific error messages
    if (strlen($new_password) < 8) {
        $error_message = "Password must be at least 8 characters long";
    } elseif (!$uppercase) {
        $error_message = "Password must include at least one uppercase letter";
    } elseif (!$lowercase) {
        $error_message = "Password must include at least one lowercase letter";
    } elseif (!$number) {
        $error_message = "Password must include at least one number";
    } elseif (!$specialChars) {
        $error_message = "Password must include at least one special character";
    } elseif ($new_password !== $confirm_password) {
        $error_message = "Passwords do not match";
    } else {
        // Hash the new password
        $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
        
        // Determine which user ID to use (logged in user or reset user)
        $user_id = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : $_SESSION['reset_user_id'];
        
        // Update the password
        $sql = "UPDATE tbl_accounts SET password = ?, must_change_password = 0 WHERE id = ?";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("si", $hashed_password, $user_id);
        
        if ($stmt->execute()) {
            // Clear any password reset related sessions
            unset($_SESSION['reset_email']);
            unset($_SESSION['reset_user_id']);
            unset($_SESSION['otp_verified']);
            
            if (isset($_SESSION['force_password_change'])) {
                unset($_SESSION['force_password_change']);
            }
            
            $success_message = "Password successfully changed";
            
            // Redirect after 2 seconds
            if (isset($_SESSION['user_id'])) {
                // For logged in users
                header("refresh:2;url=" . ($_SESSION['user_type'] == 'Admin' ? 'admin/dashboard.php' : 'user/dashboard.php'));
            } else {
                // For password reset users
                header("refresh:2;url=index.php");
            }
        } else {
            $error_message = "Error updating password";
        }
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
        <meta name="description" content="Philippine Army Information System">
        <meta name="keywords" content="philippine army, army, information system">
        <title>Change Password - Philippine Army</title>
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
                        <img alt="Philippine Army" class="w-6" src="src/images/army.png">
                        <span class="text-white text-lg ml-3"> Philippine Army </span> 
                    </a>
                    <div class="my-auto">
                        <img alt="Philippine Army" class="-intro-x w-1/2 -mt-16" src="src/images/army.png">
                        <div class="-intro-x text-white font-small text-3xl leading-tight mt-10">
                            Information Communication Technology  
                            <br>
                            Monitoring System.
                        </div>
                    </div>
                </div>
                <!-- END: Login Info -->
                
                <!-- BEGIN: Change Password Form -->
                <div class="h-screen xl:h-auto flex py-5 xl:py-0 my-10 xl:my-0">
                    <div class="my-auto mx-auto xl:ml-20 bg-white dark:bg-darkmode-600 xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">
                        <h2 class="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-left">
                            Change Password
                        </h2>
                        
                        <?php if ($error_message): ?>
                            <div class="intro-x mt-4 text-red-600 text-center">
                                <?php echo $error_message; ?>
                            </div>
                        <?php endif; ?>
                        
                        <?php if ($success_message): ?>
                            <div class="intro-x mt-4 text-green-600 text-center">
                                <?php echo $success_message; ?>
                            </div>
                        <?php endif; ?>
                        
                        <?php if (isset($_SESSION['force_password_change'])): ?>
                            <div class="intro-x mt-4 text-blue-600 text-center">
                                You must change your temporary password before continuing.
                            </div>
                        <?php endif; ?>

                        <form method="POST" action="" id="passwordForm">
                            <div class="intro-x mt-8">
                                <input type="password" name="new_password" id="new_password" class="intro-x login__input form-control py-3 px-4 block" placeholder="New Password" required>
                                
                                <div class="intro-x mt-2 text-slate-400 text-xs">
                                    <div class="requirement" id="length"><i data-lucide="circle"></i>At least 8 characters</div>
                                    <div class="requirement" id="uppercase"><i data-lucide="circle"></i>One uppercase letter</div>
                                    <div class="requirement" id="lowercase"><i data-lucide="circle"></i>One lowercase letter</div>
                                    <div class="requirement" id="number"><i data-lucide="circle"></i>One number</div>
                                    <div class="requirement" id="special"><i data-lucide="circle"></i>One special character</div>
                                </div>
                                
                                <input type="password" name="confirm_password" id="confirm_password" class="intro-x login__input form-control py-3 px-4 block mt-4" placeholder="Confirm New Password" required>
                                
                                <div class="intro-x mt-2 text-slate-400 text-xs">
                                    <div class="requirement" id="match"><i data-lucide="circle"></i>Passwords match</div>
                                </div>
                            </div>
                            
                            <div class="intro-x mt-5 xl:mt-8 text-center xl:text-left">
                                <button type="submit" id="submitBtn" class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top whitespace-nowrap">
                                    Change Password
                                </button>
                                <a href="index.php" class="btn btn-secondary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top">Cancel</a>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- END: Change Password Form -->
            </div>
        </div>
        
        <!-- BEGIN: JS Assets-->
        <script src="dist/js/app.js"></script>
        <script>
            document.addEventListener('DOMContentLoaded', function() {
                const newPassword = document.getElementById('new_password');
                const confirmPassword = document.getElementById('confirm_password');
                const form = document.getElementById('passwordForm');
                const submitBtn = document.getElementById('submitBtn');
                
                function validatePassword() {
                    const password = newPassword.value;
                    const confirm = confirmPassword.value;
                    
                    // Update requirements
                    document.getElementById('length').className = 
                        'requirement ' + (password.length >= 8 ? 'text-success' : 'text-slate-400');
                    document.getElementById('uppercase').className = 
                        'requirement ' + (/[A-Z]/.test(password) ? 'text-success' : 'text-slate-400');
                    document.getElementById('lowercase').className = 
                        'requirement ' + (/[a-z]/.test(password) ? 'text-success' : 'text-slate-400');
                    document.getElementById('number').className = 
                        'requirement ' + (/[0-9]/.test(password) ? 'text-success' : 'text-slate-400');
                    document.getElementById('special').className = 
                        'requirement ' + (/[^A-Za-z0-9]/.test(password) ? 'text-success' : 'text-slate-400');
                    document.getElementById('match').className = 
                        'requirement ' + (password === confirm && password !== '' ? 'text-success' : 'text-slate-400');
                    
                    // Update icons using Lucide
                    document.querySelectorAll('.requirement').forEach(req => {
                        const icon = req.querySelector('i');
                        if (req.classList.contains('text-success')) {
                            icon.setAttribute('data-lucide', 'check-circle');
                        } else {
                            icon.setAttribute('data-lucide', 'circle');
                        }
                        if (typeof lucide !== 'undefined') {
                            lucide.createIcons();
                        }
                    });
                    
                    // Enable/disable submit button
                    const isValid = password.length >= 8 && 
                                  /[A-Z]/.test(password) && 
                                  /[a-z]/.test(password) && 
                                  /[0-9]/.test(password) && 
                                  /[^A-Za-z0-9]/.test(password) && 
                                  password === confirm;
                                  
                    submitBtn.disabled = !isValid;
                    submitBtn.className = isValid 
                        ? 'btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top' 
                        : 'btn btn-secondary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top opacity-70 cursor-not-allowed';
                }
                
                newPassword.addEventListener('input', validatePassword);
                confirmPassword.addEventListener('input', validatePassword);
                
                form.addEventListener('submit', function(e) {
                    if (!submitBtn.disabled) {
                        return true;
                    }
                    e.preventDefault();
                    return false;
                });
                
                // Initial validation
                validatePassword();
            });
        </script>
        <!-- END: JS Assets-->
    </body>
</html> 