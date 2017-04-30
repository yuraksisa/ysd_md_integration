Gem::Specification.new do |s|
  s.name    = "ysd_md_integration"
  s.version = "0.2.1"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2012-05-09"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb']
  s.summary = "A DattaMapper-based model for systems integration"
  s.homepage = "http://github.com/yuraksisa/ysd_md_integration"
    
  s.add_runtime_dependency "data_mapper", "1.2.0"
  s.add_runtime_dependency "ysd_md_audit"
  
end