class Busqueda < ApplicationRecord

  def busqueda_nomina

    nominas = Nomina.all
    nominas = nominas.where("acreedor LIKE ?", "%#{acreedor}%") if acreedor.present?
    nominas = nominas.where("n2 LIKE ?", id_acreedor) if id_acreedor.present?
    nominas = nominas.where("n1 LIKE ?", id_empleado) if id_empleado.present?
    # nominas = nominas.where("date_from LIKE", "%#{date_from}"), if date_from.present?
    # nominas = nominas.where("date_to LIKE", "%#{date_to}"), if date_to.present?

    return nominas

  end

end
