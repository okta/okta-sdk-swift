Pod::Spec.new do |s|
  s.name = 'OktaSdk'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '3.0.0'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v3.0.0' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'OktaSdk Swift SDK'
  s.source_files = 'Sources/OktaSdk/ManagementAPI//**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.4.0'
end
