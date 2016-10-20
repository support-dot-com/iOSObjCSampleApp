//
//  LogCustomDataViewController.h
//  SPRT-iOS-sdk-sample
//
//  Created by Audumbar on 06/10/16.
//  Copyright © 2016 Ashish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LogCustomDataViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextView *deviceInfoTextView;
@property (weak, nonatomic) IBOutlet UITextView *appInfoTextView;
@property (weak, nonatomic) IBOutlet UIButton *deviceInfoButton;
@property (weak, nonatomic) IBOutlet UIButton *appInfoButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *appInfoTextFieldHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *deviceInfoTextFieldHeight;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;

@end
