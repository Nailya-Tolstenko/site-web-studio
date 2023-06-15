<?php //require_once  '../connect.php';?>
<?php
error_reporting(E_ALL | E_STRICT);
ini_set('display_startup_errors', 0);
ini_set('display_errors', 'On');
?>

<?php

/*$sql = $pdo->prepare("SELECT * FROM contact");
$res=$sql->fetch(PDO::FETCH_ASSOC);*/

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/style.css">
	<title>Тестовый сайт</title>
    
</head>

<body>
	<main>
		<div class="header">
			<nav class="header-nav">

				<ul class="header-list">

					<li class="header-list-link">
						<strong>
							<a href="#">
								Логотип
							</a>
						</strong>
					</li>
					<li class="header-list-link">
						<a href="#">
							Город
						</a>
					</li>
					<li class="header-list-link">
						<a href="#">
							Телефон
						</a>
					</li>
					<li class="header-list-link">
						<a href="#">
							Эл. почта
						</a>
					</li>

				</ul>
			</nav>
