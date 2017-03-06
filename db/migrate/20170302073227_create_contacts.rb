class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :title, :null => false
      t.string :body, :null => false
      t.string :picture

      t.timestamps
    end
  end
end
