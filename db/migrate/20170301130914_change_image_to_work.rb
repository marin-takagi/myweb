class ChangeImageToWork < ActiveRecord::Migration[5.0]
  def change
    change_column :works, :image, :string
  end
end
