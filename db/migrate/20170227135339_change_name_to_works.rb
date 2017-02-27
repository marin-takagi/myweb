class ChangeNameToWorks < ActiveRecord::Migration[5.0]
  def change
    def up
      change_column :works, :name, :string, null: false
    end

    def down
      change_column :works, :name, :string, null: true
    end
  end
end
