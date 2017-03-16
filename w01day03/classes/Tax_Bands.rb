class Tax_Bands
# static  add self.
# library off functions
  def self.get_tax_band engine_size
    if engine_size > 4
      "A"
    elsif engine_size >3
      "B"
    elsif engine_size > 2
      "C"
    else
      "D"

    end
  end
end
