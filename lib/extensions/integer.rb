class Integer

  def to_phone country_code = '1'
    return ToPhone::Parser.to_phone(self.to_s, country_code)
  end

end