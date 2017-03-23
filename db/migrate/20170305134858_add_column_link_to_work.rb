class AddColumnLinkToWork < ActiveRecord::Migration[5.0]
  def change
    add_column :works, :link, :string
  end
end
