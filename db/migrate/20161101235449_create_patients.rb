class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :nombre
      t.string :appaterno
      t.string :apmaterno
      t.string :direccion
      t.string :numerotel
      t.timestamps
    end
  end
end
