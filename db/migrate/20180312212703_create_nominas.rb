class CreateNominas < ActiveRecord::Migration[5.0]
  def change
    create_table :nominas do |t|
      t.string :acreedor
      t.integer :n1
      t.integer :n2
      t.string :nombre
      t.string :apellido
      t.date :fecha
      t.decimal :pago
      t.string :id_acreedor

      t.timestamps
    end
  end
end
