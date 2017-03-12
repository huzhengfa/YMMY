//
//  PrivacyViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PrivacyViewController.h"

@interface PrivacyViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation PrivacyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"私密话题"];
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
    nurLB.text=@"   爱聊什么，不爱聊什么，讨厌推销什么";
    nurLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nurLB.font=[UIFont systemFontOfSize:14];
    [headerView addSubview:nurLB];
    [nurLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
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
