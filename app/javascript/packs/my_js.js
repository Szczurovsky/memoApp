const btn = document.querySelector(".but")
const title = document.querySelector(".title")
const btn1 = document.querySelector(".but1")
const image = document.querySelector(".img")


const btnRev = document.querySelector(".butRev")
const titleRev = document.querySelector(".titleRev")
const btn1Rev = document.querySelector(".but1Rev")
const imageRev = document.querySelector(".imgRev")

const reverse = document.querySelector(".btnReverse")

btn.addEventListener("click", hideBut)
reverse.addEventListener("click", reverseLearn)
function hideBut(){

    title.style.display = "block"
    btn.style.display = "none";
    btn1.style.display = "block"

}

function reverseLearn() {
  btnRev.style.display = "block";
  btn1Rev.style.display = "block";
  titleRev.style.display = "block";
  title.style.display = "none"
  image.style.display = "none"
  btn.style.display = "none";
  btn1.style.display = "none"
  document.cookie = `wartosc=${gon.sprawdzam}`

}

console.log(gon.sprawdzam)
