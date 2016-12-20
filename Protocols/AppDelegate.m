//
//  AppDelegate.m
//  Protocols
//
//  Created by Slava on 20.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "ProtocolOne.h"
#import "ProtocolTwo.h"
#import "CarSelling.h"
#import "CarBay.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CarSelling *ff1 = [[CarSelling alloc]init];
    CarSelling *ff2 = [[CarSelling alloc]init];
    CarSelling *ff3 = [[CarSelling alloc]init];
    
    ff1.name = @"Петяff1";
    ff1.secondName = @"Пупкинff1";
    
    ff2.name = @"ПЕтрff2";
    ff2.secondName = @"Борискинff2";
    
    ff3.name = @"Володяff3";
    ff3.secondName = @"Негуляйff3";
    
    CarBay *toyotaX = [[CarBay alloc]init];
    CarBay *toyotalX = [[CarBay alloc]init];
    CarBay *toyotaXl = [[CarBay alloc]init];
    
    toyotaX.name = @"ПетяtoyotaX";
    toyotaX.secondName = @"ПупкинtoyotaX";
    toyotaX.theNumberOfOwners = 2;
    
    toyotalX.name = @"ПЕтрtoyotalX";
    toyotalX.secondName = @"БорискинtoyotalX";
    
    toyotaXl.name = @"ВолодяtoyotaXl";
    toyotaXl.secondName = @"НегуляйtoyotaXl";
    toyotaXl.theNumberOfOwners = 2;

    NSArray *arrayCar = @[ff1, ff2, ff3, toyotaX, toyotalX, toyotaXl];
    for (id <ProtocolOne, ProtocolTwo> obj in arrayCar) {
        if ([obj conformsToProtocol:@protocol(ProtocolOne) ]) {
            NSLog(@"Имя продовца %@", obj.name);
            NSLog(@"Фамилая продовца %@", obj.secondName);
            NSLog(@"ВИН номер %d", [obj vinNumber]);
            [obj isPainted];
            [obj isEquipman];
            if ([obj respondsToSelector:@selector(condition)]) {
                [obj condition];
            }
        }
    }

    
    return YES;
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
