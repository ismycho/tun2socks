
// tun2socks.h (umbrella header)
#if __has_include(<TargetConditionals.h>)
#  include <TargetConditionals.h>
#endif

#if TARGET_OS_OSX
    // macOS 앱/프레임워크
    #import <Cocoa/Cocoa.h>
#elif TARGET_OS_MACCATALYST
    // Mac Catalyst (iOS 앱이 Mac에서 돌아가는 환경)
    #import <UIKit/UIKit.h>
#elif TARGET_OS_IPHONE
    // iOS / iPadOS / tvOS / watchOS
    #import <UIKit/UIKit.h>
#else
    // 최소 의존성만 (CLI/기타)
    #import <Foundation/Foundation.h>
#endif
//! Project version number for tun2socks.
FOUNDATION_EXPORT double tun2socksVersionNumber;

//! Project version string for tun2socks.
FOUNDATION_EXPORT const unsigned char tun2socksVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <tun2socks/PublicHeader.h>
