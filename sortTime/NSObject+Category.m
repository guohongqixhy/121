//
//  NSObject+Category.m
//  sortTime
//
//  Created by guohq on 2019/9/20.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "NSObject+Category.h"
#import <objc/runtime.h>

@implementation NSObject (Category)
//逆向反编译得到的源码
- (BOOL) isKindOfClassITX:(Class)class
{
    NSLog(@"class->%@:%p",NSStringFromClass(class), class);
    NSLog(@"%p",[NSObject class]);
    NSLog(@"%p",self);

    Class r0 = object_getClass(self);
    
    while (1) {
        if (r0 == 0) {
            return 0;
        }else{
            NSLog(@"r0->%@:%p",NSStringFromClass(r0), r0);
            if (r0 != class) {
                r0 = [r0 superclass];
            }else{
                return 1;
            }
        }
    }
}
@end
