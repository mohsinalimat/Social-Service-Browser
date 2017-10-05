Pod::Spec.new do |s|
  s.name     = 'SocialServiceBrowser'

  s.version  = '0.0.1'
  s.license  = 'Apache License, Version 2.0'
  s.summary  = 'SocialServiceBrowser provides a simple way to browse, preview and import files from external services like Dropbox.'
  s.homepage = 'https://github.com/inspace-io/Social-Service-Browser'
  s.authors  = 'Michał Zaborowski'
  s.source   = { :git => 'https://github.com/inspace-io/Social-Service-Browser.git', :tag => s.version.to_s }
  s.requires_arc = true

  s.resource_bundle = { 
  	'xibs' => ['Sources/**/*.{xib}'],
  	'assets' => ['Sources/**/*.{xcassets}']  
  }
  s.source_files = 'Sources/*.{swift}'
  
  s.platform = :ios, '9.0'
  s.frameworks = 'UIKit', 'Foundation'

  s.subspec 'Dropbox' do |ss|
    ss.source_files = 'Sources/Clients/SocialServiceBrowserDropboxClient.swift'
    ss.dependency 'SwiftyDropbox'
  end

end
