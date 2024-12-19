function toggleMenu() {
    const mobileMenu = document.getElementById('mobile-menu');
    const barIcon = document.getElementById('bar');
    const closeIcon = document.getElementById('close');

    if (mobileMenu.classList.contains('active')) {
        mobileMenu.classList.remove('active');
        barIcon.style.display = 'block';
        closeIcon.style.display = 'none';
    } else {
        mobileMenu.classList.add('active');
        barIcon.style.display = 'none';
        closeIcon.style.display = 'block'; 
    }
}