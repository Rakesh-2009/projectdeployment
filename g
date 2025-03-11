document.getElementById('yesButton').addEventListener('click', function() {
    document.querySelector('.container').style.display = 'none'; // Hide the buttons
    const loveMessage = document.getElementById('loveMessage');
    loveMessage.classList.remove('hidden'); // Show love message
    loveMessage.style.opacity = 1; // Fade in the love message
});

document.getElementById('noButton').addEventListener('click', function() {
    const containerWidth = window.innerWidth;
    const containerHeight = window.innerHeight;
    
    // Get random position within the viewport
    const randomX = Math.random() * (containerWidth - 150); // 150 is button width
    const randomY = Math.random() * (containerHeight - 60); // 60 is button height

    // Move the "No" button to the new position
    this.style.position = 'absolute';
    this.style.left = randomX + 'px';
    this.style.top = randomY + 'px';
    
    // Add bounce effect
    this.classList.add('bounce');
    
    // Remove bounce class after animation ends to allow re-adding
    setTimeout(() => {
        this.classList.remove('bounce');
    }, 500);
});
