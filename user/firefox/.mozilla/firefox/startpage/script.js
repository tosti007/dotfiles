window.addEventListener('load', (event) => {
    displayTime();
    setInterval(function () {
        displayTime();
    // Every 30 seconds won't be 100% accurate, but who cares.
    }, 30000); 
});

function determineGreet(hours) {
    var msg = "day";
    if (hours >= 6 && hours < 12) {
        msg = "morning"
    } else if (hours < 18) {
        msg = "afternoon";
    } else {
        msg = "evening";
    }
    document.getElementById("greeting-moment").innerText = msg;
}

function displayTime() {
    var today = new Date();
    var hours = today.getHours();
    var minutes = today.getMinutes();
    if (hours < 10) hours = `0${hours}`
    if (minutes < 10) minutes = `0${minutes}`
    document.getElementById("time").innerHTML = `${hours}:${minutes}`;
    determineGreet(hours);
}
