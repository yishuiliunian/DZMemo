//
//  DZMemo.h
//  Pods
//
//  Created by stonedong on 15/12/31.
//
//

#import <Foundation/Foundation.h>

@interface DZMemo : NSObject
- (void) recover;
- (void) memoEnv:(id)env key:(NSString*)key;
@end
