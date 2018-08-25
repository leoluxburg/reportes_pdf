class AddChequeToFiltros < ActiveRecord::Migration[5.0]
  def change
    add_column :filtros, :cheque, :string
  end
end
