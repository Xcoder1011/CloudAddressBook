//
//  UI_Macro.h
//  FaceCall
//
//  Created by KUN on 16/10/20.
//  Copyright © 2016年 AiYan. All rights reserved.
//

#ifndef UI_Macro_h
#define UI_Macro_h

//获取RGB颜色
#define RGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define RGB(r,g,b) RGBA(r,g,b,1.0f)
#define kRandom(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)/255.0]
#define kRandomColor kRandom(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))

#define IOS8  [[[UIDevice currentDevice] systemVersion] floatValue] >= 8.0
#define IOS7  [[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0
#define IOS9  [[[UIDevice currentDevice] systemVersion] floatValue] >= 9.0
#define IOS10  [[[UIDevice currentDevice] systemVersion] floatValue] >= 10.0

#define DeviceRect   [UIScreen mainScreen].bounds
#define DeviceHeight [UIScreen mainScreen].bounds.size.height
#define DeviceWidth  [UIScreen mainScreen].bounds.size.width
#define ViewWidth    self.frame.size.width
#define ViewHeight   self.frame.size.height


#define SCREEN_WIDTH    ([[UIScreen mainScreen] bounds].size.width)
#define SCREEN_HEIGHT   ([[UIScreen mainScreen] bounds].size.height)


#define kWeakObj(obj)   __weak typeof(obj) weak##obj = obj;
#define kStrongObj(obj)    __strong typeof(obj) obj = weak##obj;


#define kscaleViewWidth(width)  (width *DeviceWidth)/375.0
#define kscaleDeviceWidth(width)  (width/3 *DeviceWidth)/414.0
#define kscaleDeviceHeight(height)  (height/3 *DeviceHeight)/736.0
#define kscaleDeviceLength(length)  ((length)/3 *DeviceWidth)/414.0


#define DeleteFile(filePath)   if([[NSFileManager defaultManager] fileExistsAtPath:filePath]) \
{ \
NSLog(@"删除文件:%@",filePath);\
[[NSFileManager defaultManager] removeItemAtPath:filePath error:nil]; \
}

#define Local_File_path [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject]

#endif /* UI_Macro_h */
