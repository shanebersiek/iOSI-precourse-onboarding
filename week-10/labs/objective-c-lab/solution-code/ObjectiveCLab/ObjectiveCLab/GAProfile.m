//
//  GAProfile.m
//  ObjectiveCLab
//
//  Created by Ezekiel Abuhoff on 7/26/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

#import "GAProfile.h"
#import <CoreMotion/CoreMotion.h>

@interface GAProfile ()

@property (strong, nonatomic, readwrite) NSString *name;
@property (strong, nonatomic) NSString *favoriteFood;

@end

@implementation GAProfile

+ (instancetype)newProfileWithName: (NSString *)name
                      favoriteFood: (NSString *)favoriteFood {
    GAProfile *profile = [GAProfile new];
    profile.name = name;
    profile.favoriteFood = favoriteFood;
    
    return profile;
}

- (NSString *)introduction {
    return [NSString stringWithFormat:@"Hi, I'm %@ and my favorite food is %@.",self.name,self.favoriteFood];
}

@end
