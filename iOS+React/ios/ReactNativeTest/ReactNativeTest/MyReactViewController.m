//
//  MyReactViewController.m
//  ReactNativeTest
//
//  Created by Nipun on 12/7/18.
//  Copyright © 2018 paxcel. All rights reserved.
//

#import "MyReactViewController.h"
#import <React/RCTRootView.h>
#import "ReactMasterBridgeManager.h"
#import "ReactCallbackManager.h"

@interface MyReactViewController () <ReactCallBackmanagerProtocol>
{
    RCTRootView *rootView;
}
@end

@implementation MyReactViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    rootView = [[ReactMasterBridgeManager sharedInstance] viewForModuleName:@"MySectionList" initialProps:@{}];
    
    id nativeModule = [[ReactMasterBridgeManager sharedInstance] nativeModuleForString:@"ReactCallbackManager"];
    
    [(ReactCallbackManager *)nativeModule setActionDelegate:self];
    
    [self.view addSubview:rootView];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    rootView.frame = self.view.frame;
}

#pragma mark - ReactCallBackmanagerProtocol

- (void)dismissModalView
{
    dispatch_async(dispatch_get_main_queue(), ^{
       [self dismissViewControllerAnimated:YES completion:nil];
    });
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
