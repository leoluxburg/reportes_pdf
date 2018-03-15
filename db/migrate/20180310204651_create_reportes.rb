class CreateReportes < ActiveRecord::Migration[5.0]
  def change
    create_table :reportes do |t|
      t.string :acreedor
      t.string :id_acreedor
      t.date :fecha
      t.decimal :pago
      t.decimal :pago1
      t.decimal :total

      t.timestamps
    end
  end
end
