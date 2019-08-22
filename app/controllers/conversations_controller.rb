class ConversationsController < ApplicationController
  def index
    @conversations = Conversation.all
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
    @messages = Message.where('conversation': params[:id])
    @message = Message.new
  end

  def new
    @conversation = Conversation.new
    @user = User.find(params[:user_id])
    @conversations_user = []
    @conversations = Conversation.all
    @messages = Message.all.where('conversation': params[:id])

    #fetching my conversations

    @conversations.each do |conversation|
      if conversation.users.map(&:id).include? current_user.id
        @conversations_user << conversation
      end
    end

    # checking if conversations with user already exist

    if @conversations_user.map(&:user_ids).flatten.include? @user.id

      # selecting existing conversation with user

      @conversations.each do |conversation|
        if conversation.user_ids.include? @user.id
          @conversation_user = conversation
        end
      end
      # redirecting to conversation with user
     redirect_to conversation_path(@conversation_user)
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
