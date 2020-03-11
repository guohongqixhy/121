//
//  MessageProxy.m
//  sortTime
//
//  Created by guohq on 2019/9/16.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "MessageProxy.h"

@implementation MessageProxy

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    return [super respondsToSelector:sel];
}


@end
