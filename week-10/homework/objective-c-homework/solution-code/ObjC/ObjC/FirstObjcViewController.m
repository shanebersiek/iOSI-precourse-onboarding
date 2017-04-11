//
//  FirstObjcViewController.m
//  ObjC
//
//  Created by Rudd Taylor on 9/7/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

#import "FirstObjcViewController.h"
#import <ObjC-Swift.h>

@implementation FirstObjcViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image"]];
    self.imageView.userInteractionEnabled = YES;
    [self.imageView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTapImage:)]];
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(didPinchImage:)];
    pinch.delegate = self;
    [self.imageView addGestureRecognizer:pinch];
    [self.imageView addGestureRecognizer:[[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(didRotateImage:)]];
    
    [self.view addSubview:self.imageView];
    self.imageView.frame = CGRectMake(0, 0, self.imageView.image.size.width, self.imageView.image.size.height);
    self.imageView.center = self.view.center;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return YES;
}

- (void)adjustAnchorPointForGestureRecognizer:(UIGestureRecognizer *)gesture {
    if (gesture.state == UIGestureRecognizerStateBegan) {
        CGPoint locationInView = [gesture locationInView:gesture.view];
        CGPoint locationInSuperview = [gesture locationInView:gesture.view.superview];
        gesture.view.layer.anchorPoint = CGPointMake(locationInView.x / gesture.view.bounds.size.width, locationInView.y / gesture.view.bounds.size.height);
        gesture.view.center = locationInSuperview;
    }
}

- (void)didTapImage:(UITapGestureRecognizer *)tap {
    self.imageView.layer.borderColor = [UIColor redColor].CGColor;
    if (self.imageView.layer.borderWidth > 0) { // Selected
        self.imageView.layer.borderWidth = 0;
    } else {
        self.imageView.layer.borderWidth = 2;
    }
}

- (void)didRotateImage:(UIRotationGestureRecognizer *)rotate {
    [self adjustAnchorPointForGestureRecognizer:rotate];
    if (rotate.state == UIGestureRecognizerStateBegan || rotate.state == UIGestureRecognizerStateChanged) {
        self.imageView.transform = CGAffineTransformRotate(self.imageView.transform, rotate.rotation);
        rotate.rotation = 0;
    }
}

- (void)didPinchImage:(UIPinchGestureRecognizer *)pinch {
    [self adjustAnchorPointForGestureRecognizer:pinch];
    if (pinch.state == UIGestureRecognizerStateBegan || pinch.state == UIGestureRecognizerStateChanged) {
        self.imageView.transform = CGAffineTransformScale(self.imageView.transform, pinch.scale, pinch.scale);
        pinch.scale = 1;
    }
}

@end
