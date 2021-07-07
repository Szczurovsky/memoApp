
const btn = document.querySelector(".but")
const title = document.querySelector(".title")
const btn1 = document.querySelector(".but1")
const image = document.querySelector(".img")

const reverse = document.querySelector(".btnReverse")

reverse.addEventListener("click", ()=>{
  const test = document.cookie
    if (document.cookie === "var=true"){
    setCookie("var","")
    }
    else{
    setCookie("var","true")
    }
  window.location.reload(true)
})
btn.addEventListener("click", hideBut)
// reverse.addEventListener("click", reverseLearn)
function hideBut(){

    title.style.display = "block"
    btn.style.display = "none";
    btn1.style.display = "block"
    image.style.display ="block";
}

function setCookie(cName, cValue){
  document.cookie = cName + "=" + cValue + ";"
}
