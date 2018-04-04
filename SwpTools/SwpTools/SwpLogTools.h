//
//  SwpLogTools.h
//  swp_song
//
//  Created by swp_song on 16/4/17.
//  Copyright © 2016年 swp_song. All rights reserved.
//

#ifndef SwpLogTools_h
#define SwpLogTools_h


#define SwpLogContentInof(format, ...) fprintf(stderr,"\r[PATH   : %s]\r[FILE   : %s, LINE : %d]\r[FUNC   : %s]\r[CONTENT:\r\r   %s\r\r]\r---------------------------------------------------------------------------------------------------------------------", __FILE__, [[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, __FUNCTION__, [[NSString stringWithFormat:format, ##__VA_ARGS__] UTF8String]);


#define SwpLog(...) SwpLogContentInof(__VA_ARGS__)


#ifndef __OPTIMIZE__
    #define NSLog(...) SwpLogContentInof (__VA_ARGS__)
#else
    #define NSLog(...) {}
#endif


#endif /* SwpLogTools_h */
