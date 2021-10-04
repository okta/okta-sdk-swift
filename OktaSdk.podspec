Pod::Spec.new do |s|
  s.name = 'OktaSdk'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.version = '0.0.1'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v2.7.0' }
  s.homepage = 'https://github.com/okta/okta-sdk-swift'
  s.summary = 'OktaSdk Swift SDK'
  s.source_files = 'Sources/OktaSdk/ManagementAPI//**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.4.0'
end
