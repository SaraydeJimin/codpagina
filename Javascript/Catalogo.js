document.addEventListener('DOMContentLoaded', function () {
    const cartButton = document.querySelector('.cart-button');
    const cartSummary = document.querySelector('.cart-summary');
    const cartCount = document.getElementById('cart-count');
    const checkoutButton = document.getElementById('checkout-button');
    let itemCount = 0; // Variable para contar los artículos en el carrito

    // Ejemplo de cómo se podría agregar un producto al carrito (esto se debería adaptar según la lógica real)
    document.querySelectorAll('.agregar-carrito').forEach(button => {
        button.addEventListener('click', function () {
            itemCount++;
            cartCount.textContent = itemCount;
            cartSummary.querySelector('#cart-summary-content').textContent = `Has agregado ${itemCount} producto(s) al carrito.`;
            if (itemCount > 0) {
                checkoutButton.classList.remove('hidden');
                checkoutButton.classList.add('visible');
            } else {
                checkoutButton.classList.remove('visible');
                checkoutButton.classList.add('hidden');
            }
        });
    });

    // Efecto de resaltar el carrito
    cartButton.addEventListener('click', function () {
        cartButton.querySelector('.cart-icon').style.filter = 'brightness(1.5)';
        setTimeout(() => {
            cartButton.querySelector('.cart-icon').style.filter = 'brightness(1)';
        }, 300);
    });
});
