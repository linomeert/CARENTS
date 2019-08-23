class MessagesController < ApplicationController
  def new
    @message = Message.new
    @user = current_user
  end

  def create
    message = Message.new(message_params)
    conversation = Conversation.find(params[:conversation_id])
    message.sender_id = current_user.id
    message.conversation_id = params[:conversation_id]
    #if @message.save
    #  redirect_to conversations_path(conversation_id: @conversation)
    #else
    #  redirect_to conversations_path
    #end

    if message.save
        ActionCable.server.broadcast 'messages',
          message: message.content,
          user: message.sender.username
        head :ok
    end
  end

  private

  def message_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:message).permit(:content, :conversation_id)
  end
end
