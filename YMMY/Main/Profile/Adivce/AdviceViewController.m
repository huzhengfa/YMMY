//
//  AdviceViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AdviceViewController.h"

@interface AdviceViewController ()
@property(nonatomic,strong)UITextView *textView;
@end

@implementation AdviceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"意见反馈"];
    [self setUI];
    

}

-(void)setUI{
    self.view.backgroundColor=colorWithRGB(248, 248, 248);
    UITextView* textView = [[UITextView alloc] init];
    self.textView = textView;
    textView.font = [UIFont systemFontOfSize:16];
    textView.textColor =[UIColor blackColor];
    //    textView.text=self.student.comments;
    [self.view addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(5);
        make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width - 2*10);
        make.height.mas_equalTo(200);
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
