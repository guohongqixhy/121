//
//  SecondVC.m
//  sortTime
//
//  Created by guohq on 2019/9/16.
//  Copyright © 2019 guohq. All rights reserved.
//

#import "SecondVC.h"
#import "MyProxy.h"
#import "ViewController.h"
@interface SecondVC ()
{
    ViewController *vc;
}
@property (nonatomic, strong)    NSTimer           *timer;
@property (nonatomic, assign)    NSInteger         count;

@property (nonatomic, strong)    NSMutableArray           *array;
@property (nonatomic, strong)    NSMutableArray           *dataArray;


@end

@implementation SecondVC

- (void)viewDidLoad {
    [super viewDidLoad];

    _count = 0;
    vc = [ViewController new];
    MyProxy *proxy = [[MyProxy alloc] initWithObjc:vc];
    _timer = [NSTimer timerWithTimeInterval:1 target:proxy selector:@selector(test_000) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
    
    
    _array = [@[@"1",@"2",@"3",@"3",@"4"] mutableCopy];

    for (int i = 0; i < _array.count; i ++) {
        NSInteger num = [_array[i] integerValue];
        if (num % 3 == 0) {
            [_array removeObjectAtIndex:i];
            i --;
        }
    }
    _dataArray = @[@1,@2,@3,@3,@5,@6].mutableCopy;
    
    for (int i=0; i<_dataArray.count;i++) {
         if([_dataArray[i] intValue]%3 == 0){
                [_dataArray removeObjectAtIndex:i];
            }
    }
    NSLog(@"%@",_array);
    NSLog(@"%@",_dataArray);

}
- (void)test_001{
    
    NSLog(@"------%ld",(long)_count++);
}

-(void)dealloc{
    NSLog(@"---dealloc----");
    [_timer invalidate];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
