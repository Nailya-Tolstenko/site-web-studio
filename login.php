<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Вход в админку</title>
</head>
<body>
    <h2 style="text-align: center;padding-top:100px">Вход в административную панель</h2>

    <form action="./admin/auth.php" method="post" style="text-align: center;padding-top:80px">
        <div class="form-group">
            <input type="text" name="login" placeholder="Введите логин">
        </div>
            <div class="form-group">
            <input type="text" name="password" placeholder="Введите пароль">
            </div>
                <button type="submit" class="btn btn-primary">Войти</button>
            </form>
</body>
</html>