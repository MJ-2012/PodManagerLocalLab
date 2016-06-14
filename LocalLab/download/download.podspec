#
#  Be sure to run `pod spec lint download.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|



  s.name         = "download"
  s.version      = "0.0.1"
  s.summary      = "A short description of download."


    s.description  = <<-DESC
                    download
                   DESC

  s.homepage     = "https://github.com/AliSoftware/Reusable"

  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  s.author             = { "MJ-2012" => "may@dingzai.com" }

  s.social_media_url   = "http://twitter.com/aligatr"


  s.requires_arc = true

  s.ios.deployment_target = "7.0"

  s.tvos.deployment_target = "9.0"


  s.source       = { :git => "https://github.com/AliSoftware/Reusable.git", :tag => s.version.to_s }


  s.source_files  = "Source", "Source/**/*.{h,m}"
 
  s.framework  = "download"

end
