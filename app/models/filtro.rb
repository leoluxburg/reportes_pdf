class Filtro < ApplicationRecord

  def filtro_nomina
    nominas = Nomina.all
    nominas = nominas.where("acreedor LIKE ?", "%#{acreedor}%") if acreedor.present?
    nominas = nominas.where("n2 LIKE ?", id_acreedor) if id_acreedor.present?
    nominas = nominas.where("n1 LIKE ?", id_empleado) if id_empleado.present?
    nominas = nominas.where("cheque LIKE ?", cheque) if cheque.present?
    nominas = nominas.where("fecha BETWEEN ? AND ?", fecha, fecha2) if fecha.present? and fecha2.present?

    return nominas
  end

  def total_en_quicenas
    nominas = Nomina.all
    nominas = nominas.where("fecha BETWEEN ? AND ?", fecha, fecha2) if fecha.present? and fecha2.present?

    q1 = []
    q2 = []
    nominas.each do |nomina|

      if nomina.fecha.day > 16
        q2 << nomina.pago
      else
        q1 << nomina.pago
      end

    end
    sum = 0
    sum2 = 0
    q1.each { |a| sum+=a }
    q2.each { |a| sum2+=a }
    return sum, sum2
  end

  def total_pagos
    nominas = Nomina.all
    nominas = nominas.where("acreedor LIKE ?", "%#{acreedor}%") if acreedor.present?
    nominas = nominas.where("n2 LIKE ?", id_acreedor) if id_acreedor.present?
    nominas = nominas.where("n1 LIKE ?", id_empleado) if id_empleado.present?
    nominas = nominas.where("cheque LIKE ?", cheque) if cheque.present?
    nominas = nominas.where("fecha BETWEEN ? AND ?", fecha, fecha2) if fecha.present? and fecha2.present?

    nominas

    pagos = []
    nominas.each do |nomina|
      pagos << nomina.pago
    end

    total = 0
    pagos.each { |a| total+=a }

    return total
  end



end
