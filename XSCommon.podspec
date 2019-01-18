Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "XSCommon"
  s.version      = "0.0.1"
  s.swift_version = '4.0'
  s.license      = 'MIT'
  s.summary      = "common method"
  s.homepage     = "https://github.com/Smiley1994/XSCommon"
  s.author       = { 'SUNNNNMacro' => 'smileysun1994@gmail.com' }
  s.ios.deployment_target = '9.0'

  s.source_files = "XSCommon/**/*.{h,m,swift}"
  s.source   = { :git => 'https://github.com/Smiley1994/XSCommon.git', :tag => s.version, :submodules => true }
  s.requires_arc = true

end
