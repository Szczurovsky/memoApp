// gon.memes.map((x)=>{
//   console.log(x.id)
// })
const flexContainer = document.querySelector(".flexContainer")
const divNumber = document.querySelector(".divNumber");
const randomArrayInRange = (min, max, n) => Array.from({ length: n }, () => Math.floor(Math.random() * (max - min + 1)) + min);

let arrayNumbers = randomArrayInRange(10,99,10)
console.log(arrayNumbers)
let numbers = String(arrayNumbers.join(""));
divNumber.innerHTML = numbers

// arrayNumbers.map((numberek)=>{
//   numberek
// })
const arrayOfUrls = []
for (let i = 0; i < arrayNumbers.length; i++) {
  for (let j = 0; j < gon.memes.length; j++) {
    if(gon.memes[j].id==arrayNumbers[i]){
      arrayOfUrls.push({url:gon.memes[j].picture.thumb.url, id:gon.memes[j].id})
    }
  }
}

arrayOfUrls.map((x)=>{
  const container = document.createElement("div")
  container.classList.add("p-2")
  const image = document.createElement("img")
  image.src = `${x.url}`
  const div = document.createElement("p")
  div.innerHTML= x.id
  container.appendChild(image)
  container.appendChild(div)

  flexContainer.appendChild(container)
})

console.log(arrayOfUrls)
console.log(gon.memes)
