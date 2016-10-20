//
//  LogCustomDataViewController.m
//  SPRT-iOS-sdk-sample
//
//  Created by Audumbar on 06/10/16.
//  Copyright © 2016 Ashish. All rights reserved.
//

#import "LogCustomDataViewController.h"
#import <SupportcomCloudSDK/SupportcomCloudSDK.h>
#import <sys/utsname.h>

@interface LogCustomDataViewController ()

@end

@implementation LogCustomDataViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect contentRect = CGRectZero;
    for (UIView *view in self.scrollview.subviews) {
        contentRect = CGRectUnion(contentRect, view.frame);
    }
    self.scrollview.contentSize = contentRect.size;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)logDeviceInfo:(id)sender {
    NSDictionary* dictionary = [NSDictionary dictionaryWithObjectsAndKeys:[UIDevice currentDevice].systemVersion,@"OS Version",[self deviceName],@"Phone Model",nil];
    [[SupportcomCloudSDK sharedInstance] logDevice:@"IOS" withData:dictionary];
    [_deviceInfoTextView setHidden:false];
    _deviceInfoTextView.text = dictionary.description;
    
    [_deviceInfoButton setHidden:YES];
    
    [self.view layoutIfNeeded];
    self.deviceInfoTextFieldHeight.constant = 100;
    [UIView animateWithDuration:0.5 delay:0 options:(UIViewAnimationCurveEaseOut | UIViewAnimationOptionCurveEaseOut)
                     animations:^{
                         [self.view layoutIfNeeded];
                     }
                     completion:^(BOOL finished){
                         
                     }];

}

- (IBAction)logAppInfo:(id)sender {
    NSDictionary* dictionary = [NSDictionary dictionaryWithObjectsAndKeys:@"Sample App", @"App Name", @"1.0",@"App Version",@"No",@"Signed In", @"1", @"Profiles",nil];
    [_appInfoTextView setHidden:FALSE];
    _appInfoTextView.text = dictionary.description;
    [[SupportcomCloudSDK sharedInstance] logContent:@"Sample App" withData:dictionary];
    [_appInfoButton setHidden:YES];
    [self.view layoutIfNeeded];
     self.appInfoTextFieldHeight.constant = 100;
    [UIView animateWithDuration:0.5 delay:0 options:(UIViewAnimationCurveEaseOut | UIViewAnimationOptionCurveEaseOut)
                     animations:^{
                         [self.view layoutIfNeeded];
                     }
                     completion:^(BOOL finished){
                         
                     }];
}

- (IBAction)doneClicked:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}
                                
- (NSString*) deviceName
{
    struct utsname systemInfo;
    uname(&systemInfo);
    
    return [NSString stringWithCString:systemInfo.machine
                              encoding:NSUTF8StringEncoding];
}
@end
