//
//  SecondObjcViewController.m
//  ObjC
//
//  Created by Rudd Taylor on 9/7/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

#import "SecondObjcViewController.h"
#import <ObjC-Swift.h>

@implementation SecondObjcViewController
//var pictures = [UIImage](count: 1, repeatedValue: UIImage(named: "image")!)

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    self.pictures = [NSMutableArray arrayWithObject:[UIImage imageNamed:@"image"]];
    self.navigationItem.leftBarButtonItem = [self editButtonItem];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(insertNewObject)];
}

- (void)insertNewObject {
    UIImagePickerController *imageController = [[UIImagePickerController alloc] init];
    imageController.delegate = self;
    imageController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imageController animated: true completion: nil];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary<NSString *,id> *)editingInfo {
    [self dismissViewControllerAnimated:YES completion:^{
        [self.pictures addObject:image];
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:0 inSection:0];
        [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.pictures.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    UIImage *picture = self.pictures[indexPath.row];
    cell.imageView.image = picture;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [self.pictures removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation: UITableViewRowAnimationFade];
    }
}

@end