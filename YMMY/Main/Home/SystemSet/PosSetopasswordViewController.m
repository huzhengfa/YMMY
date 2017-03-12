//
//  PosSetopasswordViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosSetopasswordViewController.h"

@interface PosSetopasswordViewController ()<UITextFieldDelegate>{
    UITextField* oldTF;
    UITextField* newTF;

    
}
@property(nonatomic,strong)UIButton * okbutton;


@end

@implementation PosSetopasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"修改密码"];
    [self setMain];
    

    //添加键盘手势
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKyeboard:)]];
    
    
}



-(void)setMain{
    
    self.view.backgroundColor=[UIColor colorWithHexString:@"efefef" alpha:1];
    
    
    
    UIView *passwordView=[[UIView alloc]init];
    passwordView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:passwordView];
    [passwordView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.width.mas_equalTo(self.view);
        make.height.mas_equalTo(50);
        
    }];
    
    
    UILabel *numberLB=[[UILabel alloc]init];
    numberLB.text=@"旧密码:";
    numberLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
    numberLB.font=[UIFont systemFontOfSize:15];
    [passwordView addSubview:numberLB];
    [numberLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(passwordView.mas_left).offset(15);
        make.top.mas_equalTo(passwordView.mas_top).offset(15);
    }];
    
    
    oldTF=[[UITextField alloc]init];
    oldTF.delegate=self;
    oldTF.placeholder=@"请输入旧密码";
    oldTF.font=[UIFont systemFontOfSize:15];
//    oldTF.keyboardType=UIKeyboardTypeNumberPad;
     oldTF.secureTextEntry=YES;
    [passwordView addSubview:oldTF];
    [oldTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(passwordView.mas_left).offset(92);
        make.top.mas_equalTo(passwordView.mas_top).offset(15);
        make.right.mas_equalTo(passwordView.mas_right).offset(-190);
    }];
    
    
    //横线
    UIView* lineView = [[UIView alloc] init];
    lineView.backgroundColor = [UIColor grayColor];
    [passwordView addSubview:lineView];
    [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(passwordView.mas_left);
        make.bottom.mas_equalTo(passwordView.mas_bottom);
        make.right.mas_equalTo(passwordView.mas_right);
        make.height.mas_equalTo(0.5);
    }];
    
    
    UIView *VerificationView=[[UIView alloc]init];
    VerificationView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:VerificationView];
    [VerificationView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(passwordView.mas_bottom);
        make.width.mas_equalTo(self.view);
        make.height.mas_equalTo(50);
    }];
    
    UILabel *countLB=[[UILabel alloc]init];
    countLB.text=@"新密码:";
    countLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
    countLB.font=[UIFont systemFontOfSize:15];
    [VerificationView addSubview:countLB];
    [countLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(VerificationView.mas_left).offset(15);
        make.top.mas_equalTo(VerificationView.mas_top).offset(15);
    }];
     newTF=[[UITextField alloc]init];
    newTF.delegate=self;
    newTF.placeholder=@"请输入新密码";
    newTF.font=[UIFont systemFontOfSize:15];
    newTF.secureTextEntry = YES;
    [VerificationView addSubview: newTF];
    [ newTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(VerificationView.mas_left).offset(92);
        make.top.mas_equalTo(VerificationView.mas_top).offset(15);
        make.right.mas_equalTo(VerificationView.mas_right).offset(65);
    }];
    
    
    UIView *netClickView=[[UIView alloc]init];
    netClickView.backgroundColor=[UIColor colorWithHexString:@"#319AE7" alpha:1];
    [self.view addSubview:netClickView];
    [netClickView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(0);
        make.top.mas_equalTo(self.view.mas_top).offset(194);
        make.width.mas_equalTo(self.view);
        make.height.mas_equalTo(50);
    }];
    
    
    UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
     _okbutton=okButton;
    [okButton setTitle:@"确认" forState:UIControlStateNormal];
    [okButton setTitleColor:[UIColor colorWithHexString:@"ffffff" alpha:1] forState:UIControlStateNormal];
    [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
    [netClickView addSubview:okButton];
    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(netClickView.mas_left).offset(38);
        make.right.mas_equalTo(netClickView.mas_right).offset(-38);
        make.top.bottom.mas_equalTo(0);
    }];
    //增加收键盘手势
    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)]];

}


#pragma mark Keyboard deal

-(void)hideKyeboard:(UITapGestureRecognizer*)GR{
    [self.view endEditing:YES];
}



-(void)hideKeyboard{
    [self.view endEditing:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)okClick{
    POSLog(@"修改密码");
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
