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
    /*LÓGICA CARRINHO: LEARNING AXIS*/
    function addToCart(product) {
        var existingProduct = cart.find(function(item) {
            return item.nome === product.nome;
        });

        if (existingProduct) {
            var availableQuantity = product.estoque - existingProduct.quantidade;
            if (availableQuantity > 0) {
                var quantityToAdd = Math.min(product.quantidade, availableQuantity);
                existingProduct.quantidade += quantityToAdd;
            }
        } else {
            cart.push(product);
        }
        product.estoque -= product.quantidade;

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
                        <p style='font-size: 12px;'>Quantidade: ${item.quantidade}</p>
                        <h2 style='font-size: 15px;'>R$${(item.preco * item.quantidade).toFixed(2)}</h2>
                        <i class='fa-solid fa-trash' onclick='removeFromCart(${index})'></i>
                    </div>
                `;
            }).join('');
        }
    }
    function calculateTotal() {
        var total = cart.reduce(function(acc, curr) {
            return acc + (curr.preco * curr.quantidade);
        }, 0);
        document.querySelector('.total').textContent = 'R$ ' + total.toFixed(2);
    }
    window.removeFromCart = function(index) {
        var product = cart[index];
        product.estoque += product.quantidade;
        cart.splice(index, 1);
        displayCart();
        calculateTotal();
        updateCartCounter();}
    var addToCartButtons = document.querySelectorAll('.btn-add-to-cart');
    addToCartButtons.forEach(function(button) {
        button.addEventListener('click', function(event) {
            event.preventDefault();
            var card = button.closest('.card');
            var product = {
                image: card.querySelector('.card-img-top').src,
                nome: card.querySelector('.card-title').textContent,
                preco: parseFloat(card.querySelector('.cta-section div').textContent.replace('R$', '').trim()),
                quantidade: parseInt(card.querySelector('.quantity').value),
                estoque: parseInt(card.querySelector('.quantity').max)
            };
            addToCart(product);
        });
    });
    document.getElementById('btnCompra').addEventListener('click', function() {
        cart.forEach(function(product) {
            product.estoque += product.quantidade;
        });
        cart = [];
        updateCartCounter();
        displayCart();
        calculateTotal();
        location.reload();
    });
    
    /*LÓGICA CATEGORIA: CODING ARTIST*/
    
    function filterProduct(category) {
        var produtosLoja = document.querySelector(".produtosLoja");
        var elementos = produtosLoja.querySelectorAll(".card");
        elementos.forEach(function(elemento) {
            var categoriaProduto = elemento.querySelector(".categoria-card").innerText.toLowerCase();
            if (category === "todas" || categoriaProduto === category.toLowerCase()) {
                elemento.style.display = "block";
            } else {
                elemento.style.display = "none";
            }
        });
        var categoriaButtons = document.querySelectorAll(".btnCategoria");
        categoriaButtons.forEach(function(button) {
            if (button.innerText.toLowerCase() === category) {
                button.classList.add('selected');
            } else {
                button.classList.remove('selected');
            }
        });
    }
    var categoriaButtons = document.querySelectorAll(".btnCategoria");
    categoriaButtons.forEach(function(button) {
        button.addEventListener('click', function() {
            var category = button.innerText.toLowerCase();
            filterProduct(category);
        });
    });
});
