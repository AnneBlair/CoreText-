//
//  YYGCoreTextView.h
//  CoreText 排版
//
//  Created by 区块国际－yin on 16/8/3.
//  Copyright © 2016年 区块国际－yin. All rights reserved.
//

#import <UIKit/UIKit.h>


#ifdef DEBUG
#define debugLog(...) NSLog(__VA_ARGS__)
#define debugMethod() NSLog(@"%s", __func__)
#else
#define debugLog(...)
#define debugMethod()
#endif




__attribute__((objc_runtime_name("1123123aeqe121wqd12e12qe12312121212")))

@interface YYGCoreTextView : UIView

@property(strong,nonatomic) NSString * TextString;

@end
