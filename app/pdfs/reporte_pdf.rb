class ReportePdf < Prawn::Document

  def initialize(reporte)
    @reportes = reporte
    super(top_margin: 70)
    muncipio_header
    table_maker
  end

  def muncipio_header
    text "Republica de Panama \n Municipio de San Miguelito", size: 20, style: :bold, align: :center
    # image "#{Prawn::DATADIR}/app/assets/images/municipio.jpg"
  end

  def table_maker
    move_down 80
    text "Lista de acreedores", align: :center
    table data_collector do
      row(0).font_style = :bold
      self.row_colors = [ "dddddd", "ffffff"  ]
    end
  end

  def data_collector
    [["Acreedores","1RA","2DA","Total"]] + @reportes.map do |data|
      [data.acreedor, data.pago, data.pago1, data.total]
    end
  end

end
