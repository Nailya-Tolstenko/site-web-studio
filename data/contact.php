<?php 

require_once('./connect.php'); 

$sql = $pdo->prepare("SELECT * FROM contact");
$sql->execute();  // выполнение отправки запроса
$res = $sql->fetch(PDO::FETCH_ASSOC);

?>
<!DOCTYPE html>
<html lang="en">
<head>

	<meta charset="UTF-8">
	<title>Тестовый сайт</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="./css/style.css">
    
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
							<span><?php echo $res["city"]?></span>
						</a>
					</li>
					<li class="header-list-link">
						<a href="#">
						<span><?php echo $res["phone"]?></span>
						</a>
					</li>
					<li class="header-list-link">
						<a href="#">
						<span><?php echo $res["email"]?></span>
						</a>
					</li>

				</ul>
				
			</nav>

		</div>
