const photoboothEl = document.querySelector(".photobooth");

if(photoboothEl){
  photoboothEl.addEventListener("click", (event) => {
    event.target.classList.toggle("show");
  });
}
