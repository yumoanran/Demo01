//
//  ToolTipView.h
//  Demo01
//
//  Created by Deo on 15/10/30.
//  Copyright © 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolTipView : UIView

//声明block的类型
typedef void(^ChangeValueBlock) (NSString *value);

@property (nonatomic,strong)NSArray *titArr;

//1.定义block
@property(nonatomic,copy) ChangeValueBlock block;

- (instancetype)initWithFrame:(CGRect)frame WithArr:(NSArray *)arr;
@end
