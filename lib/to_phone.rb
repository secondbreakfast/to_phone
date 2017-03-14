require 'phone'

require 'extensions/string'
require 'extensions/float'
require 'extensions/integer'
require 'extensions/nil'
require 'extensions/phone'


module ToPhone

  class Parser

    def self.to_phone number, country_code = '1'
      begin
        country_code = '1' if country_code.nil? || country_code.empty?
        country_code = country_code.to_s
        phone = Phoner::Phone.parse(number, country_code: country_code)
        return phone
      rescue Phoner::PhoneError
        return nil
      end
    end

  end

end