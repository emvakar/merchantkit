Pod::Spec.new do |spec|
    spec.platform = :ios
    spec.ios.deployment_target = "10.0"
    spec.swift_version = "4.1"
    spec.name = "MerchantKit"
    spec.summary = "A modern In-App Purchases management framework for iOS developers."
    spec.requires_arc = true

    spec.version = "0.4.0"

    spec.license = { :type => "MIT", :file => "LICENSE" }

    spec.author = { "Benjamin Mayo" => "me@benjaminmayo.co.uk" }

    spec.homepage = "http://github.com/benjaminmayo/merchantkit"

    spec.source = { :git => "https://github.com/benjaminmayo/merchantkit.git", :tag => "#{spec.version}"}

    spec.frameworks = "CoreFoundation", "StoreKit"
    spec.dependency "GRKOpenSSLFramework"

    spec.source_files = "Source/**/*.{h,swift}"

    spec.test_spec "Tests" do |test_spec|
        test_spec.source_files = "Tests/**/*.{h,swift}"
        test_spec.resources = "Tests/**/*.{json,data}"
    end
end
