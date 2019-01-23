//
//  XGPushPrivate.h
//  XG-SDK
//
//  Created by uwei on 2019/1/23.
//  Copyright © 2019 mta. All rights reserved.
//

#ifndef XGPushPrivate_h
#define XGPushPrivate_h

#import "XGPush.h"

@interface XGPush (XGPushPrivate)


/**
 私有云专属接口

 @param host 域名或IP，例如， "tpns.qq.com", "1.0.0.1"
 @param port 端口号
 */
- (void)configureHost:(NSString *)host port:(NSInteger)port;

@end

#endif /* XGPushPrivate_h */
