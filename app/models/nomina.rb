class Nomina < ApplicationRecord

# validates_format_of :fecha, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^Date must be in the following format: mm/dd/yyyy"

  def self.import(file)
    CSV.foreach(file.path, headers: true ) do |row|
      Nomina.create! row.to_hash
    end
  end
end
