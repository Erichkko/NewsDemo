//
//  AppDelegate.m
//  NewsDemo
//
//  Created by wanglong on 16/7/28.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options
{
    NSString *urlStr = url.absoluteString;
    if ([urlStr isEqualToString:@"news://"]) {
        NSLog(@"55");
    }
    return YES;
}

@end
