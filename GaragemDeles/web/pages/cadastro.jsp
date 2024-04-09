<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//PT-BR"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="./../styles/login.css" rel="stylesheet" type="text/css"/>
        <title>Login - D'eles</title>
    </head>
    <body>
        <main>

            <div class="container">
                <p>
                    tect
                </p>
                <img class = "logo" src="./../assets/logomono.png" alt="menu"/>
                <div class="ipt">
                    <div class="lbl"><label for="nome">Nome</label></div>
                    <input type="text" name="nome" placeholder="Digite seu Nome..." required>
                </div>
                <div class="ipt">
                    <div class="lbl"><label for="email">Email</label></div>
                    <input type="email" name="email" placeholder="Digite seu Email..." required>
                </div>
                <div class="ipt">
                    <div class="lbl"><label for="senha">Senha</label></div>
                    <input type="password" name="senha" placeholder="Digite sua Senha..." required>
                </div>
                <div class="ipt">
                    <input type="password" name="senhaNov" placeholder="Digite sua Senha Novamente..." required>
                </div>
            </div>
        </main>
    </body>
</html>
