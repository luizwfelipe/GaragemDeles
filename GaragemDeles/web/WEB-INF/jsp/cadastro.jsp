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
        <form action="cadastrar">
        <div class="container" name="frmCadastro">
            <img href="./home" class = "logo" src="assets/logocinza.png" alt="menu"/>
            <h1>Log in</h1>
            <div class="ipt">
                <div class="input">
                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome" placeholder="Digite seu Nome..." required>
                    </div>
            </div>
            <div class="ipt">
                <div class="input">
                    <label for="senha">Senha</label>
                    <input type="password" name="senha" id="senha" placeholder="Digite sua senha..." required>
                    </div>
                    
            </div>
            <div class="ipt">
                <div class="input">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Digite seu email..." required>
                    </div>
                    
            </div>
            <div class="ipt">
                <div class="input">
                    <label for="cpf">Cpf</label>
                    <input type="number" name="cpf" id="cpf" placeholder="Digite sua cpf..." required>
                    </div>
                    
            </div>
            <div class="ipt">
                <div class="input">
                    <label for="telefone">Telefone</label>
                    <input type="number" name="telefone" id="telefone" placeholder="Escreva seu telefone..." required>
                    </div>
                    
            </div>
            <button type="submit" class="btn btn-cadastro btn-block">Cadastrar</button>
            <p>Já possui uma conta? <a href="./login">Faça Login!</a></p>
        </div>
        </form>

        
        
        </main>  
    </body>
</html>
