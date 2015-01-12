//
//  RightViewController.m
//  LeftRightSlider
//
//  Created by ZHENGBO on 15/1/7.
//  Copyright (c) 2015年 WeiPengwei. All rights reserved.
//

#import "RightVC.h"

@interface RightVC ()

@end

@implementation RightVC

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
    [imgV setImage:[UIImage imageNamed:@"2222"]];
    [self.view addSubview:imgV];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
