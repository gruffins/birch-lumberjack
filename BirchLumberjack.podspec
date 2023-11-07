Pod::Spec.new do |s|
  s.name = 'BirchLumberjack'
  s.version = '1.2.0'
  s.summary = 'CocoaLumberjack wrapper for Birch.'
  s.homepage = 'https://github.com/gruffins/birch-lumberjack'
  s.license = { type: 'MIT', file: 'LICENSE' }
  s.author = { 'Ryan Fung' => 'ryan@ryanfung.com' }
  s.source = { git: 'https://github.com/gruffins/birch-lumberjack.git', tag: s.version.to_s }
  s.ios.deployment_target = '13.0'
  s.tvos.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.swift_version = '5.7'
  s.source_files = 'Sources/BirchLumberjack/*'
  s.dependency 'Birch'
  s.dependency 'CocoaLumberjack'
end
