class ConversationsController < ApplicationController
  def index
    @conversations_all = Conversation.all
    @conversations = @conversations_all.select{|convo|  convo.users.map(&:id).include? current_user.id }.sort {|a, b| b[:updated_at] <=> a[:updated_at]}
    @conversations_user = []
    @messages = Message.all.where('conversation': params[:id])

    @conversations.each do |conversation|
      if conversation.users.map(&:id).include? current_user.id
        @conversations_user << conversation
      end
    end
    @conversation = params[:conversation_id].nil? ? @conversations.last : Conversation.find(params[:conversation_id])
  end

  def show
    @conversation = Conversation.find(params[:id])
    @messages = @conversation.messages
    @message = Message.new
  end

  def new
    @conversation = Conversation.new
    @user = User.find(params[:user_id])
    @conversations_user = []
    @conversations = current_user.conversations
    @messages = Message.all.where('conversation': params[:id])


    #checking if conversations with user already exist
    # redirecting to conversation with user
   @existing_conversation =  @conversations.detect{|convo|  convo.users.map(&:id).include? @user.id }
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
end
