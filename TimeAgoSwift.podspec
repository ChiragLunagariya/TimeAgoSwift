Pod::Spec.new do |s|
  s.name = 'TimeAgoSwift'
  s.version = '1.0'
  s.license = 'Apache-2.0'
  s.summary = 'Time ago library for swift for displaying sec ago in string'
  s.homepage = 'https://www.spaceotechnologies.com/'
  s.authors = { 'Space-O Technologies' => 'chiragl.spaceo@gmail.com' }
  s.source = { :git => 'https://github.com/ChiragLunagariya/TimeAgoSwift.git', :tag => s.version }

  s.ios.deployment_target = '8.0'
  s.source_files = 'TimeAgo/*'
end
