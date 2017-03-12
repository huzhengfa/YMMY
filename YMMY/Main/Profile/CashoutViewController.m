//
//  CashoutViewController.m
//  YMMY
//
//  Created by apple on 2017/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "CashoutViewController.h"
#import "SurecashoutViewController.h"
@interface CashoutViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UIView * firstView;
    UIView * secondView;
    UIView * thidView;

}



@end

@implementation CashoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setTitle:@"提现"];
    
    [self setFirstRow];
    [self setSecondRow];
    [self setThirdRow];
    
    UITableView * tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT-64) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    
    [self.view addSubview:tableView];
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"icon_sure"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(cashout:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return 3;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    if (indexPath.section == 0) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        [cell.contentView addSubview:firstView];
    }else if (indexPath.section == 1){
        [cell.contentView addSubview:secondView];
    }else{
        [cell.contentView addSubview:thidView];
    
    }
    
    
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return 80;
    }else if (indexPath.section == 1){
        return 120;
    }else{
        return 50;
    }
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 0.001;
    }
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.001;
}

-(void)setFirstRow{

    firstView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 80)];
    firstView.backgroundColor = [UIColor whiteColor];
    UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 20, 60, 40)];
    img.image = [UIImage imageNamed:@"bigYinlian"];
    [firstView addSubview:img];

    UILabel * creditName = [[UILabel alloc]init];
    creditName.text = @"银行名称";
    creditName.frame = CGRectMake(90, 15, 0, 0);
    [creditName sizeToFit];
    creditName.font = [UIFont systemFontOfSize:15];
    [firstView addSubview:creditName];
    
    
    UILabel * number =[[UILabel alloc]init];
    number.text = @"尾号8888";
    number.frame = CGRectMake(90, 40, 0, 0);
    [number sizeToFit];
    number.font = [UIFont systemFontOfSize:15];
    number.textColor =[UIColor grayColor];
    [firstView addSubview:number];
    
    
}
-(void)setSecondRow{
    secondView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 120)];
    secondView.backgroundColor = [UIColor whiteColor];
    UILabel * intruction = [[UILabel alloc]initWithFrame:CGRectMake(20, 15, 0, 0)];
    intruction.text = @"提现金额（三个工作日内到账）";
    intruction.font = [UIFont systemFontOfSize:15];
    intruction.textColor = [UIColor grayColor];
    [intruction sizeToFit];
    [secondView addSubview:intruction];
    
    UIImageView * img = [[UIImageView alloc]initWithFrame:CGRectMake(20, 40, 13, 20)];
    img.image = [UIImage imageNamed:@"renminbiIcon"];
    [secondView addSubview:img];
    UITextField * moneyTF = [[UITextField alloc]initWithFrame:CGRectMake(40, 40, SCREEN_WIDTH-50, 20)];
    [secondView addSubview:moneyTF];
    
    UIImageView * line = [[UIImageView alloc]initWithFrame:CGRectMake(0, 75, SCREEN_WIDTH, 0.5)];
    line.backgroundColor = colorWithRGB(230, 230, 230);
    [secondView addSubview:line];
    
    UILabel * allMoney = [[UILabel alloc]initWithFrame:CGRectMake(20, 85, 150, 20)];
    allMoney.text = @"可提现金额1000.00";
    allMoney.textColor = [UIColor grayColor];
    [allMoney sizeToFit];
    [secondView addSubview:allMoney];
    
    UIButton * pickButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [pickButton setTitle:@"全部提现" forState:UIControlStateNormal];
    [secondView addSubview:pickButton];
    [pickButton sizeToFit];
    [pickButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(allMoney);
    }];
    [pickButton addTarget:self action:@selector(pickAllMoney:) forControlEvents:UIControlEventTouchUpInside];
    
    
}
-(void)setThirdRow{
    thidView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 50)];
    thidView.backgroundColor = [UIColor whiteColor];
    UITextField * textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 15, SCREEN_WIDTH-150, 20)];
    textField.placeholder = @"请输入验证码";
    
    [thidView addSubview:textField];
    
    UIButton * codeButton = [UIButton buttonWithType:UIButtonTypeCustom];
   
    codeButton.frame = CGRectMake(SCREEN_WIDTH-120, 12, 95, 26) ;
     [codeButton setTitle:@"获取验证码" forState:UIControlStateNormal];
    codeButton.titleLabel.font = [UIFont systemFontOfSize:15];
    codeButton.backgroundColor = colorWithRGB(96, 220, 223);
    codeButton.layer.cornerRadius = 3;
    codeButton.layer.masksToBounds = YES;
    [thidView addSubview:codeButton];
    
    
}



-(void)pickAllMoney:(UIButton *)sender{

    POSLog(@"提现全部");


}



-(void)cashout:(UIButton *)sender{
    POSLog(@"提现");
    SurecashoutViewController *vc=[[SurecashoutViewController alloc]init];
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
