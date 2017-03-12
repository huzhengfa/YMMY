//
//  PosPlanViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/9.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosPlanViewController.h"

@interface PosPlanViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UIButton *leftButton;
@property(nonatomic,strong)UIButton *rightButton;
@property (nonatomic, assign) NSInteger currentIdex;
@property(nonnull,strong)UITableView *tableView;
@end

@implementation PosPlanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"计划单列表"];
    [self setUI];
    [self setTableView];
    
    
}


-(void)setUI{
    UIView* headerView =[[UIView alloc]init];
    [self.view addSubview:headerView];
    headerView.backgroundColor=[UIColor colorWithHexString:@"59DCE0" alpha:1];
    [headerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.mas_equalTo(0);
        make.top.mas_equalTo(0);
        make.height.mas_equalTo(40);
        
    }];
    
    UIButton* leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.leftButton = leftButton;
    [self configButtonWithTitl:@"收银" button:leftButton];
    
    [headerView addSubview:leftButton];
    [leftButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.top.bottom.mas_equalTo(0);
        
        make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width/2 - 1);
    }];
    
    [leftButton addTarget:self action:@selector(leftClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    UIButton* rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    self.rightButton = rightButton;
    [self configButtonWithTitl:@"订单" button:rightButton];
    
    [headerView addSubview:rightButton];
    [rightButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.top.bottom.mas_equalTo(0);
        make.width.mas_equalTo([UIScreen mainScreen].bounds.size.width/2 - 1);
    }];
    [rightButton addTarget:self action:@selector(rightClick) forControlEvents:UIControlEventTouchUpInside];
    

    
    
    
    
    
    
}


-(void)setTableView{
    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(40);
    }];
}

#pragma mark UITableViewDataSource/delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 5;
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
    
    return 105;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    UILabel *nameLB=[[UILabel alloc]init];
    nameLB.text=@"客户姓名:  涛涛";
    nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nameLB.font=[UIFont systemFontOfSize:16];
    [cell.contentView addSubview:nameLB];
    [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(0);
        
        
    }];
    
    UILabel *nameLB2=[[UILabel alloc]init];
    nameLB2.text=@"美疗师:  张三";
    nameLB2.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nameLB2.font=[UIFont systemFontOfSize:16];
    [cell.contentView addSubview:nameLB2];
    [nameLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(nameLB.mas_bottom).offset(5);
        
        
    }];

    UILabel *planLB=[[UILabel alloc]init];
    planLB.text=@"计划时间：2017-03-03 13：00";
    planLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    planLB.font=[UIFont systemFontOfSize:16];
    [cell.contentView addSubview:planLB];
    [planLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(20);
        make.top.mas_equalTo(nameLB2.mas_bottom).offset(5);
        
        
    }];
    UILabel *planLB2=[[UILabel alloc]init];
    planLB2.text=@"1888888888";
    planLB2.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    planLB2.font=[UIFont systemFontOfSize:16];
    [cell.contentView addSubview:planLB2];
    [planLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(nameLB.mas_right).offset(80);
        make.top.mas_equalTo(0);
        
        
    }];
    
    
    UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setBackgroundImage:[UIImage imageNamed:@"ipone_icon"] forState:UIControlStateNormal];
    [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:okButton];
    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(planLB2.mas_right).offset(15);
        make.top.mas_equalTo(0);
        
    }];
    UIButton *megesButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [megesButton setBackgroundImage:[UIImage imageNamed:@"meges"] forState:UIControlStateNormal];
    [megesButton addTarget:self action:@selector(megesButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:megesButton];
    [megesButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(okButton.mas_right).offset(15);
        make.top.mas_equalTo(0);
        
    }];


    
    UILabel *planLB3=[[UILabel alloc]init];
    planLB3.text=@"服务内容: 名称A、名称B";
    planLB3.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    planLB3.font=[UIFont systemFontOfSize:16];
    [cell.contentView addSubview:planLB3];
    [planLB3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(nameLB2.mas_right).offset(80);
        make.top.mas_equalTo(planLB2.mas_bottom).offset(5);
        
        
    }];
    
    
    
    
    
}



-(void)okClick{
    POSLog(@"打电话");
    
}

-(void)megesButtonClick{
    POSLog(@"发短信");
}
#pragma mark button click
-(void)leftClick{
    self.leftButton.selected = YES;
    self.rightButton.selected = NO;
//    self.rightButton.backgroundColor=[UIColor whiteColor];
//    self.leftButton.backgroundColor=[UIColor colorWithHexString:@"319AE7" alpha:1];
    
}

-(void)rightClick{
    self.rightButton.selected = YES;
    self.leftButton.selected = NO;
//    self.leftButton.backgroundColor=[UIColor whiteColor];
//    self.rightButton.backgroundColor=[UIColor colorWithHexString:@"319AE7" alpha:1];
    
}




-(void)configButtonWithTitl:(NSString*)title button:(UIButton*)button{
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor lightGrayColor] forState:UIControlStateSelected];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
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
