class AddColumnLinkToWork < ActiveRecord::Migration[5.0]
  def change
    add_column :Works, :link, :string
  end
end
