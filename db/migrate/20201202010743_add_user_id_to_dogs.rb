class AddUserIdToDogs < ActiveRecord::Migration[5.2]
  def change
    # Associate dogs with owners
    add_column :dogs, :user_id, :integer
    add_index :dogs, :user_id
  end
end
