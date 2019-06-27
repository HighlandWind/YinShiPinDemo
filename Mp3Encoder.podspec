
Pod::Spec.new do |spec|

  spec.name         = "Mp3Encoder"
  spec.version      = "0.0.1"
  spec.summary      = "音视频组件化"

  spec.description  = <<-DESC
组件化测试
                   DESC

  spec.homepage     = "https://github.com/ArlenLiu/Mp3Encoder.git"

  spec.license      = "MIT"

  spec.author             = { "LiuGJ" => "arlenliugj@sina.cn" }

  spec.source       = { :git => "https://github.com/ArlenLiu/Mp3Encoder.git", :tag => "#{spec.version}" }

  spec.source_files  = "Mp3Encoder/utils/*.{h,m,mm,cpp}"
  spec.public_header_files = "Mp3Encoder/utils/*.h"

end
