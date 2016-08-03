//
//  YYGFrameParserConfig.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "YYGFrameParserConfig.h"

@implementation YYGFrameParserConfig

-(id)init
{
    self=[super init];
    if (self)
    {
        _width=200.0f;
        _fontSize=16.0f;
        _lineSpace=8.0f;
        _textColor=RGB(108, 108, 108);
    }
    return self;
}

@end
