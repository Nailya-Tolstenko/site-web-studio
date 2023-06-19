<?php

require_once('./connect.php'); 

$sqlUslugui = $pdo->prepare("SELECT * FROM uslugi");
// выполнение отправки запроса
$sqlUslugui->execute();
$uslugi = $sqlUslugui->fetchAll(PDO::FETCH_OBJ);

// print_r($uslugi);
// die;

?>
<section>

	<div class="services-container">

		<div class="services-headline">

			<div class="servis">
				<h2>Наши услуги</h2>
			</div>

			<?php
				$i = 0;
				foreach($uslugi as $usluga):
					
				if ($i == 0) {
					echo '<div class="services-blocks">';
				}

			?>

				<div class="services__block">
					<a href="#">
						<img src="/uploads/<?=$usluga->filename;?>" alt="services" />
					</a>
					<div class="overlay"></div>
					<p>
						<?=$usluga->title;?>
					</p>
					<p>
						<?=$usluga->price;?>
					</p>
				</div>

			<?php

				$i++;

				if ($i==4) {
					$i = 0;
					echo '</div>';
				}
				endforeach;

				if ($i != 0) {
					echo '</div>';
				}
			
			?>

		</div>
	</div>

</section>