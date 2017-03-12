//
//  YMEmployeeTodayModel.m
//  YMMY
//
//  Created by oujinlong on 17/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "YMEmployeeTodayModel.h"

@implementation YMEmployeeTodayModel
+(NSArray*)getEmployeeArray{
    NSMutableArray* array = [NSMutableArray array];
    
    YMEmployeeTodayModel* e1 = [[YMEmployeeTodayModel alloc] init];
    e1.name = @"Lisa";
    e1.job = @"美疗师";
    e1.orderCount = 3;
    e1.iconImageUrl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489325227999&di=51511192108eed91f055143fadd18ae9&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fw%253D580%2Fsign%3D8a4bd66b3bc79f3d8fe1e4388aa0cdbc%2F7255c20735fae6cd38ff38f50fb30f2443a70f5d.jpg";
    
    YMEmployeeTodayModel* e2 = [[YMEmployeeTodayModel alloc] init];
    e2.name = @"美美";
    e2.job = @"美疗师";
    e2.orderCount = 8;
    e2.iconImageUrl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489325248887&di=e2982abda54009aaba6bb327bfe6ffb0&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fforum%2Fpic%2Fitem%2Fd000baa1cd11728bb23f68a3c8fcc3cec3fd2c25.jpg";
    
    YMEmployeeTodayModel* e3 = [[YMEmployeeTodayModel alloc] init];
    e3.name = @"Alan";
    e3.job = @"美疗顾问";
    e3.orderCount = 1;
    e3.iconImageUrl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489325172754&di=e48c413ad005aabdabdb98c3d87ec80e&imgtype=0&src=http%3A%2F%2Fwww.ntzcsw.com%2Ftimage%2F2015%2Fbd116701407.jpg";
    
    
    YMEmployeeTodayModel* e4 = [[YMEmployeeTodayModel alloc] init];
    e4.name = @"Salina";
    e4.job = @"美疗师";
    e4.orderCount = 10;
    e4.iconImageUrl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489325270115&di=12c31b23381887f3cc9450d268065986&imgtype=0&src=http%3A%2F%2Fimg0w.pconline.com.cn%2Fpconline%2F1402%2F27%2F4355076_1%2Fspcgroup%2Fwidth_640%2Cqua_30%2F30.jpg";
    
    YMEmployeeTodayModel* e5 = [[YMEmployeeTodayModel alloc] init];
    e5.name = @"Hebe";
    e5.job = @"美疗师";
    e5.orderCount = 12;
    e5.iconImageUrl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489325270114&di=e591c8ed0cfbd7b3c32ba866aea0f20b&imgtype=0&src=http%3A%2F%2Fimg.qqbody.com%2Fuploads%2Fallimg%2F201501%2F23-141946_526.jpg";
    
    
    YMEmployeeTodayModel* e6 = [[YMEmployeeTodayModel alloc] init];
    e6.name = @"Golden";
    e6.job = @"美疗顾问";
    e6.orderCount = 4;
    e6.iconImageUrl = @"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1489325270113&di=b19834c981889c5c3492adad815acfc4&imgtype=0&src=http%3A%2F%2Fv1.qzone.cc%2Favatar%2F201503%2F14%2F11%2F56%2F5503b172bb0af663.jpg%2521200x200.jpg";
    
    [array addObjectsFromArray:@[e1,e2,e3,e4,e5,e6]];
    
    return  array;
}
@end
