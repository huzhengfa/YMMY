//
//  PosCommdityViewController.m
//  YGJPos
//
//  Created by apple on 2017/1/10.
//  Copyright © 2017年 HD. All rights reserved.
//

#import "PosCommdityViewController.h"
//默认支付方式
#define DEFAULT_PAY_INDEX 0
@interface PosCommdityViewController ()<UITableViewDelegate,UITableViewDataSource,UITextViewDelegate,UITextFieldDelegate>
//@property(nonatomic,strong)UITextField *phoneField;
//@property(nonatomic,strong)UITextField *moneyField;
@property(nonatomic,strong)UITableView *tableView;
//@property(nonatomic,strong)UITextView *textView;
//@property(nonatomic,strong)NSMutableArray<UIButton*> *payButtons;
//@property(nonatomic,assign)NSInteger payIndex;

@end

@implementation PosCommdityViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"今日上班员工"];
    [self setUI];
    
//    self.payButtons = [NSMutableArray array];
//    self.payIndex = DEFAULT_PAY_INDEX;
//    //键盘监听
//    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillChange:) name:UIKeyboardWillChangeFrameNotification object:nil];
//    
//    //添加键盘手势
//    [self.view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKyeboard:)]];
    
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
    
    if (indexPath.row==0) {
        return 300;
    }
    return 80;
}


#pragma mark Cell
-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
    if (indexPath.row<1) {
        
        UIImageView* imageView = [PosTool imageViewWithImageName:@""];
        [cell.contentView addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.centerY.mas_equalTo(0);
        }];
        
    }else if(indexPath.row!=0) {
        UIImageView* imageView = [PosTool imageViewWithImageName:@"22222"];
        [cell.contentView addSubview:imageView];
        [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(15);
            make.centerY.mas_equalTo(0);
        }];
        
        UILabel *nameLB=[[UILabel alloc]init];
        nameLB.text=@"张三";
        nameLB.textColor=[UIColor colorWithHexString:@"0D0D0F" alpha:1];
        nameLB.font=[UIFont systemFontOfSize:18];
        [cell.contentView addSubview:nameLB];
        [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(imageView.mas_right).offset(10);
            make.centerY.mas_equalTo(cell);
            
            
        }];
        
        UIImageView* imageView2 = [PosTool imageViewWithImageName:@"Group 15"];
        [cell.contentView addSubview:imageView2];
        [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(nameLB.mas_right).offset(35);
            make.centerY.mas_equalTo(0);
        }];
        
        
        UILabel *nameLB2=[[UILabel alloc]init];
        nameLB2.text=@"美疗师";
        nameLB2.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        nameLB2.font=[UIFont systemFontOfSize:16];
        [cell.contentView addSubview:nameLB2];
        
        [nameLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(nameLB.mas_right).offset(50);
            make.centerY.mas_equalTo(cell);
            
            
        }];
        
        UILabel *numb=[[UILabel alloc]init];
        numb.text=@"1000000000";
        numb.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        numb.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:numb];
        [numb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(nameLB2.mas_right).offset(50);
            make.top.mas_equalTo(0);
        }];
        
        
        
        UILabel *numb2=[[UILabel alloc]init];
        numb2.text=@"总服务次数：   30";
        numb2.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
        numb2.font=[UIFont systemFontOfSize:14];
        [cell.contentView addSubview:numb2];
        [numb2 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(nameLB2.mas_right).offset(30);
            make.top.mas_equalTo(numb.mas_bottom).offset(15);
        }];
        
        UIButton *okButton=[UIButton buttonWithType:UIButtonTypeCustom];
        [okButton setBackgroundImage:[UIImage imageNamed:@"ipone_icon"] forState:UIControlStateNormal];
        [okButton addTarget:self action:@selector(okClick) forControlEvents:UIControlEventTouchUpInside];
        [cell.contentView addSubview:okButton];
        [okButton mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(numb2.mas_right).offset(5);
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
    }

}


-(void)okClick{
    POSLog(@"打电话");
    
}

-(void)megesButtonClick{
    POSLog(@"发短信");
}

//
//-(void)setUI{
//    
//    self.tableView = [PosTool tableViewWithStyle:UITableViewStyleGrouped dataSource:self delegate:self];
//    [self.view addSubview:self.tableView];
//    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.bottom.mas_equalTo(0);
//        make.top.mas_equalTo(0);
//    }];
//    
//    
//    //底部View
//    UIView* bottomView = [PosTool viewWithBackgroundColor:@"FFFFFF" alpha:1.0];
//    
//    [self.view addSubview:bottomView];
//    [bottomView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.bottom.mas_equalTo(0);
//        make.height.mas_equalTo(55);
//    }];
//    
//    UILabel *incomeLB=[[UILabel alloc]init];
//    incomeLB.text=@"应收金额 :";
//    incomeLB.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//    incomeLB.font=[UIFont systemFontOfSize:16];
//    [bottomView addSubview:incomeLB];
//    [incomeLB mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(5);
//        make.top.mas_equalTo(5);
//    }];
//    
//    
//    UILabel *moneyLB=[[UILabel alloc]init];
//    moneyLB.text=@"￥0.00000000";
//    moneyLB.textColor=[UIColor redColor];
//    moneyLB.font=[UIFont systemFontOfSize:15];
//    [bottomView addSubview:moneyLB];
//    [moneyLB mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(incomeLB.mas_right).offset(5);
//        make.top.mas_equalTo(incomeLB);
//    }];
//    
//    
//    UIButton* okBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [okBtn setTitle:@"确认" forState:UIControlStateNormal];
//    [okBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [okBtn setBackgroundColor:[UIColor colorWithHexString:@"#319AE7" alpha:1]];
//    [self.view addSubview:okBtn];
//    [okBtn mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(270);
//        make.right.bottom.mas_equalTo(0);
//        make.height.mas_equalTo(55);
//    }];
//    
//    [okBtn addTarget:self action:@selector(okBtnClick) forControlEvents:UIControlEventTouchUpInside];
//    
//
//
//    
//    
//    
//}
//
//
//-(void)okBtnClick{
//    POSLog(@"确认");
//    
//    
//}
//#pragma mark UITableViewDataSource/delegate
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
//    return 3;
//}
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    if (section==0) {
//        return 3;
//    }else if (section==1){
//        return 5;
//    }
//    
//    
//    return 1;
//}
//
//-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    static NSString* identifier = @"cell";
//    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:identifier];
//    if (!cell) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
//        
//        cell.separatorInset = UIEdgeInsetsMake(0, -20, 0, 0);
//        
//    }
//    
//    [self setCellWithIndexPath:indexPath cell:cell];
//    
//    return cell;
//}
//-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 0.01;
//}
//
//-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//    if (indexPath.section==2) {
//        return 120;
//    }
//    
//    return 44;
//}
//#pragma mark Cell
//-(void)setCellWithIndexPath:(NSIndexPath*)indexPath cell:(UITableViewCell*)cell{
//    cell.selectionStyle = UITableViewCellSeparatorStyleNone;
//    if (indexPath.section==0) {
//        if (indexPath.row < 3){
//            NSArray* imageNames = @[@"icon1_1",@"icon1_1",@"icon2_2"];
//            UIImageView* imageView = [PosTool imageViewWithImageName:imageNames[indexPath.row]];
//            [cell.contentView addSubview:imageView];
//            [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(15);
//                make.centerY.mas_equalTo(0);
//            }];
//            
//            NSArray* holders = @[@"订单总额",@"实付金额",@"顾客电话"];
//            UILabel* nameLB=[PosTool labelWithTextColr:@"4a4a4a" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:holders[indexPath.row]];
//            [cell.contentView addSubview:nameLB];
//            [nameLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                                make.left.mas_equalTo(imageView.mas_right).offset(15);
//                                make.centerY.mas_equalTo(0);
//                            }];
//            
//            if (indexPath.row==0) {
//                UILabel  *totalLB=[[UILabel alloc]init];
//                totalLB.text=@"￥1.22222222";
//                totalLB.textColor=[UIColor colorWithHexString:@"9b9b9b" alpha:1];
//                totalLB.font=[UIFont systemFontOfSize:16];
//                [cell.contentView addSubview:totalLB];
//                [totalLB mas_makeConstraints:^(MASConstraintMaker *make) {
//                    make.right.mas_equalTo(-10);
//                    make.centerY.mas_equalTo(cell);
//                    
//                    
//                }];
//            }else if (indexPath.row==1){
//                self.moneyField=[[UITextField alloc]init];
//                self.moneyField.text=@"12222.2";
//                self.moneyField.delegate=self;
//                self.moneyField.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//                self.moneyField.font=[UIFont systemFontOfSize:16];
//                 _moneyField.keyboardType = UIKeyboardTypeNumberPad;
//                [cell.contentView addSubview:self.moneyField];
//                [self.moneyField mas_makeConstraints:^(MASConstraintMaker *make) {
//                    make.left.mas_equalTo(cell.mas_right).offset(-150);
//                    make.right.mas_equalTo(-10);
//                    make.centerY.mas_equalTo(cell);
//                }];
//                
//            }else{
//                self.phoneField=[[UITextField alloc]init];
//                self.phoneField.delegate=self;
//                self.phoneField.text=@"";
//                self.phoneField.textColor=[UIColor colorWithHexString:@"4a4a4a" alpha:1];
//                self.phoneField.placeholder=@"点击输入";
//                self.phoneField.textAlignment = NSTextAlignmentRight;
//                self.phoneField.font=[UIFont systemFontOfSize:16];
//                _phoneField.keyboardType = UIKeyboardTypeNumberPad;
//                [cell.contentView addSubview:self.phoneField];
//                [self.phoneField mas_makeConstraints:^(MASConstraintMaker *make) {
//                    make.left.mas_equalTo(cell.mas_right).offset(-150);
//                    make.right.mas_equalTo(-10);
//                    make.centerY.mas_equalTo(cell);
//                }];
//            }
//
//    }
//    }else if (indexPath.section==1){
//        if (indexPath.row < 5){
//            NSArray* imageName = @[@"",@"icon3_3",@"icon4_4",@"icon5_5",@"icon3"];
//            UIImageView* imageView2 = [PosTool imageViewWithImageName:imageName[indexPath.row]];
//            [cell.contentView addSubview:imageView2];
//            [imageView2 mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(15);
//                make.centerY.mas_equalTo(0);
//            }];
//            
//           
//            
//            NSArray* holders = @[@"付款方式",@"现金",@"支付宝",@"微信",@"银行卡"];
//            UILabel* nameLB2=[PosTool labelWithTextColr:@"4a4a4a" fontName:@"STHeitiSC-Light"fontSize:16 defaultText:holders[indexPath.row]];
//            [cell.contentView addSubview:nameLB2];
//            [nameLB2 mas_makeConstraints:^(MASConstraintMaker *make) {
//                make.left.mas_equalTo(imageView2.mas_right).offset(15);
//                make.centerY.mas_equalTo(0);
//            }];
//            
//            if (indexPath.row !=0) {
//                UIButton*  payButton = [UIButton buttonWithType:UIButtonTypeCustom];
//                [payButton setImage:[UIImage imageNamed:@"select1_1"] forState:UIControlStateSelected];
//                [payButton setImage:[UIImage imageNamed:@"select2_2"] forState:UIControlStateNormal];
//                [cell.contentView addSubview:payButton];
//                [payButton mas_makeConstraints:^(MASConstraintMaker *make) {
//                    make.right.mas_equalTo(-20);
//                    make.centerY.mas_equalTo(0);
//                }];
//                [payButton addTarget:self action:@selector(otherClick:) forControlEvents:UIControlEventTouchUpInside];
//                [self.payButtons addObject:payButton];
//                payButton.selected = self.payIndex == indexPath.row -1;
//            }
//            
//        }
//    }else{
//        
//        UITextView* textView = [[UITextView alloc] init];
//        self.textView = textView;
//        textView.backgroundColor=[UIColor whiteColor];
//        textView.text=@"订单备注 :";
//        textView.font = [UIFont systemFontOfSize:16];
//        [cell.contentView addSubview: textView];
//        [textView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.right.top.mas_equalTo(0);
//            
//            make.height.mas_equalTo(120);
//        }];
//        
//        
//    }
//
//    
//}
//
//
//#pragma mark UITextFieldDelegate
//-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    //控制字数
//    NSString * str = [textField.text stringByReplacingCharactersInRange:range withString:string];
//    if (textField == self.phoneField) {
//        if (str.length > 11) {
//            return NO;
//        }
//    }
//    if (textField == self.moneyField) {
//        if (str.length>8) {
//            return NO;
//        }
//        
//    }
//    
//    
//    return YES;
//}
//
//
//-(void)otherClick:(UIButton *)button{
//    POSLog(@"结算");
//    
//    for (UIButton* b in self.payButtons){
//        b.selected = b == button;
//    }
//    
//    self.payIndex = [self.payButtons indexOfObject:button];
//    
//}
//
//#pragma mark Keyboard deal
//-(void)keyboardWillChange:(NSNotification*)notification{
//    if(!self.textView.isFirstResponder){
//        return;
//    }
//    
//    NSLog(@"%@",notification.userInfo);
//    CGRect endFrame = [[notification.userInfo valueForKey:UIKeyboardFrameEndUserInfoKey] CGRectValue];
//        BOOL isShowKeyBoard = endFrame.origin.y >= [UIScreen mainScreen].bounds.size.height ? NO : YES;
//    
//    
//    CGRect frame = self.view.frame;
//    CGRect keyFrame = [[notification.userInfo valueForKey:@"UIKeyboardFrameBeginUserInfoKey"] CGRectValue];
//    CGFloat height = keyFrame.size.height;
//        if (isShowKeyBoard) {
//            frame.origin.y = -height + 80;
//    
//        }else{
//            frame.origin.y = 0;
//        }
//        self.view.frame = frame;
//    
//}
//
//-(void)hideKyeboard:(UITapGestureRecognizer*)GR{
//    [self.view endEditing:YES];
//}

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
