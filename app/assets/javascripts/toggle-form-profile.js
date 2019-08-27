const togglePopupBtn = document.getElementById("toggle-popup");

if (togglePopupBtn) {


  const closePopup = document.getElementById("close-popup");
  const blackout = document.getElementById("blackout");

  togglePopupBtn.addEventListener("click", (event) => {
    document.getElementById("blackout").classList.toggle("show-popup");
  });



  closePopup.addEventListener("click", (event) => {
    document.getElementById("blackout").classList.remove("show-popup");
    console.log("hello man")
  });

}
