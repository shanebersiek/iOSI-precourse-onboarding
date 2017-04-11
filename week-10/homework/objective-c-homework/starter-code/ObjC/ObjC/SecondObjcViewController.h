//
//  SecondObjcViewController.h
//  ObjC
//
//  Created by Rudd Taylor on 9/7/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondObjcViewController : UITableViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) NSMutableArray* pictures;

@end
