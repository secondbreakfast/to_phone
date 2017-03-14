class Phoner::Phone

  def formatted
    return self.country_code == '1' ? self.format(:us) : self.format(:europe)
  end

  def raw
    return self.to_s
  end

end