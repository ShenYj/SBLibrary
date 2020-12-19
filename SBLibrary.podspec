#
# Be sure to run `pod lib lint SBLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SBLibrary'
  s.version          = '0.3.1'
  s.summary          = 'A lightweight Basic library of Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/ShenYj/SBLibrary'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'ShenYj' => 'shenyanjie123@foxmail.com' }
  s.source           = { :git => 'https://github.com/ShenYj/SBLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.default_subspec = ['Core', 'UI']
  s.swift_versions = ['5.1', '5.2', '5.3']
  s.requires_arc = true
  
  s.subspec "Core" do |ss|
    ss.source_files = ['SBLibrary/Classes/Core/*.swift', 'SBLibrary/Classes/Core/Protocol/*.swift']
    ss.framework  = "Foundation"
  end
  
  s.subspec "UI" do |ss|
    ss.source_files = ['SBLibrary/Classes/UI', 'SBLibrary/Classes/UI/Protocol']
    ss.framework  = "UIKit"
  end
  
  # s.resource_bundles = {
  #   'SBLibrary' => ['SBLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
