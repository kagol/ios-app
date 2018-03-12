//
//  BNRItem.h
//  RandomItems
//
//  Created by iroot on 2018/3/11.
//  Copyright © 2018年 kagol. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

// 使用类方法
+ (instancetype) randomItem;

// 声明自定义实例方法，用于初始化
- (instancetype) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
- (instancetype) initWithItemName:(NSString *)name;

// 完成中级练习，新增另一个初始化方法，针对itemName和serialNumber
- (instancetype) initWithItemName:(NSString *)name serialNumber:(NSString *)sNumber;

- (void)setItemName:(NSString *)str; // 存
- (NSString *)itemName; // 取

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
- (int)valueInDollars;

- (NSDate *)dateCreated;
@end
