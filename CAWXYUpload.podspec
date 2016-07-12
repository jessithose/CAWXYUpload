#
# Be sure to run `pod lib lint CASDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'CAWXYUpload'
  s.version          = '1.1.3.3'
  s.summary          = 'CAWXYUpload'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
万象优图上传图片SDK, 不支持bitcode，支持真机+模拟器。
                       DESC

  s.homepage         = 'https://www.qcloud.com/product/ci.html#price'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'Copyright', :text => 'Copyright © 2016 Crazyant Games. All Rights Reserved.' }
  s.author           = { 'Jessi' => 'sujx@feiyu.com' }
  s.source           = { :git => 'https://github.com/jessithose/CAWXYUpload.git', :tag => s.version.to_s }

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.1'

  casdk_dir = 'CAWXYUpload1.1..3.3'
  pod_name = 'CAWXYUpload'

s.source_files =
"#{casdk_dir}/*.h"

s.preserve_paths =
"#{casdk_dir}/libTXYUploader.a"

s.libraries =
"stdc++.6"

s.xcconfig = {
"LIBRARY_SEARCH_PATHS" => "$(PODS_ROOT)/#{pod_name}/#{casdk_dir}/**"
}

s.frameworks =
"SystemConfiguration",
"CoreTelephony"

s.vendored_libraries = 
  "#{casdk_dir}/libTXYUploader.a"

end
