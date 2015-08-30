//
//  FlatButton.h
//  FlatButton
//
//  Created by KentarOu on 2015/08/14.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlatButton : UIButton

// 定義されている色
@property (nonatomic, readwrite) BOOL isRedColor;
@property (nonatomic, readwrite) BOOL isGreenColor;
@property (nonatomic, readwrite) BOOL isBlueColor;
@property (nonatomic, readwrite) BOOL isGrayColor;

// グラデーションボタン
@property (nonatomic, copy) UIColor *startColor;
@property (nonatomic, copy) UIColor *endColor;

-(void)generateFlatButton;

@end
