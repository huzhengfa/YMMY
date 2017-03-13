//
//  PersonalinformationViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "PersonalinformationViewController.h"

@interface PersonalinformationViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation PersonalinformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"个人信息"];
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
    nurLB.text=@"基本信息";
    nurLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nurLB.font=[UIFont systemFontOfSize:14];
    [headerView addSubview:nurLB];
    [nurLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.centerY.mas_equalTo(headerView);
        
        
    }];
    
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(headerView.mas_bottom);
    }];

    
    
    
}




#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 6;
    }
    
    return 4;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identifier = @"cell";
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
        cell.separatorInset = UIEdgeInsetsMake(0, -20, 0, 0);
        
    }
    
    [self setCellWithIndexPath:indexPath cell:cell];
    
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.01;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section==1) {
        if (indexPath.row==1) {
            return 140;
        }
    }
    return 60;
}

#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    if (indexPath.section==0) {
        if (indexPath.row<6) {
            NSArray* holders = @[@"头像",@"名字",@"性别",@"年龄",@"手机号",@"微信号"];
            UILabel* nameLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:holders[indexPath.row]];
            [cell.contentView addSubview:nameLB];
            [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(20);
                make.centerY.mas_equalTo(0);
            }];
        
        }if (indexPath.row==0) {
            
            UIImageView* imageView = [PosTool imageViewWithImageName:@"icon_tou"];
            [cell.contentView addSubview:imageView];
            [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        }else if (indexPath.row==1){
            UILabel *nubLB=[[UILabel alloc]init];
            nubLB.text=@"王泽亚";
            nubLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            nubLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:nubLB];
            [nubLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-20);
                make.centerY.mas_equalTo(cell);
            }];

        }else if (indexPath.row==2){
            UILabel *sexLB=[[UILabel alloc]init];
            sexLB.text=@"男";
            sexLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            sexLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:sexLB];
            [sexLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else if (indexPath.row==3){
            
            
            UILabel *ageLB=[[UILabel alloc]init];
            ageLB.text=@"22";
            ageLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            ageLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:ageLB];
            [ageLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        }else if (indexPath.row==4){
            
            UILabel *phoneLB=[[UILabel alloc]init];
            phoneLB.text=@"8888888888";
            phoneLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            phoneLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:phoneLB];
            [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-20);
                make.centerY.mas_equalTo(cell);
            }];

        }
        if (indexPath.row==5) {
            UILabel *wechatLB=[[UILabel alloc]init];
            wechatLB.text=@"8888888888";
            wechatLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            wechatLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:wechatLB];
            [wechatLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        }
    }if (indexPath.section==1) {
        if (indexPath.row==0) {
            UILabel *titleLB=[[UILabel alloc]init];
            titleLB.text=@"身份证的正反面";
            titleLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            titleLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:titleLB];
            [titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(15);
                make.centerY.mas_equalTo(cell);
            }];
            
        }else if (indexPath.row==1){
            UIImageView* imageView = [PosTool imageViewWithImageName:@"icon_ID"];
            [cell.contentView addSubview:imageView];
            [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.right.mas_equalTo(0);
                make.centerY.mas_equalTo(cell);
            }];

        }else if (indexPath.row==2){
            UILabel *idnumerLB=[[UILabel alloc]init];
            idnumerLB.text=@"身份证的正反面";
            idnumerLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            idnumerLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:idnumerLB];
            [idnumerLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(15);
                make.centerY.mas_equalTo(cell);
            }];
            UILabel *numerLB=[[UILabel alloc]init];
            numerLB.text=@"*****************";
            numerLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            numerLB.font=[UIFont systemFontOfSize:16];
            [cell.contentView addSubview:numerLB];
            [numerLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-15);
                make.centerY.mas_equalTo(cell);
            }];
            

        }
        if (indexPath.row==3) {
            UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
            button.backgroundColor = colorWithRGB(96, 220, 223);
            [button setTitle:@"完成" forState:UIControlStateNormal];
            button.titleLabel.font = [UIFont systemFontOfSize:15];
            button.layer.cornerRadius = 3;
            button.layer.masksToBounds = YES;
            [button addTarget:self action:@selector(cashout:) forControlEvents:UIControlEventTouchUpInside];
            [cell.contentView addSubview:button];
            [button mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(25);
                make.right.mas_equalTo(-25);
                make.centerY.mas_equalTo(cell);
                make.height.mas_equalTo(40);
            }];
        }
    }



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
