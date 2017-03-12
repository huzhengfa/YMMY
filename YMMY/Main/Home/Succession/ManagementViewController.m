//
//  ManagementViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "ManagementViewController.h"

@interface ManagementViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation ManagementViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"张三"];
    [self setUI];
}


-(void)setUI{
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(0);
    }];

}

#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 3;
    }else if (section==1)
        return 8;
    return 7;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identifier = @"cell1";
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
    if (indexPath.section==0) {
        if (indexPath.row==2) {
            return 40;
        }
        return 60;
    }else if (indexPath.section==1){
        if (indexPath.row==0) {
            return 30;
        }
        return 40;
    }
    
    return 60;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    if (indexPath.section==0) {
        if (indexPath.row==0) {
            UILabel* nameLB=[[UILabel alloc]init];
            nameLB.text=@"时间选择";
            nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            nameLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:nameLB];
            [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(25);
                make.top.mas_offset(10);
                
                
            }];
            
            
        }else if (indexPath.row==1){
            UILabel* cateLB=[[UILabel alloc]init];
            cateLB.text=@"类别选择";
            cateLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            cateLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:cateLB];
            [cateLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(25);
                make.top.mas_offset(10);
            }];

        }
    }if (indexPath.section==1) {
        if (indexPath.row==0) {
            UILabel *titleLB=[[UILabel alloc]init];
            titleLB.text=@"共4条";
            titleLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            titleLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:titleLB];
            [titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.centerY.mas_equalTo(cell);
            }];
        }if (indexPath.row==1) {
            
            UIImageView* imageView = [PosTool imageViewWithImageName:@"icon_liebiao"];
            [cell.contentView addSubview:imageView];
            [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(15);
                make.centerY.mas_equalTo(0);
            }];
            
            
            UILabel *timecLB=[[UILabel alloc]init];
            timecLB.text=@"2013-3-09";
            timecLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            timecLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:timecLB];
            [timecLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(imageView.mas_right).offset(20);
                make.centerY.mas_equalTo(cell);
            }];
   
        }if (indexPath.row==2) {
            UILabel *nuringLB=[[UILabel alloc]init];
            nuringLB.text=@"消耗";
            nuringLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            nuringLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:nuringLB];
            [nuringLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(cell).offset(20);
                make.centerY.mas_equalTo(cell);
            }];
            
            UILabel *numbLB=[[UILabel alloc]init];
            numbLB.text=@"10000元";
            numbLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            numbLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:numbLB];
            [numbLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(cell).offset(-20);
                make.centerY.mas_equalTo(cell);
            }];

           
        }if (indexPath.row==3) {
            UILabel *numbLB2=[[UILabel alloc]init];
            numbLB2.text=@"套餐1、套餐2、套餐3";
            numbLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            numbLB2.font=[UIFont systemFontOfSize:16];
            [cell addSubview:numbLB2];
            [numbLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.centerY.mas_equalTo(cell);
            }];

        }if (indexPath.row==4) {
            UILabel *nuringLB2=[[UILabel alloc]init];
            nuringLB2.text=@"现金";
            nuringLB2.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            nuringLB2.font=[UIFont systemFontOfSize:16];
            [cell addSubview:nuringLB2];
            [nuringLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(cell).offset(20);
                make.centerY.mas_equalTo(cell);
            }];
            
            UILabel *numbLB3=[[UILabel alloc]init];
            numbLB3.text=@"10000元";
            numbLB3.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
            numbLB3.font=[UIFont systemFontOfSize:16];
            [cell addSubview:numbLB3];
            [numbLB3 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(cell).offset(-20);
                make.centerY.mas_equalTo(cell);
            }];
        }if (indexPath.row==5) {
            
            UILabel *totleLB=[[UILabel alloc]init];
            totleLB.text=@"套餐1、套餐2、套餐3";
            totleLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            totleLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:totleLB];
            [totleLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.centerY.mas_equalTo(cell);
            }];
            
            
        }if (indexPath.row==6) {
            UILabel *kaLB=[[UILabel alloc]init];
            kaLB.text=@"卡项1、卡项2、卡项3";
            kaLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            kaLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:kaLB];
            [kaLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.centerY.mas_equalTo(cell);
            }];
        }else if (indexPath.row==7){
            UILabel *kaLB2=[[UILabel alloc]init];
            kaLB2.text=@"产品1、产品2、产品3";
            kaLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
            kaLB2.font=[UIFont systemFontOfSize:16];
            [cell addSubview:kaLB2];
            [kaLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.centerY.mas_equalTo(cell);
            }];

        }
            
       
    }else{
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
