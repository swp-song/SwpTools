//
//  SwpCoordinateTransform.h
//  SwpTools
//
//  Created by swp_song on 16/5/5.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#import <Foundation/Foundation.h>


#define SWP_COORDINATE_TRANSFORM_DEPRECATED(instead) NS_DEPRECATED_IOS(1_0_2, 3_4_0, instead)

NS_ASSUME_NONNULL_BEGIN

@interface SwpCoordinateTransform : NSObject
/** 定义 定位 数据变量 */
typedef double  SwpDegrees;

/**
 - latitude
 - longitude
 */
struct SwpCoordinate2D {
    SwpDegrees latitude;
    SwpDegrees longitude;
};

typedef struct SwpCoordinate2D SwpCoordinate2D;

#pragma mark - Deprecate #pragma mark - Deprecate Methods
/**
 *  @ author swp_song
 *
 *  @ brief  SwpCoordinate2DMake
 *
 *  @param  latitude  纬度
 *
 *  @param  longitude 经度
 *
 *  @return SwpCoordinate2D
 */
SwpCoordinate2D SwpCoordinate2DMake(SwpDegrees latitude, SwpDegrees longitude)  SWP_COORDINATE_TRANSFORM_DEPRECATED("废弃方法，请勿使用，坐标转换，方法迁移到 <https://github.com/swp-song/SwpCoordinatesUtils> 这里该类会在下几个版本移除，请及时更新");;

/**
 *  @author swp_song
 *
 *  @brief  swpCoordinateTransformAMAPFromBaiDu:longitude:  ( 经纬度转换高德经纬度转换成百度经纬度 )
 *
 *  @param  latitude    纬度
 *
 *  @param  longitude   经度
 *
 *  @return SwpCoordinate2D
 */
+ (SwpCoordinate2D)swpCoordinateTransformAMAPFromBaiDu:(double)latitude longitude:(double)longitude SWP_COORDINATE_TRANSFORM_DEPRECATED("废弃方法，请勿使用，坐标转换，方法迁移到 <https://github.com/swp-song/SwpCoordinatesUtils> 这里该类会在下几个版本移除，请及时更新");

/**
 *  @author swp_song
 *
 *  @brief  swpCoordinateTransformBaiDuFromAMAP:longitude:  ( 经纬度转换百度经纬度转换成高德经纬度 )
 *
 *  @param  latitude    纬度
 *
 *  @param  longitude   经度
 *
 *  @return SwpCoordinate2D
 */
+ (SwpCoordinate2D)swpCoordinateTransformBaiDuFromAMAP:(double)latitude longitude:(double)longitude SWP_COORDINATE_TRANSFORM_DEPRECATED("废弃方法，请勿使用，坐标转换，方法迁移到 <https://github.com/swp-song/SwpCoordinatesUtils> 这里该类会在下几个版本移除，请及时更新");


@end
NS_ASSUME_NONNULL_END
