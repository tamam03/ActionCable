class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.integer :visitor_id, null: false
      t.integer :visited_id, null: false
      t.integer :post_id
      t.integer :comment_id
      t.string :action, default: '', null: false
      t.boolean :checked, default: false, null: false

      t.timestamps
    end
      add_index :tests, :visitor_id
      add_index :tests, :visited_id
      add_index :tests, :post_id
      add_index :tests, :comment_id
  end
end
