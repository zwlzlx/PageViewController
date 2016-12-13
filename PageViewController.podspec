#
#  Be sure to run `pod spec lint PageViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "PageViewController"
  s.version      = "1.0.1"
  s.summary      = "a TabbarController"
  s.homepage     = "https://github.com/zwlzlx/PageViewController"
  s.license      = "MIT"
  s.author             = { "zwlzlx" => "zwlzlx@sina.com" }
  s.platform     = :ios,"5.0"
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  s.source       = { :git => "https://github.com/zwlzlx/PageViewController.git", :tag => "#{s.version}" }
  s.source_files  = "PageView/*.{h,m}"
  s.frameworks   = "Foundation"
  s.requires_arc = true
end
