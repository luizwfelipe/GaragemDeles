

var cart = [];

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

//fim da tentativa fracassadakkkkkkkkkk
    
/* AUXILIO COM BACK DO CARRINHO: LEARNING AXIS*/

    window.delElement = function(index) {
            cart.splice(index, 1);
       displayCart();
        calculateTotal();
        updateCartCounter();
    }

        var addToCartButtons = document.querySelectorAll('.cta-section .btn');
        addToCartButtons.forEach(function(button) {
            button.addEventListener('click', function(event) {
              event.preventDefault();
                var card = button.closest('.card');
                var product = {
                   image: card.querySelector('.card-img-top').src,
                    nome: card.querySelector('.card-title').textContent,
                    preco: card.querySelector('.cta-section div').textContent.replace('R$', '').trim()
                };
                addToCart(product);
            });
        });
    });

   function addToCart(product) {
        cart.push(product);
        updateCartCounter();
        displayCart();
        calculateTotal();
    }

    function updateCartCounter() {
        document.getElementById('contador').textContent = cart.length;
    }

    function displayCart() {
        var cartItemElement = document.querySelector('.cartItem');
        if (cart.length === 0) {
            cartItemElement.innerHTML = "<div class='cart-item'>Carrinho vazio</div>";
        } else {
            cartItemElement.innerHTML = cart.map(function(item, index) {
                return `
                    <div class='cart-item'>
                        <div class='row-img'>
                           <img class='rowimg' src='${item.image}'>
                        </div>
                        <p style='font-size: 12px;'>${item.nome}</p>
                        <h2 style='font-size: 15px;'>R$${item.preco}</h2>
                        <i class='fa-solid fa-trash' onclick='delElement(${index})'></i>
                    </div>
                `;
            }).join('');
        }
    }

    function calculateTotal() {
        var total = cart.reduce(function(acc, curr) {
            return acc + parseFloat(curr.preco);
        }, 0);
        document.querySelector('.total').textContent = '$' + total.toFixed(2);
    }

    function limparCarrinho() {
        cart = [];
       displayCart();
        calculateTotal();
        updateCartCounter();
    }

     document.getElementById('btnCompra').      addEventListener('click', function() {
        limparCarrinho();
    });

//LOGICA DE CATEGORIA FEITO COM AUXILIO DE CODING ARTIST
function filterProduct(category) {
    let elements = document.querySelectorAll(".card");
    elements.forEach(element => {
        let categoriaProduto = element.querySelector(".categoria-card").innerText.toLowerCase();
        if (category === "todas" || categoriaProduto === category.toLowerCase()) {
            element.style.visibility = "visible"; 
        } else {
            element.style.visibility = "hidden";
        }
    });
}


document.querySelectorAll(".btnCategoria").forEach(button => {
    button.addEventListener('click', function() {
        let category = button.innerText.toLowerCase();
        filterProduct(category);
    });
});
