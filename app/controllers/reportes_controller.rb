class ReportesController < ApplicationController

  def index
    @reportes = Reporte.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportePdf.new(@reportes)
        send_data pdf.render, file_name: "lista_de_acreedores.pdf",
                              type:"application/pdf",
                              disposition: "inline"
      end
    end
  end

end
