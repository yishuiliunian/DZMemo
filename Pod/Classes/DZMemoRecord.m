//
//  DZMemoRecord.m
//  Pods
//
//  Created by stonedong on 15/12/31.
//
//

#import "DZMemoRecord.h"

@interface DZMemoRecord ()
{
    BOOL _dataNilWhenInit;
}
@end

@implementation DZMemoRecord

- (instancetype) initWithEnv:(id)env key:(NSString*)key
{
    self = [super init];
    if (!self) {
        return self;
    }
    _env =env;
    _key = key;
    [self backup];
    return self;
}

- (BOOL) backup
{

    if (!_env || !_key || ![_env respondsToSelector:NSSelectorFromString(_key)]) {
        _dataVaild = NO;
        return NO;
    }
    _value = [_env valueForKey:_key];
    if (!_value) {
        _dataNilWhenInit = YES;
    }
    _dataVaild = YES;
    return YES;
}
- (BOOL) dataVaild
{
    if (!_value && !_dataNilWhenInit) {
        return NO;
    }
    if (!_env) {
        return NO;
    }
    return YES;
}

- (BOOL) recover
{
    if (!self.dataVaild) {
        return NO;
    }
    if (self.recoverSEL) {
        [_env performSelector:self.recoverSEL withObject:_value];
    } else {
        [_env setValue:_value forKey:_key];
    }
    return YES;
}
@end
