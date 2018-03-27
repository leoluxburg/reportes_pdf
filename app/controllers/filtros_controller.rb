class FiltrosController < ApplicationController
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

  private

  def filtro_params
    params.require(:filtro).permit(:acreedor, :id_acreedor, :id_empleado, :fecha, :fecha2)
  end
end
