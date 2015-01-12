//
//  LeftViewController.m
//  LeftRightSlider
//
//  Created by ZHENGBO on 15/1/7.
//  Copyright (c) 2015年 WeiPengwei. All rights reserved.
//

#import "LeftVC.h"
#import "PWSliderViewController.h"
#import "MainViewController.h"
#import "ViewController1.h"
@interface LeftVC ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation LeftVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIImageView *imgV=[[UIImageView alloc] initWithFrame:self.view.bounds];
    [imgV setImage:[UIImage imageNamed:@"3333"]];
    [self.view addSubview:imgV];
    
    UITableView *tableV=[[UITableView alloc] initWithFrame:CGRectMake(0, 200, self.view.frame.size.width, self.view.frame.size.height-200)];
    tableV.backgroundColor=[UIColor clearColor];
    tableV.delegate=self;
    tableV.dataSource=self;
    [self.view addSubview:tableV];
    
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellID=@"cellID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cellID];
   
    if(cell==nil){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
    }
    cell.backgroundColor=[UIColor clearColor];
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    switch(indexPath.row){
        case 0:
            cell.textLabel.text=@"1111111";
            break;
        case 1:
            cell.textLabel.text=@"2222222";
            break;
        case 2:
            cell.textLabel.text=@"3333333";
            break;
        case 3:
            cell.textLabel.text=@"4444444";
            break;
        case 4:
            cell.textLabel.text=@"5555555";
            break;

        default:
            break;
    }
    
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row ==0) {
        [[PWSliderViewController sharedSliderViewController] showMainViewController];
    }
    else {
        ViewController1 *view1 = [[ViewController1  alloc] init];
        [[PWSliderViewController sharedSliderViewController].navigationController pushViewController:view1 animated:YES];
    }
}

@end
