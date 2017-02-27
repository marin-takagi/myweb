class ChangeName2ToWorks < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :works, :name, :string, null: false
    end
  end
end
