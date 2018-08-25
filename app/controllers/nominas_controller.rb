
class NominasController < ApplicationController
  attr_accessor :acreedor, :n1, :n2, :nombre, :apellido, :fecha, :pago, :id_acreedor

  def index
     # @nominas  = Nomina.all
     # @search = NominaSearch.new(params[:search])
     # @nominas = @search.scope
     @nominas = Nomina.where("acreedor LIKE ?", "%#{params[:search]}%")

  end

  def edit
    @nomina = Nomina.find(params[:id])
  end


  def update
    @nomina = Nomina.find(params[:id])
    @nomina.update(rider_params)
    redirect_to root_path

  end

  def import
    Nomina.import(params[:file])
    redirect_to root_url, notice: "Imported"
  end

   def rider_params
    params.require(:nomina).permit(:cheque)
  end

end
