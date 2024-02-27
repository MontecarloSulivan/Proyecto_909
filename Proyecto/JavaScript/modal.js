const botonAbrirModal = document.getElementById('botonSignIn');
const modal = document.getElementById('modal');
const botonCerrarModal = document.querySelector('.cerrar-modal');

botonAbrirModal.addEventListener('click', () => {
  modal.style.display = 'block';
});

botonCerrarModal.addEventListener('click', () => {
  modal.style.display = 'none';
});

window.addEventListener('click', (evento) => {
  if (evento.target === modal) {
    modal.style.display = 'none';
  }
});

