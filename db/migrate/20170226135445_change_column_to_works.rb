class ChangeColumnToWorks < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :name, :string, null: true
    add_column :works, :contents, :string
    add_column :works, :image, :binary
  end
end
