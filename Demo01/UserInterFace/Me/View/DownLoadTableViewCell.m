//
//  DownLoadTableViewCell.m
//  Demo01
//
//  Created by Deo on 15/10/29.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "DownLoadTableViewCell.h"
#import "Common.h"

@implementation DownLoadTableViewCell

- (void)awakeFromNib {
    
//    UIButton *deleteButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    deleteButton.frame=CGRectMake(kScreenWidth, 3, 86, 74);
//    [deleteButton setTitle:@"删除" forState:UIControlStateNormal];
//    [deleteButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    deleteButton.titleLabel.font=TEXT_FONT(15);
//    
//    [self.contentView addSubview:deleteButton];
    _capityLabel.textColor=HEXCOLOR(0x939393);
    [_downLoadButton setTitle:@"继续下载" forState:UIControlStateNormal];
    [_downLoadButton setTitleColor:HEXCOLOR(0x939393) forState:UIControlStateNormal];
    [_downLoadButton setTitle:@"80%" forState:UIControlStateSelected];
    
    _titLabel.textColor=HEXCOLOR(0x656869);
}



@end
