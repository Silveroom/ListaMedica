class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :nombre, :string
    add_column :users, :apellido_paterno, :string
    add_column :users, :apellido_materno, :string
    add_column :users, :role, :integer
  end
end
