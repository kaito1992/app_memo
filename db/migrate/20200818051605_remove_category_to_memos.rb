class RemoveCategoryToMemos < ActiveRecord::Migration[6.0]
  def change
    remove_column :memos, :category, :string
  end
end
