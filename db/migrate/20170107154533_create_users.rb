class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :email, uniq: true

      t.timestamps
    end
  end
end
