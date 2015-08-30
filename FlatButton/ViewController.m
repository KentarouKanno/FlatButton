//
//  ViewController.m
//  FlatButton
//
//  Created by KentarOu on 2015/08/14.
//  Copyright (c) 2015年 KentarOu. All rights reserved.
//

#import "ViewController.h"
#import "FlatButton.h"

@interface ViewController ()

// StoryBoardから生成
@property (weak, nonatomic) IBOutlet FlatButton *xibBtn1;
@property (weak, nonatomic) IBOutlet FlatButton *xibBtn2;


@end

@implementation ViewController

- (IBAction)buttonPush:(id)sender {
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // コードから生成
    FlatButton *btn1 = [[FlatButton alloc]initWithFrame:CGRectMake(40, 260, 150, 30)];
    btn1.backgroundColor = [UIColor orangeColor];
    [btn1 setTitle:@"btn1" forState:UIControlStateNormal];
    [btn1 generateFlatButton];
    [self.view addSubview:btn1];
    
    FlatButton *btn2 = [[FlatButton alloc]initWithFrame:CGRectMake(40, 330, 150, 30)];
    btn2.isBlueColor = YES;
    btn2.titleLabel.font = [UIFont systemFontOfSize:13];
    [btn2 setTitle:@"initWithFrame Btn" forState:UIControlStateNormal];
    [btn2 generateFlatButton];
    [self.view addSubview:btn2];
    
    FlatButton *btn3 = [FlatButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(40, 400, 150, 30);
    btn3.isGrayColor = YES;
    [btn3 setTitle:@"btn3" forState:UIControlStateNormal];
    [btn3 generateFlatButton];
    [self.view addSubview:btn3];
    
    // グラデーションボタン
    FlatButton *btn4 = [FlatButton buttonWithType:UIButtonTypeCustom];
    btn4.frame = CGRectMake(40, 470, 150, 30);
    btn4.startColor = [UIColor magentaColor];
    btn4.endColor = [UIColor redColor];
    [btn4 setTitle:@"gradient btn4" forState:UIControlStateNormal];
    [btn4 generateFlatButton];
    [self.view addSubview:btn4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
