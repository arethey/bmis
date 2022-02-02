<?php
include('dbconnect.php');
if(!isset($_POST[forgot'']))
{
send_forgot_password($_POST);
}
?>

<html>

<head> </head>

<body>
<section class="bg-grey">
<div class="main">
<div class="container">
<div class="col-md-12">
<div class="form-content-box">

<div class="login-header">
<h3 class="text-center"> Login </h3>
</div>

<div class="form-content-box">

<div class="login-header">
<h3 class="text-center"> Reset Password </h3>
</div>

<div class="details">
<form action="" method="post">
<div class="form-group">
<input type="email" name="email" placeholder="Enter email" autocomplete="off" required class="form-control" pattern="[a-z0-9._%+-]+@[a-z.-]+\.[a-z]{2,3}$">
</div>

<div class="form-group">
<button type="submit" name="forgot" class="btn btn-submit"> Send Me Email </button>
</div>
</form>

</div>

</div>
</div>
</div>
</div>
<section>
<div class="clearfix"> </div>

</body>

</html>

<?php
function check_email_exists($txtval)
{
$query = "SELECT * FROM users WHERE email ='$txtval'";
$qry = mysqli_query($GLOBALS['db'],$query) or die ("error 6".mysqli_error($GLOBALS['db']));
$num = mysqli_num_rows($qry);
$rec = mysqli_fetch_array($qry);
return $rec;
}

function update_password($uid)
{
$pass= mt_rand(100000, 999999);
$password = md5($pass);
$sql="UPDATE users set password='$password' WHERE id='$uid'";
$query=mysqli_query($GLOBALS['db'],$sql);
return $pass;
}
function send_Email($to, $from, $subject, $msg)
{

// the message
// use wordwrap() if lines are longer than 70 characters

$msg = wordwrap($msg, 70);

// Always set content-type when sending HTML email

$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html; charset=UTF-8" . "\r\n";

// More headers

$headers .= 'From: <'.$from.'>' . "\r\n";

// $headers .= 'Cc: info@ontimeinfotech.com' . "\r\n";

$a = mail($to, $subject, $msg, $headers);
}
function send_forgot_password($data)
{
$is_email = check_email_exists($data['email']);
if($is_email)
{
$new_pass = update_password($is_email['id']);
$email_msg = 'New Password: '.$new_pass;
send_Email($to=$is_email['email'], $from='info@domain.com', $subject='Notification: Password Reset', $email_msg);
echo '<script> alert("New Password sent at Email Id."); </script>';
echo '<script> window.location.href="login.php"; </script>';
}
else
{
echo '<script> alert("This Email Id does not exists in our database."); </script>';
}

// return $return_data;
}

?>