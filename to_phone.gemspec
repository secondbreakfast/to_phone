Gem::Specification.new do |s|
  s.name        = 'to_phone'
  s.version     = '0.0.1'
  s.date        = '2017-03-14'
  s.summary     = "Use .to_phone to get Phone objects."
  s.description = "Easily convert strings and numbers to Phone objects using .to_phone, plus some other cool Phone extensions!"
  s.authors     = ["Will Schreiber"]
  s.email       = 'w@lxv.io'
  s.files       = ["lib/to_phone.rb"]
  s.homepage    = 'https://rubygems.org/gems/to_phone'
  s.license     = 'MIT'
  s.add_runtime_dependency 'phone'
end