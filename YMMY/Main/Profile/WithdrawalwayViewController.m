//
//  WithdrawalwayViewController.m
//  YMMY
//
//  Created by apple on 2017/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//
#define DEFAULT_PAY_INDEX 0

#import "WithdrawalwayViewController.h"
#import "CashoutViewController.h"


@interface WithdrawalwayViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSMutableArray<UIButton*> *payButtons;
@property(nonatomic,assign)NSInteger payIndex;
@end

@implementation WithdrawalwayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"选择提现方式"];
    [self setUI];
        self.payButtons = [NSMutableArray array];
        self.payIndex = DEFAULT_PAY_INDEX;

}

-(void)setUI{
    self.view.backgroundColor = colorWithRGB(246, 247, 248);
    
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(0);
    }];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"cashout"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(cashout:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);

}



#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
  
    return 3;
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

    return 44;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;

    if (indexPath.row<3) {
        
                        NSArray* imageName = @[@"icon_yinlian",@"icon_fu",@"icon_wechat"];
                        UIImageView* imageView2 = [PosTool imageViewWithImageName:imageName[indexPath.row]];
                        [cell.contentView addSubview:imageView2];
                        [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.mas_equalTo(15);
                            make.centerY.mas_equalTo(0);
                        }];
            
            
            
                        NSArray* holders = @[@"银联卡",@"支付宝",@"微信"];
                        UILabel* nameLB2=[PosTool labelWithTextColr:@"4a4a4a" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:holders[indexPath.row]];
                        [cell.contentView addSubview:nameLB2];
                        [nameLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.left.mas_equalTo(imageView2.mas_right).offset(15);
                            make.centerY.mas_equalTo(0);
                        }];
        UIButton*  payButton = [UIButton buttonWithType:UIButtonTypeCustom];
                        [payButton setImage:[UIImage imageNamed:@"icon_row1"] forState:UIControlStateSelected];
                        [payButton setImage:[UIImage imageNamed:@"icon_row"] forState:UIControlStateNormal];
                        [cell.contentView addSubview:payButton];
                        [payButton mas_makeConstraints:^(MASConstraintMaker *make) {
                            make.right.mas_equalTo(-20);
                            make.centerY.mas_equalTo(0);
                        }];
                        [payButton addTarget:self action:@selector(otherClick:) forControlEvents:UIControlEventTouchUpInside];
        if (![self.payButtons containsObject:payButton]) {
            [self.payButtons addObject:payButton];
        }
        
                        payButton.selected = self.payIndex == indexPath.row;
                    
    }
    
}

-(void)otherClick:(UIButton *)button{
    POSLog(@"结算");

    for (UIButton* b in self.payButtons){
    
        if (b == button){
            b.selected = YES;
        }else{
            b.selected = NO;
        }
    }

//    self.payIndex = [self.payButtons indexOfObject:button];

}


//现金提现
-(void)cashout:(UIButton *)sender{
    CashoutViewController * vc = [[CashoutViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];


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
