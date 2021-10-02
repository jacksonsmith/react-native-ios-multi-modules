#
# Be sure to run `pod lib lint SecondModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SecondModule'
  s.version          = '0.1.0'
  s.summary          = 'A short description of SecondModule.'
  
  react_native_version = "0.65.1"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Jackson/SecondModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jackson' => 'jackson.smith@sanar.com' }
  s.source           = { :git => 'https://github.com/Jackson/SecondModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files     = "ios/*.{c,h,m,mm,cpp,js,swift}"

    # React is split into a set of subspecs, these are the essentials

    s.dependency "React-Core", react_native_version
    s.dependency "React-Core/DevSupport", react_native_version
    s.dependency "React-Core/RCTWebSocket", react_native_version
    s.dependency "React-RCTActionSheet", react_native_version
    s.dependency "React-RCTAnimation", react_native_version
    s.dependency "React-RCTBlob", react_native_version
    s.dependency "React-RCTImage", react_native_version
    s.dependency "React-RCTLinking", react_native_version
    s.dependency "React-RCTNetwork", react_native_version
    s.dependency "React-RCTSettings", react_native_version
    s.dependency "React-RCTText", react_native_version
    s.dependency "React-RCTVibration", react_native_version
  

  
  s.resource_bundles = {
    'SecondModule' => ['ios/Assets/*.png', 'ios/*.js']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
