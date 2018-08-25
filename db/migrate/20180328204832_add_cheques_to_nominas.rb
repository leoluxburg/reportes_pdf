class AddChequesToNominas < ActiveRecord::Migration[5.0]
  def change
    add_column :nominas, :cheque, :string
  end
end
