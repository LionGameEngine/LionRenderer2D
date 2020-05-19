Pod::Spec.new do |spec|
  spec.name         = "LionRenderer2D"
  spec.version      = "0.0.2"
  spec.summary      = "Multiplatform 2D rendering engine for LionECS written in Swift"
  spec.homepage     = "https://github.com/LionGameEngine/LionRenderer2D"
  spec.license      = { :type => "MIT", :file => "LICENSE.md" }
  spec.author       = { "Tomasz Lewandowski" => "tomasz.t.lewandowski@gmail.com" }
  spec.source       = { :git => "https://github.com/LionGameEngine/LionRenderer2D.git", :tag => "#{spec.version}" }
  spec.source_files  = "LionRenderer2D/**/*.swift"
  spec.swift_versions = "5.0"
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.tvos.deployment_target = '13.0'
  spec.watchos.deployment_target = '6.1'
  spec.dependency "LionECS", "~> 0.0.2"
end
