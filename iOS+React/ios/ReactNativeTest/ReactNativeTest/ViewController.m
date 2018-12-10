//
//  ViewController.m
//  ReactNativeTest
//
//  Created by Nipun on 12/4/18.
//  Copyright © 2018 paxcel. All rights reserved.
//

#import "ViewController.h"
#import "MyReactViewController.h"
@interface ViewController ()
{
    MyReactViewController *reactVC;
}

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)openReactNativeComponent:(id)sender
{
    reactVC = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ReatVC"];
    
    [self presentViewController:reactVC animated:YES completion:nil];
}


@end
