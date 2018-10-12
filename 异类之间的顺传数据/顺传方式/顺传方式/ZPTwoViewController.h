//
//  ZPTwoViewController.h
//  顺传方式
//
//  Created by apple on 16/7/4.
//  Copyright © 2016年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZPStudent;

@interface ZPTwoViewController : UIViewController

@property (nonatomic, strong) ZPStudent *student;  //接收数据的视图控制器要有一个属性专门来接收从另外视图控制器传递过来的数据

@end
