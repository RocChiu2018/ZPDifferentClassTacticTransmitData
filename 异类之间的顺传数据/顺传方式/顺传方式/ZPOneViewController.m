//
//  ZPOneViewController.m
//  顺传方式
//
//  Created by apple on 16/7/4.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 顺传数据只有一种方式：由一个视图控制器向另一个视图控制器顺传数据的时候，接收数据的视图控制器必须要有一个属性来专门接收传递过去的数据。
 */
#import "ZPOneViewController.h"
#import "ZPStudent.h"
#import "ZPTwoViewController.h"

@interface ZPOneViewController ()

@end

@implementation ZPOneViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark ————— segue方法 —————
/**
 在storyboard文件中不管是自动型的还是手动型的segue在页面跳转之前系统都会自动调用这个方法，一般在这个方法里完成数据在不同视图控制器之间的顺传或者逆传。
 */
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ZPStudent *student = [[ZPStudent alloc] init];
    student.name = @"小明";
    student.sex = @"男";
    student.age = @"12";
    
    ZPTwoViewController *twoViewController = segue.destinationViewController;
    twoViewController.student = student;  //向其他的视图控制器顺传数据
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
