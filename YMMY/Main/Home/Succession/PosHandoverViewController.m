//
//  PosHandoverViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosHandoverViewController.h"
#import "CustomerdetailsViewController.h"
@interface PosHandoverViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;



@end

@implementation PosHandoverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"档案管理"];
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
    
    return 80;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    UIImageView* imageView = [PosTool imageViewWithImageName:@"22222"];
    [cell.contentView addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(15);
        make.centerY.mas_equalTo(0);
    }];
    
    UILabel *nameLB=[[UILabel alloc]init];
    nameLB.text=@"张三";
    nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
    nameLB.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:nameLB];
    [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imageView.mas_right).offset(10);
        make.top.mas_equalTo(imageView);
        
    }];
    
//    UIImageView* imageView2 = [PosTool imageViewWithImageName:@"Group 15"];
//    [cell.contentView addSubview:imageView2];
//    [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(nameLB.mas_right).offset(35);
//        make.centerY.mas_equalTo(0);
//    }];
    
    
    UILabel *nameLB2=[[UILabel alloc]init];
    nameLB2.text=@"美疗师 :王亚丽";
    nameLB2.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
    nameLB2.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:nameLB2];
    
    [nameLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(imageView.mas_right).offset(10);
        make.bottom.mas_equalTo(imageView);
        
    }];
    
    UILabel *numb=[[UILabel alloc]init];
    numb.text=@"1000000000";
    numb.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
    numb.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:numb];
    [numb mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(nameLB2.mas_right).offset(60);
        make.top.mas_equalTo(imageView.mas_top);
    }];
    
    
    
    UILabel *numb2=[[UILabel alloc]init];
    numb2.text=@"总服务次数：   30次";
    numb2.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
    numb2.font=[UIFont systemFontOfSize:14];
    [cell.contentView addSubview:numb2];
    [numb2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.mas_equalTo(numb);
        make.bottom.mas_equalTo(imageView.mas_bottom);
    }];
    
    UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [okButton setBackgroundImage:[UIImage imageNamed:@"ipone_icon"] forState:UIControlStateNormal];
    [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:okButton];
    [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(numb2.mas_right).offset(20);
        make.centerY.mas_equalTo(cell);
        
    }];
    UIButton *megesButton=[UIButton buttonWithType:UIButtonTypeCustom];
    [megesButton setBackgroundImage:[UIImage imageNamed:@"meges"] forState:UIControlStateNormal];
    [megesButton addTarget:self action:@selector(megesButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:megesButton];
    [megesButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(okButton.mas_right).offset(10);
        make.centerY.mas_equalTo(cell);
        
    }];
    
    
    
    
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CustomerdetailsViewController *vc=[[CustomerdetailsViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    
    
}


-(void)okClick{
    POSLog(@"电话");
}

-(void)megesButtonClick{
    POSLog(@"消息");
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
