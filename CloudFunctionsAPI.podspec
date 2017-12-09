Pod::Spec.new do |s|
  s.name             = "CloudFunctionsAPI"
  s.version          = "0.2.1"
  s.summary          = "Provides secure request between client and Cloud Functions"
  s.homepage         = "https://github.com/sgr-ksmt/CloudFunctionsAPI"
  s.license          = 'MIT'
  s.author           = { "Suguru Kishimoto" => "melodydance.k.s@gmail.com" }
  s.source           = { :git => "https://github.com/sgr-ksmt/CloudFunctionsAPI.git", :tag => s.version.to_s }
  s.platform         = :ios, '9.0'
  s.requires_arc     = true
  s.source_files     = "sources/**/*"
  s.dependency "APIKit"
end
