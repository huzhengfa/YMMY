//
//  CustomerdetailsViewController.m
//  YGJPos
//
//  Created by apple on 2017/3/9.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "CustomerdetailsViewController.h"
#import "AccountInfoViewController.h"
#import "BasicfileViewController.h"
#import "NursingViewController.h"
#import "PurchasehistoryViewController.h"
#import "SalesViewController.h"
#import "PrivacyViewController.h"
#import "PrvacylifeViewController.h"
#import "DateViewController.h"
#import "ManagementViewController.h"
@interface CustomerdetailsViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tableView;

@end

@implementation CustomerdetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"客户详情"];
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
    if (indexPath.row<4) {
        return 60;

    }else if (indexPath.row == 5){
    
        return 170;
    }
    return 140;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    
    if (indexPath.row==0) {
        UIImageView* imageView = [PosTool imageViewWithImageName:@"icon_sex"];
        [cell.contentView addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(0);
            make.size.mas_equalTo(CGSizeMake(20, 20));

        }];
        
        UILabel *nameLB=[[UILabel alloc]init];
        nameLB.text=@"张三";
        nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(imageView.mas_right).offset(10);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *phoneLB=[[UILabel alloc]init];
        phoneLB.text=@"15951677777";
        phoneLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        phoneLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:phoneLB];
        [phoneLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-90);
            make.centerY.mas_equalTo(cell);
        
        
        }];
        
        
        UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton setBackgroundImage:[UIImage imageNamed:@"ipone_icon"] forState:UIControlStateNormal];
        [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton];
        [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(phoneLB.mas_right).offset(15);
            make.centerY.mas_equalTo(cell);
            
        }];
        UIButton *megesButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [megesButton setBackgroundImage:[UIImage imageNamed:@"meges"] forState:UIControlStateNormal];
        [megesButton addTarget:self action:@selector(megesButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:megesButton];
        [megesButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(okButton.mas_right).offset(15);
            make.centerY.mas_equalTo(cell);
            
        }];


    }if (indexPath.row==1) {
        UIImageView* timeimageView = [PosTool imageViewWithImageName:@"icon_liebiao"];
        [cell.contentView addSubview:timeimageView];
        [timeimageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(0);
            make.size.mas_equalTo(CGSizeMake(20, 20));
            
        }];
        
        UILabel *timeLB=[[UILabel alloc]init];
        timeLB.text=@"上次服务时间";
        timeLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        timeLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:timeLB];
        [timeLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(timeimageView.mas_right).offset(10);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *timeLB2=[[UILabel alloc]init];
        timeLB2.text=@"2017-3-9 14:23";
        timeLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        timeLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:timeLB2];
        [timeLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
        

    }if (indexPath.row==2) {
        UIImageView* contionmageView = [PosTool imageViewWithImageName:@"icon_contion"];
        [cell.contentView addSubview:contionmageView];
        [contionmageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(0);
            make.size.mas_equalTo(CGSizeMake(20, 20));
            
        }];
        
        UILabel *contionLB=[[UILabel alloc]init];
        contionLB.text=@"上次服务内容";
        contionLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        contionLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:contionLB];
        [contionLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(contionmageView.mas_right).offset(10);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *timeLB3=[[UILabel alloc]init];
        timeLB3.text=@"刮痧";
        timeLB3.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        timeLB3.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:timeLB3];
        [timeLB3 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];

    
    }if(indexPath.row==3) {
        UIImageView*nameimageView = [PosTool imageViewWithImageName:@"icon_meiliao"];
        [cell.contentView addSubview:nameimageView];
        [nameimageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(0);
            make.size.mas_equalTo(CGSizeMake(20, 20));
            
        }];
        
        UILabel *grilLB=[[UILabel alloc]init];
        grilLB.text=@"上次服务美疗师";
        grilLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        grilLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:grilLB];
        [grilLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(nameimageView.mas_right).offset(10);
            make.centerY.mas_equalTo(cell);
            
        }];
        
        
        UILabel *grilLB2=[[UILabel alloc]init];
        grilLB2.text=@"夏立飞";
        grilLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        grilLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:grilLB2];
        [grilLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.centerY.mas_equalTo(cell);
            
        }];
    }if(indexPath.row==4) {
        UIImageView*packageimageView = [PosTool imageViewWithImageName:@"icon_liebiao"];
        [cell.contentView addSubview:packageimageView];
        [packageimageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.top.mas_equalTo(cell).offset(25);
            make.size.mas_equalTo(CGSizeMake(20, 20));
            
        }];
        
        UILabel *packageLB=[[UILabel alloc]init];
        packageLB.text=@"套餐列表";
        packageLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        packageLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:packageLB];
        [packageLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(packageimageView.mas_right).offset(10);
            make.top.mas_equalTo(cell).offset(25);

            
        }];
        
        UIImageView* packageimage = [PosTool imageViewWithImageName:@"icon_JIA"];
        [cell.contentView addSubview:packageimage];
        [packageimage mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(cell).offset(30);

            
        }];
        
        UILabel *packageLB1=[[UILabel alloc]init];
        packageLB1.text=@"套餐名称1";
        packageLB1.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        packageLB1.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:packageLB1];
        [packageLB1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(packageimageView.mas_right).offset(10);
            make.top.mas_equalTo(packageLB).offset(30);
            
            
        }];
        
        UILabel *numberLB=[[UILabel alloc]init];
        numberLB.text=@"剩余次数：5次";
        numberLB.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        numberLB.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:numberLB];
        [numberLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(packageLB).offset(30);

            
        }];

        UILabel *packageLB2=[[UILabel alloc]init];
        packageLB2.text=@"套餐名称2";
        packageLB2.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        packageLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:packageLB2];
        [packageLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(packageimageView.mas_right).offset(10);
            make.top.mas_equalTo(packageLB1).offset(30);
            
            
        }];
        
        UILabel *numberLB2=[[UILabel alloc]init];
        numberLB2.text=@"剩余次数：5次";
        numberLB2.textColor=[UIColor colorWithHexString:@"858585" alpha:1];
        numberLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:numberLB2];
        [numberLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(cell.mas_right).offset(-20);
            make.top.mas_equalTo(packageLB2);
            
            
        }];
        

    
    
    
    }else if (indexPath.row == 5){
        UIView * view = [cell.contentView viewWithTag:1001];
        if (!view) {
            UIView * view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 170)];
            [cell.contentView addSubview:view];
            NSArray * array = @[@"账户信息",@"基础档案",@"消费记录",@"护理日志",@"销售日志",@"私密话题",@"私密生活",@"特殊日期",@"计划管理"];
            for (int i = 0; i<array.count; i++) {
                UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
                CGFloat width = SCREEN_WIDTH/4;
                CGFloat height = 27;
                CGFloat x = i%3*(width+SCREEN_WIDTH/12)+SCREEN_WIDTH/24;
                CGFloat y = i/3*(height+20)+20;
                button.frame = CGRectMake(x, y, width, height);
                [view addSubview:button];
                [button setTitle:array[i] forState:UIControlStateNormal];
                
                [button setTitleColor:[UIColor colorWithHexString:@"59DCE0" alpha:1] forState:UIControlStateNormal];
                button.layer.cornerRadius = height/2;
                button.layer.borderWidth = 1;
                button.layer.borderColor = [UIColor colorWithHexString:@"59DCE0" alpha:1].CGColor;
                button.layer.masksToBounds = YES;
                button.tag = 2000+i;
                [button addTarget:self action:@selector(clickMsgButton:) forControlEvents:UIControlEventTouchUpInside];
            }
            
            
        }
       
    
    
    }
    
}

-(void)clickMsgButton:(UIButton *)sender{
    switch (sender.tag) {
        case 2000:{
            AccountInfoViewController *vc=[[AccountInfoViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
            
        case 2001:{
            
            BasicfileViewController *vc=[[BasicfileViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        case 2002:{
            PurchasehistoryViewController *vc=[[PurchasehistoryViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        case 2003:{
            NursingViewController *vc=[[NursingViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            
            
            break;
        case 2004:{
            SalesViewController *vc=[[SalesViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        case 2005:{
            PrivacyViewController *vc=[[PrivacyViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        case 2006:{
            PrvacylifeViewController *vc=[[PrvacylifeViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];

            
        }
            
            break;
        case 2007:{
            DateViewController *vc=[[DateViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        case 2008:{
            ManagementViewController *vc=[[ManagementViewController alloc]init];
            [self.navigationController pushViewController:vc animated:YES];
        }
            
            break;
        default:
        
      
            
            
            break;
    }
    
    
    
    

}





-(void)okClick{
    POSLog(@"电话");
}

-(void)megesButtonClick{
    POSLog(@"消息");
}
    
@end
