//
//  ReactCallbackManager.m
//  ReactNativeTest
//
//  Created by Nipun on 12/7/18.
//  Copyright © 2018 paxcel. All rights reserved.
//

#import "ReactCallbackManager.h"
#import "ReactMasterBridgeManager.h"

@implementation ReactCallbackManager

RCT_EXPORT_MODULE()

// This is an exported method that is available in JS.
RCT_EXPORT_METHOD(dismissModalView) {
    
    [_actionDelegate dismissModalView];
}

@end
