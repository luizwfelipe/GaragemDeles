<%-- 
    Document   : cadastro
    Created on : 15/04/2024, 14:18:06
    Author     : Senai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <a href="./home">home</a>
        </header>
        <main>
            <h1>Cadastro</h1>
        <div class="ipt">
            <div class="input">
                <label for="nome">Nome</label>
                <input type="text" name="nome" placeholder="Digite seu Nome..." required>
                </div>
        </div>
        <div class="ipt">
            <div class="input">
                <label for="email">Email</label>
                <input type="email" name="email" placeholder="Digite seu email..." required>
                </div>
        </div>
        <div class="ipt">
            <div class="input">
                <label for="senha">Senha</label>
                <input type="password" name="senha" placeholder="Digite sua senha..." required>
                </div>
        </div>
        <div class="ipt">
            <div class="input">
                <label for="csenha">Confirme a Senha</label>
                <input type="password" name="csenha" placeholder="Digite sua senha..." required>
                </div>
        </div>
        <div class="ipt">
            <div class="input">
                <label for="nome">Nome</label>
                <input type="text" name="nome" placeholder="Digite sua senha..." required>
                </div>
        </div>
        <div class="ipt">
            <div class="input">
                <label for="nome">Nome</label>
                <input type="text" name="nome" placeholder="Digite sua senha..." required>
                </div>
        </div>

        
        <p>Já possui uma conta? <a href="./login">Faça Login!</a></p>
        </main>
        
    </body>
</html>
