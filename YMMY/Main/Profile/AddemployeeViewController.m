//
//  AddemployeeViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AddemployeeViewController.h"

@interface AddemployeeViewController ()<UITableViewDelegate,UITableViewDataSource,UITextFieldDelegate>
@property(nonatomic,strong)UITableView *tableView;
@property (nonatomic,strong)UITextField* userNameTF;
//验证码输入框
@property (nonatomic,strong)UITextField* passwordTF;
@end

@implementation AddemployeeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"新增员工"];
    [self setUI];
}

-(void)setUI{
    
    
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(0);
    }];

    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = colorWithRGB(96, 220, 223);
    [button setTitle:@"提交" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.layer.cornerRadius = 3;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(cashout:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);
    
    
}




#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
   
    return 2;
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
    
    return 60;
}

#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    if (indexPath.row==0) {
        UILabel *nameLB=[[UILabel alloc]init];
        nameLB.text=@"员工姓名";
        nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(cell);
        }];
        
        self.userNameTF=[[UITextField alloc]init];
        self.userNameTF.delegate=self;
        self.userNameTF.placeholder=@"请输入员工姓名";
        self.userNameTF.font=[UIFont systemFontOfSize:15];
        [cell.contentView addSubview:self.userNameTF];
        [self.userNameTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(nameLB.mas_right).offset(5);
            make.centerY.mas_equalTo(cell);
            make.right.mas_equalTo(cell.mas_right).offset(-20);
        }];
        
        
    }if (indexPath.row==1) {
        UILabel *phoneLB=[[UILabel alloc]init];
        phoneLB.text=@"员工姓名";
        phoneLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        phoneLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(cell);
        }];
        
        self.passwordTF=[[UITextField alloc]init];
        self.passwordTF.delegate=self;
        self.passwordTF.placeholder=@"请填写员工手机号码";
        self.passwordTF.font=[UIFont systemFontOfSize:15];
        [cell.contentView addSubview:self.passwordTF];
        [self.passwordTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(phoneLB.mas_right).offset(5);
            make.centerY.mas_equalTo(cell);
            make.right.mas_equalTo(cell.mas_right).offset(-20);
        }];
    }
    
    
    
}


-(void)cashout:(UIButton *)sender{
    POSLog(@"提交");
    
    
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
