//
//  DZMemoRecord.h
//  Pods
//
//  Created by stonedong on 15/12/31.
//
//

#import <Foundation/Foundation.h>
#import "Memo.h"
@interface DZMemoRecord : NSObject <Memo>
{
    @protected
    __weak id _env;
    @protected
    BOOL _dataVaild;
}
@property (nonatomic, weak, readonly) id env;
@property (nonatomic, assign, readonly) BOOL dataVaild;
@property (nonatomic, weak, readonly) id value;
@property (nonatomic, strong, readonly) NSString* key;
@property (nonatomic, assign) SEL recoverSEL;
- (instancetype) initWithEnv:(id)env key:(NSString*)key;
@end
