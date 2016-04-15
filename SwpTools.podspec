

Pod::Spec.new do |s|

  s.name                  = "SwpTools"
  s.version               = "1.0.0"
  s.ios.deployment_target = '7.0'
  s.summary               = " 一些常用的工具方法 "
  s.homepage              = "https://github.com/swp-song/SwpTools"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "swp-song" => "396587868@qq.com" }
  s.source                = { :git => "https://github.com/swp-song/SwpTools.git", :tag => s.version }
  s.source_files          = "SwpTools/Header"
  s.requires_arc          = true
  #s.vendored_libraries    = "SwpTools/*.a"
  s.framework             = "UIKit", "Foundation"

end
