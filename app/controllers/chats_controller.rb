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
    # user_idがログインユーザーかつpartner_idがパラムスからきたユーザー(=@partner)のChatを探す
    @chats_by_other = Chat.where(user_id: @partner.id, partner_id: current_user.id)
    # user_idがパラムスからきたユーザー(=@partner)かつpartner_idがログインユーザー
    @chats = @chats_by_myself.or(@chats_by_other)
    # リレーションオブジェクトたちを結合
    @chats = @chats.order(:created_at)
    古いものから順番に
  end

  private

  def chats_params

  end
end
