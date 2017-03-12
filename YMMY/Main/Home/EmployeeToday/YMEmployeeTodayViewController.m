//
//  YMEmployeeTodayViewController.m
//  YMMY
//
//  Created by apple on 17/3/12.
//  Copyright © 2017年 apple. All rights reserved.
//

#import "YMEmployeeTodayViewController.h"
#import "GFCalendar.h"
#import "YMEmployeeTodayModel.h"
#import "YMEmployeeTodayCellTableViewCell.h"
@interface YMEmployeeTodayViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *dataArray;

@end

@implementation YMEmployeeTodayViewController
-(NSMutableArray *)dataArray{
    if (!_dataArray){
        NSArray* array = [YMEmployeeTodayModel getEmployeeArray];
        
        NSMutableArray* dataArrayNew = [NSMutableArray array];
        
        for(YMEmployeeTodayModel* model in array){
            NSInteger flag = arc4random_uniform(2);
            if(flag <= 1){
                [dataArrayNew addObject:model];
            }
        }
        _dataArray = [dataArrayNew mutableCopy];
    }
    
    return _dataArray;
}
//临时方法
-(void)refreshData{
    NSArray* array = [YMEmployeeTodayModel getEmployeeArray];
    
    NSMutableArray* dataArrayNew = [NSMutableArray array];
    
    for(YMEmployeeTodayModel* model in array){
        NSInteger flag = arc4random_uniform(2);
        if(flag <= 0){
            [dataArrayNew addObject:model];
        }
    }
    self.dataArray = [dataArrayNew mutableCopy];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setTitle:@"今日上班员工"];
    [self setupMain];
}

- (void)setupMain {
    
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    //日历
    CGFloat width = self.view.bounds.size.width ;
    CGPoint origin = CGPointMake(0, 0);
    
    GFCalendarView *calendar = [[GFCalendarView alloc] initWithFrameOrigin:origin width:width];
    [self.view addSubview:calendar];

   
    
    // 点击某一天的回调
    calendar.didSelectDayHandler = ^(NSInteger year, NSInteger month, NSInteger day) {
        NSLog(@"%zd-%zd",month,day);
        
        [self refreshData];
        [self.tableView reloadData];
    };
    

    //tableView
    self.tableView = [[UITableView alloc] init];
    [self.view addSubview:self.tableView];
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.mas_equalTo(0);
        make.top.mas_equalTo(calendar.mas_bottom).offset(3);
    }];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    
}

#pragma mark UITableViewDataSource delegeta
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    YMEmployeeTodayCellTableViewCell* cell = [YMEmployeeTodayCellTableViewCell cellWithTableView:tableView];
    
    cell.model = self.dataArray[indexPath.row];
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
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
