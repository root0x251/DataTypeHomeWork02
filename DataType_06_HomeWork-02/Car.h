//
//  Car.h
//  DataType_06_HomeWork-02
//
//  Created by Slava on 16.12.16.
//  Copyright © 2016 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Green,
    Black,
    White,
    Red
} Color;

// typedef NSString SpeedLimit;

@interface Car : NSObject

@property (strong, nonatomic) NSString *model;
@property (assign, nonatomic) NSInteger speedLimit;
@property (assign, nonatomic) Color colorAuto;


- (void) motion;

@end
