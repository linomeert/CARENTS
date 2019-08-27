const toggleProfileBtn = document.getElementById("toggle-form");


if(toggleProfileBtn){
  toggleProfileBtn.addEventListener("click", (event) => {
    document.getElementById("banner-profile-form").classList.toggle("show-form");
  });
}




