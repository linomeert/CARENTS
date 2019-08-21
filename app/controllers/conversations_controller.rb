class ConversationsController < ApplicationController
  def show
    def show
    @chat_room = ChatRoom.includes(messages: :user).find(params[:id])
  end
  end
end
