class AddPasswordDigestToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_digest, :string
    add_column :deliveries, :instructions, :text
  end
end
