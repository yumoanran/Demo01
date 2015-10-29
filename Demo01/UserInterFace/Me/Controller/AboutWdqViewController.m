//
//  AboutWdqViewController.m
//  Demo01
//
//  Created by Deo on 15/10/29.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "AboutWdqViewController.h"

#import "Common.h"
@interface AboutWdqViewController ()

@end

@implementation AboutWdqViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=NO;
    self.view.backgroundColor=HEXCOLOR(0xf8f8f8);
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor whiteColor]];
    [self _createNaviView];
    
    [self _createSubView];
}

- (void)_createNaviView{
    //标题
    UILabel *titleLabel=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
    titleLabel.textColor=HEXCOLOR(0x656869);
    titleLabel.text=@"关于舞蹈圈";
    titleLabel.textAlignment=NSTextAlignmentCenter;
    self.navigationItem.titleView=titleLabel;
    
    //返回按钮
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame=CGRectMake(0, 0, 9, 15);
    [backButton setImage:[UIImage imageNamed:@"灰返回2@"] forState:UIControlStateNormal];
    
    [backButton addTarget:self
                   action:@selector(backButtonAction:)
         forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc]initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem=leftItem;
    
}

- (void)_createSubView{
    
    //舞蹈圈logo
    UIImageView *logoImgView=[[UIImageView alloc]initWithFrame:CGRectMake((kScreenWidth-90)/2, 94+64, 90, 90)];
    logoImgView.image=[UIImage imageNamed:@"wdq_logo2@"];
    [self.view addSubview:logoImgView];
    
    //版本 V1.0.0
    UILabel *versionLabel=[[UILabel alloc]initWithFrame:CGRectMake((kScreenWidth-100)/2, logoImgView.bottom+25, 100, 20)];
    versionLabel.textAlignment=NSTextAlignmentCenter;
    versionLabel.font=TEXT_FONT(15);
    versionLabel.textColor=HEXCOLOR(0x939393);
    versionLabel.text=@"版本 V1.0.0";
    [self.view addSubview:versionLabel];
    
    //版权所有
    UILabel *companyLabel=[[UILabel alloc]initWithFrame:CGRectMake((kScreenWidth-120)/2, kScreenHeight-60, 120, 15)];
    companyLabel.text=@"舞蹈圈（北京）科技有限公司";
    companyLabel.textColor=HEXCOLOR(0xbcbcbc);
    companyLabel.textAlignment=NSTextAlignmentCenter;
    companyLabel.font=TEXT_FONT(13);
    [self.view addSubview:companyLabel];
    
    UILabel *urlLabel=[[UILabel alloc]initWithFrame:CGRectMake((kScreenWidth-100)/2, kScreenHeight-35, 100, 15)];
    urlLabel.text=@"www.wdquan.cn";
    urlLabel.textColor=HEXCOLOR(0xbcbcbc);
    urlLabel.textAlignment=NSTextAlignmentCenter;
    urlLabel.font=TEXT_FONT(13);
}

#pragma mark - ButtonAction

- (void)backButtonAction:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

@end
