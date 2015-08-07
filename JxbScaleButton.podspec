Pod::Spec.new do |s|

  s.name         = "JxbScaleButton"
  s.version      = "1.0"
  s.summary      = "A countdown button."
  s.homepage     = "https://github.com/JxbSir"
  s.license      = "Peter"
  s.author       = { "Peter" => "i@jxb.name" }
  s.requires_arc = true
  s.source       = { :git => "https://github.com/JxbSir/JxbScaleButton.git"  }
  s.source_files = "JxbScaleButton/JxbScaleButton/*.{h,m}"
  s.public_header_files = 'JxbScaleButton/JxbScaleButton/JxbScaleButton.h'
  s.frameworks   = 'UIKit'
end
