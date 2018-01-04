class AddAttributeForUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :nickname, :string
  	add_column :users, :bio, :string
  	add_column :users, :rating, :integer
  end
end
