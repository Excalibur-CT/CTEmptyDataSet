//
//  AppDelegate.m
//  CTTableViewEmpty
//
//  Created by Admin on 2017/1/20.
//  Copyright © 2017年 Arvin. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <UIScrollView+Empty.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UITableView appearance] setEmptyDispalyImage:[UIImage imageNamed:@"emptyImage"] status:CTDispalyLoadingStatus];
 
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    ViewController * vc = [[ViewController alloc] init];
    UINavigationController * navi = [[UINavigationController alloc] initWithRootViewController:vc];
    self.window.rootViewController = navi;
    navi.navigationBar.translucent = NO;
    [self.window makeKeyAndVisible];
    return YES;
}

- (UIView *)emptyView
{
    UIView * aView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    
    UILabel * lab = [[UILabel alloc] init];
    lab.text = @"网络异常, 请重试!";
    [lab sizeToFit];
    [aView addSubview:lab];
    lab.center = CGPointMake(150, 50);
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame = CGRectMake(30, 100, 240, 40);
    btn.layer.cornerRadius = 5;
    btn.layer.borderColor = [UIColor blackColor].CGColor;
    btn.layer.borderWidth = 1;
    [btn setTitle:@"重试" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor whiteColor];
//    [btn addTarget:self action:@selector(tapAction) forControlEvents:UIControlEventTouchUpInside];
    [aView addSubview:btn];
    return aView;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
