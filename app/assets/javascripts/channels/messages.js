const conversationId = document.querySelector("#conversation-container").dataset.conversationId
const currentUser = document.querySelector("#conversation-container").dataset.currentUser

App[`conversation_${conversationId}`] = App.cable.subscriptions.create(
  { channel: "MessagesChannel", conversation_id: conversationId},
  {
  received: function(data) {
    $("#messages").removeClass('hidden')
    console.log(data)
    return $('#messages').append(this.renderMessage(data));

  },


  renderMessage: function(data) {
    window.scrollTo(0,document.querySelector("ul.chat").scrollHeight);

    console.log(currentUser)

    if (currentUser === data.user) {
      return "<div class='convo'> <div> <div class='chatblub'>" + data.message + "</div> " + "<span class='username'>" + "just now" + "</span> </div> </div>";
    }
    else {
      return "<div class='convo message-received'> <div> <div class='chatblub'>" + data.message + "</div> " + "<span class='username'>" + "just now" + "</span> </div> </div>";
    }

  }
});
