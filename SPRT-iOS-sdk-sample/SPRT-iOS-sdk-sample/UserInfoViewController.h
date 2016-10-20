//
//  UserInfoViewController.h
//  SPRT-iOS-sdk-sample
//
//  Created by Audumbar on 06/10/16.
//  Copyright © 2016 Ashish. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserInfoViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *phoneTextField;
@property (weak, nonatomic) IBOutlet UITextField *externalTextField;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;

@end
