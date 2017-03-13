//
//  MybankcardViewController.m
//  YMMY
//
//  Created by apple on 2017/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "MybankcardViewController.h"
#import "AddbankcardViewController.h"

@interface MybankcardViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation MybankcardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"我的银行卡"];
    [self setUI];
    
    
}


-(void)setUI{
    self.view.backgroundColor = colorWithRGB(246, 247, 248);
    [self setRightButtonOnNavWithText:@"添加" target:self action:@selector(add)];
    
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(0);
    }];
    
    
    
    
    
    
    
}



#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 3;
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
    
    return 200;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    if (indexPath.row<2) {
        
        
        
        NSArray* imageNames = @[@"icon_green",@"icon_red"];
        UIImageView* imageView = [PosTool imageViewWithImageName:imageNames[indexPath.row]];
        [cell.contentView addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.mas_equalTo(10);
            make.top.bottom.mas_equalTo(10);
            make.centerX.centerY.mas_equalTo(cell);
        }];
        
        NSArray* holders = @[@"中国农业银行",@"中国招商银行"];
        UILabel* nameLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:18 defaultText:holders[indexPath.row]];
        [imageView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.top.mas_equalTo(20);
        }];
        
        NSArray* hangLBS = @[@"储蓄卡",@"储蓄卡"];
        UILabel* hangLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:hangLBS[indexPath.row]];
        [imageView addSubview:hangLB];
        [hangLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.top.mas_equalTo(nameLB.mas_bottom).offset(5);
        }];
        
        NSArray* numberLBS = @[@"****   ****    ****   8888",@"****   ****    ****   8888"];
        UILabel* numberLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:20 defaultText:numberLBS[indexPath.row]];
        [imageView addSubview:numberLB];
        [numberLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.top.mas_equalTo(hangLB.mas_bottom).offset(15);
        }];
        NSArray* timeLBS = @[@"添加时间：2015-07-09",@"添加时间：2015-07-09"];
        UILabel* timeLB=[PosTool labelWithTextColr:@"0D0D0F" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:timeLBS[indexPath.row]];
        [imageView addSubview:timeLB];
        [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(20);
            make.top.mas_equalTo(numberLB.mas_bottom).offset(10);
        }];
        
        
        
        
        
    }
    
}



-(void)add{
    AddbankcardViewController *vc=[[AddbankcardViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
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
