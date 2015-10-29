//
//  ActivityDetailViewController.m
//  Demo01
//
//  Created by Deo on 15/10/28.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "ActivityDetailViewController.h"
#import "Common.h"

@interface ActivityDetailViewController ()

@end

@implementation ActivityDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=YES;
    _typeLabel.backgroundColor=HEXCOLOR(0x82bdff);
    _typeLabel.layer.cornerRadius=_typeLabel.height/2;
    _typeLabel.clipsToBounds=YES;
    _tagLabel.layer.cornerRadius=_tagLabel.height/2;
    _tagLabel.backgroundColor=HEXCOLOR(0xf099cc);
    _tagLabel.clipsToBounds=YES;
    _dateTagLabel.layer.cornerRadius=_dateTagLabel.height/2;
    _dateTagLabel.backgroundColor=HEXCOLOR(0xf06c6b);
    _dateTagLabel.clipsToBounds=YES;
    
    _line1View.backgroundColor=HEXCOLOR(0xeaeaea);
    _line2View.backgroundColor=HEXCOLOR(0xeaeaea);
    _line3View.backgroundColor=HEXCOLOR(0xeaeaea);
    _line4View.backgroundColor=HEXCOLOR(0xeaeaea);
    
    _dateLabel.textColor=HEXCOLOR(0x939393);
    _timeLabel.textColor=HEXCOLOR(0x939393);
    _peoplecountLabel.textColor=HEXCOLOR(0x939393);
    _nameLabel.textColor=HEXCOLOR(0x939393);
    _interestLabel.textColor=HEXCOLOR(0x939393);
    _countLabel.textColor=HEXCOLOR(0x939393);
    
    _introbleLabel.textColor=HEXCOLOR(0x656869);
    _intoDetailLabel.textColor=HEXCOLOR(0x939393);
    _tagtagLabel.textColor=HEXCOLOR(0x656869);

    [self _createTagView];
}

- (void)_createTagView{

    NSArray *tagName=@[@"芭蕾",@"舞蹈教室",@"摄影"];
    for (int i=0; i<3; i++) {
        UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];

        NSString *name=tagName[i];
        button.frame=CGRectMake(0+i*90, 0, 80, 22);
        button.layer.cornerRadius=button.height/2;
        button.clipsToBounds=YES;
        [button setTitle:name forState:UIControlStateNormal];
        [button setBackgroundColor:HEXCOLOR(0x82bdff)];
        [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        button.titleLabel.font=TEXT_FONT(13);
        [_tagView addSubview:button];
    }
}

- (IBAction)backButtonAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
@end
