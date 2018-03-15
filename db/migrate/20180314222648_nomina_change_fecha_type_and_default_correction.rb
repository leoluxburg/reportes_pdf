class NominaChangeFechaTypeAndDefaultCorrection < ActiveRecord::Migration[5.0]
  def change
    change_column(:nominas, :fecha, :date, default: { expr: "('now'::text)::date" })
  end
end
