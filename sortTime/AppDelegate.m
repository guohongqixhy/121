//
//  AppDelegate.m
//  sortTime
//
//  Created by guohq on 2019/9/9.
//  Copyright © 2019 guohq. All rights reserved.
//

//
#include <stdio.h>
#include <stdlib.h>
union u{
    double a;
    int    b;
    long   c;
};

union u2{
    char a[13];
    int    b;
};

union u3{
    char a[13];
    char    b;
};

struct _mystruct{
    union u2 b;
    union u a;
    union u3 c;

};

union Ui {
char s[9];
int n;
double d;
};

struct MyStruct
{
//    int type;    // 4
    short type2;    // 2
    double dda1; // 8
    char dda[9];

};

struct B

{
//    double b;
//　　 char a;
//    int c;
    short n;
    char ui[3];
}str2;

typedef struct _mystruct _mystruct;
typedef union u u;
typedef union u2 u2;
typedef union u3 u3;
typedef union Ui Ui;
typedef struct MyStruct MyStruct;

#import "AppDelegate.h"
#import "UIAppDelegate+_DTouch.h"
@interface AppDelegate ()
{
    NSTimer *time;
}
@property (copy) NSMutableArray *array;
@property (copy) NSMutableArray *dataArray;
@property (nonatomic, retain)    id           obj;



@end

// 链表节点定义
typedef struct _node
{
    // 数据
    NSString* data;
    // 下一个指针
    struct _node* next;
} HGNode;



@implementation AppDelegate

// 创建一个节点
- (HGNode*)createNode {
    HGNode* node = (HGNode*)malloc(sizeof(HGNode));
    // 现在是一个空的节点
    return node;
}

// 创建一个链表 返回一个头节点
- (HGNode*)createLink {
    // 先创建一个 head 节点
    HGNode* head = [self createNode];
    {
        // 数据
        head->data = @"head";
    }
    
    // 创建其它的节点
    // 第一个节点
    HGNode* node1 = [self createNode];
    {
        // 数据
        node1->data = @"A";
        // 接到 head
        head->next = node1;
    }
    
    // 第二个节点
    HGNode* node2 = [self createNode];
    {
        // 数据
        node2->data = @"B";
        // 接到 node1
        node1->next = node2;
    }
    
    // 第三个节点
    HGNode* node3 = [self createNode];
    {
        // 数据
        node3->data = @"C";
        // 接到 node2
        node2->next = node3;
    }
    
    // 第四个节点
    HGNode* node4 = [self createNode];
    {
        // 数据
        node4->data = @"D";
        // 接到 node2
        node3->next = node4;
    }
    
    node4->next = NULL;
    
//    // 第五个节点
//    HGNode* node5 = [self createNode];
//    {
//           // 数据
//           node5->data = @"F";
//           // 接到 node2
//           node4->next = node5;
//    }
//
//    node5->next = node3;
    
    return head;
}

// 打印
- (void)printWithLink:(HGNode*)headeLink {
    NSMutableArray* tmpArrM = [NSMutableArray array];
    // 遍历单列表
    HGNode* tmpLink = headeLink;
    
    while (tmpLink) {
        [tmpArrM addObject:[NSString stringWithFormat:@"%@", tmpLink->data]];
        tmpLink = tmpLink->next;
    }
    
    NSLog(@"链表打印: %@", [tmpArrM componentsJoinedByString:@"-->"]);
}

// 遍历链表
- (void)traverseLink {
    HGNode* head = [self createLink];
    
    HGNode *p = head;
    HGNode *q = NULL;
    HGNode *pr;

    
    while (p) {
       
        pr = p->next;
        p->next=q;
        q = p;
        p = pr;
    }
    head->next = q;
    
    // 打印
    [self printWithLink:head];
}

- (BOOL)sortNode:(HGNode *)list{
    if (list->next == NULL) {
        return NO;
    }
    
    HGNode *fast  = list;
    HGNode *slow  = list;
    while (fast != NULL) {
        if (fast->next != NULL) {
            fast = fast->next->next;
        }else{
            fast = NULL;
        }
        slow = slow->next;
        if (slow == fast) {
            return YES;
        }
    }
    return NO;

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self traverseLink];

    
    [self DTouch_application:application didFinishLaunchingWithOptions:launchOptions];
        
    HGNode *node = [self createLink];
    HGNode *p = node->next;
    HGNode *q = NULL;
    HGNode *pr = NULL;
    node->next = NULL;
    
    while (p) {
        pr = p->next;
        p->next = q;
        q  = p;
        p  = pr;
    }
    
    
    
    
    BOOL result  = [self sortNode:node];
    NSLog(@"%d",result);
//    NSLog(@"%@", [myDefaults valueForKey:@"key"]);
    _num = 0;
    
//    __weak typeof(self) weakself = self;
//    time = [NSTimer scheduledTimerWithTimeInterval:2 repeats:YES block:^(NSTimer * _Nonnull timer) {
//        weakself.num = weakself.num + 2;
//        NSUserDefaults *myDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.saicmotor.Thailand"];//此处id要与开发者中心创建时一致
//        NSString *stri = [NSString stringWithFormat:@"%ld-guohq",weakself.num];
//        [myDefaults setObject:stri forKey:@"saicmotor"];
//    }];
    
//    time = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timeAction) userInfo:nil repeats:YES];
////    [time setFireDate:[NSDate distantFuture]];
//    [[NSRunLoop mainRunLoop] addTimer:time forMode:NSRunLoopCommonModes];
//
//
//
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        NSUserDefaults *myDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.saicmotor.Thailand"];//此处id要与开发者中心创建时一致
//        [myDefaults setObject:@"===" forKey:@"saicmotor1"];
//
//    });
    
//    NSMutableArray *listArray = @[@"sdas",@"assaa",@"sdafhdask"].mutableCopy;
//    self.dataArray = listArray;
//    [self.dataArray removeObjectAtIndex:1];
//
//    _array = listArray;
//    NSLog(@"%p",_array);
//    [_array removeObjectAtIndex:1];
//
//    _mystruct yy;
//    u   iii;
//    u2   iii2;
//    u3   iii3;
//    Ui   uu;
//    MyStruct ooo;
//    char a[13];
//
//    NSLog(@"%lu",sizeof(yy));
//    NSLog(@"%lu",sizeof(iii));
//    NSLog(@"%lu",sizeof(iii2));
//    NSLog(@"%lu +++",sizeof(iii3));
//    NSLog(@"%lu",sizeof(a));
//    NSLog(@"%lu",sizeof(uu));
//    NSLog(@"%lu",sizeof(ooo));
//    NSLog(@"%lu",sizeof(str2));

    
//    dispatch_queue_t queue = dispatch_queue_create("uuuu", DISPATCH_QUEUE_CONCURRENT);
//    dispatch_async(queue, ^{
//       dispatch_queue_t uu = dispatch_get_current_queue();
//        NSLog(@"%@",uu);
//        NSLog(@"%@",queue);
//
//    });
    
//    NSThread *thre = [NSThread currentThread];
//    NSLog(@"%f",thre.stackSize / (1024.0 * 1024.0));
//    NSLog(@"主线程栈区空间大小 => %tu KB",[NSThread currentThread].stackSize/1024);

    return YES;
}

- (void)timeAction{
           self.num = self.num + 2;
           NSUserDefaults *myDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.saicmotor.Thailand"];//此处id要与开发者中心创建时一致
           NSString *stri = [NSString stringWithFormat:@"%ld-guohq",self.num];
           [myDefaults setObject:stri forKey:@"saicmotor"];
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {

    //定时器后台运行代码↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓定时器后台运行代码//

      UIApplication* app = [UIApplication sharedApplication];

      __block UIBackgroundTaskIdentifier bgTask;

      /*注册一个后台任务，告诉系统我们需要向系统借一些事件*/

      bgTask = [app beginBackgroundTaskWithExpirationHandler:^{

          dispatch_async(dispatch_get_main_queue(), ^{



              if(bgTask !=UIBackgroundTaskInvalid)

              {

                  /*销毁后台任务标识符*/

                  /*不管有没有完成，结束background_task任务*/

                  bgTask =UIBackgroundTaskInvalid;

              }

          });

      }];



      dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{

          dispatch_async(dispatch_get_main_queue(), ^{

              if(bgTask !=UIBackgroundTaskInvalid)

              {

                  /*销毁后台任务标识符*/

                  /*不管有没有完成，结束background_task任务*/

                  bgTask =UIBackgroundTaskInvalid;

              }

          });

      });

      //定时器后台运行代码↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑定时器后台运行代码//


}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


- (void)getAllWindow{
    UIViewController *vc = [UIApplication sharedApplication].keyWindow.rootViewController;
}


@end
