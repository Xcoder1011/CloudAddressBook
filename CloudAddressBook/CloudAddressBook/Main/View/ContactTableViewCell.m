//
//  ContactTableViewCell.m
//  CloudAddressBook
//
//  Created by KUN on 17/7/20.
//  Copyright © 2017年 lemon. All rights reserved.
//

#import "ContactTableViewCell.h"

@interface ContactTableViewCell ()

@property (nonatomic , strong) UIImageView *avatar;

@property (nonatomic , strong) UILabel *nameLabel;

@property (nonatomic , strong) UILabel *phoneLabel;

@end


@implementation ContactTableViewCell

- (void)configureCell {
    
    self.selectionStyle = UITableViewCellSelectionStyleNone;

}

- (void)setupSubviews {
    
    [self.contentView addSubview:self.avatar];
    [self.contentView addSubview:self.nameLabel];
    [self.contentView addSubview:self.phoneLabel];
    
    [self.avatar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).offset(10);
        make.left.equalTo(self.contentView.mas_left).offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).offset(-10);
        make.height.equalTo(self.avatar.mas_width).multipliedBy(1.0);
    }];
    
    [self.nameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.avatar.mas_top).offset(0);
        make.height.mas_equalTo(40);
        make.left.equalTo(self.avatar.mas_left).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
    
    [self.phoneLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.nameLabel.mas_bottom).offset(5);
        make.height.mas_equalTo(20);
        make.left.equalTo(self.avatar.mas_left).offset(10);
        make.right.equalTo(self.contentView.mas_right).offset(-10);
    }];
}

- (void)loadContent {
    
}

- (void)clickEvent {
    
}

-(UIImageView *)avatar {

    if (!_avatar) {
        _avatar = [[UIImageView alloc] initWithFrame:CGRectZero];
    }
    return _avatar;
}

- (UILabel *)nameLabel {
    
    if (!_nameLabel) {
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, self.width - 20, 30)];
        _nameLabel.font = [UIFont systemFontOfSize:17];
    }
    return _nameLabel;
}


- (UILabel *)phoneLabel {
    
    if (!_phoneLabel) {
        _phoneLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 40, self.width - 60, 15)];
        _nameLabel.font = [UIFont systemFontOfSize:12];
    }
    return _phoneLabel;
}


@end
