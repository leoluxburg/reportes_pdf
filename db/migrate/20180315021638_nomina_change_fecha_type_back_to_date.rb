class NominaChangeFechaTypeBackToDate < ActiveRecord::Migration[5.0]
  def change
    change_column(:nominas, :fecha, :date)
  end
end
