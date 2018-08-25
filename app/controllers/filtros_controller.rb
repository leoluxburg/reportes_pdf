class FiltrosController < ApplicationController
  before_action :find_filtro, only: [ :reporte_cheque ]
  def new
    @filtro = Filtro.new
  end

  def create
    # @busqueda = Busqueda.create(busqueda_params)
    # redirect_to @busqueda
    @filtro = Filtro.new(filtro_params)
    if @filtro.save
      redirect_to filtro_path(@filtro.id)
    else
      render :new
    end
  end

  def show
    @filtro = Filtro.find(params[:id])
  end

  def reporte_cheque
    @data = @filtro
    respond_to do |format|
      format.html
      format.pdf do
        pdf = FiltroPdf.new(@data)
        send_data pdf.render, filename: "reporte_cheque#{@data.id}.pdf",
                              type: "application/pdf",
                              disposition: "inline"
      end
    end
  end

  private

  def filtro_params
    params.require(:filtro).permit(:acreedor, :id_acreedor, :id_empleado,:cheque, :fecha, :fecha2)
  end

  def find_filtro
    @filtro = Filtro.find(params[:id])
  end
end
