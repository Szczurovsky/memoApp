//
//
const btn = document.querySelector(".but")
const title = document.querySelector(".title")
const btn1 = document.querySelector(".but1")
const image = document.querySelector(".img")
//
const reverse = document.querySelector(".btnReverse")
//
reverse.addEventListener("click", reverseLearn)
btn.addEventListener("click", hideBut)
// reverse.addEventListener("click", reverseLearn)
function hideBut(){

    title.style.display = "block"
    btn.style.display = "none";
    btn1.style.display = "block"

}

function reverseLearn() {
//
  // document.cookie = `wartosc=!${gon.sprawdzam}; SameSite=lax`;
document.cookie = `wartosc=false; SameSite=lax`;
console.log("dzialam")
}
//
// console.log(gon.sprawdzam)
