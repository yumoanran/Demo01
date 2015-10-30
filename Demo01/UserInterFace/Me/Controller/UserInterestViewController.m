//
//  UserInterestViewController.m
//  Demo01
//
//  Created by Deo on 15/10/29.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "UserInterestViewController.h"
#import "Common.h"
@interface UserInterestViewController ()

@end

@implementation UserInterestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=HEXCOLOR(0xf8f8f8);
    self.navigationController.navigationBarHidden=NO;
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self _createNaviView];
    [self _createSubView];
}

- (void)_createNaviView{
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
    titleLabel.textColor=HEXCOLOR(0x656869);
    titleLabel.text=@"意见与隐私";
    titleLabel.textAlignment=NSTextAlignmentCenter;
    self.navigationItem.titleView=titleLabel;
    
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame=CGRectMake(0, 0, 9, 15);
    [backButton setImage:[UIImage imageNamed:@"灰返回2@"] forState:UIControlStateNormal];
    
    [backButton addTarget:self
                   action:@selector(backButtonAction:)
         forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc]initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem=leftItem;
    
    //右边按钮
    UIButton *rightButton=[UIButton buttonWithType:UIButtonTypeCustom];
    rightButton.frame=CGRectMake(0, 0, 54, 27);
    [rightButton setBackgroundImage:[UIImage imageNamed:@"button_blue_bg2@"]
                           forState:UIControlStateNormal];
    [rightButton setTitle:@"保存" forState:UIControlStateNormal];
    [rightButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    rightButton.titleLabel.font=TEXT_FONT(15);
    
    UIBarButtonItem *rightItem=[[UIBarButtonItem alloc]initWithCustomView:rightButton];
    self.navigationItem.rightBarButtonItem=rightItem;
    
}

- (void)_createSubView{
    
    
    
}

#pragma mark - ButtonAction
- (void)backButtonAction:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}
@end
