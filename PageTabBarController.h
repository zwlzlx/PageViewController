//
//  PageTabBarController.h
//  PageViewController
//
//  Created by Apple on 16/12/13.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageTabBarController : UITabBarController

- (instancetype)initWithViewControllersNameArray:(NSArray *)controllers ItemImageNames:(NSArray *)imageNames SelectedNames:(NSArray *)selectedNames Titles:(NSArray *)titles;

@end
