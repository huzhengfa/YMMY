//
//  YMEmployeeTodayModel.h
//  YMMY
//
//  Created by oujinlong on 17/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface YMEmployeeTodayModel : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *iconImageUrl;
@property (nonatomic, strong) NSString *job;
@property (nonatomic, assign) NSInteger orderCount;


+(NSArray*)getEmployeeArray;
@end
