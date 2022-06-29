Pod::Spec.new do |s|
    s.name             = 'OktaSdk'
    s.version          = "0.1.0"
    s.summary          = "Okta Management SDK for Swift"
    s.description      = <<-DESC
Provides APIs for interacting with, and making changes on, an Okta organization.
                         DESC
    s.platforms = {
        :ios     => "15.0",
        :tvos    => "15.0",
        :osx     => "12.0"
    }
    s.ios.deployment_target     = "15.0"
    s.tvos.deployment_target    = "15.0"
    s.osx.deployment_target     = "12.0"

    s.homepage      = "https://github.com/okta/okta-sdk-swift"
    s.license       = { :type => "APACHE2", :file => "LICENSE" }
    s.authors       = { "Okta Developers" => "developer@okta.com"}
    s.source        = { :git => "https://github.com/okta/okta-sdk-swift.git", :tag => s.version.to_s }
    s.source_files  = "Sources/OktaSdk/**/*.swift"
    s.swift_version = "5.5"
    s.dependency 'AnyCodable-FlightSchool', '~> 0.4.0'
end
