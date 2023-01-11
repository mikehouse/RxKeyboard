Pod::Spec.new do |s|
  s.name             = 'RxKeyboard'
  s.version          = '0.9.0'
  s.summary          = 'Reactive Keyboard in iOS'
  s.homepage         = 'https://github.com/RxSwiftCommunity/RxKeyboard'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Suyeol Jeon' => 'devxoul@gmail.com' }
  s.source           = { :git => 'https://github.com/RxSwiftCommunity/RxKeyboard.git',
                         :tag => s.version.to_s }
  s.frameworks       = 'UIKit', 'Foundation'
  s.requires_arc     = true

  s.ios.deployment_target = '8.0'
  s.default_subspec       = 'Default'

  s.subspec 'Default' do |ss|
    ss.source_files     = 'Sources/**/*.swift'
    ss.dependency 'RxSwift', '>= 4.3.1'
    ss.dependency 'RxCocoa', '>= 4.3.1'
  end

  s.subspec 'Mini' do |ss|
    ss.source_files     = 'Sources/**/*.swift'
  end
end
