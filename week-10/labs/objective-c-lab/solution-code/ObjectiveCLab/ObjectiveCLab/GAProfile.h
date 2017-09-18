//
//  GAProfile.h
//  ObjectiveCLab
//
//  Created by Ezekiel Abuhoff on 7/26/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GAProfile : NSObject

// Properties
@property (strong, nonatomic, readonly) NSString *name;

// Methods
+ (instancetype)newProfileWithName: (NSString *)name
                      favoriteFood: (NSString *)favoriteFood;
- (NSString *)introduction;

@end
