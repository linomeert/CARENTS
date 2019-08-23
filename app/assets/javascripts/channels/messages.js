var conversationId = document.querySelector("#conversation-container").dataset.conversationId
App[`conversation_${conversationId}`] = App.cable.subscriptions.create(
  { channel: "MessagesChannel", conversation_id: conversationId},
  {
  received: function(data) {
    $("#messages").removeClass('hidden')
    console.log(data)
    return $('#messages').append(this.renderMessage(data));
  },


  renderMessage: function(data) {
    var currentUser = document.cookie
    console.log(currentUser)
    console.log("username=" + data.user)

    if (currentUser === "username=" + data.user) {
      return "<div class='convo'> <div> <div class='chatblub'>" + data.message + "</div> " + "<span class='username'>" + data.user + "</span> </div> </div>";
    }
    else {
      return "<div class='convo message-received'> <div> <div class='chatblub'>" + data.message + "</div> " + "<span class='username'>" + data.user + "</span> </div> </div>";
    }

  }
});
