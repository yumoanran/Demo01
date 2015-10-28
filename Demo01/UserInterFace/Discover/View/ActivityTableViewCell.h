//
//  ActivityTableViewCell.h
//  Demo01
//
//  Created by Deo on 15/10/28.
//  Copyright © 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ActivityTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *postImgView;
@property (weak, nonatomic) IBOutlet UILabel *titLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *tagLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateTagLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *distanceLabel;
@property (weak, nonatomic) IBOutlet UIImageView *lineImgView;
@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@end
