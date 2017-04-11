//
//  GAMotionReporter.m
//  ObjectiveCLab
//
//  Created by Ezekiel Abuhoff on 7/26/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

#import "GAMotionReporter.h"
#import <CoreMotion/CoreMotion.h>

@interface GAMotionReporter ()

@property (strong, nonatomic) CMMotionManager *motionManager;

@end

@implementation GAMotionReporter

- (void)startLoggingGyroData {
    if (!self.motionManager) { self.motionManager = [CMMotionManager new]; }
    
    self.motionManager.gyroUpdateInterval = 0.2;
    [self.motionManager startGyroUpdatesToQueue:[NSOperationQueue mainQueue]
                                    withHandler:^(CMGyroData * _Nullable gyroData, NSError * _Nullable error) {
                                        NSLog(@"GYRO DATA: %@",gyroData);
                                    }];
}

@end
