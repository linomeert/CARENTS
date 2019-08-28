
const conversationContainer = document.querySelector("#conversation-container")

if( conversationContainer) {
  const conversationId = conversationContainer.dataset.conversationId
  const currentUser = conversationContainer.dataset.currentUser

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
      console.log(data.user)

      if (currentUser === data.user) {
        return "<div class='convo message-sent'> <div> <div class='chatblub'>" + data.message + "</div> " + "<span class='username'>" + "just now" + "</span> </div> </div>";
      }
      else {
        return "<div class='convo message-received'> <div> <div class='chatblub'>" + data.message + "</div> " + "<span class='username'>" + "just now" + "</span> </div> </div>";
      }

    }
  });
}


