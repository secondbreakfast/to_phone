class String

  def to_phone country_code = '1'
    return ToPhone::Parser.to_phone(self, country_code)
  end

end