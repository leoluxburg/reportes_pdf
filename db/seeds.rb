# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
acreedores = [
  [ "Bac S.A.", "K12", 362.67, 362.67, 725.34 ],
  [ "Banesco S.A.", "GO4", 288.81, 190.18, 479.09],
  [ "Banistmo S.A.", "BO6", 1514.41, 1514.41, 3028.82 ]
]

acreedores.each do |acreedor, id, pago, pago1, total|
  Reporte.create( acreedor: acreedor, id_acreedor: id, pago: pago, pago1: pago1, total: total )
end
# Busqueda.create( acreedor: "Banistmo" )
