document.addEventListener("DOMContentLoaded", function() {
//sistema de header invisível auxiliado por: inteliogia
    window.addEventListener("scroll", function() {
        var header = document.querySelector('#header');
        header.classList.toggle('rolagem', window.scrollY > 600);
//fim

//tentativa de troca de imagem
        if (header.classList.contains('rolagem')) {
            console.log("cinza")
            trocarLogo('assets/logocinza.jpg');
        } else {
            console.log("branco")
            trocarLogo('assets/logowhite.png');
        }
    });
    function trocarLogo(novaImg) {
        var logoImg = document.querySelector('.logo img');
        if (logoImg) {
            logoImg.src = novaImg;
        }
    }
});