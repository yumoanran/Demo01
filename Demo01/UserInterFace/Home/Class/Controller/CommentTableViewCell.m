//
//  CommentTableViewCell.m
//  Demo01
//
//  Created by Deo on 15/10/30.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "CommentTableViewCell.h"
#import "Common.h"
@implementation CommentTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.headImage = [[UIImageView alloc]init];
        [self.contentView addSubview:self.headImage];
        
        self.nameLabel = [[UILabel alloc]init];
        self.nameLabel.textColor  = HEXCOLOR(0x656869);
        [self.nameLabel setFont:[UIFont systemFontOfSize:15]];
        [self.contentView addSubview:self.nameLabel];
        
        self.timeLabel = [[UILabel alloc]init];
        self.timeLabel.textColor  = HEXCOLOR(0xbcbcbc);
        [self.timeLabel setFont:[UIFont systemFontOfSize:10]];
        [self.contentView addSubview:self.timeLabel];
        
        self.messageLabel = [[UILabel alloc]init];
        self.messageLabel.textColor  = HEXCOLOR(0x939393);
        [self.messageLabel setFont:[UIFont systemFontOfSize:12]];
        [self.contentView addSubview:self.messageLabel];
        
        self.supportImage = [[UIImageView alloc]init];
        [self.contentView addSubview:self.supportImage];
        
        self.supportLabel = [[UILabel alloc]init];
        self.supportLabel.textColor  = HEXCOLOR(0xbcbcbc);
        [self.supportLabel setFont:[UIFont systemFontOfSize:9]];
        [self.contentView addSubview:self.supportLabel];
        
        self.chooseView = [[UIScrollView alloc]init];
        [self.contentView addSubview:self.chooseView];
        
        //        self.chooseTable = [[UITableView alloc]init];
        //        [self.contentView addSubview:self.chooseTable];
    }
    
    return self;
}


@end
