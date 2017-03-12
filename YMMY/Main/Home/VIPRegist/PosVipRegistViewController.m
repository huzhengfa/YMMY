//
//  PosVipRegistViewController.m
//  YGJPos
//
//  Created by mac on 17/1/9.
//  Copyright © 2017年 HD. All rights reserved.
//

/**
 会员登记控制器
 */
#import "PosVipRegistViewController.h"

@interface PosVipRegistViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

@property (nonatomic, strong) UIButton *womanButton;

@property (nonatomic, strong) UIButton *manButton;

@end

@implementation PosVipRegistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"本月已完成"];
    
    
  
    
    
    
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
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
