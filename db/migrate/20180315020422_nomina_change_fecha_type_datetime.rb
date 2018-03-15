class NominaChangeFechaTypeDatetime < ActiveRecord::Migration[5.0]
  def change
    change_column(:nominas, :fecha, :datetime)
  end
end
