Pod::Spec.new do |spec|
  spec.name					= "QQ_XGVIPPush"
  spec.version					= "1.0.0.2"
  spec.summary					= "腾讯信鸽（XG Push）"
  spec.homepage					= "http://xg.qq.com"
  spec.authors					= "tencent TEG"
  spec.license					= "MIT"
  spec.platform					= :ios, "6.0"
  spec.frameworks				= "CFNetwork", "SystemConfiguration", "CoreTelephony", "CoreGraphics", "Foundation", "UserNotifications"
  spec.libraries				= "z", "sqlite3"
  spec.source					= { :git => "https://github.com/xingePush/cocoapods-xg-vip.git", :tag => spec.version }
  spec.source_files				= "XGVIPPush/*.h"
  spec.vendored_libraries			= "XGVIPPush/*.a"
end
