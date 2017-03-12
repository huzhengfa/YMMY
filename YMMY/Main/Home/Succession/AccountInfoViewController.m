//
//  AccountInfoViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/9.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "AccountInfoViewController.h"

@interface AccountInfoViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation AccountInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"账户信息"];
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
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 6;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identifier = @"cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
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
    
    return 60;
}

#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    if (indexPath.row==0) {
        UILabel *nameLB=[[UILabel alloc]init];
        nameLB.text=@"账户姓名";
        nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        UILabel *nameLB1=[[UILabel alloc]init];
        nameLB1.text=@"王思聪";
        nameLB1.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        nameLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:nameLB1];
        [nameLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
        }];

        
        

    } if (indexPath.row==1) {
        UILabel *dateLB=[[UILabel alloc]init];
        dateLB.text=@"注册日期";
        dateLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        dateLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:dateLB];
        [dateLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        UILabel *dateLB1=[[UILabel alloc]init];
        dateLB1.text=@"2013-4-4";
        dateLB1.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        dateLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:dateLB1];
        [dateLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
        }];
        
    }if (indexPath.row==2) {
        UILabel *phoneLB=[[UILabel alloc]init];
        phoneLB.text=@"联系电话";
        phoneLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        phoneLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        UIButton *megesButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [megesButton setBackgroundImage:[UIImage imageNamed:@"meges"] forState:UIControlStateNormal];
        [megesButton addTarget:self action:@selector(megesButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:megesButton];
        [megesButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton setBackgroundImage:[UIImage imageNamed:@"ipone_icon"] forState:UIControlStateNormal];
        [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton];
        [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(megesButton.mas_left).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *phoneLB1=[[UILabel alloc]init];
        phoneLB1.text=@"15951761411";
        phoneLB1.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        phoneLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:phoneLB1];
        [phoneLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(okButton.mas_left).offset(-20);
            make.centerY.mas_equalTo(cell);
        }];
        
    }if (indexPath.row==3) {
        UILabel *accountbalanceLB=[[UILabel alloc]init];
        accountbalanceLB.text=@"账户余额";
        accountbalanceLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        accountbalanceLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:accountbalanceLB];
        [accountbalanceLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        UILabel *accountbalanceLB1=[[UILabel alloc]init];
        accountbalanceLB1.text=@"88888888";
        accountbalanceLB1.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        accountbalanceLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:accountbalanceLB1];
        [accountbalanceLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
        }];
    
    }if (indexPath.row==4) {
        UILabel *goldLB=[[UILabel alloc]init];
        goldLB.text=@"金币余额";
        goldLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        goldLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:goldLB];
        [goldLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        UILabel *goldLB1=[[UILabel alloc]init];
        goldLB1.text=@"88888888";
        goldLB1.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        goldLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:goldLB1];
        [goldLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
        }];
        
    }if (indexPath.row==5) {
        UILabel *PackageLB=[[UILabel alloc]init];
        PackageLB.text=@"套餐剩余";
        PackageLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        PackageLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:PackageLB];
        [PackageLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        UILabel *PackageLB1=[[UILabel alloc]init];
        PackageLB1.text=@"8888次";
        PackageLB1.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        PackageLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:PackageLB1];
        [PackageLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
        }];
        
    }


}


-(void)okClick{
    POSLog(@"电话");
}

-(void)megesButtonClick{
    POSLog(@"消息");
}

@end
