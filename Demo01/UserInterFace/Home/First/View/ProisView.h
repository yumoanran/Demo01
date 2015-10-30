//
//  ProisView.h
//  Demo01
//
//  Created by Deo on 15/10/10.
//  Copyright (c) 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ToolTipView;
@class BannerView;
@interface ProisView : UIView<UITableViewDataSource,UITableViewDelegate>{
    BannerView *_bannerView;
    
    UITableView *_stateTableView;
    
    ToolTipView *_whiteView;
}


@end
