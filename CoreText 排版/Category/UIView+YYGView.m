//
//  UIView+YYGView.m
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import "UIView+YYGView.h"

@implementation UIView (YYGView)

-(CGFloat)x
{
    return self.frame.origin.x;
}
-(void)setX:(CGFloat)x
{
    self.frame=CGRectMake(x, self.y, self.wide, self.height);
}

-(CGFloat)y
{
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)y
{
    self.frame=CGRectMake(self.x, y, self.wide, self.height);
}

-(CGFloat)wide
{
    return self.frame.size.width;
}
-(void)setWide:(CGFloat)wide
{
    self.frame=CGRectMake(self.x, self.y, wide, self.height);
}

-(CGFloat)height
{
    return self.frame.size.height;
}
-(void)setHeight:(CGFloat)height
{
    self.frame=CGRectMake(self.x, self.y, self.wide, height);
}


@end
