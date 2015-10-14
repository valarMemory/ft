//
//  RootViewController.m
//  UI-新闻的编辑
//
//  Created by lanou3g on 15/9/5.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "RootViewController.h"
#import "NewComViewController.h"
@interface RootViewController ()<PassValueDelegate>
@property (nonatomic,retain)UILabel *lable1;
@property (nonatomic,retain)UILabel *lable2;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor cyanColor];
    self.navigationItem.title = @"新闻显示";
    
    _lable1 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame)/4, 100, self.view.frame.size.width/2,  50)];
    _lable1.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_lable1];
    
    
    _lable2 = [[UILabel alloc]initWithFrame:CGRectMake(CGRectGetMinX(self.view.frame), CGRectGetMaxY(_lable1.frame)+50, CGRectGetWidth(self.view.frame), 400)];
    _lable2.backgroundColor = [UIColor whiteColor];
    _lable2.numberOfLines = 0;
    
    
    [self.view addSubview:_lable2];
    
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"编辑界面" style:UIBarButtonItemStylePlain target:self action:@selector(rightAction:)];
    
    
    // Do any additional setup after loading the view.
}

- (void)passValue:(NSString *)atring1
{
    _lable1.text = atring1;
}

- (void)passValue1:(NSString *)adtring
{
    _lable2.text = adtring;
}
- (void)rightAction:(UIBarButtonItem *)sender
{
    NewComViewController *news = [[NewComViewController alloc]init];
    news.delegate = self;
    [self.navigationController pushViewController:news animated:YES];
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
