<?php
require_once('./connect.php'); 

$sqlAbout = $pdo->prepare("SELECT * FROM about");
$sqlAbout->execute();  // исполняем запрос
$about = $sqlAbout->fetch(PDO::FETCH_OBJ);

?>

<section class="banner-section">

	<div class="banner-section-container">

		<div class="banner">

			<div class="banner-headline">

				<div class="banner-headline-main">
					<h2 class="banner-headline-main">
						<?php echo $about->title;?>
					</h2>
				</div>

				<div class="headline-text">
						<?php echo $about->description;?>
				</div>
				
			</div>

		</div>

	</div>

</section>