Pod::Spec.new do |s|
  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.name = "InterfaceUtilities"
  s.summary = "UI-related utilities for iOS applications."
  s.requires_arc = true
  s.version = "1.0.2"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.author = { "Hai Pham" => "swiften.svc@gmail.com" }
  s.homepage = "https://github.com/protoman92/InterfaceUtilities-Swift.git"
  s.source = { :git => "https://github.com/protoman92/InterfaceUtilities-Swift.git", :tag => "#{s.version}"}

  s.subspec 'Main' do |main|
    main.source_files = "InterfaceUtilities/**/*.{swift}"
  end
end
