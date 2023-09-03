/*


addToCart


// Initialize an empty cart array
const cart = [];

// Function to add an item to the cart
function addToCart(productId, productName, price) {
    // Create a cart item object
    const cartItem = {
        productId,
        productName,
        price,
        quantity: 1, // You can set the initial quantity to 1
    };

    // Add the item to the cart
    cart.push(cartItem);

    // Update the cart count in the header
    updateCartCount();

    // Send an AJAX request to add the item to the database
    addToDatabase(productId, productName, price);

    // Optionally, you can display a message to the user indicating that the item has been added to the cart
    alert(`Added "${productName}" to the cart!`);
}

// Function to update the cart count in the header
function updateCartCount() {
    const cartCount = document.getElementById('cart-count');
    cartCount.textContent = cart.length; // Set the cart count to the number of items in the cart
}

// Function to send an AJAX request to add the item to the database
function addToDatabase(productId, productName, price) {
    // Create an XMLHttpRequest object
    const xhr = new XMLHttpRequest();

    // Define the URL for the server-side script that will handle the database update
    const url = 'addToCart.jsp'; // Replace with the actual URL

    // Define the data to send in the request (you can use JSON or other formats)
    const data = {
        productId,
        productName,
        price,
    };

    // Set up the request
    xhr.open('POST', url, true);
    xhr.setRequestHeader('Content-Type', 'application/json');

    // Handle the response from the server (you can add error handling as needed)
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Item added to the database
        }
    };

    // Convert the data to JSON and send the request
    xhr.send(JSON.stringify(data));
}
// Initialize an empty cart array
const cart = [];

// Function to add an item to the cart
function addToCart(productId, productName, price) {
    // Create a cart item object
    const cartItem = {
        productId,
        productName,
        price,
        quantity: 1, // You can set the initial quantity to 1
    };

    // Add the item to the cart
    cart.push(cartItem);

    // Update the cart count in the header
    updateCartCount();

    // Send an AJAX request to add the item to the database
    addToDatabase(productId, productName, price);

    // Optionally, you can display a message to the user indicating that the item has been added to the cart
    alert(`Added "${productName}" to the cart!`);
}

// Function to update the cart count in the header
function updateCartCount() {
    const cartCount = document.getElementById('cart-count');
    cartCount.textContent = cart.length; // Set the cart count to the number of items in the cart
}

// Function to send an AJAX request to add the item to the database
function addToDatabase(productId, productName, price) {
    // Create an XMLHttpRequest object
    const xhr = new XMLHttpRequest();

    // Define the URL for the server-side script that will handle the database update
    const url = 'addToCart.jsp'; // Replace with the actual URL

    // Define the data to send in the request (you can use JSON or other formats)
    const data = {
        productId,
        productName,
        price,
    };

    // Set up the request
    xhr.open('POST', url, true);
    xhr.setRequestHeader('Content-Type', 'application/json');

    // Handle the response from the server (you can add error handling as needed)
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            // Item added to the database
        }
    };

    // Convert the data to JSON and send the request
    xhr.send(JSON.stringify(data));
}
*/