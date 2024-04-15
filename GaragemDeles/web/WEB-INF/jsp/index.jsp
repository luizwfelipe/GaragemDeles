<!--
//    response.sendRedirect("pages/login.jsp"); 
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//PT-BR"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link href="styles/index.css" rel="stylesheet" type="text/css"/>
        <script src="https://kit.fontawesome.com/72aebe393c.js" crossorigin="anonymous"></script>
        <title>Início</title>
    </head>
    <body>
        

        <section class="fundo">
          <h1>MONTE O <span>SEU CARRO</span></h1>
        </section>

        <main>
            <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="assets/RODAS-GOSTOS.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="assets/DUVIDA-ORBITAL.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="assets/CARACOL.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
        </main>
        <header id="header">
          <!--Auxilo com Header (front): inteliogia -->
          <div class="container">
            <div class="flex">
              <a href="#"><img class = "logo" src="assets/logored.png" alt=""/></a>
              <nav>
                <ul> <!--intes menu abaixo-->
                  <li><a href="./categoria">RODAS</a></li>
                  <li><a href="./categoria">TURBOS</a></li>
                  <li><a href="./categoria">SUPERCHARGERS</a></li>
                  <li><a href="./categoria">PEÇAS</a></li>
                  <li><a href="./produto">Teste produtos</a></li>
                </ul>
              </nav>
              <div class="cart-login">
                <a href="./login" class="btnLogin"><i class="fa-solid fa-user"></i></a>
                <a href="" class="btnCart"><i class="fa-solid fa-cart-shopping"></i></a>
              </div>
            </div><!--div flex-->
          </div><!--Container aqui!!-->
        </header>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
        <script src="js/index.js" type="text/javascript"></script>
    </body>
</html>