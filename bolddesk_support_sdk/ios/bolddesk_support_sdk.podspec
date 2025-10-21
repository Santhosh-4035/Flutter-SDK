#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint bolddesk_support_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'bolddesk_support_sdk'
  s.version          = '1.0.0'
  s.summary          = 'The SDK provides easy access to help your app end users'
  s.description      = <<-DESC
The SDK provides easy access to help your app end users
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '14.0'
    s.dependency 'BD-SDK-SAMPLE', '~> 1.0.3'
  s.ios.deployment_target = '14.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # If your plugin requires a privacy manifest, for example if it uses any
  # required reason APIs, update the PrivacyInfo.xcprivacy file to describe your
  # plugin's privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'bolddesk_support_sdk_privacy' => ['Resources/PrivacyInfo.xcprivacy']}
end
