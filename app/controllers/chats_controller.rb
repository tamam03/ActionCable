class ChatsController < ApplicationController
  def index
    # トークルーム一覧
    @my_chats = current_user.chats
    @chats_partners = User.where.not(user_id: current_user.id) 
    # where.not(山田)...山田以外を探してくれる
    # 今回の場合はログインユーザー以外のUserを探す
  end

  def show
    # トークルーム
    @partner = User.find(params[:id])
    @chats_by_myself = Chat.where(user_id: current_user.id, partner_id: @partner.id)
    user_idがログインユーザーかつpartner_idがパラムスからきたユーザーのChatを探す
  end
  
  private
  
  def chats_params
    
  end
end
