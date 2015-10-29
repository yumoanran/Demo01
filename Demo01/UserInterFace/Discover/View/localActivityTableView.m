//
//  localActivityTableView.m
//  Demo01
//
//  Created by Deo on 15/10/28.
//  Copyright © 2015年 deo. All rights reserved.
//

#import "localActivityTableView.h"
#import "ActivityTableViewCell.h"
#import "ActivityDetailViewController.h"
#import "UIView+UIViewController.h"
#define kActivityTableViewCellIdentifier @"k_Activity_TableView_Cell_ID"

@implementation localActivityTableView

- (instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if (self) {
        self.delegate=self;
        self.dataSource=self;
        self.backgroundColor=[UIColor clearColor];
         self.separatorStyle=UITableViewCellSeparatorStyleNone;
        [self registerNib:[UINib nibWithNibName:@"ActivityTableViewCell" bundle:nil] forCellReuseIdentifier:kActivityTableViewCellIdentifier];
    }
    return self;
}

#pragma mark - TableView DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 4;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ActivityTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:kActivityTableViewCellIdentifier forIndexPath:indexPath];
    cell.backgroundColor=[UIColor clearColor];
    return cell;
}

#pragma mark - TableView Delagate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 172;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIStoryboard *stb=[UIStoryboard storyboardWithName:@"Discover" bundle:nil];
    
    ActivityDetailViewController *detailVC=[stb instantiateViewControllerWithIdentifier:@"ActivityDetailViewControllerID"];
    [self.viewController.navigationController pushViewController:detailVC animated:YES];
}
@end
