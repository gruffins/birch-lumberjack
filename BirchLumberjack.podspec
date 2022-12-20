Pod::Spec.new do |s|
  s.name = 'BirchLumberjack'
  s.version = '1.0.2'
  s.summary = 'CocoaLumberjack wrapper for Birch.'
  s.homepage = 'https://github.com/gruffins/birch-lumberjack'
  s.license = { type: 'MIT', file: 'LICENSE' }
  s.author = { 'Ryan Fung' => 'ryan@ryanfung.com' }
  s.source = { git: 'https://github.com/gruffins/birch-lumberjack.git', tag: s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.swift_version = '4.0'
  s.source_files = 'Sources/BirchLumberjack/*'
  s.dependency 'Birch'
  s.dependency 'CocoaLumberjack'
end
