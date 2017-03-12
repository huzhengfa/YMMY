//
//  PosVipQueryViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosVipQueryViewController.h"

@interface PosVipQueryViewController ()<UITextFieldDelegate>{
    UITextField *phoneTF;
}
@property(nonatomic,strong)UIButton *okbutton;

@end

@implementation PosVipQueryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"目标计划"];
}
//
//-(void)setUI{
//    self.view.backgroundColor=[UIColor colorWithHexString:@"efefef" alpha:1];
//    UIView* headerView = [PosTool viewWithBackgroundColor:@"FFFFFF" alpha:1.0];
//    
//    [self.view addSubview:headerView];
//    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.mas_equalTo(0);
//        make.top.mas_equalTo(70);
//        make.height.mas_equalTo(40);
//        
//    }];
//    
//
//    phoneTF=[[UITextField alloc]init];
//    phoneTF.delegate=self;
//    phoneTF.placeholder=@"请输入手机号";
//    phoneTF.font=[UIFont systemFontOfSize:15];
//    phoneTF.keyboardType=UIKeyboardTypeNumberPad;
//    phoneTF.textAlignment = NSTextAlignmentCenter;
//
//    [headerView addSubview:phoneTF];
//    [phoneTF mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(headerView.mas_left).offset(0);
//        make.top.mas_equalTo(headerView.mas_top).offset(10);
//        make.right.mas_equalTo(headerView.mas_right).offset(0);
//    }];
//    
//    
//    
//    UIView *netClickView=[[UIView alloc]init];
//    netClickView.backgroundColor=[UIColor colorWithHexString:@"#319AE7" alpha:1];
//    [self.view addSubview:netClickView];
//    [netClickView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(0);
//        make.top.mas_equalTo(headerView.mas_bottom).offset(20);
//        make.width.mas_equalTo(self.view);
//        make.height.mas_equalTo(50);
//    }];
//    
//    
//    UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    _okbutton=okButton;
//    [okButton setTitle:@"确认" forState:UIControlStateNormal];
//    [okButton setTitleColor:[UIColor colorWithHexString:@"ffffff" alpha:1] forState:UIControlStateNormal];
//    [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
//    [netClickView addSubview:okButton];
//    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(netClickView.mas_left).offset(38);
//        make.right.mas_equalTo(netClickView.mas_right).offset(-38);
//        make.top.bottom.mas_equalTo(0);
//    }];
//    
//}
//
//
//
//#pragma mark UITextFieldDelegate
//-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    //控制字数
//    NSString * str = [textField.text stringByReplacingCharactersInRange:range withString:string];
//    if (textField == phoneTF) {
//        if (str.length > 11) {
//            return NO;
//        }
//    }
//    
//    return YES;
//}
//
//
//-(void)okClick{
//    
//    POSLog(@"查询会员");
//    PosInformationViewController *VC=[[PosInformationViewController alloc]init];
//    [self.navigationController pushViewController:VC animated:YES];
//    
//    
//    
//    
//}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
