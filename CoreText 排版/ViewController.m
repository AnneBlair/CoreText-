//
//  ViewController.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "ViewController.h"
#import "YYGCoreTextView.h"

#import "YYGFrameParserConfig.h"
#import "YYGCoreTextData.h"
#import "YYGFrameParser.h"
#import "YYGDisplayView.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet YYGDisplayView *YYGView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    YYGCoreTextView * MyView=[[YYGCoreTextView alloc]initWithFrame:CGRectMake(100, 100, self.view.frame.size.width-200, self.view.frame.size.height-200)];
//    MyView.backgroundColor=[UIColor whiteColor];
//    MyView.TextString=@"hello";
//    [self.view addSubview:MyView];
    
    YYGFrameParserConfig * config=[[YYGFrameParserConfig alloc]init];
    config.textColor=[UIColor purpleColor];
    config.width=self.YYGView.wide;
    
    YYGCoreTextData * data=[YYGFrameParser parseContent:@"韩美联合参谋本部3日表示，朝鲜当天上午7时50分在黄海南道殷栗郡一带朝日本海方向发射两枚疑似“芦洞”弹道导弹。其中一枚导弹发射不久便爆炸，另一枚导弹飞越朝鲜境内、最终落在距日本秋田县男鹿半岛250公里的日本专属经济区，总飞行距离约1000公里。日本共同社分析，朝鲜此举除了针对美韩外，还意在制约日本政府。而韩军分析，朝鲜可能通过发射导弹进行武力示威，抗议在韩部署萨德反导系统，并试图助长韩国国内舆论分裂。" config:config];
    self.YYGView.data=data;
    self.YYGView.height=data.height;
    self.YYGView.backgroundColor=[UIColor lightGrayColor];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
