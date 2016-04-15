//
//  SwpGetIp.h
//  SMServerUser
//
//  Created by songweiping on 16/3/26.
//  Copyright © 2016年 songweiping. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@interface SwpGetIp : NSObject

/*!
 *  @author swp_song
 *
 *  @brief  swpGetIphoneIpAddress ( 获取 当前 设备的 Ip 地址 )
 *
 *  @return NSString Ip
 */
+ (NSString *)swpGetIphoneIpAddress;

@end
NS_ASSUME_NONNULL_END

