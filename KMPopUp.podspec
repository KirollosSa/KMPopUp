#
# Be sure to run `pod lib lint KMPopUp.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KMPopUp'
  s.version          = '1.1.4'
  s.summary          = 'Show Your Message in Popup Message With Duration and Image .'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Show Your Message in Popup Message With Duration and Image , Install this pod , you never have to write this generic code again .
                       DESC

  s.homepage         = 'https://github.com/KirollosSa/-KMPopUp'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kirollos Maged' => 'kerolosmagid@gmail.com' }
  s.source           = { :git => 'https://github.com/KirollosSa/-KMPopUp.git', :branch => "master", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'KMPopUp/Classes/**/*'


  # s.resource_bundles = {
  #   'KMPopUp' => ['KMPopUp/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
   s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
