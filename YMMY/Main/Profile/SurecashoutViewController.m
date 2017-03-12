//
//  SurecashoutViewController.m
//  YMMY
//
//  Created by apple on 2017/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "SurecashoutViewController.h"

@interface SurecashoutViewController (){
    UIView * firstView;

}

@end

@implementation SurecashoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"提现成功"];

    [self setFirstRow];
    
}

-(void)setFirstRow{
    self.view.backgroundColor = colorWithRGB(246, 247, 248);

    firstView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 80)];
//    UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 60, 40)];
//    img.image = [UIImage imageNamed:@"icon_go@3x"];
    UIImageView* img=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_go"]];
    [firstView addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(30);
    }];
    
    
    
    
    UILabel * creditName = [[UILabel alloc]init];
    creditName.text = @"提现成功";
    creditName.font = [UIFont systemFontOfSize:15];
    [firstView addSubview:creditName];
    [creditName mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(img.mas_bottom).offset(10);
    }];
    
    
    UIImageView* lineimg=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_line"]];
    [firstView addSubview:lineimg];
    [lineimg mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(creditName.mas_bottom).offset(20);
    }];
    
    UILabel *kaLB=[[UILabel alloc]init];
    kaLB.text = @"卡号";
    kaLB.font = [UIFont systemFontOfSize:16];
    [firstView addSubview:kaLB];
    [kaLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(lineimg.mas_bottom).offset(10);
    }];
    
    UILabel *nubLB=[[UILabel alloc]init];
    nubLB.text = @"***************** 8888";
    nubLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    nubLB.font = [UIFont systemFontOfSize:14];
    [firstView addSubview:nubLB];
    [nubLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(lineimg.mas_bottom).offset(10);
    }];
    
    UILabel *nameLB=[[UILabel alloc]init];
    nameLB.text = @"姓名";
    nameLB.font = [UIFont systemFontOfSize:16];
    [firstView addSubview:nameLB];
    [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(kaLB.mas_bottom).offset(5);
    }];
    
    UILabel *wangLB=[[UILabel alloc]init];
    wangLB.text = @"王思聪";
    wangLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    wangLB.font = [UIFont systemFontOfSize:14];
    [firstView addSubview:wangLB];
    [wangLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(nubLB.mas_bottom).offset(7);
    }];
    
    UILabel *tureLB=[[UILabel alloc]init];
    tureLB.text = @"金额";
    tureLB.font = [UIFont systemFontOfSize:16];
    [firstView addSubview:tureLB];
    [tureLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(nameLB.mas_bottom).offset(5);
    }];
    
    UILabel *zhiLB=[[UILabel alloc]init];
    zhiLB.text = @"8000";
    zhiLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    zhiLB.font = [UIFont systemFontOfSize:14];
    [firstView addSubview:zhiLB];
    [zhiLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(wangLB.mas_bottom).offset(7);
    }];
    
    UIImageView* lineimg2=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_line"]];
    [firstView addSubview:lineimg2];
    [lineimg2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(0);
        make.top.mas_equalTo(zhiLB.mas_bottom).offset(20);
    }];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"icon_contecon"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(cashout:) forControlEvents:UIControlEventTouchUpInside];
    [firstView addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);
    
    
    
    
    
    
    [self.view addSubview:firstView];
   
}

-(void)cashout:(UIButton *)sender{
    POSLog(@"完成");
    
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
