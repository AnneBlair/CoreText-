//
//  YYGCoreTextData.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "YYGCoreTextData.h"

@implementation YYGCoreTextData

-(void)setCtFram:(CTFrameRef)ctFram
{
    if (_ctFram!=ctFram)
    {
        if (_ctFram!=nil)
        {
            CFRelease(_ctFram);
        }
        CFRetain(ctFram);
        _ctFram=ctFram;
    }
}

-(void)dealloc
{
    if (_ctFram!=nil)
    {
        CFRelease(_ctFram);
        _ctFram=nil;
    }
    
}

@end
