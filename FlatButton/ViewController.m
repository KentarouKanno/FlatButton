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
    btn1.isRedColor = YES;
    [btn1 setTitle:@"btn1" forState:UIControlStateNormal];
    [btn1 makeFlatButton];
    [self.view addSubview:btn1];
    
    FlatButton *btn2 = [[FlatButton alloc]initWithFrame:CGRectMake(40, 330, 150, 30)];
    btn2.isGreenColor = YES;
    [btn2 setTitle:@"btn2" forState:UIControlStateNormal];
    [btn2 makeFlatButton];
    [self.view addSubview:btn2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end