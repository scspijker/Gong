#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name = "Gong"
  s.version = "0.2.1"
  s.summary = "Gong is a MIDI library for iOS and macOS."
  s.homepage = "https://github.com/dclelland/Gong"
  s.license = { :type => 'MIT' }
  s.author = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source = { :git => "https://github.com/dclelland/Gong.git", :tag => "0.2.1" }
  s.source_files = 'Sources/*.swift'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Sources/Core/**/*.swift', 'Sources/Extensions/**/*.swift'
    ss.frameworks = 'CoreMIDI'
  end

  s.subspec 'Events' do |ss|
    ss.source_files = 'Sources/Events/**/*.swift'
    ss.dependency 'Gong/Core'
  end

  s.ios.deployment_target= '8.0'
  s.osx.deployment_target= '10.10'
end
