//
//  DownLoadTableViewCell.h
//  Demo01
//
//  Created by Deo on 15/10/29.
//  Copyright © 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DownLoadTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *postImgView;
@property (weak, nonatomic) IBOutlet UILabel *titLabel;
@property (weak, nonatomic) IBOutlet UILabel *capityLabel;
@property (weak, nonatomic) IBOutlet UIButton *downLoadButton;

@end
