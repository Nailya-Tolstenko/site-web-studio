<?php session_start();?>
<?php require_once  '../connect.php';?>

<?php
error_reporting(E_ALL | E_STRICT);
ini_set('display_startup_errors', 0);
ini_set('display_errors', 'On');
?>

<?php

if (isset($_POST['login']) && isset($_POST['password'])) {
   // тогда идём дальше

$login=$_POST["login"];
$password=$_POST["password"];

$sql = $pdo->prepare("SELECT id, login FROM user WHERE login=:login AND password=:password");
$sql->execute(array('login' => $login, 'password' => $password));
$array=$sql->fetch(PDO::FETCH_ASSOC);
print_r($array);
if($array["id"]>0) {
    $_SESSION['login']=$array["login"];
    header('Location: ../admin.php');
}
else{
    header('Location: ../login.php');
}

} else {
    die('Вы не передали POST данные!');
}