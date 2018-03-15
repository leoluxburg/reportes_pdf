class NominasController < ApplicationController
  attr_accessor :acreedor, :n1, :n2, :nombre, :apellido, :fecha, :pago, :id_acreedor

  def index
     # @nominas  = Nomina.all
     @search = NominaSearch.new(params[:search])
     @nominas = @search.scope
     # @searchit = NominaSearch.new(params[:searchit])
     # @nominas = Nomina.where("acreedor LIKE ?", "%#{params[:search]}%")

  end

  def import
    Nomina.import(params[:file])
    redirect_to root_url, notice: "Imported"
  end

end
