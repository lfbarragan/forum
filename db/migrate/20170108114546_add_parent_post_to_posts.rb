class AddParentPostToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :parent_id, :int, index: true
  end
end
