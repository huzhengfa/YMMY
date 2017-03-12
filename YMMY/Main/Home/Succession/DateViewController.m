//
//  DateViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"特殊日期"];
    [self setUI];
}


-(void)setUI{
    
    
    UIView* headerView =[[UIView alloc]init];
    [self.view addSubview:headerView];
    headerView.backgroundColor=[UIColor colorWithHexString:@"F1F1F1" alpha:1];
    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(40);
    }];
    
    UILabel *nurLB=[[UILabel alloc]init];
    nurLB.text=@"   生日、生理期、国家或者家人的重要日子";
    nurLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nurLB.font=[UIFont systemFontOfSize:14];
    [headerView addSubview:nurLB];
    [nurLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(25);
        make.centerY.mas_equalTo(headerView);
        
        
    }];

    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
