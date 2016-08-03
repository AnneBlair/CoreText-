//
//  YYGFrameParser.h
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//
/**
 *  CTFrameParser类，用于生成最后绘制界面需要的CTFrameRef实例。
 */
#import <Foundation/Foundation.h>
#import "YYGFrameParserConfig.h"
#import "YYGCoreTextData.h"


@interface YYGFrameParser : NSObject

+(YYGCoreTextData *)parseContent:(NSString *)content config:(YYGFrameParserConfig *)config;

@end
