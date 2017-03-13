//
//  MycollectionViewController.m
//  YMMY
//
//  Created by apple on 2017/3/13.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "MycollectionViewController.h"
#import "ClassroommeiViewController.h"
@interface MycollectionViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tableView;

@end

@implementation MycollectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"我的收藏"];
    [self setUI];
}


-(void)setUI{
    
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
    
    
    return 4;
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
    UILabel *titleLB=[[UILabel alloc]init];
    titleLB.text=@"你是我的小丫丫苹果";
    titleLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    titleLB.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:titleLB];
    [titleLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.top.mas_equalTo(10);
        
    }];
    
    UILabel *timeLB=[[UILabel alloc]init];
    timeLB.text=@"2013-08-03 15:00";
    timeLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    timeLB.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:timeLB];
    [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(10);
        
    }];
    UILabel *subLB=[[UILabel alloc]init];
    subLB.text=@"2013-08-03 15:00nsi shi sidfhjshdfjksafdjhsjkadhfjkhsdfjkhal";
    subLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    subLB.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:subLB];
    [subLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.right.mas_equalTo(-15);
        make.top.mas_equalTo(titleLB.mas_bottom).offset(5);
        
    }];




}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{


    ClassroommeiViewController *vc=[[ClassroommeiViewController alloc]init];
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
