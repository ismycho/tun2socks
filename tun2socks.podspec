Pod::Spec.new do |s|
  s.name         = "tun2socks"
  s.version      = "1.0.0"
  s.summary      = "A lightweight tun2socks client based on lwIP"
  s.description  = <<-DESC
                   A tiny wrapper around lwIP and tun2socks for building iOS/macOS apps
                   with tun2socks functionality. Supports both Swift and C code integration.
                   DESC

  s.homepage     = "https://github.com/ismycho/tun2socks"
  s.license      = { :type => "Apache 2.0", :file => "LICENSE" }
  s.author       = { "Lex Tang" => "khw0212@hanmail.net" }
  s.social_media_url = "https://twitter.com/lexrus"

  s.platform     = :ios, "13.0"
  s.osx.deployment_target = "11.0"
  s.swift_version = "5.0"

  s.source       = { :git => "https://github.com/ismycho/tun2socks.git", :tag => s.version }

  # Swift + C source files
  s.source_files = [
    "tun2socks/**/*.{swift,h,c}",
    "lwip/**/*.{h,c}",
    "lwip-ios/**/*.h",
    "lwip-macOS/**/*.h",
    "tun2socks-ios/**/*.h",
    "tun2socks-macOS/**/*.h"
  ]

  # Public headers (iOS/macOS specific)
  s.public_header_files = [
    "lwip-ios/**/*.h",
    "lwip-macOS/**/*.h",
    "tun2socks-ios/**/*.h",
    "tun2socks-macOS/**/*.h"
  ]

  s.frameworks = "Foundation"
  s.requires_arc = true
end