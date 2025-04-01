Pod::Spec.new do |s|
  s.name         = "tun2socks"
  s.version      = "1.0.0"
  s.summary      = "A wrapper for MaxMind DB"
  s.description  = <<-DESC
                   A tiny wrapper for libmaxminddb which allows you to lookup
                   Geo data by IP address.
                   DESC

  s.homepage     = "https://github.com/ismycho/tun2socks"

  s.license      = { :type => "APACHE 2.0", :file => "LICENSE" }

  s.author             = { "Lex Tang" => "khw0212@hanmail.net" }
  s.social_media_url   = "https://twitter.com/lexrus"

  s.platform     = :ios, :osx

  s.swift_version = "5.0"
  s.ios.deployment_target = "13.0"
  s.osx.deployment_target = "11.10"

  s.source       = { :git => "https://github.com/ismycho/tun2socks.git",
                     :tag => s.version }

  s.source_files  = "tun2socks/*.swift", "tun2socks/*.{h,c}", "lwip/*.swift", "lwip/*.{h,c}"
  s.ios.public_header_files = "tun2socks-ios/*.h", "tun2socks-macOS/*.h", "lwip-ios/*.h", "lwip-macOS/*.h"

  s.framework  = "Foundation"
  s.requires_arc = true
end
