
Pod::Spec.new do |s|

  s.name         = "XMLYSDK"
  s.version      = "1.0.1"
  s.summary      = "XMLYSDK"

  s.description  = "喜马拉雅开放平台SDK."

  s.homepage     = "https://github.com/duxinfeng/XMLYSDK"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "duxinfeng" => "duxinfeng99@gmail.com" }
  
  s.social_media_url = "https://twitter.com/iduxinfeng"

  s.ios.deployment_target = "8.0"

  s.source       = { :git => "https://github.com/duxinfeng/XMLYSDK.git", :tag => "#{s.version}" }

  # s.source_files  = "SDK", "SDK/**/*.{h,m}"
  s.resources    = 'SDK/include/Resource/*.{png,xib,nib,bundle}'
  s.vendored_libraries  = 'SDK/**/*.a'
  # s.public_header_files = "SDK/**/*.h"

  s.subspec 'Authorization' do |ss|
    ss.source_files = 'SDK/include/Authorization/**/*.{h,m}'
    ss.public_header_files = 'SDK/include/Authorization/**/*.h'
  end

  s.subspec 'Downloader' do |ss|
    ss.source_files = 'SDK/include/Downloader/**/*.{h,m}'
    ss.public_header_files = 'SDK/include/Downloader/**/*.h'
  end

  s.subspec 'Player' do |ss|
    ss.source_files = 'SDK/include/Player/**/*.{h,m}'
    ss.public_header_files = 'SDK/include/Player/**/*.h'
  end

  s.subspec 'Request' do |ss|
    ss.source_files = 'SDK/include/Request/**/*.{h,m}'
    ss.public_header_files = 'SDK/include/Request/**/*.h'
  end

  s.subspec 'Model' do |ss|
    ss.source_files = 'SDK/include/Model/**/*.{h,m}'
    ss.public_header_files = 'SDK/include/Model/**/*.h'
  end

  s.subspec 'Utility' do |ss|
    ss.source_files = 'SDK/include/Utility/**/*.{h,m}'
    ss.public_header_files = 'SDK/include/Utility/**/*.h'
  end

  s.compiler_flags = '-ObjC'
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'Foundation', 'UIKit'
  s.libraries = 'z.1', 'sqlite3'
  s.dependency 'MBProgressHUD'
  s.dependency 'FMDB'

end
