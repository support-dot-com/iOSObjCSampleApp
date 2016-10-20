//
//  UserInfoViewController.m
//  SPRT-iOS-sdk-sample
//
//  Created by Audumbar on 06/10/16.
//  Copyright © 2016 Ashish. All rights reserved.
//

#import "UserInfoViewController.h"
#import <SupportcomCloudSDK/SupportcomCloudSDK.h>

@interface UserInfoViewController ()

@end

@implementation UserInfoViewController

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


- (IBAction)doneClicked:(id)sender {
    if(self.emailTextField.text.length > 0)
        [[SupportcomCloudSDK sharedInstance] setEmail:self.emailTextField.text];
    if(self.firstNameTextField.text.length > 0)
        [[SupportcomCloudSDK sharedInstance] setEmail:self.firstNameTextField.text];
    if(self.lastNameTextField.text.length > 0)
        [[SupportcomCloudSDK sharedInstance] setEmail:self.lastNameTextField.text];
    if(self.phoneTextField.text.length > 0)
        [[SupportcomCloudSDK sharedInstance] setEmail:self.phoneTextField.text];
    if(self.externalTextField.text.length > 0)
        [[SupportcomCloudSDK sharedInstance] setEmail:self.externalTextField.text];
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

@end
