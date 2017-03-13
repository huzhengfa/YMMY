//
//  QrcodeViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "QrcodeViewController.h"

@interface QrcodeViewController (){
    UIView * firstView;
    
}

@end

@implementation QrcodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"我的二维码"];
    [self setUI];
    
}


-(void)setUI{
    self.view.backgroundColor = colorWithRGB(246, 247, 248);
    
    firstView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 200)];
    UIImageView* img=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_qr"]];
    [firstView addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(30);
        make.centerX.mas_equalTo(0);
    }];
    
    
    
    [self.view addSubview:firstView];
    
    
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = colorWithRGB(96, 220, 223);
    [button setTitle:@"分享" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.layer.cornerRadius = 3;
    button.layer.masksToBounds = YES;
    [button addTarget:self action:@selector(sharebt:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.frame = CGRectMake(20, SCREEN_HEIGHT-64-60, SCREEN_WIDTH-40, 40);

}

-(void)sharebt:(UIButton *)sender{
    POSLog(@"分享");
    
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
