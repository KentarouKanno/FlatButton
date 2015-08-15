//
//  FlatButton.h
//  FlatButton
//
//  Created by KentarOu on 2015/08/14.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FlatButton : UIButton

@property (nonatomic, readwrite) BOOL isRedColor;
@property (nonatomic, readwrite) BOOL isGreenColor;

-(void)makeFlatButton;

@end
