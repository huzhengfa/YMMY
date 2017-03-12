//
//  NursingViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "NursingViewController.h"

@interface NursingViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;


@end

@implementation NursingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"护理日志"];
    [self setUI];
    
}



-(void)setUI{
    
    
    UIView* headerView =[[UIView alloc]init];
    [self.view addSubview:headerView];
    headerView.backgroundColor=[UIColor colorWithHexString:@"F1F1F1" alpha:1];
    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(40);
    }];
    
    UILabel *nurLB=[[UILabel alloc]init];
    nurLB.text=@"护理日志";
    nurLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nurLB.font=[UIFont systemFontOfSize:14];
    [headerView addSubview:nurLB];
    [nurLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.centerY.mas_equalTo(headerView);
        
        
    }];
    
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(headerView.mas_bottom);
    }];
    
   
    
}


#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 6;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* identifier = @"cell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
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
     
    UILabel *contionLB=[[UILabel alloc]init];
    contionLB.text=@"急急急急急急急急急急积极急急急";
    contionLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    contionLB.font=[UIFont systemFontOfSize:14];
    [cell addSubview:contionLB];
    [contionLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.centerY.mas_equalTo(cell);
        
    }];


    
    
    UILabel *timeLB=[[UILabel alloc]init];
    timeLB.text=@"2016-3-2";
    timeLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
    timeLB.font=[UIFont systemFontOfSize:14];
    [cell addSubview:timeLB];
    [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(-20);
        make.centerY.mas_equalTo(cell);
    }];
    
    
    

}



-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    
    
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
