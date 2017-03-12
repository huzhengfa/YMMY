//
//  PosOldinforViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosOldinforViewController.h"
@interface PosOldinforViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation PosOldinforViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"订单退款"];
    
    [self setUI];
 
    

    
}

-(void)setUI{
        self.view.backgroundColor=[UIColor colorWithHexString:@"efefef" alpha:1];
    
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(0);
    }];
    
    
    //底部View
    UIView* bottomView = [PosTool viewWithBackgroundColor:@"FFFFFF" alpha:1.0];
    
    [self.view addSubview:bottomView];
    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.height.mas_equalTo(55);
    }];
    
    UILabel *incomeLB=[[UILabel alloc]init];
    incomeLB.text=@"退款总额 :";
    incomeLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
    incomeLB.font=[UIFont systemFontOfSize:16];
    [bottomView addSubview:incomeLB];
    [incomeLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(5);
        make.top.mas_equalTo(5);
    }];
    
    
    UILabel *moneyLB=[[UILabel alloc]init];
    moneyLB.text=@"￥0.00000000";
    moneyLB.textColor=[UIColor redColor];
    moneyLB.font=[UIFont systemFontOfSize:15];
    [bottomView addSubview:moneyLB];
    [moneyLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(incomeLB.mas_right).offset(5);
        make.top.mas_equalTo(incomeLB);
    }];
    
    
    UIButton* refundBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //    [self configButtonWithTitl:@"交班" button:handoverBtn];
    [refundBtn setTitle:@"退款" forState:UIControlStateNormal];
    [refundBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [refundBtn setBackgroundColor:[UIColor colorWithHexString:@"#319AE7" alpha:1]];
    [self.view addSubview:refundBtn];
    [refundBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(270);
        make.right.bottom.mas_equalTo(0);
        make.height.mas_equalTo(55);
    }];
    
    [refundBtn addTarget:self action:@selector(refundBtnClick) forControlEvents:UIControlEventTouchUpInside];
    
}

#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 2;
    }else{
        return 3;
    }
         
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


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    CGFloat left_panding = 10;
    if (indexPath.section==0) {
        if (indexPath.row==0) {
            UILabel *oldLB=[[UILabel alloc]init];
            oldLB.text=@"订单编号";
            oldLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            oldLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:oldLB];
            [oldLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            UILabel* namLB = [[UILabel alloc] init];
            namLB.text = @"111111111";
            namLB.font = [UIFont systemFontOfSize:14];
            namLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
            [cell addSubview:namLB];
            [namLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
            
        }else if (indexPath.row==1){
            UILabel *timeLB=[[UILabel alloc]init];
            timeLB.text=@"下单时间";
            timeLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            timeLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:timeLB];
            [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            UILabel* timLB = [[UILabel alloc] init];
            timLB.text = @"111111111";
            timLB.font = [UIFont systemFontOfSize:14];
            timLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
            [cell addSubview:timLB];
            [timLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];

        }
    }else{
        if (indexPath.row==0) {
            UILabel *orderTLB=[[UILabel alloc]init];
            orderTLB.text=@"订单总额";
            orderTLB.textColor=[UIColor blueColor];
            orderTLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:orderTLB];
            [orderTLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            UILabel* ordeTLB = [[UILabel alloc] init];
            ordeTLB.text = @"￥111111111";
            ordeTLB.font = [UIFont systemFontOfSize:14];
            ordeTLB.textColor=[UIColor redColor];
            [cell addSubview:ordeTLB];
            [ordeTLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];

        }else if (indexPath.row==1){
            UILabel *moneyLB=[[UILabel alloc]init];
            moneyLB.text=@"现金";
            moneyLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            moneyLB.font=[UIFont systemFontOfSize:16];
            [cell addSubview:moneyLB];
            [moneyLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            UILabel* moneLB = [[UILabel alloc] init];
            moneLB.text = @"￥111111111";
            moneLB.font = [UIFont systemFontOfSize:14];
            moneLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
            [cell addSubview:moneLB];
            [moneLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];

        }else {
            if (indexPath.row==2) {
                UILabel *amountLB=[[UILabel alloc]init];
                amountLB.text=@"可退金额";
                amountLB.font=[UIFont systemFontOfSize:16];
                amountLB.textColor=[UIColor blueColor];
                [cell addSubview:amountLB];
                [amountLB mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.left.mas_equalTo(left_panding);
                    make.center.mas_equalTo(cell);
                }];
                UILabel* amounLB = [[UILabel alloc] init];
                amounLB.text = @"￥111111111";
                amounLB.font = [UIFont systemFontOfSize:14];
                amounLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
                [cell addSubview:amounLB];
                [amounLB mas_makeConstraints:^(MASConstraintMaker *make) {
                    make.right.mas_equalTo(-10);
                    make.centerY.mas_equalTo(cell);
                }];

        }
        }
    }
    
    
    
    
    
}



-(void)refundBtnClick{
    POSLog(@"退款");
    
    
    
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
