//
//  FlatButton.m
//  FlatButton
//
//  Created by KentarOu on 2015/08/14.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import "FlatButton.h"

@interface FlatButton ()
@property (nonatomic,readwrite) CGRect rect;

@end


@implementation FlatButton


- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {

    }
    return self;
}

- (id)initWithCoder:(NSCoder *)decoder {
    
    self = [super initWithCoder:decoder];
    return [self initWithFrame:self.frame];
}

-(void)awakeFromNib {
    
    [self makeFlatButton];
}

-(void)makeFlatButton {
    
    self.exclusiveTouch = YES;
    self.backgroundColor = [UIColor clearColor];
    
    _rect = self.frame;
    
    UIView *v = [[UIView alloc]initWithFrame:_rect];
    if (_isRedColor) {
        [v setBackgroundColor:[UIColor colorWithRed:0.984 green:0.125 blue:0.145 alpha:1.000]];
//        v.layer.borderColor = [UIColor colorWithRed:0.635 green:0.083 blue:0.101 alpha:1.000].CGColor;
//        v.layer.borderWidth = 1.0;
    } else if (_isGreenColor) {
        [v setBackgroundColor:[UIColor colorWithRed:0.392 green:0.722 blue:0.125 alpha:1.000]];
//        v.layer.borderColor = [UIColor colorWithRed:0.246 green:0.454 blue:0.082 alpha:1.000].CGColor;
//        v.layer.borderWidth = 1.0;
    }
    v.layer.cornerRadius = 5.0;
    v.layer.masksToBounds = YES;
    
    UIImage *image;
    
    if (!CGRectEqualToRect(v.frame, CGRectZero)) {
        image = [self convertUIimageFromUIview:v];
    }
    
    [self setBackgroundImage:image forState:UIControlStateNormal];
}

- (UIImage*)convertUIimageFromUIview:(UIView*)view {
    
    UIGraphicsBeginImageContext(view.frame.size);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


- (void)setHighlighted:(BOOL)highlighted {
    [super setHighlighted:highlighted];
    
}

@end