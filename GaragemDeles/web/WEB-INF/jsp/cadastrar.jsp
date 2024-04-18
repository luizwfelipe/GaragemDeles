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
    </head>
    <body>
        <main>
            <h1>CADASTRE-SE</h1>
            <form action="cadastrar-usuario" method="POST">
                <div class="container">
                    <div class="input">
                        <label for="nome">nome</label>
                        <input type="text" name="nome" id="nome" placeholder="Digite seu Nome..." required>
                    </div>
                    <div class="input">
                        <label for="senha">senha</label>
                        <input type="password" name="senha" id="senha" placeholder="Digite sua senha..." required>
                    </div>
                    <div class="input">
                        <label for="email">email</label>
                        <input type="email" name="email" id="email" placeholder="Digite seu email..." required>
                    </div>
                    <div class="input">
                        <label for="cpf">cpf</label>
                        <input type="number" name="cpf" id="cpf" placeholder="Digite seu cpf..." required>
                    </div>
                    <div class="input">
                        <label for="telefone">nome</label>
                        <input type="number" name="telefone" id="telefone" placeholder="Digite seu telefone..." required>
                    </div>
                    <button type="submit" class="btn btn-cadastro btn-block">Cadastre-se</button>

                </div>
            </form>
        </main>
    </body>
</html>
