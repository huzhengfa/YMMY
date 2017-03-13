//
//  ChangepasswordViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ChangepasswordViewController.h"

@interface ChangepasswordViewController ()<UITextFieldDelegate>
@property(nonatomic,strong)UITextField *UsertextField;
//用户名输入框
@property (nonatomic,strong)UITextField* userNameTF;
//验证码输入框
@property (nonatomic,strong)UITextField* passwordTF;

@property (nonatomic,strong)UITextField* newpasswordTF;

@property (nonatomic,strong)UITextField* newspasswordTF;



@end

@implementation ChangepasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"修改密码"];
    [self setUI];
    
}


-(void)setUI{
    self.view.backgroundColor = colorWithRGB(246, 247, 248);
    
    UIView *backView=[[UIView alloc]init];
    backView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:backView];
    [backView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.width.mas_equalTo(self.view);
        make.height.mas_equalTo(300);
        
    }];

    
    UIImageView* phoneNBView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_bei"]];
    [backView addSubview:phoneNBView];
    [phoneNBView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(10);
        make.height.mas_equalTo(44);
    }];
    
    
    UILabel *numberLB=[[UILabel alloc]init];
    numberLB.text=@"手机号";
    numberLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    numberLB.font=[UIFont systemFontOfSize:15];
    [phoneNBView addSubview:numberLB];
    [numberLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(phoneNBView.mas_left).offset(20);
        make.centerY.mas_equalTo(phoneNBView);
    }];
    
    
    self.userNameTF=[[UITextField alloc]init];
    self.userNameTF.delegate=self;
    self.userNameTF.placeholder=@"请输入手机号";
    self.userNameTF.font=[UIFont systemFontOfSize:15];
    self.userNameTF.keyboardType=UIKeyboardTypeNumberPad;
    [phoneNBView addSubview:self.userNameTF];
    [self.userNameTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(numberLB.mas_right).offset(5);
        make.centerY.mas_equalTo(phoneNBView);
        make.right.mas_equalTo(phoneNBView.mas_right).offset(-20);
    }];
    
    
    
    UIImageView* passwordView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_bei"]];
    [self.view addSubview:passwordView];
    [passwordView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(phoneNBView.mas_bottom).offset(10);
        make.height.mas_equalTo(44);
    }];
    
    
    
        self.passwordTF=[[UITextField alloc]init];
        self.passwordTF.delegate=self;
        self.passwordTF.placeholder=@"请输入验证码";
        self.passwordTF.font=[UIFont systemFontOfSize:15];
        self.passwordTF.keyboardType = UIKeyboardTypeNumberPad;
        [passwordView addSubview:self.passwordTF];
        [self.passwordTF mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(passwordView.mas_left).offset(20);
            make.centerY.mas_equalTo(passwordView);
        }];
    
        UIButton* countButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [countButton setTitle:@"获取验证码" forState:UIControlStateNormal];
        countButton.backgroundColor = colorWithRGB(96, 220, 223);
        countButton.titleLabel.font=[UIFont systemFontOfSize:15];
        countButton.layer.cornerRadius = 3;
        countButton.layer.masksToBounds = YES;
    
        [countButton addTarget:self action:@selector(startCount) forControlEvents:UIControlEventTouchUpInside];
        [passwordView addSubview:countButton];
        [countButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(passwordView.mas_right).offset(-20);
            make.centerY.mas_equalTo(passwordView);
            
            
        }];
    
    
    UIImageView* newpasswordView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_bei"]];
    [self.view addSubview:newpasswordView];
    [newpasswordView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(passwordView.mas_bottom).offset(10);
        make.height.mas_equalTo(44);
    }];
    
    
    UILabel *newpassLB=[[UILabel alloc]init];
    newpassLB.text=@"新密码";
    newpassLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    newpassLB.font=[UIFont systemFontOfSize:15];
    [newpasswordView addSubview:newpassLB];
    [newpassLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(newpasswordView.mas_left).offset(20);
        make.centerY.mas_equalTo(newpasswordView);
    }];
    
    
    self.newpasswordTF=[[UITextField alloc]init];
    self.newpasswordTF.delegate=self;
    self.newpasswordTF.placeholder=@"请输入新密码";
    self.newpasswordTF.font=[UIFont systemFontOfSize:15];
    self.newpasswordTF.keyboardType=UIKeyboardTypeNumberPad;
    [newpasswordView addSubview:self.newpasswordTF];
    [self.newpasswordTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(newpassLB.mas_right).offset(20);
        make.centerY.mas_equalTo(newpasswordView);
        make.right.mas_equalTo(newpasswordView.mas_right).offset(-20);
    }];
    
    
    UIImageView* newpasswordView1=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_bei"]];
    [self.view addSubview:newpasswordView1];
    [newpasswordView1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.right.mas_equalTo(-20);
        make.top.mas_equalTo(newpasswordView.mas_bottom).offset(10);
        make.height.mas_equalTo(44);
    }];
    
    
    
    
    
    UILabel *offpassLB=[[UILabel alloc]init];
    offpassLB.text=@"确认新密码";
    offpassLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    offpassLB.font=[UIFont systemFontOfSize:15];
    [newpasswordView1 addSubview:offpassLB];
    [offpassLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(newpasswordView1.mas_left).offset(20);
        make.centerY.mas_equalTo(newpasswordView1);
    }];
    
    
    self.newspasswordTF=[[UITextField alloc]init];
    self.newspasswordTF.delegate=self;
    self.newspasswordTF.placeholder=@"请再次输入新密码";
    self.newspasswordTF.textAlignment = NSTextAlignmentRight;
    self.newspasswordTF.font=[UIFont systemFontOfSize:15];
    [newpasswordView1 addSubview:self.newspasswordTF];
    [self.newspasswordTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(offpassLB.mas_right).offset(20);
        make.centerY.mas_equalTo(newpasswordView1);
        make.right.mas_equalTo(newpasswordView1.mas_right).offset(-20);
    }];
    
    
    
    

    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = colorWithRGB(96, 220, 223);
    [button setTitle:@"确认提交" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.layer.cornerRadius = 3;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(cashout:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);
}

-(void)cashout:(UIButton *)sender{
    POSLog(@"确认完成");
    
}

-(void)startCount{
    POSLog(@"获取验证码");
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
