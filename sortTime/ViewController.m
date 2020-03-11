//
//  ViewController.m
//  sortTime
//
//  Created by guohq on 2019/9/9.
//  Copyright © 2019 guohq. All rights reserved.
//



#import "ViewController.h"
#import <objc/runtime.h>
#import "SecondVC.h"
//#import "UUUU.h"
#import "NSObject+Category.h"

@interface Sark : NSObject
@end
@implementation Sark
@end

@interface Person11 : NSObject
@end
@implementation Person11
+ (void)load{
    NSLog(@"000");
    
}

+ (void)initialize{
    NSLog(@"===");
}
@end

@interface Student : Person11
@property (nonatomic, copy)    NSString           *name;


@end
@implementation Student


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"33");
}

@end



@interface ViewController ()
@property (nonatomic, strong)    NSTimer           *timer;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [self test_001];
//    Person *son = [Person new];
//    Class class1 = object_getClass(son);
//    NSLog(@"%p  ===   %p   ====   %p",class1,[son class],[Person class]);
//
//
//    Class class2 = object_getClass(class1);
//    NSLog(@"%p  ",class2);
//
//    Class class3 = class_getSuperclass(class1);
//    NSLog(@"%p  ",class3);

//    Class class1 = [NSString class];
//    NSLog(@"%p  ",class1);
//    NSLog(@"%p  ",objc_getMetaClass(object_getClassName(class1)));
//    BOOL res11 = [(id)[NSString class] isKindOfClass:[NSString class]];

    
//
//    Sark *son = [Sark new];
//    Class class1 = [Sark class];
//    Class class2 = object_getClass(class1);
//    Class class3 = objc_getMetaClass(object_getClassName(son));
//    Class class4 = objc_getMetaClass(object_getClassName(class1));
//    Class class5 = object_getClass(son); // 获取p ---> 类对象
//    Class class6 = object_getClass(son); // 获取p ---> 类对象

//    NSLog(@"%p == %p",class5,son);
//    NSLog(@"%p ====  %p ===== %p === %p",class1,class2,class3,class4);
//    BOOL res1 = [(id)[NSObject class] isKindOfClass:[NSObject class]];
    

    
//    BOOL res2 = [(id)[NSObject class] isMemberOfClass:[NSObject class]];
//    BOOL res3 = [(id)[Sark class] isKindOfClass:[Sark class]];
//    BOOL res4 = [(id)[Sark class] isMemberOfClass:[Sark class]];
//    BOOL res5 = [(id)[Sark class] isKindOfClass:[NSObject class]];
//    BOOL res6 = [(id)[Sark class] isMemberOfClass:[NSObject class]];
//
//    BOOL res7 = [[Person new] isKindOfClassITX:[NSObject class]];
//    NSLog(@"%d",res7);
//    NSLog(@"%p %p",(id)[NSObject class],[NSObject class]);
//    NSLog(@"%p %p",(id)[NSString class],[NSString class]);
//
//    NSLog(@"%d %d %d %d %d %d", res1, res2, res3, res4, res5, res6);
    
    
//    Person *p           = [Person new];
//    Class  class1       = object_getClass(p); // 获取p ---> 类对象
//    Class  class2       = [p class];  // 获取p ---> 类对象
//    NSLog(@"class1 === %p class1Name == %@ class2 === %p class2Name == %@",class1,class1,class2,class2);
//
//    /** 元类查找过程 */
//    Class  class3       = objc_getMetaClass(object_getClassName(p)); // 获取p ---> 元类
//    NSLog(@"class3 == %p class3Name == %@",class3,class3);
//
//    Class  class4       = objc_getMetaClass(object_getClassName(class3)); // 获取class3 ---> 元类  此时的元类，class4就是根元类。
//    NSLog(@"class4 == %p class4Name == %@",class4,class4); // class4 == 0x106defe78 class4Name == NSObject
//
//
//    /** 元类查找结束，至此。我们都知道 根元类 的superClass指针是指向 根类对象 的；根类对象的isa指针有指向根元类对象；根元类对象的isa指针指向根元类自己；根类对象的superClass指针指向nil */
//    Class  class5       = class_getSuperclass(class1);  // 获取 类对象的父类对象
//    NSLog(@"class5 == %p class5Name == %@",class5,class5);  //class5 == 0x106defec8 class5Name == NSObject
//
//    // 此时返现class5 已经是NSObject，我们再次获取class5的父类，验证class5是否是 根类对象
//    Class  class6       = class_getSuperclass(class5);  // 获取 class5的父类对象
//    NSLog(@"class6 == %p class6Name == %@",class6,class6); // class6 == 0x0 class6Name == (null) 至此根类对象验证完毕。
//
//
//    /** 验证根类对象与根元类对象的关系 */
//    Class  class7       = objc_getMetaClass(object_getClassName(class5)); // 获取根类对象 对应的  根元类 是否是class4 对应的指针地址
//    NSLog(@"class7 == %p class7Name == %@",class7,class7);  // class7 == 0x106defe78 class7Name == NSObject
//
//    Class  class8      =  class_getSuperclass(class4);  // 获取根元类class4  superClass 指针的指向 是否是根类对象class5 的指针地址
//    NSLog(@"class8 == %p class8Name == %@",class8,class8);  // class8 == 0x106defec8 class8Name == NSObject； class8与class5指针地址相同
//
//    Class  class9       = objc_getMetaClass(object_getClassName(class4)); // 获取根元类 isa 指针是否是指向自己
//    NSLog(@"class9 == %p class9Name == %@",class9,class9);
//
//    NSLog(@"%p %p %p",(id)[NSObject class],[NSObject class],object_getClass([NSObject class]));

    Student *student = [Student new];
    [student setValue:@"123" forKey:@"name"];
    [student setValue:@"1234" forKey:@"name"];

    NSLog(@"%@",student);

//    UUUU *uu = [UUUU new];
//    NSLog(@"---%@",uu);
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context{
    NSLog(@"33");
}

+ (BOOL)resolveInstanceMethod:(SEL)sel {
    // 此时result 为NO，进入消息转发第二阶段forwardingTargetForSelector
    BOOL result = [super resolveInstanceMethod:sel];
    return result;
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    NSLog(@"%s", __func__);
    // 此时result为nil，进入消息转发第三阶段methodSignatureForSelector
    id result = [super forwardingTargetForSelector:aSelector];
    return result;
}
//系统向self.objc发出methodSignatureForSelector消息，询问消息是否有效？有效就返回对应的方法地址之类的，无效则返回nil。如果是nil,Runtime则会发出-doesNotRecognizeSelector:消息，程序这时也就挂掉了. 如果不是nil接着发送forwardInvocation消息。

// 完整的消息转发机制
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector {
    NSLog(@"%s", __func__);
    NSString *selectorString = NSStringFromSelector(aSelector);
    if ([selectorString isEqualToString:@"test_001"]) {
        NSMethodSignature *signature = [NSMethodSignature signatureWithObjCTypes:"v@:"];
        return signature;
    }
    
    return nil;
}

- (void)forwardInvocation:(NSInvocation *)anInvocation {
    NSLog(@"%s", __func__);
    SecondVC *rinv = [[SecondVC alloc] init];
    if ([rinv respondsToSelector:[anInvocation selector]]) {
        [anInvocation invokeWithTarget:rinv];
    } else {
        [super forwardInvocation:anInvocation];
    }
}

- (void)test_000{
    NSLog(@"------");
}

- (void)childThread{
    
    dispatch_queue_t conQueue = dispatch_queue_create("shangqi", DISPATCH_QUEUE_CONCURRENT);
    dispatch_async(conQueue, ^{
        // 正确的示范
        NSLog(@"开启线程%@",[NSThread currentThread]);
        self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerDown) userInfo:nil repeats:YES];
        [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
        NSLog(@"1是否执行%@",[NSThread currentThread]);

        [[NSRunLoop currentRunLoop] run];
        NSLog(@"是否执行%@",[NSThread currentThread]);

    });
}

- (void)timerDown{
    NSLog(@"%@",[NSThread currentThread]);
}


- (void)timeCount{
    __block int timeount = 30;
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_source_t _timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0,queue);

    // 开始时间
    dispatch_time_t startTime = dispatch_walltime(NULL, 1.0 * NSEC_PER_SEC);
    // 间隔时间
    uint64_t interval = 1.0 * NSEC_PER_SEC;
    dispatch_source_set_timer(_timer, startTime, interval, 0);// 每秒执行
    dispatch_source_set_event_handler(_timer, ^{
        if (timeount <= 0) { //倒计时结束，关闭
            dispatch_source_cancel(_timer);
            
        }else{
            //            int minutes = timeout / 60;
            int seconds = timeount % 60;
            NSString *strTime = [NSString stringWithFormat:@"%.2d", seconds];
            dispatch_async(dispatch_get_main_queue(), ^{
                //设置界面的按钮显示 根据自己需求设置
                NSLog(@"____%@ thread ==== %@",strTime,[NSThread currentThread]);
                
            });
            timeount--;
        }
    });
    //启动定时器
    dispatch_resume(_timer);
}

/**
 第一个版本的堆排序
 
 @param originalArray 待排序数组
 */
//- (void)heapSort1:(NSMutableArray *)originalArray {
//    //1.实例化最大堆
//    MaxHeap *maxHeap = [MaxHeap maxHeapWithCapacity:originalArray.count];
//    //2.将所有数组中的元素入队
//    [originalArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
//        [maxHeap insertItem:obj];
//    }];
//    //3.从堆中依次取出元素赋值给array（出队）
//    for (int i = (int)originalArray.count - 1; i >= 0; i--) {
//        originalArray[i] = maxHeap.extractMax;
//    }
//}


/**
 堆排序第二个版本
 
 @param originalArray 待排序数组
 */
//- (void)heapSort2:(NSMutableArray *)originalArray {
//    //实例化优先队列
//    MaxHeap *maxHeap = [MaxHeap maxHeapWithOriginalArray:originalArray];
//    for (int i = (int)originalArray.count - 1; i >= 0; i--) {
//        //依次出队列就可以了
//        originalArray[i] = maxHeap.extractMax;
//    }
//}



void sotrArray(int a[],int alen,int b[],int blen,int result[]){
    int p = 0;
    int q = 0;
    int i = 0;
    while (p < alen && q < blen) {
        if (a[p] < b[q]) {
            result[i] = a[p];
            p++;
        }else{
            result[i] = b[q];
            q++;
        }
        i ++;
    }
    
    while (p < alen) {
        result[i] = a[p++];
        i++;
    }
    while (q < blen) {
        result[i] = b[q++];
        i ++;
    }
}


@end
