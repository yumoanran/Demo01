//
//  DatePickerView.m
//  Demo01
//
//  Created by Deo on 15/10/30.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "DatePickerView.h"
#import "Common.h"
@implementation DatePickerView

- (instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
         self.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"图片上的黑色蒙版2@"]];
        [self _createPickView];
    }
    return self;
}

- (void)_createPickView{
    
    UIButton *bgButton=[UIButton buttonWithType:UIButtonTypeCustom];
    bgButton.frame= CGRectMake(0, 0, kScreenWidth, kScreenHeight-180-30);
    [bgButton setBackgroundColor:[UIColor clearColor]];
    [bgButton addTarget:self action:@selector(bgbuttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:bgButton];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, kScreenHeight-180-30, kScreenWidth, 210)];
    view.backgroundColor=[UIColor whiteColor];
    [self addSubview:view];
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(kScreenWidth-60, 0, 40, 30);
    [button setTitle:@"确定" forState:UIControlStateNormal];
    button.titleLabel.font=TEXT_FONT(15);
    [button setTitleColor:HEXCOLOR(0x1bb2e9)
                 forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:)
     forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:button];
    
    _datePicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 30, kScreenWidth, 180)];
    _datePicker.datePickerMode=UIDatePickerModeDate;
    _datePicker.locale=[[NSLocale alloc]initWithLocaleIdentifier:@"zh_CN"];
    _datePicker.maximumDate=_datePicker.date;
    [_datePicker addTarget:self action:@selector(datePickerAction:) forControlEvents:UIControlEventValueChanged];
    [view addSubview:_datePicker];
}

- (void)datePickerAction:(UIDatePicker *)sender{
    //NSDate格式转换为NSString格式
    NSDate *pickerDate=[_datePicker date];
    NSDateFormatter *pickerFormatter=[[NSDateFormatter alloc]init];
    [pickerFormatter setDateFormat:@"yyyy年MM月dd日"];
    NSString *dateString=[pickerFormatter stringFromDate:pickerDate];
    _dateValue=dateString;
    
    self.block(_dateValue);
}
- (void)buttonAction:(UIButton *)sender{
    self.hidden=YES;
    self.block(_dateValue);
}

- (void)bgbuttonAction:(UIButton *)sender{
    self.hidden=YES;
}
@end
