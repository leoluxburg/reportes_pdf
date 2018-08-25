class FiltroPdf < Prawn::Document

  def initialize(data)
    super(top_margin: 70)
    @data = data
    muncipio_header
    contenido
    table_maker
    total
    firmas
 end

  def muncipio_header
    text "Republica de Panama \n Municipio de San Miguelito \n Periodo #{@data.fecha} al #{@data.fecha2}", size: 15, align: :center
  end

  def contenido
    move_down 40
    banco = @data.filtro_nomina.first.acreedor
    n_cheque = @data.filtro_nomina.first.cheque
    clave =  @data.filtro_nomina.first.n1
    text "Proveedor: #{banco}"
    text "Numero de cheque: #{n_cheque}"
    text "Clave: #{clave}"
  end

  def table_maker
    move_down 20
    table data_collector do
      row(0).font_style = :bold
      self.row_colors = [ "dddddd", "ffffff"  ]
    end
  end

  def data_collector
      [["Posicion","Cedula","Nombre","Apellido","Fecha", "Pago"]] + @data.filtro_nomina.map do |data|
      [data.n2,"",data.nombre ,data.apellido,data.fecha, data.pago]
    end
  end

  def total
    move_down 5
    total = @data.total_pagos
    text "Total: #{total}", align: :right
  end

  def firmas
    move_down 40
    text "Recivido por: ___________________________________________"
    move_down 20
    text "Recivido por: ___________________________________________"
  end

end
