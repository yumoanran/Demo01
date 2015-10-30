//
//  DatePickerView.h
//  Demo01
//
//  Created by Deo on 15/10/30.
//  Copyright © 2015年 deo. All rights reserved.
//

#import <UIKit/UIKit.h>

//声明block的类型
typedef void(^SenderValueBlock) (NSString *value);

@interface DatePickerView : UIView{
    UIDatePicker *_datePicker;
    NSString *_dateValue;
}
//1.定义block
@property(nonatomic,copy) SenderValueBlock block;

@end
