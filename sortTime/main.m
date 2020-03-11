//
//  main.m
//  sortTime
//
//  Created by guohq on 2019/9/9.
//  Copyright © 2019 guohq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface Person1 : NSObject {
@public

    int isAge; // 4
    int age; //3
    int _isAge; //2
    int _age; //1
}
//@property (nonatomic, assign)    int           age;


@end

@implementation Person1

//- (int)getAge{
//    return 10;
//}
//
//- (int)age{
//    return 11;
//}
//- (int)isAge{
//    return 12;
//}
//- (int)_age{
//    return 11;
//}

// 默认的返回值就是YES
+ (BOOL)accessInstanceVariablesDirectly {
    return YES;
}

@end


int main(int argc, char * argv[]) {
    @autoreleasepool {
        Person1 *person = [[Person1 alloc] init];
        // 通过KVC修改age属性
        [person setValue:@13 forKey:@"age"];
        
//        person->_age = 20;
//        person->_isAge = 21;
        person->age  = 22;
        person->isAge = 23;
               
        NSLog(@"%@", [person valueForKey:@"age"]);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
