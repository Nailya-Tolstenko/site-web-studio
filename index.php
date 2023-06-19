<?php require_once('./data/contact.php'); ?>

<?php 

require_once('./connect.php'); 

$sql = $pdo->prepare("SELECT * FROM header");
$sql->execute();  // выполнение отправки запроса
$result = $sql->fetch(PDO::FETCH_OBJ);

?>

<div class="intro-section" style="background-image: url('/uploads/<?= $result->filename;?>');">
	
	<div class="header-down">
		<div class="header-title">
			<h1><?= $result->name;?></h1>
		</div>
	</div>

</div>

<?php require('./data/uslugi.php'); ?>
<?php require('./data/about.php'); ?>
<?php require('./data/footer.php'); ?>

	



