# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
project 'LionRenderer.xcodeproj'
 
use_frameworks!

target 'ExampleOSX' do
  platform :macos, '10.15'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:lewandowskit93/LionECS.git', :branch => 'develop'
end

target 'ExampleIOS' do
  platform :ios, '13.0'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:lewandowskit93/LionECS.git', :branch => 'develop'
end

target 'LionRenderer_macOS' do
  platform :macos, '10.15'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:lewandowskit93/LionECS.git', :branch => 'develop'

  # Pods for LionRenderer

  target 'LionRendererTests' do
    # Pods for testing
  	inherit! :search_paths
  end
end

target 'LionRenderer_iOS' do
  platform :ios, '13.0'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:lewandowskit93/LionECS.git', :branch => 'develop'
end

target 'LionRenderer_tvOS' do
  platform :tvos, '13.0'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:lewandowskit93/LionECS.git', :branch => 'develop'
end

target 'LionRenderer_watchOS' do
  platform :watchos, '6.1'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:lewandowskit93/LionECS.git', :branch => 'develop'
end
