//
//  AppDelegate.m
//  SPRT-iOS-sdk-sample
//
//  Copyright © 2016 Support.com, Inc. All rights reserved.
//

#import "AppDelegate.h"
#import <SupportcomCloudSDK/SupportcomCloudSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
        [[SupportcomCloudSDK sharedInstance] initializeWithToken :@"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0IjoibXljb21wYW55IiwiZCI6Im5leHVzLnN1cHBvcnQuY29tIiwicHJtIjpbImxvZzoqIiwic2Vzc2lvbjpjb25uZWN0Il0sImp0aSI6IjdlZjcyYTNkLTdiNWQtNGY2MC1iNmY4LTVjNDI3ODkwMDdiOCIsImFwcCI6ImlPU1NhbXBsZUFwcChEbyBub3QgRGVsZXRlKSIsInZlciI6IjEuMCIsImlhdCI6MTQ2NjY4NzQyMSwiYXVkIjpbImFwcCJdLCJpc3MiOiJTdXBwb3J0LmNvbSJ9.boTE5hZAHaUUZLPu3x_FIOHE4aEwAPX3jvE8A2vtb0g"];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
