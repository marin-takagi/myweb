class ChangeColumnToContents < ActiveRecord::Migration[5.0]
  def change
    change_column :contacts, :body, :text
    remove_column :contacts, :picture, :string
  end
end
