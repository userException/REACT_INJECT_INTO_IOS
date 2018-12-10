//
//  ReactMasterBridgeManager.m
//  ReactNativeTest
//
//  Created by Nipun on 12/6/18.
//  Copyright © 2018 paxcel. All rights reserved.
//


#import "ReactMasterBridgeManager.h"

static ReactMasterBridgeManager *masterBridgeHadnler;

@implementation ReactMasterBridgeManager

+ (id)sharedInstance
{
    if (! masterBridgeHadnler)
    {
        masterBridgeHadnler = [[super allocWithZone:NULL] init];
    }
    
    return masterBridgeHadnler;
}

- (RCTBridge *) fireUpReactBridge
{
    if (_bridge == nil)
    {
        _bridge = [[RCTBridge alloc] initWithDelegate:self launchOptions:nil];
    }
    
    return _bridge;
}

- (RCTRootView *) viewForModuleName: (NSString *) mName initialProps: (NSDictionary *) props
{
    RCTBridge *createdBridge = [self fireUpReactBridge];
    
    RCTRootView *rootView = [[RCTRootView alloc] initWithBridge:createdBridge moduleName:mName initialProperties:props];
    
    return rootView;
}

- (id) nativeModuleForString: (NSString *) moduleName
{
    return [_bridge moduleForName:moduleName];
}

#pragma mark - RCTBridgeDelegate

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];
    
    return jsCodeLocation;
}

@end
