//
//  PosAboutViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosAboutViewController.h"

@interface PosAboutViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation PosAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"关于我们"];
    
    [self setTableView];
   
}

-(void)setTableView{
    //静态表格
    
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
    static NSString* identifier = @"about";
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
    return 44;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    CGFloat left_panding = 10;
        if (indexPath.row==0) {
            UILabel *nameLB=[[UILabel alloc]init];
            nameLB.text=@"联系我们";
            nameLB.font=[UIFont systemFontOfSize:16];
            nameLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            [cell addSubview:nameLB];
            [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.center.mas_equalTo(cell);
            }];
        }else if (indexPath.row==1){
            UILabel *advLB=[[UILabel alloc]init];
            advLB.text=@"地址 :";
            advLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            advLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:advLB];
            [advLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            
            UILabel *consLB=[[UILabel alloc]init];
            consLB.text=@"江苏省南京市鼓楼区中央路417号先锋广场1439室";
            consLB.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
            consLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:consLB];
            [consLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
            
        }else if (indexPath.row==2){
            UILabel *phoneLB=[[UILabel alloc]init];
            phoneLB.text=@"座机 :";
            phoneLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            phoneLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:phoneLB];
            [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            
            UILabel *nuberLB=[[UILabel alloc]init];
            nuberLB.text=@"025-85508969";
            nuberLB.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
            nuberLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:nuberLB];
            [nuberLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];
        }else {
            UILabel *emailLB=[[UILabel alloc]init];
            emailLB.text=@"邮箱 :";
            emailLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
            emailLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:emailLB];
            [emailLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.mas_equalTo(left_panding);
                make.center.mas_equalTo(cell);
            }];
            
            UILabel *nubeLB=[[UILabel alloc]init];
            nubeLB.text=@"113221009@qq.com";
            nubeLB.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
            nubeLB.font=[UIFont systemFontOfSize:14];
            [cell addSubview:nubeLB];
            [nubeLB mas_makeConstraints:^(MASConstraintMaker *make) {
                make.right.mas_equalTo(-10);
                make.centerY.mas_equalTo(cell);
            }];

        }
 
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    
    
    
    
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
