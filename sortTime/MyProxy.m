//
//  MyProxy.m
//  sortTime
//
//  Created by guohq on 2019/9/16.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "MyProxy.h"

@interface MyProxy()

@property(nonatomic,weak) id objc;

@end

@implementation MyProxy
- (instancetype)initWithObjc:(id)objc{
    self.objc = objc;
    return self;
}

+ (instancetype)proxyWithObjc:(id)objc{
    
    return [[self alloc] initWithObjc:objc];
}

//系统向self.objc发出methodSignatureForSelector消息，询问消息是否有效？有效就返回对应的方法地址之类的，无效则返回nil。如果是nil,Runtime则会发出-doesNotRecognizeSelector:消息，程序这时也就挂掉了. 如果不是nil接着发送forwardInvocation消息。
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    
    NSMethodSignature *result = [self.objc methodSignatureForSelector:aSelector];
    return result;
    
}
// 将消息转发给self.objc对象
- (void)forwardInvocation:(NSInvocation *)invocation {
    
    if ([self.objc respondsToSelector:invocation.selector]) {
        
        [invocation invokeWithTarget:self.objc];
    }
}
@end
