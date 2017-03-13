//
//  PosSystemSetViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosSystemSetViewController.h"
#import "PosSetopasswordViewController.h"
@interface PosSystemSetViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation PosSystemSetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title=@"收入报表";
    self.view.backgroundColor = colorWithRGB(246, 247, 248);

}
//-(void)setupUI{
//    
//    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
//    [self.view addSubview:self.tableView];
//    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.bottom.mas_equalTo(0);
//        make.top.mas_equalTo(0);
//    }];
//    UIView* footView = [PosTool viewWithBackgroundColor:@"" alpha:1];
//    footView.backgroundColor = [UIColor clearColor];
//    footView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 250);
//    UIButton* loginButton = [PosTool buttonWithImage:nil title:@"注销登录"];
//    [loginButton setBackgroundImage:[UIImage imageNamed:@"btn"] forState:UIControlStateNormal];
//    [footView addSubview:loginButton];
//    [loginButton setTitleColor:COLOR_WHITE forState:UIControlStateNormal];
//    [loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.centerX.mas_equalTo(0);
//        make.top.mas_equalTo(0);
//        make.left.mas_equalTo(10);
//        make.right.mas_equalTo(-10);
//        make.height.mas_equalTo(45);
//    }];
//    [loginButton addTarget:self action:@selector(getout) forControlEvents:UIControlEventTouchUpInside];
//    self.tableView.tableFooterView = footView;
//    
//}
//
//
//#pragma mark UITableViewDataSource/delegate
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return 3;
//}
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    if (section==0) {
//        return 2;
//    }else if (section==1){
//        return 2;
//        
//    }else{
//        return 1;
//    }
//    
//}
//
//-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    static NSString* identifier = @"sys";
//    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        
//        cell.separatorInset = UIEdgeInsetsMake(0, -20, 0, 0);
//        
//    }
//    
//    [self setCellWithIndexPath:indexPath cell:cell];
//    
//    return cell;
//}
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 0.01;
//}
//
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    return 44;
//}
//#pragma mark Cell
//-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
//    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
//    CGFloat left_panding = 10;
//    if (indexPath.section==0) {
//        if (indexPath.row==0) {
//            UILabel *comLB=[[UILabel alloc]init];
//            comLB.text=@"商品选择";
//            comLB.font=[UIFont systemFontOfSize:16];
//            comLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//            [cell addSubview:comLB];
//            
//            [comLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(left_panding);
//                make.center.mas_equalTo(cell);
//            }];
//            UILabel* stateLB = [[UILabel alloc] init];
//            stateLB.text = @"正常";
//            stateLB.font = [UIFont systemFontOfSize:14];
//            stateLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
//            [cell addSubview:stateLB];
//            [stateLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.right.mas_equalTo(-10);
//                make.centerY.mas_equalTo(cell);
//            }];
//            
//            
//        } else if (indexPath.row==1) {
//            UILabel *nameLB=[[UILabel alloc]init];
//            nameLB.text=@"默认会员卡类型";
//            nameLB.font=[UIFont systemFontOfSize:16];
//            nameLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//            [cell addSubview:nameLB];
//            
//            [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(left_panding);
//                make.center.mas_equalTo(cell);
//            }];
//            
//            
//            UILabel* stateLB2 = [[UILabel alloc] init];
//            stateLB2.text = @"磁条卡";
//            stateLB2.font = [UIFont systemFontOfSize:14];
//            stateLB2.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
//            [cell addSubview:stateLB2];
//            [stateLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.right.mas_equalTo(-10);
//                make.centerY.mas_equalTo(cell);
//            }];
//            
//            
//        }
//
//    }else if(indexPath.section==1){
//        if (indexPath.row==0) {
//            UILabel *pasLB=[[UILabel alloc]init];
//            pasLB.text=@"修改密码";
//            pasLB.font=[UIFont systemFontOfSize:16];
//            pasLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//            [cell addSubview:pasLB];
//            
//            [pasLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(left_panding);
//                make.center.mas_equalTo(cell);
//            }];
//            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//
//        
//        }else if (indexPath.row==1){
//            UILabel *versionLB=[[UILabel alloc]init];
//            versionLB.text=@"版本更新";
//            versionLB.font=[UIFont systemFontOfSize:16];
//            versionLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//            [cell addSubview:versionLB];
//            
//            [versionLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(left_panding);
//                make.center.mas_equalTo(cell);
//            }];
//            
//            UILabel* nubB2 = [[UILabel alloc] init];
//            nubB2.text = @"V1.0";
//            nubB2.font = [UIFont systemFontOfSize:14];
//            nubB2.textColor = [UIColor colorWithHexString:@"#F5A623" alpha:1 ];
//            [cell addSubview:nubB2];
//            [nubB2 mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.right.mas_equalTo(-10);
//                make.centerY.mas_equalTo(cell);
//            }];
//            
//           
//        }
//    }else{
//        UILabel *aboutLB=[[UILabel alloc]init];
//        aboutLB.text=@"关于我们";
//        aboutLB.font=[UIFont systemFontOfSize:16];
//        aboutLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//        [cell addSubview:aboutLB];
//        
//        [aboutLB mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_equalTo(left_panding);
//            make.center.mas_equalTo(cell);
//        }];
//        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//        
//        
//        
//    }
//    
//}
//
//
//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (indexPath.section==1) {
//        if (indexPath.row==0) {
////       修改密码
//            PosSetopasswordViewController *vc=[[PosSetopasswordViewController alloc]init];
//            [self.navigationController pushViewController:vc animated:YES];
//        }
//        
//    }else{
//        //关于我们
//        PosAboutViewController *vc =[[PosAboutViewController alloc]init];
//        [self.navigationController pushViewController:vc animated:YES];
//        
//    }
//    
//    
//    
//}
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}
//
//
//-(void)getout{
//    POSLog(@"getout");
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
