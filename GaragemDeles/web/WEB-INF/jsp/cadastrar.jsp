<%-- 
    Document   : cadastrar
    Created on : 17/04/2024, 20:21:46
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar</title>
        <link href="styles/cadastrar.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <main>
            
            <form action="cadastrar-usuario" method="POST">
                <div class="container">
                    <h1>CADASTRE-SE</h1>
                    <div class="input">
                        <label for="nome">Nome</label>
                        <input type="text" name="nome" id="nome" placeholder="Digite seu Nome..." required>
                    </div>
                    <div class="input">
                        <label for="senha">Senha</label>
                        <input type="password" name="senha" id="senha" placeholder="Digite sua senha..." required>
                    </div>
                    <div class="input">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" placeholder="Digite seu email..." required>
                    </div>
                    <div class="input">
                        <label for="cpf">Cpf</label>
                        <input type="text" name="cpf" id="cpf" placeholder="Digite seu cpf..." required autocomplete="off" maxlength="14">
                    </div>
                    <div class="input">
                        <label for="telefone">Telefone</label>
                        <input type="text" name="telefone" id="telefone" placeholder="Digite seu telefone..." required maxlength="14">
                    </div>
                    <button type="submit" class="btn btn-cadastro btn-block">Cadastre-se</button>
                    <p>Já possui uma conta? <a href="./login">Faça login!</a></p>
          
                </div>
                <script src="js/cadastrar.js"></script>
            </form>
        </main>
    </body>
</html>
