//
//  BasicfileViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/9.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "BasicfileViewController.h"
#import "PurchasehistoryViewController.h"
@interface BasicfileViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation BasicfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"基础档案"];
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
    
    
    return 5;
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
        nameLB.text=@"客户姓名";
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
        
        
    }if(indexPath.row==1) {
        UILabel *skinLB=[[UILabel alloc]init];
        skinLB.text=@"皮肤判诊";
        skinLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        skinLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:skinLB];
        [skinLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton setBackgroundImage:[UIImage imageNamed:@"icon_kun"] forState:UIControlStateNormal];
        [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton];
        [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        

    
    
    
    }if(indexPath.row==2) {
        UILabel *chestLB=[[UILabel alloc]init];
        chestLB.text=@"胸部判诊";
        chestLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        chestLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:chestLB];
        [chestLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UIButton *okButton1=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton1 setBackgroundImage:[UIImage imageNamed:@"icon_kun"] forState:UIControlStateNormal];
        [okButton1 addTarget:self action:@selector(okClick1) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton1];
        [okButton1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        
        
        
    }if(indexPath.row==3) {
        UILabel *medicineLB=[[UILabel alloc]init];
        medicineLB.text=@"中医判诊";
        medicineLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        medicineLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:medicineLB];
        [medicineLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UIButton *okButton2=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton2 setBackgroundImage:[UIImage imageNamed:@"icon_kun"] forState:UIControlStateNormal];
        [okButton2 addTarget:self action:@selector(okClick2) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton2];
        [okButton2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        
        
        
    }if(indexPath.row==4) {
        UILabel *weightLB=[[UILabel alloc]init];
        weightLB.text=@"减肥判诊";
        weightLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        weightLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:weightLB];
        [weightLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UIButton *okButton3=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton3 setBackgroundImage:[UIImage imageNamed:@"icon_kun"] forState:UIControlStateNormal];
        [okButton3 addTarget:self action:@selector(okClick3) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton3];
        [okButton3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
    }
    
}



-(void)okClick{
    POSLog(@"查看");
    PurchasehistoryViewController *vc=[[PurchasehistoryViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}
-(void)okClick1{
    POSLog(@"查看");
    PurchasehistoryViewController *vc=[[PurchasehistoryViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];

}
-(void)okClick2{
    POSLog(@"查看");
    PurchasehistoryViewController *vc=[[PurchasehistoryViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];

}
-(void)okClick3{
    POSLog(@"查看");
    PurchasehistoryViewController *vc=[[PurchasehistoryViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];

}





@end
