//
//  DZMemo.m
//  Pods
//
//  Created by stonedong on 15/12/31.
//
//

#import "DZMemo.h"
#import "DZMemoRecord.h"
@interface DZMemo ()
{
    NSMutableArray* _monoArray;
}
@end

@implementation DZMemo
- (instancetype) init
{
    self = [super init];
    if (!self) {
        return self;
    }
    _monoArray = [NSMutableArray new];
    return self;
}

- (void) memoEnv:(id)env key:(NSString *)key
{
    DZMemoRecord* r = [[DZMemoRecord alloc] initWithEnv:env key:key];
    [_monoArray addObject:r];
}

- (void) recover
{
    for (DZMemoRecord* r  in _monoArray) {
        [r recover];
    }
}
@end
