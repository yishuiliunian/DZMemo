//
//  UIViewController+Memo.m
//  Pods
//
//  Created by stonedong on 16/4/17.
//
//

#import "UIViewController+Memo.h"
#import <objc/runtime.h>
#import "DZMemo.h"
static void* kNavigationMemo = &kNavigationMemo;

@implementation UIViewController (Memo)

- (DZMemo*) navigatoinControllerMemo
{
    DZMemo* memo = objc_getAssociatedObject(self, kNavigationMemo);
    if (!memo) {
        memo = [DZMemo new];
        objc_setAssociatedObject(self, kNavigationMemo, memo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return memo;
}

@end
