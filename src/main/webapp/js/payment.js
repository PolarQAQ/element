window.onload = function () {
    let showBtn = document.getElementById("showBtn");
    let detailedBox = document.getElementById("detailedBox");

    detailedBox.style.display = "none";

    showBtn.onclick = function()
    {
        if (detailedBox.style.display === 'none') {
            detailedBox.style.display = 'block';
        } else {
            detailedBox.style.display = 'none';
        }
    }
}