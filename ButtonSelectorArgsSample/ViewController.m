//
//  ViewController.m
//  ButtonSelectorArgsSample
//
//  Created by 廣川政樹 on 2013/03/29.
//  Copyright (c) 2013年 Dolice. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
	[self initButton];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
}

- (void)initButton
{
  //ボタン初期化
  UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
  [button setTitle:@"ボタン" forState:UIControlStateNormal];
  [button setTitle:@"ボタン" forState:UIControlStateHighlighted];
  [button setFrame:CGRectMake((self.view.frame.size.width / 2) - (200 / 2),
                              (self.view.frame.size.height / 2) - (40 / 2),
                              200,
                              40)];
  //引数として渡したい値を tagに代入
  button.tag = 1;
  //ボタンイベント定義
  [button addTarget:self action:@selector(buttonTouchUpInsideEvent:)
     forControlEvents:UIControlEventTouchUpInside];
  //ボタンをステージに追加
  [self.view addSubview:button];
}

- (void)buttonTouchUpInsideEvent:(id)sender
{
  //sender経由でボタンを取得
  UIButton *button = (UIButton *)sender;
  //tagにセットしていた引数を格納
  NSLog(@"%d", button.tag);
}

@end
