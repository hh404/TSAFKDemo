//
//  SubController.m
//  TSAFKDemo
//
//  Created by huangjianwu on 2016/12/6.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "SubController.h"
#import "TSAplication.h"

@implementation SubController

#pragma mark - default

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(_afkMessage:) name:kTSAFKNotification object:nil];
    
    self.view.backgroundColor = [UIColor magentaColor];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.bounds), 35)];
    lb.text = @"5秒之后，收到通知本界面消失";
    lb.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:lb];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

#pragma mark - private

- (void)_afkMessage:(NSNotification*)aNo
{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
