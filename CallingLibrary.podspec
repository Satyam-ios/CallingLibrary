#
# Be sure to run `pod lib lint CallingLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CallingLibrary'
  s.version          = '0.1.3'
  s.summary          = 'This project will add to calling ,sms and email functionality.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This project will add to calling ,sms and email functionality.Just import the library and you can easy call,sms and email functionality
                       DESC

  s.homepage         = 'https://github.com/Satyam-ios/CallingLibrary'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Satyam Kumar' => 'satyam.kumar@vgroup.net' }
  s.source           = { :git => 'https://github.com/Satyam-ios/CallingLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
#https://github.com/Satyam-ios/CallingLibrary
  s.ios.deployment_target = '11.0'

#publish time to change the framework
  s.source_files = 'CallingLibrary/Classes/**/*'
  
  # Specify the location of the precompiled binaries
  #run time to change the sourcefile
  #  s.vendored_frameworks = 'CallingLibrary.xcframework'
  
  #s.source_files = 'Classes/**/*'
  s.swift_version = '5.0'
  #s.platforms = {
  #    "ios" = "11.0"
  #}
  
   #s.resource_bundles = {
   #  'CallingLibrary' => ['CallingLibrary/Assets/*.png']
   #}

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'TwilioVoice';
  # s.dependency 'AFNetworking', '~> 2.3'
end
