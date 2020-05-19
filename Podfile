# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
project 'LionRenderer2D.xcodeproj'
 
use_frameworks!

target 'Example' do
  platform :macos, '10.15'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:LionGameEngine/LionECS.git'
end

target 'LionRenderer2D_macOS' do
  platform :macos, '10.15'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:LionGameEngine/LionECS.git'

  # Pods for LionRenderer

  target 'LionRenderer2DTests' do
    # Pods for testing
  	inherit! :search_paths
  end
end

target 'LionRenderer2D_iOS' do
  platform :ios, '13.0'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:LionGameEngine/LionECS.git'
end

target 'LionRenderer2D_tvOS' do
  platform :tvos, '13.0'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:LionGameEngine/LionECS.git'
end

target 'LionRenderer2D_watchOS' do
  platform :watchos, '6.1'
  pod 'SwiftLint'
  pod 'LionECS', :git => 'git@github.com:LionGameEngine/LionECS.git'
end
