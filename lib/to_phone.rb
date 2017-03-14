require 'phone'

class String

  def to_phone country_code = '1'
    begin
      country_code = '1' if country_code.nil? || country_code.empty?
      country_code = country_code.to_s
      phone = Phoner::Phone.parse(self, country_code: country_code)
      return phone
    rescue Phoner::PhoneError
      return nil
    end
  end

end

class Integer
  def to_phone country_code = '1'
    self.to_s.to_phone(country_code)
  end
end

class Float
  def to_phone country_code = '1'
    self.to_s.to_phone(country_code)
  end
end

class NilClass
  def to_phone country_code = '1'
    return nil
  end
end

class Phoner::Phone

  def local_f
    return self.country_code == '1' ? self.format(:us) : self.format(:europe)
  end

end