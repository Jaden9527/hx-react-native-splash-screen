require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-splash-screen"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = 'Jaden'
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/Jaden9527/hx-react-native-splash-screen", :tag => "v#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  s.dependency "React-Core"
end
