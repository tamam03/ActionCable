class CreateChats < ActiveRecord::Migration[6.1]
  def change
    create_table :chats do |t|
      t.integer :user_id
      t.integer :partner_id
      t.text :sentence
      t.timestamps
    end
  end
end
