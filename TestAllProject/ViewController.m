//
//  ViewController.m
//  TestProject
//
//  Created by L on 15/8/5.
//  Copyright (c) 2015年 L. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [self testLanguage];
    [self testAppAllName];
//    [self testJSONSerializetaion];
    
    NSLog(@"%@", NSLocalizedString(@"CFBundleDisplayName", nil));
}

- (void)testLanguage {
    NSLog(@"%@", NSLocalizedString(@"Test", nil));
}

- (void)testAppAllName {
    NSDictionary *bundleInfo=[[NSBundle mainBundle] infoDictionary];
    NSLog(@"%@", bundleInfo);
}

- (void)testException {
    NSException *exc = [[NSException alloc] initWithName:@"name" reason:@"reason" userInfo:@{@1:@1}];
    NSLog(@"%@", exc);
}

- (void)testJSONSerializetaion {
//    NSURL *URL = [NSURL URLWithString:@"http://www.baidu.com"];
//    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:URL];
//    [NSURLConnection sendAsynchronousRequest:request queue:[NSOperationQueue currentQueue] completionHandler:^(NSURLResponse *response, NSData *data, NSError *connectionError) {
//        if (!connectionError) {
//            id jsonObjc = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//            NSLog(@"%@", jsonObjc);
//        }else {
//            NSLog(@"ERROR:%@", connectionError);
//        }
//    }];
    
    NSData *data = nil;
    id jsonObjc = [NSJSONSerialization JSONObjectWithData:data?:[NSData data] options:0 error:nil];
    NSLog(@"%@", jsonObjc);
    
    NSString *string = [[NSString alloc] initWithData:nil encoding:NSUTF8StringEncoding];
    NSLog(@"%@", string);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
