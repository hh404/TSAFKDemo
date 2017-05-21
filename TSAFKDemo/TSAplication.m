//
//  TSAplication.m
//  TSAFKDemo
//
//  Created by huangjianwu on 2016/12/5.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "TSAplication.h"

NSString *const kTSAFKNotification = @"TSAFKNotification";

@implementation TSAplication

- (void)sendEvent:(UIEvent *)event
{
    NSSet *touches = [event allTouches];
    
    for (UITouch *touch in touches) {
        
        switch ([touch phase]) {
                
            case UITouchPhaseBegan:
                NSLog(@"UITouchPhaseBegan:%s",__PRETTY_FUNCTION__);
                [[self class] cancelPreviousPerformRequestsWithTarget:self];
                break;
                
            case UITouchPhaseMoved:
                NSLog(@"%s",__PRETTY_FUNCTION__);
                
                break;
                
            case UITouchPhaseEnded:
            case UITouchPhaseCancelled:
                NSLog(@"%s %tu",__PRETTY_FUNCTION__,[touch phase]);
                [self performSelector:@selector(delayEvent) withObject:nil afterDelay:5];
                break;
                
            default:
                break;
        }
    }
    
    [super sendEvent:event];
}

- (void)delayEvent
{
    [[NSNotificationCenter defaultCenter] postNotificationName:kTSAFKNotification object:nil];
}

@end
