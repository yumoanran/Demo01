//
//  ActivityViewController.m
//  Demo01
//
//  Created by Deo on 15/10/28.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "ActivityViewController.h"

#import "Common.h"

#import "HotActivityTableView.h"
#import "localActivityTableView.h"
#import "MyActivityTableView.h"
#import "ChangeScrollView.h"

@interface ActivityViewController ()<UIScrollViewDelegate>{
    UIView *_choiceView;
    ChangeScrollView *_changeScrollView;
}

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=HEXCOLOR(0xf8f8f8);
    _selectedIndex=1;
    self.navigationController.navigationBarHidden=NO;
    [self _createNaviView];
    [self _createChoiceView];
    [self _createScrollView];
}

- (void)_createNaviView{
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:28/255.0 green:28/255.0 blue:28/255.0 alpha:0.88]];
    self.title=@"活动赛事";
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:17]}];
    
    UIButton *backButton=[UIButton buttonWithType:UIButtonTypeCustom];
    backButton.frame=CGRectMake(0, 0, 9, 15);
    [backButton setImage:[UIImage imageNamed:@"灰返回2@"] forState:UIControlStateNormal];
    
    [backButton addTarget:self
                   action:@selector(backButtonAction:)
         forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *leftItem=[[UIBarButtonItem alloc]initWithCustomView:backButton];
    self.navigationItem.leftBarButtonItem=leftItem;
}

- (void)_createChoiceView{
    NSArray *titArr=@[@"热门",@"同城",@"我的"];
    _choiceView=[[UIView alloc]initWithFrame:CGRectMake(0, kNavigationBarHeight, kScreenWidth, 44)];
    _choiceView.backgroundColor=[UIColor colorWithRed:28/255.0 green:28/255.0 blue:28/255.0 alpha:0.94];
    [self.view addSubview:_choiceView];
    
    CGFloat buttonWidth=kScreenWidth/3;
    for (int i=0; i<3; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
        button.frame=CGRectMake(0+buttonWidth*i, 0, buttonWidth, 44);
        button.tag=4000+i;
        [button setTitle:titArr[i]
                forState:UIControlStateNormal];
        button.titleLabel.font=TEXT_FONT(17);
        [button setTitleColor:HEXCOLOR(0x939393)
                     forState:UIControlStateNormal];
        [button setTitleColor:HEXCOLOR(0x2d99fe)
                     forState:UIControlStateSelected];
        [button setBackgroundColor:[UIColor clearColor]];
        
        [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        [_choiceView addSubview:button];
        if (i==_selectedIndex) {
            button.selected=YES;
        }
    }
}

//
- (void)_createScrollView{
    HotActivityTableView *hotTableView=[[HotActivityTableView alloc]initWithFrame:CGRectMake(kScreenWidth*0, 0, kScreenWidth,kScreenHeight-kNavigationBarHeight-44)];
    localActivityTableView *localTableView=[[localActivityTableView alloc]initWithFrame:CGRectMake(kScreenWidth*1, 0, kScreenWidth, kScreenHeight-kNavigationBarHeight-44)];
    MyActivityTableView *myActiTableView=[[MyActivityTableView alloc]initWithFrame:CGRectMake(kScreenWidth*2, 0, kScreenWidth, kScreenHeight-kNavigationBarHeight-44)];
    
    _changeScrollView=[[ChangeScrollView alloc]initWithFrame:CGRectMake(0, kNavigationBarHeight+44, kScreenWidth, kScreenHeight-kNavigationBarHeight-44) withFirstTableView:hotTableView withSecondTableView:localTableView withThirdTableView:myActiTableView];
    _changeScrollView.contentSize=CGSizeMake(kScreenWidth*3, _changeScrollView.height);
    _changeScrollView.pagingEnabled=YES;
    _changeScrollView.delegate=self;
    _changeScrollView.contentOffset=CGPointMake(kScreenWidth*_selectedIndex, 0);
    [self.view addSubview:_changeScrollView];
}

- (void)setSelectedIndex:(int)selectedIndex{
    if (_selectedIndex!=selectedIndex) {
        UIButton *preButton=(UIButton *)[_choiceView viewWithTag:(_selectedIndex+4000)];
        preButton.selected=!preButton.selected;
        
        UIButton *currentButton=(UIButton *)[_choiceView viewWithTag:(selectedIndex+4000)];
        currentButton.selected=!currentButton.selected;
        
        _changeScrollView.contentOffset=CGPointMake(kScreenWidth*selectedIndex, 0);
        _selectedIndex=selectedIndex;
    }
}

#pragma mark - ButtonAction
- (void)backButtonAction:(UIButton *)sender{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)buttonAction:(UIButton *)sender{
    self.selectedIndex=(int)sender.tag-4000;
}
#pragma mark - ScrollView Delegate
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    self.selectedIndex=scrollView.contentOffset.x/kScreenWidth;
    
}
@end
