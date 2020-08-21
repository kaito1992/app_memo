class AddCategoryToMemos < ActiveRecord::Migration[6.0]
  def change
    add_column :memos, :category, :string
  end
end
