//
//  Main2ViewController.m
//  LeftRightSlider
//
//  Created by ZHENGBO on 15/1/9.
//  Copyright (c) 2015年 heroims. All rights reserved.
//

#import "Main2ViewController.h"

@interface Main2ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation Main2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imgV=[[UIImageView alloc] initWithFrame:self.view.bounds];
    [imgV setImage:[UIImage imageNamed:@"1111"]];
    [self.view addSubview:imgV];
    
    UIView *navBar=[[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44+[UIApplication sharedApplication].statusBarFrame.size.height)];
    navBar.backgroundColor=[UIColor whiteColor];
    navBar.alpha=0.8;
    [self.view addSubview:navBar];
    
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftBtn.frame = CGRectMake(0, [UIApplication sharedApplication].statusBarFrame.size.height, 44, 44);
    [leftBtn setTitle:@"左" forState:UIControlStateNormal];
    [leftBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(leftItemClick) forControlEvents:UIControlEventTouchUpInside];
    [navBar addSubview:leftBtn];
    
    UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    rightBtn.frame = CGRectMake(self.view.frame.size.width-44, [UIApplication sharedApplication].statusBarFrame.size.height, 44, 44);
    [rightBtn setTitle:@"右" forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightItemClick) forControlEvents:UIControlEventTouchUpInside];
    [navBar addSubview:rightBtn];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, ScreenHight) style:UITableViewStylePlain];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    for (UIView *subView in cell.contentView.subviews) {
        [subView removeFromSuperview];
    }
    
    cell.imageView.image = [UIImage imageNamed:@"1111.png"];
    cell.imageView.layer.cornerRadius = 20;
    cell.imageView.layer.masksToBounds = YES;
    
    cell.textLabel.text = [NSString stringWithFormat:@"第 %ld 行",(long)indexPath.row];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"第 %ld 行,每天怎么有效管理时间！！！",(long)indexPath.row];
    
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    ViewController1 *detail = [[ViewController1 alloc] init];
    [[PWSliderViewController sharedSliderViewController].navigationController pushViewController:detail animated:YES];
}

-(void)leftItemClick{
    [[PWSliderViewController  sharedSliderViewController] showLeftViewController];
}
-(void)rightItemClick{
    [[PWSliderViewController sharedSliderViewController] showRightViewController];
}


@end
