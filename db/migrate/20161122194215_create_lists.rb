class CreateLists < ActiveRecord::Migration[5.0]
  def change
    create_table :lists do |t|
      t.string :encargado
      t.string :fecha
      t.string :hora
      t.string :atendido
      t.references :patient, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
