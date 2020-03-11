//
//  AppDelegate.h
//  sortTime
//
//  Created by guohq on 2019/9/9.
//  Copyright © 2019 guohq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, assign)    NSInteger           num;


@property (nonatomic, readonly) UIForceTouchCapability forceTouchCapability NS_AVAILABLE_IOS(9_0); // unspecified: UIForceTouchCapabilityUnknown


@end

