window.onload = function () {
  clearInterval(Interval);
  Interval = setInterval(startTimer, 10);
  let seconds = 0;
  let tens = 0;
  const alert = document.querySelector(".alert-primary")
  const imagesShow = document.querySelector(".visibility")
  const appendSeconds = document.getElementById("seconds")
  const buttonStart = document.getElementById('button-start');
  const buttonStop = document.getElementById('button-stop');
  const buttonReset = document.getElementById('button-reset');
  const form = document.querySelector(".form")
  let Interval ;
  imagesShow.style.display="block";

  buttonStart.onclick = function() {
    form.style.display = "block"
  alert.style.display="none"
     // clearInterval(Interval);
     // Interval = setInterval(startTimer, 10);
  }

    buttonStop.onclick = function() {
       clearInterval(Interval);
  }


  buttonReset.onclick = function() {
     clearInterval(Interval);
    tens = "00";
  	seconds = "00";
    // appendTens.innerHTML = tens;
  	appendSeconds.innerHTML = seconds;
  }



  function startTimer () {
    tens++;

    if(tens < 9){
      // appendTens.innerHTML = "0" + tens;
    }

    if (tens > 9){
      // appendTens.innerHTML = tens;

    }

    if (tens > 99) {
      console.log("seconds");
      seconds++;
      appendSeconds.innerHTML = "0" + seconds;
      tens = 0;
      // appendTens.innerHTML = "0" + 0;
    }

    if (seconds > 9){
      appendSeconds.innerHTML = seconds;
    }

  }


}
