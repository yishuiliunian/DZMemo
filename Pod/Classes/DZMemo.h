//
//  DZMemo.h
//  Pods
//
//  Created by stonedong on 15/12/31.
//
//

#import <Foundation/Foundation.h>
#import "DZMemoRecord.h"
@interface DZMemo : NSObject
- (void) recover;
- (void) memoEnv:(id)env key:(NSString*)key;
- (void) memoEnv:(id)env key:(NSString *)key recorverSEL:(SEL)sel;
@end
