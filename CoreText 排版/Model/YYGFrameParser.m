//
//  YYGFrameParser.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "YYGFrameParser.h"

@implementation YYGFrameParser

+(YYGCoreTextData *)parseContent:(NSString *)content config:(YYGFrameParserConfig *)config
{
    NSDictionary * dictionary=[self attributesWithConfig:config];
    NSAttributedString * string=[[NSAttributedString alloc]initWithString:content attributes:dictionary];
    // 创建 CTFramesetterRef 实例
    CTFramesetterRef framesetter=CTFramesetterCreateWithAttributedString((CFAttributedStringRef)string);
    // 获得要绘制的区域的高度
    CGSize restrictSize=CGSizeMake(config.width, CGFLOAT_MAX);
    CGSize coreTextSize=CTFramesetterSuggestFrameSizeWithConstraints(framesetter,CFRangeMake(0, 0), nil, restrictSize, nil);
    CGFloat textHeight=coreTextSize.height;
    
     // 生成 CTFrameRef 实例
    CTFrameRef frameRef=[self createFrameWithFramesetter:framesetter config:config height:textHeight];
    // 将生成好的 CTFrameRef 实例和计算好的绘制高度保存到 CoreTextData 实例中，最后返回 CoreTextData 实例
    YYGCoreTextData *data=[[YYGCoreTextData alloc]init];
    data.ctFram=frameRef;
    data.height=textHeight;
    
    CFRelease(frameRef);
    CFRelease(framesetter);
    
    return data;
  
    
}

+(NSDictionary *)attributesWithConfig:(YYGFrameParserConfig *)config
{

    NSMutableDictionary * dict=[NSMutableDictionary dictionary];
    //1
    CGFloat fontSize=config.fontSize;
    CTFontRef fontRef=CTFontCreateWithName((CFStringRef)@"ArialMT", fontSize, NULL);
    dict[(id)kCTFontAttributeName]=(__bridge id)fontRef;
    
    CFRelease(fontRef);
    //2
    CGFloat lineSpace=config.lineSpace;
    const CFIndex kNumberOfSetting=3;
    CTParagraphStyleSetting theSettings[kNumberOfSetting]={
        {kCTParagraphStyleSpecifierLineSpacingAdjustment,sizeof(CGFloat),&lineSpace},
        {kCTParagraphStyleSpecifierMaximumLineSpacing,sizeof(CGFloat),&lineSpace},
        {kCTParagraphStyleSpecifierMinimumLineSpacing,sizeof(CGFloat),&lineSpace}
    };
    CTParagraphStyleRef thePragraphRef=CTParagraphStyleCreate(theSettings, kNumberOfSetting);
    dict[(id)kCTParagraphStyleAttributeName]=(__bridge id)thePragraphRef;
    
    CFRelease(thePragraphRef);
    //3
    UIColor * textColor=config.textColor;
    dict[(id)kCTForegroundColorAttributeName]=(__bridge id)textColor.CGColor;
 
    return dict;
}

+(CTFrameRef )createFrameWithFramesetter:(CTFramesetterRef)framesetter config:(YYGFrameParserConfig *)config height:(CGFloat)height
{
    CGMutablePathRef path=CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0, 0, config.width, height));
    
    CTFrameRef frame=CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, NULL);
    
    CFRelease(path);
    
    return frame;
}



@end
