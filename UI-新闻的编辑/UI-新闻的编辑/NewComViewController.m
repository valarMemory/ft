//
//  NewComViewController.m
//  UI-新闻的编辑
//
//  Created by lanou3g on 15/9/5.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "NewComViewController.h"

@interface NewComViewController ()
@property (nonatomic,retain)UIImageView *img;
@property (nonatomic,retain)UITextField *text1;
@property (nonatomic,retain)UITextField *text2;

@end

@implementation NewComViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    self.navigationItem.title = @"新闻编辑";
    
    
   // _img = [UIImageView alloc]initWithImage:[UIImage imageNamed:@""];
    
    _text1 = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMinX(self.view.frame), 100, CGRectGetWidth(self.view.frame), 40)];
    _text1.placeholder = @"请输入新闻标题";
    _text1.backgroundColor = [UIColor whiteColor];
    _text1.textColor = [UIColor purpleColor];
    _text1.font = [UIFont systemFontOfSize:25];
    [self.view addSubview:_text1];
    
    
    _text2 = [[UITextField alloc]initWithFrame:CGRectMake(CGRectGetMinX(self.view.frame), CGRectGetMaxY(_text1.frame)+60, CGRectGetWidth(self.view.frame), 400)];
    _text2.backgroundColor = [UIColor whiteColor];
    _text2.placeholder = @"请输入内容";
    _text2.adjustsFontSizeToFitWidth = true;
    _text2.textColor = [UIColor greenColor];
    _text2.font = [UIFont systemFontOfSize:30];
    [self.view addSubview:_text2];

    
    
    
    
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStylePlain target:self action:@selector(leftAction:)];
    
    
    // Do any additional setup after loading the view.
}

- (void)leftAction:(UIBarButtonItem *)sender
{
    [_delegate passValue:_text1.text];
    [_delegate passValue1:_text2.text];
    //[_delegate passValue:_text1.text string:_text2.text];
    [self.navigationController popViewControllerAnimated:YES];
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
