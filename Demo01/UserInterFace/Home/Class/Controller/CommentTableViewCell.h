//
//  CommentTableViewCell.h
//  Demo01
//
//  Created by Deo on 15/10/30.
//  Copyright © 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CommentTableViewCell : UITableViewCell
@property (nonatomic,strong)UIImageView *headImage;
@property (nonatomic,strong)UILabel *nameLabel;
@property (nonatomic,strong)UILabel *timeLabel;
@property (nonatomic,strong)UILabel *messageLabel;
@property (nonatomic,strong)UIImageView *supportImage;
@property (nonatomic,strong)UILabel *supportLabel;
@property (nonatomic,strong)UIScrollView *chooseView;

@end
