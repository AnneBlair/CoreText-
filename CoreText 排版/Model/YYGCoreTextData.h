//
//  YYGCoreTextData.h
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface YYGCoreTextData : NSObject

/**
 *  存储生产的CTFrameRef
 */
@property(assign,nonatomic) CTFrameRef ctFram;

/**
 *  动态生成的高度
 */
@property(assign,nonatomic) CGFloat height;

@end
