//
//  MeListCollectionCell.m
//  Demo01
//
//  Created by Deo on 15/10/16.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "MeListCollectionCell.h"

@implementation MeListCollectionCell

- (void)awakeFromNib {
    _nameLabel.textColor=[UIColor colorWithRed:101/255.0 green:104/255.0 blue:105/255.0 alpha:1];
    _countLabel.textColor=[UIColor colorWithRed:147/255.0 green:147/255.0 blue:147/255.0 alpha:1];
}

@end
