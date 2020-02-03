//
//  DataBase.h
//
//  Created by Giancarlo Collantes.
//  Copyright (c) 2019 Giancarlo Collantes All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataBase : NSObject
+(NSString *)getDataBasePath;
+(void) checkAndCreateDatabase;
- (NSArray *)executerSelect:(NSString *)select;
- (void)executerInsert:(NSString *)insert;
- (void)executerDelete:(NSString *)deleteString;
- (void)executerUpdate:(NSString *)update;
@end
