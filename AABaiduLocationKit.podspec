#
# Be sure to run `pod lib lint AABaiduLocationKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AABaiduLocationKit'
  s.version          = '2.0.2'
  s.summary          = '百度定位sdk，解决官方sdk在组件化中无法引入的问题'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wangdean/AABaiduLocationKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangdean' => '404926036@qq.com' }
  s.source           = { :git => 'https://github.com/wangdean/AABaiduLocationKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'AABaiduLocationKit/Classes/**/*'
  
#  s.source_files  = "AABaiduLocationKit/framework/*.framework/Headers/*.h"
  s.public_header_files = "AABaiduLocationKit/framework/*.framework/Headers/*.h"
  s.vendored_frameworks = "AABaiduLocationKit/framework/*.framework"
  s.frameworks = "CoreLocation", "Foundation", "UIKit", "SystemConfiguration", "AdSupport", "Security", "CoreTelephony"
  s.libraries = "sqlite3.0","c++"
end
