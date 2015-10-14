//
//  NewComViewController.h
//  UI-新闻的编辑
//
//  Created by lanou3g on 15/9/5.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PassValueDelegate <NSObject>

- (void)passValue:(NSString *)atring1;
- (void)passValue1:(NSString *)adtring;

@end


@interface NewComViewController : UIViewController
@property (nonatomic,assign)id <PassValueDelegate>delegate;
@end
