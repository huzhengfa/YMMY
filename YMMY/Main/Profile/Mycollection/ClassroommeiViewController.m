//
//  ClassroommeiViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "ClassroommeiViewController.h"

@interface ClassroommeiViewController ()

@end

@implementation ClassroommeiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"美课堂"];
    [self setUI];
}

-(void)setUI{
    
    self.view.backgroundColor = colorWithRGB(246, 247, 248);

      [self addRightItemWithImage:[[UIImage imageNamed:@"icon_renxin"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selector:@selector(messageClick)];
    
    
    
}
-(void)messageClick{
    POSLog(@"xx");
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
