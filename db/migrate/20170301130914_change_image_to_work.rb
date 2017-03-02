class ChangeImageToWork < ActiveRecord::Migration[5.0]
  def change
    change_column :Works, :image, :string
  end
end
