//
//  UserEditingViewController.h
//  Demo01
//
//  Created by Deo on 15/10/16.
//  Copyright © 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>
//创建代理
@protocol SexChangeDelegate<NSObject>
- (void)sexChoiceWith:(NSInteger)index;
@end

@interface UserEditingViewController : UIViewController

@end
