var vel_move = 0;
var run = false;
document.addEventListener('keydown', function(event) {
	if (event.keyCode === 38) {
        document.getElementById("test").innerHTML = ("<br><br> Up was pressed ");
    }
    if (event.keyCode === 37) {
        document.getElementById("test").innerHTML = ("<br><br> Left was pressed ");
    }
    if (event.keyCode === 39) {
        document.getElementById("test").innerHTML = ("<br><br> Right was pressed ");
    }
    if (event.keyCode === 40) {
        document.getElementById("test").innerHTML = ("<br><br> Down was pressed ");
    }
}, true);