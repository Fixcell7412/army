<?php
include 'sql/sql.php';
session_start();

// PHPMailer classes
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

// PHPMailer files
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';

// Clear all reset-related session variables if user is starting fresh
if (!isset($_POST['check_email']) && !isset($_POST['verify_otp']) && !isset($_POST['reset_password'])) {
    unset($_SESSION['reset_email']);
    unset($_SESSION['reset_user_id']);
    unset($_SESSION['reset_otp']);
    unset($_SESSION['otp_timestamp']);
}

// PHPMailer setup
$show_otp_form = false;
$show_password_form = false;
$error_message = '';
$success_message = '';

function generateOTP() {
    return str_pad(rand(0, 999999), 6, '0', STR_PAD_LEFT);
}

function sendOTPEmail($to_email, $otp) {
    $mail = new PHPMailer(true);

    try {
        // Server settings
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com';
        $mail->SMTPAuth = true;
        $mail->Username = 'denzlord13@gmail.com'; // Replace with your Gmail
        $mail->Password = 'yywz qooi caue skyx'; // Replace with your Gmail app password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
        $mail->Port = 587;

        // Recipients
        $mail->setFrom('denzlord13@gmail.com', 'Philippine Army');
        $mail->addAddress($to_email);

        // Content
        $mail->isHTML(true);
        $mail->Subject = 'Password Reset OTP';
        $mail->Body = "
            <h2>Password Reset OTP</h2>
            <p>Your OTP for password reset is: <strong>{$otp}</strong></p>
            <p>This OTP will expire in 5 minutes.</p>
            <p>If you did not request this password reset, please ignore this email.</p>
        ";

        $mail->send();
        return true;
    } catch (Exception $e) {
        error_log("Message could not be sent. Mailer Error: {$mail->ErrorInfo}");
        return false;
    }
}

// Maintain form state based on POST and valid session data
$show_otp_form = false;
$show_password_form = false;
$error_message = '';
$success_message = '';

// Only show OTP form if we have valid OTP session and it hasn't expired
if (isset($_SESSION['reset_otp']) && isset($_SESSION['otp_timestamp'])) {
    if (time() - $_SESSION['otp_timestamp'] <= 300) { // 300 seconds = 5 minutes
        $show_otp_form = true;
    } else {
        // Clear expired OTP sessions
        unset($_SESSION['reset_otp']);
        unset($_SESSION['otp_timestamp']);
    }
}

// Only show password form if user has verified OTP and has valid reset_user_id
if (isset($_SESSION['reset_user_id']) && !isset($_SESSION['reset_otp'])) {
    $show_password_form = true;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['check_email'])) {
        $email = $_POST['email'];
        
        // Check if email exists
        $sql = "SELECT id, username FROM tbl_accounts WHERE email = ? AND status = 'active'";
        $stmt = $con->prepare($sql);
        $stmt->bind_param("s", $email);
        $stmt->execute();
        $result = $stmt->get_result();
        
        if ($result->num_rows > 0) {
            $user = $result->fetch_assoc();
            $_SESSION['reset_email'] = $email;
            $_SESSION['reset_user_id'] = $user['id'];
            
            // Generate OTP
            $otp = generateOTP();
            $_SESSION['reset_otp'] = $otp;
            $_SESSION['otp_timestamp'] = time();
            
            // Send OTP via email using PHPMailer
            if(sendOTPEmail($email, $otp)) {
                $show_otp_form = true;
                $success_message = "OTP has been sent to your email";
            } else {
                $error_message = "Failed to send OTP. Please try again.";
                // Clear sessions on error
                unset($_SESSION['reset_email']);
                unset($_SESSION['reset_user_id']);
                unset($_SESSION['reset_otp']);
                unset($_SESSION['otp_timestamp']);
            }
        } else {
            $error_message = "Email not found or account is inactive";
        }
    } 
    elseif (isset($_POST['verify_otp'])) {
        $entered_otp = $_POST['otp'];
        
        if (isset($_SESSION['reset_otp']) && isset($_SESSION['otp_timestamp'])) {
            if (time() - $_SESSION['otp_timestamp'] <= 300) {
                if ($entered_otp === $_SESSION['reset_otp']) {
                    // Set a flag to indicate OTP is verified
                    $_SESSION['otp_verified'] = true;
                    unset($_SESSION['reset_otp']);
                    unset($_SESSION['otp_timestamp']);
                    
                    // Redirect to change-password.php
                    header("Location: change-password.php");
                    exit();
                } else {
                    $error_message = "Invalid OTP";
                    $show_otp_form = true;
                }
            } else {
                $error_message = "OTP has expired. Please request a new one.";
                unset($_SESSION['reset_otp']);
                unset($_SESSION['otp_timestamp']);
            }
        } else {
            $error_message = "OTP session expired. Please start over.";
            // Clear all sessions and redirect to start
            unset($_SESSION['reset_email']);
            unset($_SESSION['reset_user_id']);
            header("Location: forgot-password.php");
            exit();
        }
    }
    elseif (isset($_POST['reset_password'])) {
        if (isset($_SESSION['reset_user_id'])) {
            $new_password = $_POST['new_password'];
            $confirm_password = $_POST['confirm_password'];
            
            if ($new_password === $confirm_password) {
                $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
                
                $sql = "UPDATE tbl_accounts SET password = ? WHERE id = ?";
                $stmt = $con->prepare($sql);
                $stmt->bind_param("si", $hashed_password, $_SESSION['reset_user_id']);
                
                if ($stmt->execute()) {
                    $success_message = "Password successfully reset. You can now login with your new password.";
                    // Clear all sessions after successful reset
                    unset($_SESSION['reset_email']);
                    unset($_SESSION['reset_user_id']);
                } else {
                    $error_message = "Error resetting password. Please try again.";
                    $show_password_form = true;
                }
            } else {
                $error_message = "Passwords do not match";
                $show_password_form = true;
            }
        } else {
            // If no valid reset session, redirect to start
            header("Location: forgot-password.php");
            exit();
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
        <meta name="author" content="LEFT4CODE">
        <title>Forgot Password - Philippine Army</title>
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
                <!-- BEGIN: Reset Password Form -->
                <div class="h-screen xl:h-auto flex py-5 xl:py-0 my-10 xl:my-0">
                    <div class="my-auto mx-auto xl:ml-20 bg-white dark:bg-darkmode-600 xl:bg-transparent px-5 sm:px-8 py-8 xl:p-0 rounded-md shadow-md xl:shadow-none w-full sm:w-3/4 lg:w-2/4 xl:w-auto">
                        <h2 class="intro-x font-bold text-2xl xl:text-3xl text-center xl:text-left">
                            Reset Password
                        </h2>
                        <?php if ($error_message): ?>
                            <div class="intro-x mt-4 text-red-600 text-center">
                                <?php echo $error_message; ?>
                            </div>
                        <?php endif; ?>
                        <?php if ($success_message): ?>
                            <div class="intro-x mt-4 text-green-600 text-center">
                                <?php echo $success_message; ?>
                                <?php if (strpos($success_message, "You can now login") !== false): ?>
                                    <div class="mt-4">
                                        <a href="index.php" class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top">Back to Login</a>
                                    </div>
                                <?php endif; ?>
                            </div>
                        <?php endif; ?>

                        <?php if (!$show_otp_form && !$show_password_form): ?>
                            <!-- Email verification form -->
                            <form method="POST" action="">
                                <div class="intro-x mt-8">
                                    <input type="email" name="email" class="intro-x login__input form-control py-3 px-4 block" placeholder="Enter your email" required>
                                </div>
                                <div class="intro-x mt-5 xl:mt-8 text-center xl:text-left">
                                    <button type="submit" name="check_email" class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top">Send OTP</button>
                                    <a href="index.php" class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top mt-3 xl:mt-0">Back to Login</a>
                                </div>
                            </form>
                        <?php elseif ($show_otp_form): ?>
                            <!-- OTP verification form -->
                            <form method="POST" action="">
                                <div class="intro-x mt-8">
                                    <input type="text" name="otp" class="intro-x login__input form-control py-3 px-4 block" placeholder="Enter OTP" required maxlength="6" pattern="[0-9]{6}">
                                    <p class="text-slate-500 mt-2 text-center">Please enter the 6-digit code sent to your email</p>
                                </div>
                                <div class="intro-x mt-5 xl:mt-8 text-center xl:text-left">
                                    <button type="submit" name="verify_otp" class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top">Verify OTP</button>
                                    <a href="forgot-password.php" class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top mt-3 xl:mt-0">Cancel</a>
                                </div>
                            </form>
                        <?php else: ?>
                            <!-- New password form -->
                            <form method="POST" action="">
                                <div class="intro-x mt-8">
                                    <input type="password" name="new_password" class="intro-x login__input form-control py-3 px-4 block" placeholder="New Password" required>
                                    <input type="password" name="confirm_password" class="intro-x login__input form-control py-3 px-4 block mt-4" placeholder="Confirm New Password" required>
                                </div>
                                <div class="intro-x mt-5 xl:mt-8 text-center xl:text-left">
                                    <button type="submit" name="reset_password" class="btn btn-primary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top">Reset Password</button>
                                    <a href="forgot-password.php" class="btn btn-outline-secondary py-3 px-4 w-full xl:w-32 xl:mr-3 align-top mt-3 xl:mt-0">Cancel</a>
                                </div>
                            </form>
                        <?php endif; ?>
                    </div>
                </div>
                <!-- END: Reset Password Form -->
            </div>
        </div>
        <!-- BEGIN: JS Assets-->
        <script src="dist/js/app.js"></script>
        <!-- END: JS Assets-->
    </body>
</html>