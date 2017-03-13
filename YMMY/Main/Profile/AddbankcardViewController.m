//
//  AddbankcardViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AddbankcardViewController.h"

@interface AddbankcardViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;


@end

@implementation AddbankcardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"添加银行卡"];
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
    nurLB.text=@"请绑定持卡人本人的银行卡";
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
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = colorWithRGB(96, 220, 223);
    [button setTitle:@"确认添加" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.layer.cornerRadius = 3;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(cashout) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);
    
    
}


#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 4;
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
    if (indexPath.row<3) {
        
        
        NSArray* holders = @[@"姓名",@"卡号",@"预留手机号码"];
        UILabel* nameLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:holders[indexPath.row]];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.centerY.mas_equalTo(cell);
        }];
        
       
    }if (indexPath.row==0) {
        UILabel* nameLB=[[UILabel alloc]init];
        nameLB.text=@"涛涛";
        nameLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(180);
            make.centerY.mas_equalTo(0);
        }];
        UIButton * tellBt = [UIButton buttonWithType:UIButtonTypeCustom];
        [tellBt setBackgroundImage:[UIImage imageNamed:@"icon_jin"] forState:UIControlStateNormal];
        [tellBt addTarget:self action:@selector(tellclick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:tellBt];
        [tellBt mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-20);
            make.centerY.mas_equalTo(0);
        }];
        
        
        
    }else if (indexPath.row==1){
        UILabel* kanLB=[[UILabel alloc]init];
        kanLB.text=@"**** **** **** 7787";
        kanLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        kanLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:kanLB];
        [kanLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(180);
            make.centerY.mas_equalTo(0);
        
        }];
    }else if (indexPath.row==2){
        UILabel* phoneLB=[[UILabel alloc]init];
        phoneLB.text=@"17827837233";
        phoneLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        phoneLB.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(180);
            make.centerY.mas_equalTo(0);
            
        }];
    }
    if (indexPath.row==3) {
        
        UITextField * textField = [[UITextField alloc]initWithFrame:CGRectMake(20, 15, SCREEN_WIDTH-150, 25)];
        textField.placeholder = @"请输入验证码";
        
        [cell.contentView addSubview:textField];
        
        UIButton * codeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        codeButton.frame = CGRectMake(SCREEN_WIDTH-120, 12, 95, 26) ;
        [codeButton setTitle:@"获取验证码" forState:UIControlStateNormal];
        codeButton.titleLabel.font = [UIFont systemFontOfSize:15];
        codeButton.backgroundColor = colorWithRGB(96, 220, 223);
        codeButton.layer.cornerRadius = 3;
        codeButton.layer.masksToBounds = YES;
        [cell.contentView addSubview:codeButton];
        
    }
    
    
    
}

-(void)tellclick{
    POSLog(@"警告");
}

-(void)cashout{
    POSLog(@"确认添加");
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
