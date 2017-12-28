class RenameAtributeForCommentTable < ActiveRecord::Migration[5.1]
  def change
	change_table :comments do |t|
		t.rename :post_id_id, :post_id
	end
  end
end
