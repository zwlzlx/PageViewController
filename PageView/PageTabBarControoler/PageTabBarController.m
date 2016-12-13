//
//  PageTabBarController.m
//  PageViewController
//
//  Created by Apple on 16/12/13.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "PageTabBarController.h"

@interface PageTabBarController ()

@end

@implementation PageTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}
- (instancetype)initWithViewControllersNameArray:(NSArray *)controllers ItemImageNames:(NSArray *)imageNames SelectedNames:(NSArray *)selectedNames Titles:(NSArray *)titles
{
    if (self = [super init])
    {
        [self AddViewControllersWithControllersArray:controllers ItemImageNames:imageNames SelectedNames:selectedNames Titles:titles];
    }
    return self;
}
- (void)AddViewControllersWithControllersArray:(NSArray *)controllers ItemImageNames:(NSArray *)imageNames SelectedNames:(NSArray *)selectedNames Titles:(NSArray *)titles
{
    if (controllers.count==imageNames.count&&imageNames.count==selectedNames.count&&selectedNames.count==titles.count)
    {
        //控制器名称
        NSArray * ControlNameArray = [NSArray arrayWithArray:controllers];

        //按钮图片名称
        NSArray * imageArray = [NSArray arrayWithArray:imageNames];

        //按钮选中时图片的名称
        NSArray * selectedArray = [NSArray arrayWithArray:selectedNames];
        //按钮下的文字
        NSArray * titleArray= [NSArray arrayWithArray:titles];
        
        //控制器
        NSMutableArray * ControllersArray = [[NSMutableArray alloc]init];
        
        for (int i=0; i<ControlNameArray.count;i++)
        {
            Class VCClass=NSClassFromString(ControlNameArray[i]);
            
            UIViewController * controller = [[VCClass alloc]init];
            
            controller.tabBarItem = [[UITabBarItem alloc]initWithTitle:titleArray[i] image:[UIImage imageNamed:imageArray[i]] selectedImage:[[UIImage imageNamed:selectedArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
            
            UINavigationController * nav=[[UINavigationController alloc]initWithRootViewController:controller];
            
            [ControllersArray addObject:nav];
            
        }
        self.viewControllers=ControllersArray;
        //背景颜色
        self.tabBar.barTintColor=[UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
        //文字选中时的颜色
        self.tabBar.tintColor=[UIColor colorWithRed:46/255.0 green:185/255.0 blue:102/255.0 alpha:1];
        
        //设置文字大小
        for (UIBarItem *item in self.tabBar.items) {
            [item setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIFont fontWithName:@"Helvetica" size:13.0], NSFontAttributeName, nil]forState:UIControlStateNormal];
        }
    }else
    {
        NSLog(@"创建失败：数组中元素个数不相等");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
