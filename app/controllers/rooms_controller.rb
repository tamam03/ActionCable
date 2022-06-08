class RoomsController < ApplicationController
  def show
    @chat = Chat.includes(:user).order(:id)
    @chat = current_user.chats.build
  end
end
