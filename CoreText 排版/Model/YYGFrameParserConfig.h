//
//  YYGFrameParserConfig.h
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface YYGFrameParserConfig : NSObject

/**
 *  view显示的宽度
 */
@property(nonatomic, assign) CGFloat width;

/**
 *  字体大小
 */
@property(assign,nonatomic) CGFloat fontSize;

/**
 *  行间距离
 */
@property(assign,nonatomic) CGFloat lineSpace;

/**
 *  字体颜色
 */
@property(strong,nonatomic) UIColor * textColor;


@end
