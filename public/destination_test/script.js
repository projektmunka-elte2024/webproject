document.addEventListener('DOMContentLoaded', () => {
    const carousel = document.getElementById('carousel');
    const cards = Array.from(carousel.children);

    // Clone cards for infinite scrolling
    cards.forEach((card) => {
        const cloneStart = card.cloneNode(true);
        const cloneEnd = card.cloneNode(true);
        carousel.appendChild(cloneEnd);
        carousel.insertBefore(cloneStart, carousel.firstChild);
    });

    // Ensure the initial scroll position is centered
    const cardWidth = cards[0].offsetWidth + 20; // Card width + gap
    const scrollAmount = cards.length * cardWidth; // Adjust dynamically
    carousel.scrollLeft = scrollAmount;

    // Scroll functions
    function scrollLeft() {
        if (carousel.scrollLeft <= 0) {
            carousel.scrollLeft += scrollAmount;
        }
        carousel.scrollBy({ left: -cardWidth, behavior: 'smooth' });
    }

    function scrollRight() {
        if (carousel.scrollLeft >= carousel.scrollWidth - carousel.offsetWidth) {
            carousel.scrollLeft -= scrollAmount;
        }
        carousel.scrollBy({ left: cardWidth, behavior: 'smooth' });
    }

    // Handle wrap-around
    carousel.addEventListener('scroll', () => {
        if (carousel.scrollLeft <= 0) {
            carousel.scrollLeft += scrollAmount;
        } else if (carousel.scrollLeft >= carousel.scrollWidth - carousel.offsetWidth) {
            carousel.scrollLeft -= scrollAmount;
        }
    });

    // Attach functions to buttons
    window.scrollLeft = scrollLeft;
    window.scrollRight = scrollRight;
});
