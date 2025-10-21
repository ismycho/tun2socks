#!/bin/bash
set -e

# ⚙️ 설정값
SCHEME="lwip-macOS"                          # Xcode scheme 이름
PROJECT="tun2socks.xcodeproj"               # 프로젝트 파일(.xcworkspace도 가능)
FRAMEWORK_NAME="lwip"                  # 프레임워크 이름
OUTPUT_DIR="./build"                        # 출력 디렉토리
XCFRAMEWORK_OUTPUT="./${FRAMEWORK_NAME}.xcframework"

# 🔄 이전 결과 삭제
#rm -rf "$OUTPUT_DIR"
#rm -rf "$XCFRAMEWORK_OUTPUT"


# 📦 macOS (필요하다면)
xcodebuild archive \
  -project "$PROJECT" \
  -scheme "$SCHEME" \
  -sdk macosx \
  -archivePath "$OUTPUT_DIR/macos" \
  SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES

# 🏗️ xcframework 생성
xcodebuild -create-xcframework \
  -framework "$OUTPUT_DIR/macos.xcarchive/Products/Library/Frameworks/${FRAMEWORK_NAME}.framework" \
  -output "$XCFRAMEWORK_OUTPUT"
#xcodebuild -create-xcframework \
#  -library ./tun2socks.xcframework \
#  -headers ./Carthage/Checkouts/tun2socks \
#  -output tun2socks.xcframework

echo "✅ XCFramework 생성 완료: $XCFRAMEWORK_OUTPUT"

