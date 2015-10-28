//
//  DiscoverViewController.m
//  Demo01
//
//  Created by 俞家模 on 15/10/9.
//  Copyright (c) 2015年 deo. All rights reserved.
//

#import "DiscoverViewController.h"

#import "Common.h"
#import "UIViewExt.h"

#import "ClassNaviView.h"
#import "BannerView.h"
#import "DiscoverTableViewCell.h"
#import "OtherInCenterViewController.h"

#import "ActivityViewController.h"

#define kDiscoverTableViewCellIdentifier @"kDiscoverTableViewCellIdentifier"
@interface DiscoverViewController ()<UITableViewDataSource,UITableViewDelegate>{
    
    UIView *_headView;
    UITableView *_discoverTableView;
    ClassNaviView *_naviView;
}
@property(nonatomic,strong)NSMutableArray *data;
@end

@implementation DiscoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self _createHeadView];
    [self _createViews];
    [self _createNaviView];
}

- (void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBarHidden=YES;
}
//创建头视图
- (void)_createHeadView{
    _headView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 188+40+8+5+29)];
    BannerView *bannerView=[[BannerView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 188)];
    bannerView.bannerImgArr=@[@"nearbanner2@_1",
                              @"nearbanner2@_2",
                              @"nearbanner2@_3",
                              @"nearbanner2@_4",
                              @"nearbanner2@_5"];
    [_headView addSubview:bannerView];
    
    //Button
    UIButton *activityButton=[UIButton buttonWithType:UIButtonTypeCustom];
    activityButton.frame=CGRectMake(kScreenWidth*105/750, bannerView.height+10, 100, 20);
    UIImageView *leftImgView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 1, 20, 18)];
    leftImgView.image=[UIImage imageNamed:@"activity2@"];
    [activityButton addSubview:leftImgView];
    
    UILabel *leftLabel=[[UILabel alloc]initWithFrame:CGRectMake(33, 0, 67, 20)];
    leftLabel.text=@"活动赛事";
    leftLabel.font=[UIFont systemFontOfSize:15];
    leftLabel.textColor=[UIColor colorWithRed:101/255.0 green:104/255.0 blue:105/255.0 alpha:1];
    [activityButton addSubview:leftLabel];
    [activityButton addTarget:self
                       action:@selector(activityButtonAction:)
             forControlEvents:UIControlEventTouchUpInside];
    [_headView addSubview:activityButton];
    
    UIButton *hotButton=[UIButton buttonWithType:UIButtonTypeCustom];
    hotButton.frame=CGRectMake(kScreenWidth-kScreenWidth*105/750-100,bannerView.height+10, 100, 20);
    UIImageView *rightImgView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 1, 20, 18)];
    rightImgView.image=[UIImage imageNamed:@"hottopic2@"];
    [hotButton addSubview:rightImgView];
    
    UILabel *rightLabel=[[UILabel alloc]initWithFrame:CGRectMake(33, 0, 67, 20)];
    rightLabel.text=@"热门群组";
    rightLabel.font=[UIFont systemFontOfSize:15];
    rightLabel.textColor=[UIColor colorWithRed:101/255.0 green:104/255.0 blue:105/255.0 alpha:1];
    [hotButton addSubview:rightLabel];
    [_headView addSubview:hotButton];
    
    //
    UIView *centerView=[[UIView alloc]initWithFrame:CGRectMake(kScreenWidth/2, bannerView.height+10, 1, 20)];
    centerView.backgroundColor=[UIColor colorWithRed:234/255.0 green:234/255.0 blue:234/255.0 alpha:1];
    [_headView addSubview:centerView];
    
    //
    UIView *colorView=[[UIView alloc]initWithFrame:CGRectMake(0, bannerView.height+40, kScreenWidth, 5)];
    colorView.backgroundColor=[UIColor colorWithRed:248/255.0 green:248/255.0 blue:248/255.0 alpha:1];
    [_headView addSubview:colorView];
    
    //筛选按钮
    UIButton *choiceButton =[UIButton buttonWithType:UIButtonTypeCustom];
    choiceButton.frame=CGRectMake(kScreenWidth-20-31, colorView.bottom+8, 31, 16);
    [choiceButton setTitle:@"筛选" forState:UIControlStateNormal];
    choiceButton.titleLabel.font=[UIFont systemFontOfSize:15];
    [choiceButton setTitleColor:[UIColor colorWithRed:101/255.0 green:104/255.0 blue:105/255.0 alpha:1] forState:UIControlStateNormal];
    [choiceButton addTarget:self
                     action:@selector(choiceButtonAction:)
           forControlEvents:UIControlEventTouchUpInside];
    [_headView addSubview:choiceButton];
    
    UILabel *nearLabel=[[UILabel alloc]initWithFrame:CGRectMake(10, colorView.bottom+24, 45, 16)];
    nearLabel.textColor=[UIColor colorWithRed:147/255.0 green:147/255.0 blue:147/255.0 alpha:1];
    nearLabel.text=@"附近的人";
    nearLabel.font=[UIFont systemFontOfSize:11];
    [_headView addSubview:nearLabel];
    UIView *vlineView=[[UIView alloc]initWithFrame:CGRectMake(18+45, colorView.bottom+30, kScreenWidth-64, 1)];
    vlineView.backgroundColor=[UIColor colorWithRed:234/255.0 green:234/255.0 blue:234/255.0 alpha:1];
    [_headView addSubview:vlineView];
}

- (void)_createViews{
    _discoverTableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight-kTabBarHeight) style:UITableViewStylePlain];
    
    _discoverTableView.delegate=self;
    _discoverTableView.dataSource=self;
    _discoverTableView.separatorColor=[UIColor clearColor];
    [_discoverTableView registerNib:[UINib nibWithNibName:@"DiscoverTableViewCell" bundle:nil] forCellReuseIdentifier:kDiscoverTableViewCellIdentifier];
   
    _discoverTableView.tableHeaderView=_headView;
    [self.view addSubview:_discoverTableView];
}

- (void)_createNaviView{
    _naviView=[[ClassNaviView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth,kNavigationBarHeight)];
    _naviView.backgroundColor=[UIColor clearColor];
    [self.view insertSubview:_naviView atIndex:self.view.subviews.count];
    
    [_naviView.backButton removeFromSuperview];
    _naviView.titleLabel.text=@"发现";
}

#pragma mark - TableView Delegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 7;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    DiscoverTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:kDiscoverTableViewCellIdentifier forIndexPath:indexPath];
    cell.selectionStyle=UITableViewCellSelectionStyleNone;
    cell.model=self.data[indexPath.row];
    
    return cell;
}

#pragma mark - tableView Delegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    OtherInCenterViewController *otherInVC=[[OtherInCenterViewController alloc]init];
    [self presentViewController:otherInVC animated:YES completion:nil];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat offSetY=scrollView.contentOffset.y;
    if (offSetY<44) {
        _naviView.backgroundColor=[UIColor clearColor];
//        _naviView.titleLabel.textColor=[UIColor whiteColor];
    }else{
        _naviView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"底部背景2@"]];
    }
}

#pragma mark - Button Action
//筛选按钮
- (void)choiceButtonAction:(UIButton *)sender{
    
}

//活动赛事
- (void)activityButtonAction:(UIButton *)sender{
    ActivityViewController *activityVC=[[ActivityViewController alloc]init];
    [self.navigationController pushViewController:activityVC animated:YES];
}

//热门群组

@end
