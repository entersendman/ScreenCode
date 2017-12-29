class AddCodeToPost < ActiveRecord::Migration[5.1]
  def change
  	add_column :posts, :code, :string
  end
end
