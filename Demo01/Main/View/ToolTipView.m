//
//  ToolTipView.m
//  Demo01
//
//  Created by Deo on 15/10/30.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "ToolTipView.h"
#import "Common.h"

@implementation ToolTipView

- (instancetype)initWithFrame:(CGRect)frame WithArr:(NSArray *)arr{
    
    self=[super initWithFrame:frame];
    if (self) {
        _titArr=arr;
        self.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"图片上的黑色蒙版2@"]];
        [self _createWhiteView];
    }
    return self;
}

//创建筛选弹窗
- (void)_createWhiteView{

    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(0, kNavigationBarHeight, kScreenWidth, 54*3+12);
    [button setBackgroundColor:[UIColor clearColor]];
    [button addTarget:self
               action:@selector(buttonAction:)
     forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    
    for (int i=0; i<3; i++) {
        UIView *alerView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 54)];
        alerView.backgroundColor=[UIColor whiteColor];
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
        button.backgroundColor=[UIColor whiteColor];
        button.frame=CGRectMake((kScreenWidth-60)/2, (alerView.height-16)/2, 60, 16);
        button.titleLabel.textAlignment=NSTextAlignmentCenter;
        button.titleLabel.font=[UIFont systemFontOfSize:15];
        button.tag=5000+i;
        [button setTitleColor:HEXCOLOR(0x656869)
                     forState:UIControlStateNormal];
        [button setTitle:_titArr[i]
                forState:UIControlStateNormal];
        [alerView addSubview:button];
        [self addSubview:alerView];
        [button addTarget:self
                   action:@selector(buttonAction:)
         forControlEvents:UIControlEventTouchUpInside];
        if (i==0) {
            
            alerView.frame=CGRectMake(0, self.height-54*3-1-11,kScreenWidth,55);
        }else if (i==1){
            
            alerView.origin=CGPointMake(0,self.height-54*2-11);
        }else{
            
            alerView.origin=CGPointMake(0, self.height-54);
            [button setTitleColor:[UIColor colorWithRed:27/255.0 green:178/255.0 blue:233/255.0 alpha:1]
                         forState:UIControlStateNormal];
        }
    }
    UIView *lineView=[[UIView alloc]initWithFrame:CGRectMake(0, self.height-54*2-11, kScreenWidth, 1)];
    lineView.backgroundColor=[UIColor colorWithRed:234/255.0 green:234/255.0 blue:234/255.0 alpha:1];
    [self addSubview:lineView];
}

#pragma mark - ButtonAction
- (void)buttonAction:(UIButton *)sender{
    //调用block
    if (sender.tag==5000) {
        //选项一
        if (self.block) {
            self.block(_titArr[0]);
        }
    }else if (sender.tag==5001){
        //选项二
        if (self.block) {
            self.block(_titArr[1]);
        }
    }
        self.hidden=YES;
}


@end
