class Filtro < ApplicationRecord

  def filtro_nomina
    nominas = Nomina.all
    nominas = nominas.where("acreedor LIKE ?", "%#{acreedor}%") if acreedor.present?
    nominas = nominas.where("n2 LIKE ?", id_acreedor) if id_acreedor.present?
    nominas = nominas.where("n1 LIKE ?", id_empleado) if id_empleado.present?
    nominas = nominas.where("fecha BETWEEN ? AND ?", fecha, fecha2) if fecha.present? and fecha2.present?

    return nominas

  end

end
