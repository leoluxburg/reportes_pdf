class ChangeN1N2DataType < ActiveRecord::Migration[5.0]
  def change
    change_column(:nominas, :n1, :string)
    change_column(:nominas, :n2, :string)
  end
end
