<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../public/css/style.css">
    <title>Document</title>
</head>
<div class="guest">
    <div class="container">
        <form class="form" action="/add_message" method="POST">
            <div class="form_input"><img width="80px" height="30px" src="../public/image/captcha.png" alt="">
                <input type="text"
                       placeholder="Введите большими буквами"
                       name="captcha"/>
                <p class="form_danger"><? echo $err['captcha'] ?></p>
            </div>
            <div class="form_input"><span>&#9733;</span>Имя: <input type="text" name="userName"/>
                <p class="form_danger"><? echo $err['userName'] ?></p></div>
            <div class="form_input"><span>&#9733;</span>Email: <input type="email" name="email"/>
                <p class="form_danger"><? echo $err['email'] ?></p></div>
            <div class="form_input">Домашняя страница: <input type="text" placeholder="url должен начинаться с http://"
                                                              name="homePage"/>
                <p class="form_danger"><? echo $err['homePage'] ?></p></div>
            <p class="form_textarea">Сообщение: <textarea name="text"></textarea></p>
            <p style="display: none"><input type="text" name="ip" value="<? echo $_SERVER['REMOTE_ADDR'] ?>"></p>
            <p style="display: none"><input type="text" name="browser" value="<? echo $_SERVER["HTTP_USER_AGENT"] ?>">
            </p>
            <input class="form_submit" type="submit" value="Отправить">
        </form>
        <? require "Views/table.php" ?>
    </div>
</div>
</body>
</html>
