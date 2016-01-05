//
//  ViewController.m
//  图形上下文
//
//  Created by 章芝源 on 16/1/5.
//  Copyright © 2016年 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZYView *view = [[ZYView alloc]init];
    view.frame = CGRectMake(0, 0, 200, 200);
    view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view];
}
@end
