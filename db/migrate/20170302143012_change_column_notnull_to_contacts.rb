class ChangeColumnNotnullToContacts < ActiveRecord::Migration[5.0]
  def up
    change_column :contacts, :title, :string, :null => true
    change_column :contacts, :body, :text, :null => true
  end

  def down
    change_column :contacts, :title, :string, :null => false
    change_column :contacts, :body, :text, :null => false
  end
end
