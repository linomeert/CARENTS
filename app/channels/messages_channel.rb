class MessagesChannel < ApplicationCable::Channel
  def subscribed
    stream_for "conversation_#{params[:conversation_id]}"
  end
end
