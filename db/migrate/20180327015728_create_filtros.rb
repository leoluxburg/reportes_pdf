class CreateFiltros < ActiveRecord::Migration[5.0]
  def change
    create_table :filtros do |t|
      t.string :acreedor
      t.string :id_acreedor
      t.string :id_empleado
      t.date :fecha
      t.date :fecha2

      t.timestamps
    end
  end
end
