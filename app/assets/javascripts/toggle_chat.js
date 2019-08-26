console.log("hello")

const toggleBtn = document.getElementById("openclose");


toggleBtn.innerHTML = '<i class="far fa-arrow-alt-circle-right"></i>';

toggleBtn.addEventListener("click", (event) => {
  const chatProfile = document.getElementById("chat-profile");


  if (toggleBtn.innerHTML === '<i class="far fa-times-circle"></i>') {
      toggleBtn.innerHTML = '<i class="far fa-arrow-alt-circle-right"></i>';
    } else {
      toggleBtn.innerHTML = '<i class="far fa-times-circle"></i>';
  }

  document.getElementById("chat-profile").classList.toggle("chatclosed");
  document.getElementById("chat-profile").classList.toggle("chatopen");
  document.getElementById("contentchat").classList.toggle("chatcontentclosed");

});

window.addEventListener('load', (event) => {
  window.scrollTo(0,document.querySelector("ul.chat").scrollHeight);
});
