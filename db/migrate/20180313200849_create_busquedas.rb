class CreateBusquedas < ActiveRecord::Migration[5.0]
  def change
    create_table :busquedas do |t|
      t.string :acreedor
      t.string :id_acreedor
      t.string :id_empleado
      t.date :date_from
      t.date :date_to

      t.timestamps
    end
  end
end
