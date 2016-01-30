class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :primerN
      t.string :segundoN
      t.string :primerA
      t.string :segundoA
      t.integer :edad
      t.string :direccion
      t.integer :telefono

      t.timestamps
    end
  end
end
