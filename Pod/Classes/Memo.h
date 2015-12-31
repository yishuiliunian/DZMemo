//
//  Memo.h
//  Pods
//
//  Created by stonedong on 15/12/31.
//
//

#import <Foundation/Foundation.h>

@protocol Memo <NSObject>
- (BOOL) backup;
- (BOOL) recover;
@end
