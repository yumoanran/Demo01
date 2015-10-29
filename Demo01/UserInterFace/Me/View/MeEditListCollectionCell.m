//
//  MeEditListCollectionCell.m
//  Demo01
//
//  Created by Deo on 15/10/16.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "MeEditListCollectionCell.h"
#import "Common.h"
@implementation MeEditListCollectionCell

- (void)awakeFromNib {
    _nameLabel.textColor=[UIColor colorWithRed:101/255.0 green:104/255.0 blue:105/255.0 alpha:1];
    _contentTextField.textColor=HEXCOLOR(0x939393);
    
    _contentLabel=[[UILabel alloc]initWithFrame:CGRectMake(_nameLabel.right+22, 14, kScreenWidth-42-_nameLabel.right, 20)];
    _contentLabel.textColor=HEXCOLOR(0x939393);
    _contentLabel.font=TEXT_FONT(13);
    [self.contentView addSubview:_contentLabel];
}


@end
