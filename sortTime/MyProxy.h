//
//  MyProxy.h
//  sortTime
//
//  Created by guohq on 2019/9/16.
//  Copyright © 2019 guohq. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyProxy : NSProxy
- (instancetype)initWithObjc:(id)objc;
+ (instancetype)proxyWithObjc:(id)objc;
@end

NS_ASSUME_NONNULL_END
