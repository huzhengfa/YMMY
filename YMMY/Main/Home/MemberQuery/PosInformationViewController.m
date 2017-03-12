//
//  PosInformationViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosInformationViewController.h"

@interface PosInformationViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation PosInformationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"会员信息"];
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
    
    
}




#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
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
    if (indexPath.row<9) {
        return 44;
    }
    return 120;
}
#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    CGFloat left_panding = 10;
    if (indexPath.row==0) {
        UILabel *nameLB=[[UILabel alloc]init];
        nameLB.text=@"姓名";
        nameLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
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

        
    }  if (indexPath.row==1) {
        UILabel *phoneLB=[[UILabel alloc]init];
        phoneLB.text=@"手机号";
        phoneLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        phoneLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* phonLB = [[UILabel alloc] init];
        phonLB.text = @"111111111";
        phonLB.font = [UIFont systemFontOfSize:14];
        phonLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:phonLB];
        [phonLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==2) {
        UILabel *vipLB=[[UILabel alloc]init];
        vipLB.text=@"会员号";
        vipLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        vipLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:vipLB];
        [vipLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* viLB = [[UILabel alloc] init];
        viLB.text = @"111111111";
        viLB.font = [UIFont systemFontOfSize:14];
        viLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:viLB];
        [viLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==3) {
        UILabel *timeLB=[[UILabel alloc]init];
        timeLB.text=@"注册时间";
        timeLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        timeLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:timeLB];
        [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* timLB = [[UILabel alloc] init];
        timLB.text = @"2017-01-09 18:42:09";
        timLB.font = [UIFont systemFontOfSize:14];
        timLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:timLB];
        [timLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==4) {
        UILabel *validityLB=[[UILabel alloc]init];
        validityLB.text=@"有效期";
        validityLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        validityLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:validityLB];
        [validityLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* validitLB = [[UILabel alloc] init];
        validitLB.text = @"2017-01-09 18:42:09";
        validitLB.font = [UIFont systemFontOfSize:14];
        validitLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:validitLB];
        [validitLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==5) {
        UILabel *remainingLB=[[UILabel alloc]init];
        remainingLB.text=@"剩余次数";
        remainingLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        remainingLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:remainingLB];
        [remainingLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* remaininLB = [[UILabel alloc] init];
        remaininLB.text = @"345";
        remaininLB.font = [UIFont systemFontOfSize:14];
        remaininLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:remaininLB];
        [remaininLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==6) {
        UILabel *sexLB=[[UILabel alloc]init];
        sexLB.text=@"性别";
        sexLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        sexLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:sexLB];
        [sexLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* seLB = [[UILabel alloc] init];
        seLB.text = @"太监";
        seLB.font = [UIFont systemFontOfSize:14];
        seLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:seLB];
        [seLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==7) {
        UILabel *birthdayLB=[[UILabel alloc]init];
        birthdayLB.text=@"生日";
        birthdayLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        birthdayLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:birthdayLB];
        [birthdayLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* birthdaLB = [[UILabel alloc] init];
        birthdaLB.text = @"2017-01-03 00：00：00";
        birthdaLB.font = [UIFont systemFontOfSize:14];
        birthdaLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:birthdaLB];
        [birthdaLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }if (indexPath.row==8) {
        UILabel *noteLB=[[UILabel alloc]init];
        noteLB.text=@"备注";
        noteLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
        noteLB.font=[UIFont systemFontOfSize:16];
        [cell addSubview:noteLB];
        [noteLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(left_panding);
            make.center.mas_equalTo(cell);
        }];
        UILabel* notLB = [[UILabel alloc] init];
        notLB.text = @"2017-01-03 00：00：00";
        notLB.font = [UIFont systemFontOfSize:14];
        notLB.textColor = [UIColor colorWithHexString:@"9b9b9b" alpha:1 ];
        [cell addSubview:notLB];
        [notLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10);
            make.centerY.mas_equalTo(cell);
        }];
        
        
    }else{
        if (indexPath.row==9) {
            UIImageView* iconImageView = [PosTool imageViewWithImageName:@"logo_home"];
            [cell addSubview:iconImageView];
            [iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
                make.centerX.mas_equalTo(0);
                make.center.mas_equalTo(cell);
                make.size.mas_equalTo(CGSizeMake(100, 100));
            }];
            
            [iconImageView layoutIfNeeded];
            iconImageView.layer.cornerRadius = iconImageView.bounds.size.width/2;
            iconImageView.layer.masksToBounds = YES;
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
