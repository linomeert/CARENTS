class ConversationsController < ApplicationController
  def index
  end

  def show
    @conversation = Conversation.all
    @messages_send = Messages.all.where('receivers_id': current_user, 'status': nil)
  end

  def new
    @conversation = Conversation.new
    @conversation.user_ids << current_user
    @conversation.user_ids << params[:user_id]
    @conversation.save!
    raise

  end

  def create
    @conversation.save
  end
end
