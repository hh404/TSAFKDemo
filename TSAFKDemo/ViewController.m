//
//  ViewController.m
//  TSAFKDemo
//
//  Created by huangjianwu on 2016/12/5.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "ViewController.h"
#import "SubController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(90, 100, 200, 40)];
    [btn addTarget:self action:@selector(_openSubController) forControlEvents:UIControlEventTouchUpInside];
    [btn setTitle:@"切换到下个界面(button)" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *gestureLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 180, CGRectGetWidth(self.view.bounds), 100)];
    gestureLabel.textAlignment = NSTextAlignmentCenter;
    gestureLabel.text = @"切换到下个界面(gesture)";
    gestureLabel.textColor = [UIColor blueColor];
    gestureLabel.userInteractionEnabled = YES;
    [self.view addSubview:gestureLabel];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(_tap:)];
    [gestureLabel addGestureRecognizer:tap];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - priviate

- (void)_openSubController
{
    SubController *sc = [[SubController alloc] init];
    [self presentViewController:sc  animated:YES completion:^{
        
    }];
}

- (void)_tap:(UITapGestureRecognizer*)aTap
{
    [self _openSubController];
}

@end
