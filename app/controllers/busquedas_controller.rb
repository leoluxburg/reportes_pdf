class BusquedasController < ApplicationController
  def new
    @busqueda = Busqueda.new
  end

  def create
    # @busqueda = Busqueda.create(busqueda_params)
    # redirect_to @busqueda
    @busqueda = Busqueda.new(busqueda_params)
    if @busqueda.save
      redirect_to busqueda_path(@busqueda.id)
    else
      render :new
    end
  end

  def show
    @busqueda = Busqueda.find(params[:id])
  end

  private

  def busqueda_params
    params.require(:busqueda).permit(:acreedor, :id_acreedor, :id_empleado, :date_from, :date_to)
  end

end
