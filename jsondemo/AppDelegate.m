//
//  AppDelegate.m
//  jsondemo
//
//  Created by shuzhenguo on 14-8-12.
//  Copyright (c) 2014年 ___FULLUSERNAME___. All rights reserved.
//
/*
 
 将各大数据类型转换成jsonobject
 
 */

#import "AppDelegate.h"
#import "JSONKit.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    
    
    
    NSString *str = nil;
    //字符串
    NSMutableString *string = [[NSMutableString alloc] init];
    [string appendString:@"xxxx"];
    str = [string JSONString];
    NSLog(@"str1:%@",[NSString stringWithString:str]);

    //来解析
    NSLog(@"str1%@",[str objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode]);

    
    
    //数组
    NSArray *array = [[NSArray alloc] initWithObjects:@"111",@"333",@"222", nil];
    // NSMutableArray *array = [NSMutableArray array];
    str = [array JSONString];
    NSLog(@"str2:%@",[NSString stringWithString:str]);
//    [array release ];
    

    
    //来解析
    NSLog(@"str2%@",[str objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode]);
    

   
    
    //字典
    NSArray *firstArr = [NSArray arrayWithObjects:@"first",@"second", nil];
    //基本数据类型转换成NSNumber类型
    NSArray *secondArr = [NSArray arrayWithObjects:[NSNumber numberWithDouble:2.1],[NSNumber numberWithBool:NO], nil];
  
    
    
    
    //加到字典中
//    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:firstArr,@"first",secondArr,@"second", nil];
    NSDictionary *dic = @{@"rere":@"err"};

    
    
    //转化成json格式
    str = [dic JSONString];
    
    dic=[str objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode];
    
    NSMutableDictionary *dictjson=[[NSMutableDictionary alloc]init];
    [dictjson setObject:@"344" forKey:@"99999"];
    [dictjson setObject:dic forKey:@"2222"];
    
    NSLog(@"JSONString%@",[dictjson JSONString]);
    
    
    
    NSString *str2 = [NSString stringWithString:str];
    NSLog(@"str3:%@",str2);
    
    
    
    
    //来解析
    NSLog(@"str3%@",[str2 objectFromJSONStringWithParseOptions:JKParseOptionLooseUnicode]);
    

   
    
    //编码
    NSData *archive = [NSKeyedArchiver archivedDataWithRootObject:array];
    //    NSLog(@"archive:%@",archive);
    NSArray *arr2 = [NSKeyedUnarchiver unarchiveObjectWithData:archive];
    NSLog(@"arr2:%@",arr2);

    
//    NSDictionary *dictLoalData=[[NSDictionary alloc]init];
    
    NSMutableDictionary *dictLoalData=[[NSMutableDictionary alloc]init];
    
    
    [dictLoalData setValue:@"33"  forKey:@"00"];


    
  NSLog(@"value%@",[dictLoalData objectForKey:@"00"]) ;
    
    
    NSMutableArray *array11=[[NSMutableArray alloc]init];
    [array11 addObject:@"sdjjd"];
    [array11 addObject:@"aaa"];
    
    [array11 addObject:@"bbb4"];
    [array11 addObject:@"89787bb"];
    
    NSLog(@" array11%@",array11);
    
    
    NSMutableDictionary *dictddd=[[NSMutableDictionary alloc]init];
    
    [dictddd setObject:@"ds" forKey:@"54sd"];
    
    [dictddd setObject:@"qwe" forKey:@"sddd"];
    
    
    [dictddd setObject:@"sdfsd" forKey:@"546dssd"];
    
    [dictddd setObject:@"dsfsdf" forKey:@"sdffsd"];
    NSLog(@"%@",dictddd);
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
