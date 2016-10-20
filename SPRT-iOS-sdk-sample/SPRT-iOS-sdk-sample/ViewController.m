//
//  ViewController.m
//  SPRT-iOS-sdk-sample
//
//  Copyright © 2016 Support.com, Inc. All rights reserved.
//

#import "ViewController.h"
#import <SupportcomCloudSDK/SupportcomCloudSDK.h>

@interface ViewController ()

@end

@implementation ViewController

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
    // Dispose of any resources that can be recreated.
}

- (IBAction)connectToAgent:(id)sender {
    [[SupportcomCloudSDK sharedInstance] connectToAgent];
}

- (IBAction)showLivehelp:(id)sender {
    [[SupportcomCloudSDK sharedInstance] showLiveHelp];
}

- (IBAction)helpWithTag:(id)sender {
    [[SupportcomCloudSDK sharedInstance] showSelfHelpForTags:[NSArray arrayWithObjects:@"thermostat", nil] withDisplayOrder:[NSArray arrayWithObjects:@"search",@"categories",@"paths", nil] onViewController:nil];
}

- (IBAction)showhelpWithId:(id)sender {
    [[SupportcomCloudSDK sharedInstance] showSelfHelpForId:@"lightbulb" withDisplayOrder:[NSArray arrayWithObjects:@"paths", nil] onViewController:nil];
}

- (IBAction)showUserInfo:(id)sender {
    [self performSegueWithIdentifier:@"showUserInfo" sender:self];
    
}

- (IBAction)showLogData:(id)sender {
    [self performSegueWithIdentifier:@"showLogData" sender:self];
}


@end
