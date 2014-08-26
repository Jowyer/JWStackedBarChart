#
# Be sure to run `pod lib lint JWStackedBarChart.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "JWStackedBarChart"
  s.version          = "0.1.1"
  s.summary          = "A implementation of Stacked Bar Chart."
  s.description      = "Consists of several bar segments. Each bar segment can set Value and Color. Will be shown with a  percentage label on the graph."
  s.homepage         = "https://github.com/Jowyer/JWStackedBarChart"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Jowyer" => "jowyer@gmail.com" }
  s.source           = { :git => "https://github.com/Jowyer/JWStackedBarChart.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resource_bundles = {
    'JWStackedBarChart' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
