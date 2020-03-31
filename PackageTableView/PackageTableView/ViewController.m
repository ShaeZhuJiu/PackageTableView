//
//  ViewController.m
//  PackageTableView
//
//  Created by 谢鑫 on 2020/3/30.
//  Copyright © 2020 Shae. All rights reserved.
//

#import "ViewController.h"
#import "AppSettingTableView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *array=[NSArray arrayWithObjects:@"1",@"2",@"3", nil];
    AppSettingTableView *appSettingTableView=[[AppSettingTableView alloc]initWithFrame:self.view.frame];
    [appSettingTableView setTitle:@"TEST" AndArray:array];
    [self.view addSubview:appSettingTableView];
    
}


@end
