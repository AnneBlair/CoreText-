//
//  ViewController.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "ViewController.h"
#import "YYGCoreTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YYGCoreTextView * MyView=[[YYGCoreTextView alloc]initWithFrame:CGRectMake(100, 100, self.view.frame.size.width-200, self.view.frame.size.height-200)];
    MyView.backgroundColor=[UIColor whiteColor];
    MyView.TextString=@"hello";
    [self.view addSubview:MyView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
