//
//  SecondVC.m
//  LCTableBarController
//
//  Created by Lemon on 16/11/10.
//  Copyright © 2016年 LemonChao. All rights reserved.
//

#import "SecondVC.h"
#import "CustomVC.h"

@interface SecondVC ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;

@property(nonatomic, strong) NSMutableArray *array;
@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.array = @[@"医保",@"农资",@"明珠",@"案头",@"牺牲的方式"].mutableCopy;
    
    self.view.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.tableView];
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.array[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] init];
    backItem.title = self.array[indexPath.row];
    self.navigationItem.backBarButtonItem = backItem;

    CustomVC *customVC = [[CustomVC alloc] init];
    customVC.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:customVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
