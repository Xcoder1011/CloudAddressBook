//
//  MainViewController.m
//  CloudAddressBook
//
//  Created by KUN on 17/7/20.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic , strong) UITableView *tableview;

@property (nonatomic , strong) NSMutableArray *adapterArray;
@end

@implementation MainViewController


- (void)setup {

    self.title = @"通讯录";
    
    [super setup];
    
    
}




#pragma mark - Lazy loading

- (NSMutableArray *)adapterArray {
    
    if (!_adapterArray) {
        _adapterArray = @[].mutableCopy;
    }
    return _adapterArray;
}

- (UITableView *)tableview {
    
    if (!_tableview) {
        _tableview = [[UITableView alloc] initWithFrame:self.contentView.bounds style:UITableViewStylePlain];
        _tableview.delegate = self;
        _tableview.dataSource = self;
        _tableview.rowHeight = 65.f;
        _tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _tableview;
}

#pragma mark - UITableViewDataSource & UITableViewDelegate

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return (UITableViewCell *)[tableView dequeueReusableCustomTableViewCellWithCellAdapter:self.adapterArray[indexPath.row] indexPath:indexPath controller:self];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.adapterArray.count ;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [(CustomTableViewCell *)[tableView cellForRowAtIndexPath:indexPath] clickEvent];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

@end
