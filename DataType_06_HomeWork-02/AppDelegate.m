//
//  AppDelegate.m
//  DataType_06_HomeWork-02
//
//  Created by Slava on 16.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import "AppDelegate.h"
#import "Car.h"
#import "PassengerAuto.h"
#import "CargoAuto.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    id null = @"================";
    NSInteger lvl = 0;
    id level = @"lvl";
    
    NSLog(@"%@ - %d", level, ++lvl);
    #pragma mark - lvl 1
    
    CargoAuto *ural = [[CargoAuto alloc]init];
    ural.model = @"best";
    ural.speedLimit = 12;
    ural.colorAuto = Green;
    ural.wtf =  @"КАКОГО ЧЁРТА";

    CargoAuto *zil = [[CargoAuto alloc]init];
    zil.model = @"53";
    zil.speedLimit = 12;
    zil.colorAuto = Red;
    zil.wtf =  @"КАКОГО ЧЁРТА2";

    PassengerAuto *opel = [[PassengerAuto alloc]init];
    opel.model = @"korsa";
    opel.speedLimit = 12;
    opel.colorAuto = 3;
    
    PassengerAuto *vaz = [[PassengerAuto alloc]init];
    vaz.model = @"kaloina";
    vaz.speedLimit = 12;
    vaz.colorAuto = 2;
    
    
    NSArray *arrayCar = @[ural, zil, opel, vaz];
    for (Car *array in arrayCar) {
        NSLog(@"Модель %@", array.model);
        NSLog(@"Максимальная скорость %d", array.speedLimit);
        NSLog(@"Цвет авто %u", array.colorAuto);
        if ([array isKindOfClass:[CargoAuto class]]) {
            CargoAuto *obj = (CargoAuto *) array;
            NSLog(@"%@", obj.wtf);
        }
        [array motion];
        NSLog(@"%@", null);
    }
    
    NSLog(@"%@ - %d", level, ++lvl);
    #pragma mark - lvl 2
    
    BOOL boolVar = 0;
    NSInteger intVar = 2;
    CGFloat floatVar = 2.2f;
    
    NSNumber *boolVarString = [NSNumber numberWithBool:boolVar];
    NSNumber *intVarString = [NSNumber numberWithInt:intVar];
    NSNumber *floatVarString = [NSNumber numberWithFloat:floatVar];
    
    NSArray *numericArray = @[boolVarString, intVarString, floatVarString];
        NSLog(@"boolVar = %d", [[numericArray objectAtIndex:0]boolValue]);
        NSLog(@"intVar = %d", [[numericArray objectAtIndex:1]intValue]);
        NSLog(@"floatVar = %.2f", [[numericArray objectAtIndex:2]floatValue]);
    
    
    NSLog(@"%@ - %d", level, ++lvl);
    #pragma mark - lvl 3
    
    
    // создаем квадрат 3х3
    CGRect rectNumberOne = CGRectMake(5, 5, 3, 3);
    CGPoint point = CGPointMake(0, 0);
    int x, y;
    int count = 0;
    int shoot;
    
    for (int i = 0; i < 100; i++) {
        x = arc4random() % 11;
        y = arc4random() % 11;
        point = CGPointMake(x, y);
        shoot = CGRectContainsPoint(rectNumberOne, point);
        
        if (shoot) {
            NSLog(@"%d)you  got it (%d;%d), with attemps - %d", ++count, x, y, ++i);
        }
    }

//    // создаем цикл на 10 выстрелов
//    for (int i = 0; i < 11; i++) {
//        
//        // создвём рандомные точки (randomPoint) от 1 до 10
//        int randomPointX = arc4random() % 10 + 1;
//        int randomPointY = arc4random() % 10 + 1;
//        
//        NSInteger point = 0;
//        if ((randomPointX > 4 && randomPointX < 8)  && (randomPointY > 4 && randomPointY < 8)) {
//            NSLog(@"попал (%d;%d)", randomPointX, randomPointY);
//        }
//        point++;
//    }

    

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
