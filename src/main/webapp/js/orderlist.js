window.onload = function () {
    let showBtnArr = document.getElementsByClassName("fa fa-caret-down");

    let detailedBoxArr = document.getElementsByClassName("order-detailed");

    for (let i = 0; i < detailedBoxArr.length; i++) {
        detailedBoxArr[i].style.display = "none";

    }

    for (let i = 0; i < showBtnArr.length; i++) {
        showBtnArr[i].onclick = function () {
            if (detailedBoxArr[i].style.display === 'none') {
                detailedBoxArr[i].style.display = 'block'
            } else {
                detailedBoxArr[i].style.display = 'none';
            }
        }
    }
}