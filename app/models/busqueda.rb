class Busqueda < ApplicationRecord
    attr_reader :date_from, :date_to

  def busqueda_nomina
    nominas = Nomina.all
    nominas = nominas.where("acreedor LIKE ?", "%#{acreedor}%") if acreedor.present?
    nominas = nominas.where("n2 LIKE ?", id_acreedor) if id_acreedor.present?
    nominas = nominas.where("n1 LIKE ?", id_empleado) if id_empleado.present?
    nominas = nominas.where("fecha BETWEEN ? AND ?", date_from, date_to) if date_from.present? and date_to.present?

    return nominas

  end

end
