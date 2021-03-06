class ConversationsController < ApplicationController

  def index
    @conversations = current_user.conversations.eager_load(:users).order('conversations.updated_at DESC')
    @conversation = params[:conversation_id].nil? ? @conversations.first : Conversation.find(params[:conversation_id])
    @messages = Message.eager_load(:sender).where(conversation: @conversation).order('messages.created_at ASC')

  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
    @message = Message.new
    @playdate = Playdate.new

  end

  def new
    @conversation = Conversation.new
    @user = User.find(params[:user_id])
    @conversations_user = []
    @conversations = current_user.conversations
    @messages = Message.all.where('conversation': params[:id])


    #checking if conversations with user already exist
    # redirecting to conversation with user
    @existing_conversation = @conversations.detect{|convo|  convo.users.map(&:id).include? @user.id }
    if @existing_conversation
    redirect_to conversations_path(conversation_id:  @existing_conversation)
    return
    end

  end

  def create
    @conversation = Conversation.new
    @conversation.users << current_user
    @conversation.users << User.find(params[:user_id])
    @conversation.save
    redirect_to conversations_path
  end

  def destroy
    @conversation = Conversation.find(params[:slug])
    @conversation.messages.destroy_all
    @conversation.destroy
    redirect_to conversations_path
  end
end
