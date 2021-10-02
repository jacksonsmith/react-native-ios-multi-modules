//
//  NavigatorBridgeModule.m
//  FirstModule
//
//  Created by Jackson on 23/09/21.
//

// CalendarManagerBridge.m
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(NavigatorModule, NSObject)

RCT_EXTERN_METHOD(navigate:(NSString *)route)

@end
