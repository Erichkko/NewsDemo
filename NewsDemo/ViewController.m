//
//  ViewController.m
//  NewsDemo
//
//  Created by wanglong on 16/7/28.
//  Copyright © 2016年 wanglong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)jump2weChat:(id)sender {
    
    NSURL *wechatUrl = [NSURL URLWithString:@"wechat://?news"];
    [self openUrl:wechatUrl];
   
}
- (IBAction)jump2Moments:(id)sender {
    
    NSURL *wechatMomentsUrl = [NSURL URLWithString:@"wechat://moments?news"];
    [self openUrl:wechatMomentsUrl];
    
}
- (IBAction)jump2Contacts:(id)sender {
    
    NSURL *wechatContactsUrl = [NSURL URLWithString:@"wechat://contacts?news"];
    [self openUrl:wechatContactsUrl];
}

- (void)openUrl:(NSURL *)url
{
    
    UIApplication *app = [UIApplication sharedApplication] ;
    if ([app canOpenURL:url]) {
        [app openURL:url];
    }
    
}
@end
