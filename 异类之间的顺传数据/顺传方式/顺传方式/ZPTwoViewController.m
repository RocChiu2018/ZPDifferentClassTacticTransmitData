//
//  ZPTwoViewController.m
//  顺传方式
//
//  Created by apple on 16/7/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPTwoViewController.h"
#import "ZPStudent.h"

@interface ZPTwoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *sexTextField;
@property (weak, nonatomic) IBOutlet UITextField *ageTextField;

@end

@implementation ZPTwoViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.nameTextField.text = self.student.name;
    self.sexTextField.text = self.student.sex;
    self.ageTextField.text = self.student.age;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
