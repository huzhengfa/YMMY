//
//  YMEmployeeTodayCellTableViewCell.m
//  YMMY
//
//  Created by oujinlong on 17/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "YMEmployeeTodayCellTableViewCell.h"
#import "Masonry.h"
#import "UIImageView+WebCache.h"
@interface YMEmployeeTodayCellTableViewCell ()
@property (nonatomic, strong) UIImageView *iconImageView;
@property (nonatomic, strong) UILabel *nameLB;
@property (nonatomic, strong) UILabel *jobLB;
@property (nonatomic, strong) UIButton *messageButton;
@property (nonatomic, strong) UIButton *phoneButton;
@property (nonatomic, strong) UILabel *orderCountLB;

@end
@implementation YMEmployeeTodayCellTableViewCell
+(instancetype)cellWithTableView:(UITableView *)tableView{
    NSString* identifier = @"employeeTodayCell";
    YMEmployeeTodayCellTableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[YMEmployeeTodayCellTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        NSLog(@"123");
    }
    return cell;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]){
        [self setupMain];
    }
    return self;
}

-(void)setupMain{
    self.iconImageView = [[UIImageView alloc] init];
    [self.contentView addSubview:self.iconImageView];
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.centerY.mas_equalTo(0);
        make.size.mas_equalTo(CGSizeMake(40, 40));
    }];

    
    self.nameLB = [[UILabel alloc] init];
    [self.contentView addSubview:self.nameLB];
    self.nameLB.font = [UIFont boldSystemFontOfSize:16];
    [self.nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.iconImageView.mas_right).offset(12);
        make.centerY.mas_equalTo(self.iconImageView);
    }];
    
    
    self.jobLB = [[UILabel alloc] init];
    [self.contentView addSubview:self.jobLB];
    self.jobLB.font = [UIFont systemFontOfSize:14];
    [self.jobLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.nameLB.mas_right).offset(12);
        make.centerY.mas_equalTo(self.iconImageView);
    }];
    
    self.messageButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.messageButton setImage:[UIImage imageNamed:@"meges"] forState:UIControlStateNormal];
    [self.contentView addSubview:self.messageButton];
    [self.messageButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(0);
        make.right.mas_equalTo(-15);
    }];
    
    self.phoneButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.phoneButton setImage:[UIImage imageNamed:@"ipone_icon"] forState:UIControlStateNormal];
    [self.contentView addSubview:self.phoneButton];
    [self.phoneButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(0);
        make.right.mas_equalTo(self.messageButton.mas_left).offset(-15);
    }];

    
    self.orderCountLB = [[UILabel alloc] init];
    [self.contentView addSubview:self.orderCountLB];
    self.orderCountLB.font = [UIFont systemFontOfSize:14];
    [self.orderCountLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(self.phoneButton.mas_left).offset(-15);
        make.centerY.mas_equalTo(self.iconImageView);
    }];
}

-(void)setModel:(YMEmployeeTodayModel *)model{
    _model = model;

//    [self.iconImageView setImage:[UIImage imageNamed:@"22222"]];
    
    [self.iconImageView sd_setImageWithURL:[NSURL URLWithString:model.iconImageUrl]];
    
    self.nameLB.text = model.name;

    self.jobLB.text =  [@"💎" stringByAppendingString:model.job];
    
    self.orderCountLB.text = [[NSString stringWithFormat:@"%zd",model.orderCount] stringByAppendingString:@"单"];
}

@end
