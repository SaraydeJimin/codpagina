document.addEventListener('DOMContentLoaded', () => {
    const carrito = document.querySelector('.carrito');
    const letrero = document.getElementById('letrero');
    const modalProducto = document.getElementById('modal-producto');
    const closeProducto = document.querySelector('.close-producto');

    carrito.addEventListener('click', () => {
        letrero.style.display = letrero.style.display === 'none' ? 'block' : 'none';
    });

    document.querySelectorAll('.btn-carrito').forEach(btn => {
        btn.addEventListener('click', () => {
            // Lógica para agregar al carrito y actualizar la cantidad
        });
    });

    document.querySelectorAll('.producto').forEach(producto => {
        producto.addEventListener('click', () => {
            // Lógica para abrir el modal y mostrar detalles del producto
            const imgSrc = producto.querySelector('img').src;
            const precio = producto.querySelector('.precio').textContent;
            const descripcion = producto.querySelector('.descripcion').textContent;
            
            document.getElementById('modal-producto-img').src = imgSrc;
            document.getElementById('modal-producto-precio').textContent = precio;
            document.getElementById('modal-producto-descripcion').textContent = descripcion;

            modalProducto.style.display = 'flex';
        });
    });

    closeProducto.addEventListener('click', () => {
        modalProducto.style.display = 'none';
    });

    window.addEventListener('click', (e) => {
        if (e.target === modalProducto) {
            modalProducto.style.display = 'none';
        }
    });
});