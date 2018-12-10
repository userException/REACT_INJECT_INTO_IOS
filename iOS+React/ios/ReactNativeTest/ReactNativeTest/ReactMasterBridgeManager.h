//
//  ReactMasterBridgeManager.h
//  ReactNativeTest
//
//  Created by Nipun on 12/6/18.
//  Copyright © 2018 paxcel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>
#import <React/RCTRootView.h>

@interface ReactMasterBridgeManager : NSObject <RCTBridgeDelegate>
{
    
}


+ (id) sharedInstance;

- (RCTRootView *) viewForModuleName: (NSString *) mName initialProps: (NSDictionary *) props;

- (RCTBridge *) fireUpReactBridge;

- (id) nativeModuleForString: (NSString *) moduleName;

@property (nonatomic) RCTBridge *bridge;

@end

