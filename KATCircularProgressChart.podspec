#
# Be sure to run `pod lib lint KATCircularProgressChart.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KATCircularProgressChart'
  s.version          = '1.0.0'
  s.summary          = 'A custome subclass on UIView to provide animated circular progress chart.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!


s.description      = <<-DESC
                   This CocoaPod provide the ability to animated circular doughnut type progress chart.

                       DESC

  s.homepage         = 'https://github.com/TharinduKetipe/KATCircularProgressChart'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TharinduKetipe' => 'katramesh91@gmail.com' }
  s.source           = { :git => 'https://github.com/TharinduKetipe/KATCircularProgressChart.git', :tag => s.version.to_s }
   s.social_media_url = 'https://twitter.com/Kat_sper'

  #s.ios.deployment_target = '8.0'

  s.source_files = 'KATCircularProgressChart/Classes/**/*'
  
  # s.resource_bundles = {
  #   'KATCircularProgressChart' => ['KATCircularProgressChart/Assets/*.png']
  # }

  #s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
