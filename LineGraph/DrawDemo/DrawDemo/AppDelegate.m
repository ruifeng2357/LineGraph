//
//  AppDelegate.m
//  DrawDemo
//
//  Created by 东子 Adam on 12-5-31.
//  Copyright (c) 2012年 热频科技. All rights reserved.
//

#import "AppDelegate.h"
#import "LineChartView.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    
    LineChartView *lineChartView = [[LineChartView alloc]initWithFrame:CGRectMake(0, 0, 320, 480)];
    
    
    NSMutableArray *pointArr = [[NSMutableArray alloc]init];

    //生成随机点
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*0, 0)]];
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*1, 40)]];
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*2, 70)]];
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*3, 30)]];
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*4, 20)]];
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*5, 55)]];
    [pointArr addObject:[NSValue valueWithCGPoint:CGPointMake(50*6, 80)]];
    
    //竖轴
    NSMutableArray *vArr = [[NSMutableArray alloc]initWithCapacity:pointArr.count-1];
    for (int i=0; i<9; i++) {
        [vArr addObject:[NSString stringWithFormat:@"%d",i*20]];
    }
    
    //横轴
    NSMutableArray *hArr = [[NSMutableArray alloc]initWithCapacity:pointArr.count-1];
    
    [hArr addObject:@"05-26"];
    [hArr addObject:@"05-27"];
    [hArr addObject:@"05-28"];
    [hArr addObject:@"05-29"];
    [hArr addObject:@"05-30"];
    [hArr addObject:@"05-31"];
    
    [lineChartView setHDesc:hArr];
    [lineChartView setVDesc:vArr];
    [lineChartView setArray:pointArr];
    
    [self.window addSubview:lineChartView];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
