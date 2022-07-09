class AddItemToTests < ActiveRecord::Migration[6.1]
  def up
    remove_index :tests, :post_id
    add_index    :tests, :item_id
  end

  def down
    remove_index :tests, :post_id
    add_index    :tests, :item_id
  end
end
