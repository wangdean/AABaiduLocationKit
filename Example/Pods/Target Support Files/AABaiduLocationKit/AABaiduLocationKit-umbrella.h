#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "BMKGeoFenceManager.h"
#import "BMKGeoFenceRegion.h"
#import "BMKLocation.h"
#import "BMKLocationAuth.h"
#import "BMKLocationComponent.h"
#import "BMKLocationKitVersion.h"
#import "BMKLocationManager.h"
#import "BMKLocationPoi.h"
#import "BMKLocationPoiRegion.h"
#import "BMKLocationReGeocode.h"

FOUNDATION_EXPORT double AABaiduLocationKitVersionNumber;
FOUNDATION_EXPORT const unsigned char AABaiduLocationKitVersionString[];

