//
//  ActivityTableViewCell.m
//  Demo01
//
//  Created by Deo on 15/10/28.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "ActivityTableViewCell.h"

#import "Common.h"

@implementation ActivityTableViewCell

- (void)awakeFromNib {
    self.selectionStyle=UITableViewCellSelectionStyleNone;
    _titLabel.textColor=HEXCOLOR(0x656869);
    _typeLabel.backgroundColor=HEXCOLOR(0x82bdff);
    _typeLabel.layer.cornerRadius=_typeLabel.height/2;
    _typeLabel.clipsToBounds=YES;
    _tagLabel.layer.cornerRadius=_tagLabel.height/2;
    _tagLabel.backgroundColor=HEXCOLOR(0xf099cc);
    _tagLabel.clipsToBounds=YES;
    _dateTagLabel.layer.cornerRadius=_dateTagLabel.height/2;
    _dateTagLabel.backgroundColor=HEXCOLOR(0xf06c6b);
    _dateTagLabel.clipsToBounds=YES;
    
    _lineView.backgroundColor=HEXCOLOR(0xeaeaea);
    _dateLabel.textColor=HEXCOLOR(0xbcbcbc);
    _timeLabel.textColor=HEXCOLOR(0xbcbcbc);
    _nameLabel.textColor=HEXCOLOR(0xbcbcbc);
    _distanceLabel.textColor=HEXCOLOR(0xbcbcbc);
    
    _countLabel.textColor=HEXCOLOR(0x939393);
}

@end
