//
//  ReactCallbackManager.h
//  ReactNativeTest
//
//  Created by Nipun on 12/7/18.
//  Copyright © 2018 paxcel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridge.h>

@protocol ReactCallBackmanagerProtocol <NSObject>

@optional

- (void) dismissModalView;

@end

@interface ReactCallbackManager : NSObject <RCTBridgeModule>
{
    
}

@property (nonatomic) RCTBridge *bridge;
@property (nonatomic, weak) id <ReactCallBackmanagerProtocol> actionDelegate;

@end

