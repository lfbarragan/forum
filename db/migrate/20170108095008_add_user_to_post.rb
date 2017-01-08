class AddUserToPost < ActiveRecord::Migration[5.0]
  def change
    add_reference :posts, :user, index: true, null: false
  end
end
