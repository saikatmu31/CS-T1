console.log("LOGIN SCRIPT LOADED");
document.getElementById("loginForm").addEventListener("submit", function (e) {
	e.preventDefault();

	const email = document.getElementById("email").value;
	const password = document.getElementById("password").value;

	// Retrieve stored user details from localStorage
	const storedUser = JSON.parse(localStorage.getItem(email));

	if (storedUser && storedUser.password === password) {
		alert("Login successful!");
		// Redirect to a dashboard or home page
	} else {
		alert("Invalid email or password!");
	}
});
