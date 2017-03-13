//
//  AboutweViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "AboutweViewController.h"

@interface AboutweViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UIView* firstView;
    UIView * secondView;
    UITableView * tableView;
}

@end

@implementation AboutweViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"关于我们"];
    [self setUI];
    
}


-(void)setUI{
    

    
    self.view.backgroundColor = colorWithRGB(246, 247, 248);
    
    firstView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 80)];
    UIImageView* img=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"icon_logo"]];
    [firstView addSubview:img];
    [img mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(30);
        make.centerX.mas_equalTo(0);
    }];
    
    UILabel *nameLB=[[UILabel alloc]init];
    nameLB.text = @"云猫美工程";
    nameLB.font = [UIFont systemFontOfSize:15];
    [firstView addSubview:nameLB];
    [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(img.mas_bottom).offset(10);
        make.centerX.mas_equalTo(0);
    }];
    
  
    [self.view addSubview:firstView];
    
    
    
   tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 160, SCREEN_WIDTH,120) style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    [self.view addSubview:tableView];
    
    UIView *second=[[UIView alloc]init];
    [self.view addSubview:second];
    [second mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(tableView.mas_bottom).offset(5);
    }];
    UILabel *titleLB=[[UILabel alloc]init];
    titleLB.text = @"Copyright@ 2011-2017";
    titleLB.font = [UIFont systemFontOfSize:13];
    titleLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    [second addSubview:titleLB];
    [titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(tableView.mas_bottom).offset(40);
        make.centerX.mas_equalTo(0);
    }];
    UILabel *subLB=[[UILabel alloc]init];
    subLB.text = @"云猫美业一号工程";
    subLB.font = [UIFont systemFontOfSize:13];
    subLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    [second addSubview:subLB];
    [subLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(titleLB.mas_bottom).offset(5);
        make.centerX.mas_equalTo(0);
    }];
    
    
    
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
    
    if (indexPath.row<2) {
        NSArray* holders = @[@"联系电话",@"联系邮箱"];
        UILabel* nameLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:holders[indexPath.row]];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.centerY.mas_equalTo(0);
        }];
        NSArray* nubers = @[@"18888888888",@"8203848847@163.com"];
        UILabel* phoneLB=[PosTool labelWithTextColr:@"858585" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:nubers[indexPath.row]];
        [cell.contentView addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-20);
            make.centerY.mas_equalTo(0);
        }];

    }
    
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
