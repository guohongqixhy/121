//
//  UIAppDelegate+_DTouch.m
//  sortTime
//
//  Created by guohq on 2019/10/17.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "UIAppDelegate+_DTouch.h"


@implementation AppDelegate (_DTouch)

- (void)loadTouch{
    
    
}

- (void)DTouch_application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    // 检测3d touch 是否可用
           if (self.window.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {
               //手动创建3D Touch选项
               //系统风格的icon
                   UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
                   UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
                   UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
                   UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithType:UIApplicationShortcutIconTypeLove];
               
               //自定义图标
//               UIApplicationShortcutIcon *icon1 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"14Eleven"];
//               UIApplicationShortcutIcon *icon2 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"11Eleven"];
//               UIApplicationShortcutIcon *icon3 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"OVEleven"];
//               UIApplicationShortcutIcon *icon4 = [UIApplicationShortcutIcon iconWithTemplateImageName:@"PregnancyEleven"];
               
               //创建选项
               UIApplicationShortcutItem *item1 = [[UIApplicationShortcutItem alloc] initWithType:@"com.niaodaifu.14Eleven" localizedTitle:@"尿14项检测" localizedSubtitle:nil icon:icon1 userInfo:nil];
               UIApplicationShortcutItem *item2 = [[UIApplicationShortcutItem alloc] initWithType:@"com.niaodaifu.11Eleven" localizedTitle:@"尿11项检测" localizedSubtitle:nil icon:icon2 userInfo:nil];
               UIApplicationShortcutItem *item3 = [[UIApplicationShortcutItem alloc] initWithType:@"com.niaodaifu.OVEleven" localizedTitle:@"排卵检测" localizedSubtitle:nil icon:icon3 userInfo:nil];
               UIApplicationShortcutItem *item4 = [[UIApplicationShortcutItem alloc] initWithType:@"com.niaodaifu.pregnancyEleven" localizedTitle:@"早孕检测" localizedSubtitle:nil icon:icon4 userInfo:nil];
               //添加到选项数组
               [UIApplication sharedApplication].shortcutItems = @[item4,item3,item2,item1];
               
               UIApplicationShortcutItem *shortcutItem = [launchOptions valueForKey:UIApplicationLaunchOptionsShortcutItemKey];


               if (shortcutItem) {
                   //判断先前我们设置的快捷选项标签唯一标识，根据不同标识执行不同操作
                   if([shortcutItem.type isEqualToString:@"com.niaodaifu.14Eleven"]){ // 14
                       
//                       [self detectionRoutineUrine_14Eleven];
                   } else if ([shortcutItem.type isEqualToString:@"com.niaodaifu.11Eleven"]) { // 11
                       
//                       [self detectionRoutineUrine_11Eleven];
                   } else if ([shortcutItem.type isEqualToString:@"com.niaodaifu.OVEleven"]) { // 排卵
                       
//                       [self detectionRoutineUrine_OVEleven];
                   } else if ([shortcutItem.type isEqualToString:@"com.niaodaifu.pregnancyEleven"]) { // 早孕
                       
//                       [self detectionRoutineUrine_pregnancyEleven];
                   }
               }
           }

}

- (void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler {
    
    //判断先前我们设置的快捷选项标签唯一标识，根据不同标识执行不同操作
    if([shortcutItem.type isEqualToString:@"com.niaodaifu.14Eleven"]){
        NSLog(@"===1");
//        [self detectionRoutineUrine_14Eleven];
    } else if ([shortcutItem.type isEqualToString:@"com.niaodaifu.11Eleven"]) {
        NSLog(@"===2");

//        [self detectionRoutineUrine_11Eleven];
    } else if ([shortcutItem.type isEqualToString:@"com.niaodaifu.OVEleven"]) {
        NSLog(@"===3");

//        [self detectionRoutineUrine_OVEleven];
    } else if ([shortcutItem.type isEqualToString:@"com.niaodaifu.pregnancyEleven"]) {
        NSLog(@"===4");

//        [self detectionRoutineUrine_pregnancyEleven];
    }
    
    if (completionHandler) {
        completionHandler(YES);
    }
}

@end
