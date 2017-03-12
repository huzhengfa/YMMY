//
//  PosOrderRefundViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosOrderRefundViewController.h"
#import "PosOldinforViewController.h"
@interface PosOrderRefundViewController ()<UITextFieldDelegate>{
    UITextField *phoneTF;
}
@property(nonatomic,strong)UIButton *okbutton;


@end

@implementation PosOrderRefundViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"本月未完成"];
    
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
