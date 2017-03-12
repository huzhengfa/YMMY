//
//  OrderViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/9.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "OrderViewController.h"
#import "NursingViewController.h"
@interface OrderViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation OrderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"订单消耗"];
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
    
    
    return 7;
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
    if (indexPath.row==5) {
        return 200;
    }
    return 60;
}
#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    
    
    if (indexPath.row==0) {
       
        
        UILabel *orderLB=[[UILabel alloc]init];
        orderLB.text=@"订单号";
        orderLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        orderLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:orderLB];
        [orderLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *orderLB1=[[UILabel alloc]init];
        orderLB1.text=@"1999999999999999999";
        orderLB1.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        orderLB1.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:orderLB1];
        [orderLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
            
        }];
        
    }
    if (indexPath.row==1) {
        
        
        UILabel *nameLB=[[UILabel alloc]init];
        nameLB.text=@"客户姓名";
        nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *nameLB1=[[UILabel alloc]init];
        nameLB1.text=@"王思聪";
        nameLB1.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        nameLB1.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:nameLB1];
        [nameLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
            
        }];
        
    }if (indexPath.row==2) {
        UILabel *accountLB=[[UILabel alloc]init];
        accountLB.text=@"账号";
        accountLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        accountLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:accountLB];
        [accountLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
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
            make.right.mas_equalTo(megesButton.mas_left).offset(-15);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        
        UILabel *phoneLB=[[UILabel alloc]init];
        phoneLB.text=@"15951677777";
        phoneLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        phoneLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(okButton.mas_left).offset(-15);
            make.centerY.mas_equalTo(cell);
            
            
        }];
        
        
       

    }if (indexPath.row==3) {
        
        
        UILabel *categoryLB=[[UILabel alloc]init];
        categoryLB.text=@"服务类别";
        categoryLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        categoryLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:categoryLB];
        [categoryLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *categoryLB2=[[UILabel alloc]init];
        categoryLB2.text=@"到店服务";
        categoryLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        categoryLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:categoryLB2];
        [categoryLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
            
        }];
    }if (indexPath.row==4) {
        UILabel *timeLB=[[UILabel alloc]init];
        timeLB.text=@"服务时间";
        timeLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        timeLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:timeLB];
        [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *timeLB2=[[UILabel alloc]init];
        timeLB2.text=@"2017-03-13 12:00-15:00 ";
        timeLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        timeLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:timeLB2];
        [timeLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
            
        }];
    }if (indexPath.row==5) {
        UILabel *contionLB=[[UILabel alloc]init];
        contionLB.text=@"服务内容";
        contionLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        contionLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:contionLB];
        [contionLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
            make.top.mas_equalTo(cell.mas_top).offset(30);
        }];
        
        
        UILabel *contionLB2=[[UILabel alloc]init];
        contionLB2.text=@"套餐1 ";
        contionLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        contionLB2.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:contionLB2];
        [contionLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(contionLB.mas_right).offset(40);
            make.top.mas_equalTo(cell.mas_top).offset(32);

        }];
        
        
        UILabel *numeberLB=[[UILabel alloc]init];
        numeberLB.text=@"1次";
        numeberLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        numeberLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:numeberLB];
        [numeberLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(contionLB2.mas_right).offset(40);
            make.top.mas_equalTo(cell.mas_top).offset(32);
        
          }];
        UILabel *numeberLB2=[[UILabel alloc]init];
        numeberLB2.text=@"价格:10000元 ";
        numeberLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        numeberLB2.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:numeberLB2];
        [numeberLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(cell.mas_top).offset(32);
            
        }];
        
        
        
        
        UILabel *twoLB2=[[UILabel alloc]init];
        twoLB2.text=@"套餐2 ";
        twoLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        twoLB2.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:twoLB2];
        [twoLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(contionLB.mas_right).offset(40);
            make.top.mas_equalTo(contionLB2.mas_bottom).offset(32);
            
        }];
        
        
        UILabel *ticeLB=[[UILabel alloc]init];
        ticeLB.text=@"2次";
        ticeLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        ticeLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:ticeLB];
        [ticeLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(twoLB2.mas_right).offset(40);
            make.top.mas_equalTo(numeberLB.mas_bottom).offset(32);
            
        }];
        UILabel *ticeLB3=[[UILabel alloc]init];
        ticeLB3.text=@"价格:10000元 ";
        ticeLB3.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        ticeLB3.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:ticeLB3];
        [ticeLB3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(numeberLB2.mas_bottom).offset(32);
            
        }];
        
        
        
        UILabel *twoLB3=[[UILabel alloc]init];
        twoLB3.text=@"套餐3 ";
        twoLB3.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        twoLB3.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:twoLB3];
        [twoLB3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(contionLB.mas_right).offset(40);
            make.top.mas_equalTo(twoLB2.mas_bottom).offset(32);
            
        }];
        
        
        UILabel *ticeLB1=[[UILabel alloc]init];
        ticeLB1.text=@"2次";
        ticeLB1.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        ticeLB1.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:ticeLB1];
        [ticeLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(twoLB3.mas_right).offset(40);
            make.top.mas_equalTo(ticeLB.mas_bottom).offset(32);
            
        }];
        UILabel *ticeLB4=[[UILabel alloc]init];
        ticeLB4.text=@"价格:10000元 ";
        ticeLB4.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        ticeLB4.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:ticeLB4];
        [ticeLB4 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(ticeLB3.mas_bottom).offset(32);
            
        }];

        UILabel *totalLB=[[UILabel alloc]init];
        totalLB.text=@"共计金额：1000000";
        totalLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        totalLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:totalLB];
        [totalLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(ticeLB4.mas_bottom).offset(32);
            
        }];

    }else if (indexPath.row==6){
        UILabel *nursingLB=[[UILabel alloc]init];
        nursingLB.text=@"护理日志";
        nursingLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        nursingLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:nursingLB];
        [nursingLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(cell.mas_left).offset(20);
            make.centerY.mas_equalTo(cell);
        }];
                UILabel *nursingLB2=[[UILabel alloc]init];
                nursingLB2.text=@"和大家好啊就是的骄傲的";
                nursingLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
                nursingLB2.font=[UIFont systemFontOfSize:14];
                [cell.contentView addSubview:nursingLB2];
                [nursingLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
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
