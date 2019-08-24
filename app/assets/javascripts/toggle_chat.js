const toggleBtn = document.getElementById("openclose");


toggleBtn.innerHTML = '<i class="far fa-times-circle"></i>';

toggleBtn.addEventListener("click", (event) => {
  const chatProfile = document.getElementById("chat-profile");


  if (toggleBtn.innerHTML === '<i class="far fa-times-circle"></i>') {
      toggleBtn.innerHTML = '<i class="far fa-arrow-alt-circle-right"></i>';
    } else {
      toggleBtn.innerHTML = '<i class="far fa-times-circle"></i>';
      console.log("should change now");
  }

  document.getElementById("chat-profile").classList.toggle("chatclosed");
  document.getElementById("chat-profile").classList.toggle("chatopen");
  document.getElementById("contentchat").classList.toggle("chatcontentclosed");

});
