//
//  YMEmployeeTodayCellTableViewCell.h
//  YMMY
//
//  Created by oujinlong on 17/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YMEmployeeTodayModel.h"

@interface YMEmployeeTodayCellTableViewCell : UITableViewCell
+(instancetype)cellWithTableView:(UITableView*)tableView;
@property (nonatomic, strong) YMEmployeeTodayModel *model;

@end
